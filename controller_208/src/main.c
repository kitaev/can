#include <stm8s_conf.h>

#define LED_PIN 0
#define BUTTON_PIN 4

@far @interrupt @nosvf void external_interrupt_c(void) {
	GPIO_WriteReverse(GPIOH, GPIO_PIN_0);
}

main() {
	GPIO_Init(GPIOH, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_IT);

	enableInterrupts();

	while(1) {
		wfi();
	}
}

