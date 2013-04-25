#include <stm8s_conf.h>

#define LED_PIN 0
#define BUTTON_PIN 4

@far @interrupt void external_interrupt_c(void) {
	uint8_t d = 0x55;
	CAN_Transmit(0x321, CAN_Id_Standard, CAN_RTR_Data, 1, &d);
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
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_IT);

	can_configure();

	enableInterrupts();

	while(1) {
		wfi();
	}
}

