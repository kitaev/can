#include "stm32f4xx_conf.h"

#define LED_PINS GPIO_Pin_15 | GPIO_Pin_14 | GPIO_Pin_13 | GPIO_Pin_12

void TIM2_IRQHandler(void) {
    if (TIM_GetITStatus(TIM2, TIM_IT_Update) == RESET) {
        return;
    }
    TIM_ClearITPendingBit(TIM2, TIM_IT_Update);
    GPIO_ToggleBits(GPIOD, LED_PINS);
}

void EXTI0_IRQHandler(void) {
	if (EXTI_GetITStatus(EXTI_Line0) == RESET) {
		return;
	}
    EXTI_ClearITPendingBit(EXTI_Line0);
	GPIO_ToggleBits(GPIOD, LED_PINS);
}

void GPIO_Configure(uint32_t pins) {
	GPIO_InitTypeDef GPIO_InitStruct;
	EXTI_InitTypeDef EXTI_InitStruct;
	NVIC_InitTypeDef NVIC_InitStruct;

	// LED pins
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	GPIO_StructInit(&GPIO_InitStruct);
	GPIO_InitStruct.GPIO_Pin = pins;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_DOWN;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOD, &GPIO_InitStruct);

	// A0 Button
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
	GPIO_StructInit(&GPIO_InitStruct);
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_DOWN;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	EXTI_StructInit(&EXTI_InitStruct);

	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource0);
	EXTI_InitStruct.EXTI_Line = EXTI_Line0;
	EXTI_InitStruct.EXTI_LineCmd = ENABLE;
	EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising;
	EXTI_Init(&EXTI_InitStruct);

	NVIC_InitStruct.NVIC_IRQChannel = EXTI0_IRQn;
	NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x0F;
	NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x0F;
	NVIC_Init(&NVIC_InitStruct);
}

void TIM2_Configure(void) {
	TIM_TimeBaseInitTypeDef TIM2_InitStruct;
	NVIC_InitTypeDef NVIC_InitStruct;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
	TIM_TimeBaseStructInit(&TIM2_InitStruct);
	TIM2_InitStruct.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM2_InitStruct.TIM_CounterMode = TIM_CounterMode_Up;
	TIM2_InitStruct.TIM_Prescaler = 4000; // 21 KHz (84Mhz / 4000)
	TIM2_InitStruct.TIM_Period = 21000; // 1 second
	TIM_TimeBaseInit(TIM2, &TIM2_InitStruct);

	NVIC_InitStruct.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStruct.NVIC_IRQChannelSubPriority = 1;
	NVIC_Init(&NVIC_InitStruct);

	TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);
}

void CAN_Configure(void) {
	CAN_InitTypeDef CAN_InitStruct;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);

	CAN_StructInit(&CAN_InitStruct);
	CAN_InitStruct.CAN_ABOM = DISABLE;
	CAN_InitStruct.CAN_AWUM = DISABLE;
	CAN_InitStruct.CAN_BS1 = CAN_BS1_8tq;
	CAN_InitStruct.CAN_BS2 = CAN_BS2_7tq;
	CAN_InitStruct.CAN_Mode = CAN_Mode_Normal;
	CAN_InitStruct.CAN_NART = DISABLE;
	CAN_InitStruct.CAN_Prescaler = 1;
	CAN_InitStruct.CAN_RFLM = DISABLE;
	CAN_InitStruct.CAN_SJW = CAN_SJW_1tq;
	CAN_InitStruct.CAN_TTCM = DISABLE;
	CAN_InitStruct.CAN_TXFP = DISABLE;
	CAN_Init(CAN2, &CAN_InitStruct);
}

void main(void){
	GPIO_Configure(LED_PINS);

//	TIM2_Configure();
//	TIM_Cmd(TIM2, ENABLE);

    while(1);
}
