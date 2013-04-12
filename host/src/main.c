#include "stm32f30x_conf.h"

GPIO_InitTypeDef GPIO_Init_Structure;
NVIC_InitTypeDef NVIC_Init_Structure;
TIM_TimeBaseInitTypeDef TIM_BaseInit_Structure;

void TIM2_IRQHandler(void) {
	if (TIM_GetITStatus(TIM2, TIM_IT_Update) == RESET) {
		return;
	}
	TIM_ClearITPendingBit(TIM2, TIM_IT_Update);
	// toggle led number eight.
	uint8_t bit = GPIO_ReadOutputDataBit(GPIOE, GPIO_Pin_8);
	GPIO_WriteBit(GPIOE, GPIO_Pin_8, bit ? Bit_RESET : Bit_SET);
}

int main(void){
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOE, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

	TIM_TimeBaseStructInit(&TIM_BaseInit_Structure);
	TIM_BaseInit_Structure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_BaseInit_Structure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_BaseInit_Structure.TIM_Prescaler = 72;
	TIM_BaseInit_Structure.TIM_Period = 1000*1000; // 1 second period
	TIM_TimeBaseInit(TIM2, &TIM_BaseInit_Structure);

	GPIO_StructInit(&GPIO_Init_Structure);
	GPIO_Init_Structure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Init_Structure.GPIO_Pin = GPIO_Pin_8;
	GPIO_Init_Structure.GPIO_OType = GPIO_OType_PP;
	GPIO_Init_Structure.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOE, &GPIO_Init_Structure);

	NVIC_Init_Structure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_Init_Structure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init_Structure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_Init_Structure.NVIC_IRQChannelSubPriority = 1;
	NVIC_Init(&NVIC_Init_Structure);

	TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE); // start timer.
	TIM_Cmd(TIM2, ENABLE);

	while(1) {
		PWR_EnterSleepMode(PWR_SLEEPEntry_WFI);
	}
}
