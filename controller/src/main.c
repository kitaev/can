/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

#include <mods0.h>
#include <iostm8s103.h>

#define LED_PIN 0

unsigned int counter;

dd(void) {
	counter = 0xFFFF;
	while(counter) {
		counter--;
	}
}

main()
{
	// output mode, led is pulled up.
	PD_DDR |= (1 << LED_PIN);
	// pseudo open drain; slow speed
	PD_CR1 &= ~(1 << LED_PIN);
	PD_CR2 &= ~(1 << LED_PIN);

	while (1) {
		// open drain, led on
		PD_ODR &= ~(1 << LED_PIN);
		dd();
		// push up, led off
		PD_ODR |= (1 << LED_PIN);
		dd();
	}
}

