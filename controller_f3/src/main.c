#include "stm32f30x_conf.h"

#define LED_PINS GPIO_Pin_15 | GPIO_Pin_14 | GPIO_Pin_13

void TIM_Start(void);

void uart_print(char * ch) {
    while(*ch != '\0') {
        while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
        USART_SendData(USART2, (uint8_t) *ch);
        while (USART_GetFlagStatus(USART2, USART_FLAG_TC) == RESET);
        ch++;
    }
}

void EXTI0_IRQHandler(void) {
    if (EXTI_GetITStatus(EXTI_Line0) == RESET) {
        return;
    }
    EXTI_ClearITPendingBit(EXTI_Line0);

    uart_print("Pressed\r\n\0");

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

    // Control pin (PC2)
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
    GPIO_StructInit(&GPIO_InitStruct);
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_2;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_DOWN;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
    GPIO_Init(GPIOC, &GPIO_InitStruct);

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

void TIM_Config(void) {

    NVIC_InitTypeDef NVIC_InitStructure;

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);

    NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

}

uint16_t timer_counter = 0;

void TIM_Start(void) {
    if (timer_counter != 0) {
        return;
    }
    timer_counter = 1;
    // starts timer, should fire every 1ms
    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;
    TIM_TimeBaseStructInit(&TIM_TimeBaseInitStructure);
    TIM_TimeBaseInitStructure.TIM_Prescaler = 42000;
    TIM_TimeBaseInitStructure.TIM_Period = 2;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInitStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseInit(TIM3, &TIM_TimeBaseInitStructure);
    TIM_ITConfig(TIM3, TIM_IT_Update, ENABLE);
    TIM_Cmd(TIM3, ENABLE);
    GPIO_SetBits(GPIOD, GPIO_Pin_12);
    GPIO_SetBits(GPIOC, GPIO_Pin_2);

}

void TIM_Stop(void) {
    TIM_Cmd(TIM3, DISABLE);
    timer_counter = 0;
    GPIO_ResetBits(GPIOD, GPIO_Pin_12);
}

void TIM3_IRQHandler(void) {
    if (TIM_GetITStatus(TIM3, TIM_IT_Update) == RESET) {
        return;
    }
    TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
    timer_counter++;

    if (timer_counter == 100) {
        GPIO_ResetBits(GPIOC, GPIO_Pin_2);
    } else if (timer_counter == 250) {
        TIM_Stop();
    }
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
            // if timer is not running already, start it.
            TIM_Start();
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

void UART_Configure(void) {
    USART_InitTypeDef USART_InitStructure;
    USART_ClockInitTypeDef USART_ClockInitStruct;
    GPIO_InitTypeDef GPIO_InitStruct;


    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);

    GPIO_PinAFConfig(GPIOA, GPIO_PinSource2, GPIO_AF_USART2);
    GPIO_PinAFConfig(GPIOA, GPIO_PinSource3, GPIO_AF_USART2);

    GPIO_StructInit(&GPIO_InitStruct);
    GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_UP;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_2;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
    GPIO_Init(GPIOA, &GPIO_InitStruct);
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
    GPIO_Init(GPIOA, &GPIO_InitStruct);

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);

    USART_StructInit(&USART_InitStructure);
    USART_DeInit(USART2);

    USART_InitStructure.USART_BaudRate = 9600;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;

    USART_Init(USART2, &USART_InitStructure);
    USART_Cmd(USART2, ENABLE);
}

void main(void){
    UART_Configure();
    GPIO_Configure(LED_PINS);
    CAN_Configure();
    TIM_Config();

    while(1);
}
