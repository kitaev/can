/*
 * vector.h
 *
 *  Created on: Apr 27, 2013
 *      Author: kitae_000
 */

#ifndef VECTOR_H_
#define VECTOR_H_

/*
 * Include all headers that may define interrupt handlers
 */
#include <main.h>
#include <buttons.h>

typedef void @far (*interrupt_handler_t)(void);

struct interrupt_vector {
	unsigned char interrupt_instruction;
	interrupt_handler_t interrupt_handler;
};

@far @interrupt void NonHandledInterrupt (void)
{
	/* in order to detect unexpected events during development,
	   it is recommended to set a breakpoint on the following instruction
	*/
	return;
}

#ifndef TRAP_IRQ
#define TRAP_IRQ NonHandledInterrupt
#endif

#ifndef IRQ0
#define IRQ0 NonHandledInterrupt
#endif
#ifndef IRQ1
#define IRQ1 NonHandledInterrupt
#endif
#ifndef IRQ2
#define IRQ2 NonHandledInterrupt
#endif
#ifndef IRQ3
#define IRQ3 NonHandledInterrupt
#endif
#ifndef IRQ4
#define IRQ4 NonHandledInterrupt
#endif
#ifndef IRQ5
#define IRQ5 NonHandledInterrupt
#endif
#ifndef IRQ6
#define IRQ6 NonHandledInterrupt
#endif
#ifndef IRQ7
#define IRQ7 NonHandledInterrupt
#endif
#ifndef IRQ8
#define IRQ8 NonHandledInterrupt
#endif
#ifndef IRQ9
#define IRQ9 NonHandledInterrupt
#endif
#ifndef IRQ10
#define IRQ10 NonHandledInterrupt
#endif
#ifndef IRQ11
#define IRQ11 NonHandledInterrupt
#endif
#ifndef IRQ12
#define IRQ12 NonHandledInterrupt
#endif
#ifndef IRQ13
#define IRQ13 NonHandledInterrupt
#endif
#ifndef IRQ14
#define IRQ14 NonHandledInterrupt
#endif
#ifndef IRQ15
#define IRQ15 NonHandledInterrupt
#endif
#ifndef IRQ16
#define IRQ16 NonHandledInterrupt
#endif
#ifndef IRQ17
#define IRQ17 NonHandledInterrupt
#endif
#ifndef IRQ18
#define IRQ18 NonHandledInterrupt
#endif
#ifndef IRQ19
#define IRQ19 NonHandledInterrupt
#endif
#ifndef IRQ20
#define IRQ20 NonHandledInterrupt
#endif
#ifndef IRQ21
#define IRQ21 NonHandledInterrupt
#endif
#ifndef IRQ22
#define IRQ22 NonHandledInterrupt
#endif
#ifndef IRQ23
#define IRQ23 NonHandledInterrupt
#endif
#ifndef IRQ24
#define IRQ24 NonHandledInterrupt
#endif
#ifndef IRQ25
#define IRQ25 NonHandledInterrupt
#endif
#ifndef IRQ26
#define IRQ26 NonHandledInterrupt
#endif
#ifndef IRQ27
#define IRQ27 NonHandledInterrupt
#endif
#ifndef IRQ28
#define IRQ28 NonHandledInterrupt
#endif
#ifndef IRQ29
#define IRQ29 NonHandledInterrupt
#endif
#endif /* VECTOR_H_ */
