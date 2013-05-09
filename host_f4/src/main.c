#include "stm32f4xx_conf.h"

#define LED_PINS GPIO_Pin_15 | GPIO_Pin_14 | GPIO_Pin_13 | GPIO_Pin_12

void TIM2_IRQHandler(void) {
    if (TIM_GetITStatus(TIM2, TIM_IT_Update) == RESET) {
        return;
    }
    TIM_ClearITPendingBit(TIM2, TIM_IT_Update);
}

void EXTI0_IRQHandler(void) {
	if (EXTI_GetITStatus(EXTI_Line0) == RESET) {
		return;
	}
    EXTI_ClearITPendingBit(EXTI_Line0);

    CanTxMsg message;
    message.StdId = 0x11;
    message.RTR = CAN_RTR_DATA;
    message.IDE = CAN_ID_STD;
    message.DLC = 1;
    message.Data[0] = 0x55;

    uint8_t mailbox = CAN_Transmit(CAN2, &message);
    if (mailbox == CAN_TxStatus_NoMailBox) {
        GPIO_SetBits(GPIOD, GPIO_Pin_14);
        return;
    }
    uint16_t timeout = 0x500;
    while(CAN_TransmitStatus(CAN2, mailbox) != CANTXOK && timeout > 0) {
    	timeout--;
    }
    if (timeout == 0) {
    	GPIO_SetBits(GPIOD, GPIO_Pin_15);
    }

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
void CAN2_RX0_IRQHandler(void) {
	if (CAN_GetITStatus(CAN2, CAN_IT_FMP0) == RESET) {
		return;
	}
    CAN_ClearITPendingBit(CAN2, CAN_IT_FMP0);

    CanRxMsg message;
    while(CAN_MessagePending(CAN2, 0)) {
		CAN_Receive(CAN2, 0, &message);
		if (message.DLC == 1 && message.Data[0] == 0xEF) {
			GPIO_ToggleBits(GPIOD, LED_PINS);
		}
    }
}

void CAN_Configure(void) {
	CAN_InitTypeDef CAN_InitStruct;
	CAN_FilterInitTypeDef CAN_FilterInitStruct;
	NVIC_InitTypeDef NVIC_InitStruct;
	GPIO_InitTypeDef GPIO_InitStruct;

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	// can pins
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource5, GPIO_AF_CAN2);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource6, GPIO_AF_CAN2);

	GPIO_StructInit(&GPIO_InitStruct);
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);

	// can peripherial
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1 | RCC_APB1Periph_CAN2, ENABLE);

	CAN_DeInit(CAN2);
	CAN_StructInit(&CAN_InitStruct);
	CAN_InitStruct.CAN_ABOM = DISABLE;
	CAN_InitStruct.CAN_AWUM = DISABLE;
	CAN_InitStruct.CAN_NART = DISABLE;
	CAN_InitStruct.CAN_RFLM = DISABLE;
	CAN_InitStruct.CAN_TTCM = DISABLE;
	CAN_InitStruct.CAN_TXFP = DISABLE;
	CAN_InitStruct.CAN_Prescaler = 21; // 125000 Baud rate assuimg Fpclk=42MHz
	CAN_InitStruct.CAN_SJW = CAN_SJW_1tq;
	CAN_InitStruct.CAN_BS1 = CAN_BS1_13tq;
	CAN_InitStruct.CAN_BS2 = CAN_BS2_2tq;
	CAN_InitStruct.CAN_Mode = CAN_Mode_Normal;
	CAN_Init(CAN2, &CAN_InitStruct);

	// can filter
	CAN_FilterInitStruct.CAN_FilterNumber = 14;
	CAN_FilterInitStruct.CAN_FilterMode = CAN_FilterMode_IdMask;
	CAN_FilterInitStruct.CAN_FilterScale = CAN_FilterScale_16bit;
	CAN_FilterInitStruct.CAN_FilterActivation = ENABLE;
	CAN_FilterInitStruct.CAN_FilterFIFOAssignment = CAN_FIFO0;
	CAN_FilterInitStruct.CAN_FilterIdHigh = 0;
	CAN_FilterInitStruct.CAN_FilterIdLow = 0;
	CAN_FilterInitStruct.CAN_FilterMaskIdHigh = 0;
	CAN_FilterInitStruct.CAN_FilterMaskIdLow = 0;
	CAN_FilterInit(&CAN_FilterInitStruct);

	// can interrupt
	CAN_ITConfig(CAN2, CAN_IT_FMP0, ENABLE);

	NVIC_InitStruct.NVIC_IRQChannel = CAN2_RX0_IRQn;
	NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStruct.NVIC_IRQChannelSubPriority = 1;
	NVIC_Init(&NVIC_InitStruct);
}

void main(void){
	GPIO_Configure(LED_PINS);
	CAN_Configure();

//	TIM2_Configure();
//	TIM_Cmd(TIM2, ENABLE);

    while(1);
}
