#include <stm8s_conf.h>

#define LED_PIN 0
#define BUTTON_PIN 4

#define F_MASTER = 2000000UL; // internal HSI, 16/8 MHz

uint8_t debounce_counter[2];
uint8_t debounce_state;

void portc_configure(GPIO_Mode_TypeDef mode) {
	GPIO_Init(GPIOC, GPIO_PIN_ALL, mode);
	EXTI->CR1 |= 0x20;
}

void timer_configure(void) {
	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 255);
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
}

void debounce(uint8_t sample) {
	uint8_t delta = sample ^ debounce_state;

	debounce_counter[1] = (debounce_counter[1] ^ debounce_counter[0]) & delta;
	debounce_counter[0] = ~debounce_counter[0] & delta;

	debounce_counter[1] &= delta;
	debounce_counter[0] &= delta;

	debounce_state ^= delta & ~(debounce_counter[1] | debounce_counter[0]);
}

@far @interrupt void tim4_interrupt(void) {
	uint8_t s;
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	s = GPIO_ReadInputData(GPIOC);
	debounce(s);

	if ((debounce_state & GPIO_PIN_4) == 0) {
		TIM4_Cmd(DISABLE);
		CAN_Transmit(0x123, CAN_Id_Standard, CAN_RTR_Data, 1, &debounce_state);
		portc_configure(GPIO_MODE_IN_PU_IT);
	}
}

@far @interrupt void portc_interrupt(void) {
	portc_configure(GPIO_MODE_IN_PU_NO_IT);

	debounce_counter[0] = 0x00;
	debounce_counter[1] = 0x00;
	debounce(GPIO_ReadInputData(GPIOC));

	TIM4_Cmd(ENABLE);
}

@far @interrupt void can_rx_interrupt(void) {
	while(CAN_MessagePending()) {
		CAN_Receive();
	}
	GPIO_WriteReverse(GPIOH, GPIO_PIN_0);
}

void can_configure(void) {
	CAN_DeInit();

	if (!CAN_Init(
			CAN_MasterCtrl_AllDisabled,
			CAN_Mode_Silent_LoopBack,
			CAN_SynJumpWidth_1TimeQuantum,
			CAN_BitSeg1_8TimeQuantum,
			CAN_BitSeg2_7TimeQuantum,
			0x1)) {
		return;
	}

	CAN_FilterInit(
			CAN_FilterNumber_0,
			ENABLE,
			CAN_FilterMode_IdMask,
			CAN_FilterScale_32Bit,
			0, 0, 0, 0,
			0, 0, 0, 0);

	CAN_ITConfig(CAN_IT_FMP, ENABLE);
	GPIO_WriteHigh(GPIOH, GPIO_PIN_0);
}

main() {
	GPIO_Init(GPIOH, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_SLOW);

	debounce_state = 0xFF;
	portc_configure(GPIO_MODE_IN_PU_IT);
	timer_configure();
	can_configure();

	enableInterrupts();

	while(1) {
		wfi();
	}
}

