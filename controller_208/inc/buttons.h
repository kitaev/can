/*
 * buttons.h
 *
 *  Created on: Apr 27, 2013
 *      Author: kitae_000
 */

#ifndef BUTTONS_H_
#define BUTTONS_H_

#include <stm8s_gpio.h>

typedef struct Buttons_Struct {
	GPIO_TypeDef * port;
} Buttons_TypeDef;

void Buttons_Init(Buttons_TypeDef * buttons);
void Buttons_DeInit(Buttons_TypeDef * buttons);

#endif /* BUTTONS_H_ */
