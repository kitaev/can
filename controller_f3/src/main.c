#include "stm32f30x_conf.h"

void GPIO_Config() {
    GPIO_InitTypeDef GPIO_InitStruct;

    // A8 Pin
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
    GPIO_StructInit(&GPIO_InitStruct);
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_8;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_DOWN;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
    GPIO_Init(GPIOA, &GPIO_InitStruct);
}

void CAN_Config(void) {
	CAN_InitTypeDef CAN_InitStruct;
	CAN_FilterInitTypeDef CAN_FilterInitStruct;
	NVIC_InitTypeDef NVIC_InitStruct;
	GPIO_InitTypeDef GPIO_InitStruct;

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE);

	GPIO_PinAFConfig(GPIOB, GPIO_PinSource8, GPIO_AF_9);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource9, GPIO_AF_9);

	GPIO_StructInit(&GPIO_InitStruct);
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);


	// can peripherial
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);

	CAN_StructInit(&CAN_InitStruct);
	CAN_InitStruct.CAN_ABOM = DISABLE;
	CAN_InitStruct.CAN_AWUM = DISABLE;
	CAN_InitStruct.CAN_NART = DISABLE;
	CAN_InitStruct.CAN_RFLM = DISABLE;
	CAN_InitStruct.CAN_TTCM = DISABLE;
	CAN_InitStruct.CAN_TXFP = DISABLE;
	CAN_InitStruct.CAN_Prescaler = 18; // 125000 Baud rate assuimg CAN speed 36MHz
	CAN_InitStruct.CAN_SJW = CAN_SJW_1tq;
	CAN_InitStruct.CAN_BS1 = CAN_BS1_13tq;
	CAN_InitStruct.CAN_BS2 = CAN_BS2_2tq;
	CAN_InitStruct.CAN_Mode = CAN_Mode_Normal;
	CAN_Init(CAN1, &CAN_InitStruct);

	// can filter
	CAN_FilterInitStruct.CAN_FilterNumber = 0;
	CAN_FilterInitStruct.CAN_FilterMode = CAN_FilterMode_IdMask;
	CAN_FilterInitStruct.CAN_FilterScale = CAN_FilterScale_32bit;
	CAN_FilterInitStruct.CAN_FilterActivation = ENABLE;
	CAN_FilterInitStruct.CAN_FilterFIFOAssignment = CAN_FIFO0;
	CAN_FilterInitStruct.CAN_FilterIdHigh = 0;
	CAN_FilterInitStruct.CAN_FilterIdLow = 0;
	CAN_FilterInitStruct.CAN_FilterMaskIdHigh = 0;
	CAN_FilterInitStruct.CAN_FilterMaskIdLow = 0;
	CAN_FilterInit(&CAN_FilterInitStruct);

	// can interrupt
	CAN_ITConfig(CAN1, CAN_IT_FMP0, ENABLE);

	NVIC_InitStruct.NVIC_IRQChannel = USB_LP_CAN1_RX0_IRQn;
	NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0;
	NVIC_Init(&NVIC_InitStruct);
}

void USB_LP_CAN1_RX0_IRQHandler(void) {
	if (CAN_GetITStatus(CAN1, CAN_IT_FMP0) == RESET) {
		return;
	}
    CAN_ClearITPendingBit(CAN1, CAN_IT_FMP0);
	//GPIO_ResetBits(GPIOA, GPIO_Pin_8);

    CanRxMsg message;
    while(CAN_MessagePending(CAN1, 0)) {
		CAN_Receive(CAN1, 0, &message);
    }

    if (GPIO_ReadOutputDataBit(GPIOA, GPIO_Pin_8) == Bit_SET) {
    	GPIO_ResetBits(GPIOA, GPIO_Pin_8);
    } else {
    	GPIO_SetBits(GPIOA, GPIO_Pin_8);
    }
}



void main(void){
    GPIO_Config();
    CAN_Config();
	GPIO_SetBits(GPIOA, GPIO_Pin_8);

    while(1) {
    	PWR_EnterSleepMode(PWR_SLEEPEntry_WFI);
    }
}
