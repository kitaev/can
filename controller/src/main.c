/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

#include <mods0.h>
#include <iostm8s103.h>

#define LED_PIN 0

#define CS_BIT 3
#define CLK_BIT 5
#define MOSI_BIT 6
#define MISO_BIT 7

#define DONTCARE (0xFF)
#define SELECT_MCP2515 (PC_ODR &= ~(1 << CS_BIT))
#define DESELECT_MCP2515 (PC_ODR |= (1 << CS_BIT))

dd(unsigned int delay) {
	while(delay) {
		delay--;
	}
}

unsigned char sendread(unsigned char ch) {
	while(!(SPI_SR & (1 << 1))); // wait for TXE = 1
	SPI_DR = ch;
	while(!(SPI_SR & (1 << 0))); // wait for RNXE = 1
	return SPI_DR;
}

void init_clock(void) {
	// Fhsi = Frc
//	CLK_CKDIVR = 0x00;
}

main() {
	unsigned char read = 0x00;
	init_clock();
	dd(0xFFFF);
	dd(0xFFFF);

	// output mode, led is pulled up.
	// pseudo open drain; slow speed
	PD_DDR |= (1 << LED_PIN);
	PD_CR1 &= ~(1 << LED_PIN);
	PD_CR2 &= ~(1 << LED_PIN);
	// LED OFF
	PD_ODR |= (1 << LED_PIN);

	// configure CS pin, SPI clock and SPI mosi
	// all but CS are fast push-pull output mode, CS fast open drain
	// configure SPI input (miso) as floating input
	PC_DDR |= (1 << CS_BIT) | (1 << MOSI_BIT) | (1 << CLK_BIT);
	PC_CR1 |= (1 << MOSI_BIT) | (1 << CLK_BIT);
	PC_CR2 |= (1 << CS_BIT) | (1 << MOSI_BIT) | (1 << CLK_BIT);

	// CS high
	DESELECT_MCP2515;

	// disable SPI
	SPI_CR1 &= ~(1 << 6);
	// polarity and phase
//	SPI_CR1 |= 0x03;
	// f/2 SPI (max speed)
//	SPI_CR1 &= ~((1 << 3) | (1 << 4) | (1 << 5));
	// f/16
//	SPI_CR1 |= (1 << 4) | (1 << 3) | (1 << 5);
	// Software master mode (SSM, SSI)
	SPI_CR2 |= 3;
	// enable SPI as master
	SPI_CR1 |= (1 << 6) | (1 << 2);

	// reset
	SELECT_MCP2515;
	sendread(0xC0);
	DESELECT_MCP2515;
//	for(read = 0; read < 128; read++);
	// wait for 256 cycles after reset.

	// read status register

	while(read != 0x87) {
		SELECT_MCP2515;
		sendread(0x03); // read command
		sendread(0x0F); // canctrl register address
		read = sendread(DONTCARE);
		DESELECT_MCP2515;
	}
	// set some mode.
	SELECT_MCP2515;
	sendread(0x02);
	sendread(0x0F);
	sendread(0x83);
	DESELECT_MCP2515;

	while(read != 0x83) {
		SELECT_MCP2515;
		sendread(0x03);
		sendread(0x0F);
		read = sendread(DONTCARE);
		DESELECT_MCP2515;
	}

	// set another mode.
	SELECT_MCP2515;
	sendread(0x02);
	sendread(0x0F);
	sendread(0x85);
	DESELECT_MCP2515;

	while(read != 0x85) {
		SELECT_MCP2515;
		sendread(0x03);
		sendread(0x0F);
		read = sendread(DONTCARE);
		DESELECT_MCP2515;
	}

	// set loopback mode.
	SELECT_MCP2515;
	sendread(0x02);
	sendread(0x0F);
	sendread(0x40);
	DESELECT_MCP2515;

	while(read != 0x40) {
		SELECT_MCP2515;
		sendread(0x03);
		sendread(0x0F);
		read = sendread(DONTCARE);
		DESELECT_MCP2515;
	}
	// disable SPI
	while(!(SPI_SR & (1 << 1)));  // wait for TXE = 1
	while(SPI_SR & (1 << 7)); 	  // while BSY
	SPI_CR1 &= ~(1 << 6);

	PD_ODR &= ~(1 << LED_PIN);

	while(1);
}

