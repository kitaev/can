/*
 * main.h
 *
 *  Created on: Apr 27, 2013
 *      Author: kitae_000
 */

#ifndef MAIN_H_
#define MAIN_H_

#define F_MASTER = 2000000UL; // internal HSI, 16/8 MHz

#define IRQ23 tim4_interrupt
#define IRQ8 can_rx_interrupt
#define IRQ5 portc_interrupt

@far @interrupt void tim4_interrupt(void);
@far @interrupt void can_rx_interrupt(void);
@far @interrupt void portc_interrupt(void);

#endif /* MAIN_H_ */
