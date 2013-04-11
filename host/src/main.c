#include "stm32f30x_conf.h"

#define DELAY                1 << 17
#define BITMASK              1 << 15

//GPIO_InitTypeDef GPIO_InitStructure;

int main(void){
  int d;

//  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
//  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
//  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;

//  GPIO_Init(GPIOE, &GPIO_InitStructure);

//  RCC->APB2ENR |= RCC_APB2ENR_IOPBEN; //enable GPIOB
//  GPIOB->CRH = 0x24444444;            //cfg GPIOB.15 as output
  while (1) {
     GPIOB->BSRR = BITMASK;
     for (d = DELAY; d; d--);
     GPIOB->BRR = BITMASK;
     for (d = DELAY << 2; d; d--);
  }
}
