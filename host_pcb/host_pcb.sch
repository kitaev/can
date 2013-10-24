EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:FT232RL
LIBS:LM2597
LIBS:SN65HVD230
LIBS:STM32F407VG
LIBS:ULN2803A
LIBS:LM2596S
LIBS:host_pcb-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 oct 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F407VG U1
U 1 1 526537C3
P 5300 3350
F 0 "U1" H 5300 3250 50  0000 C CNN
F 1 "STM32F407VG" H 5300 3450 50  0000 C CNN
F 2 "MODULE" H 5300 3350 50  0001 C CNN
F 3 "DOCUMENTATION" H 5300 3350 50  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U2
U 1 1 526537EC
P 8950 2550
F 0 "U2" H 8950 2450 50  0000 C CNN
F 1 "ULN2803A" H 8950 2650 50  0000 C CNN
F 2 "MODULE" H 8950 2550 50  0001 C CNN
F 3 "DOCUMENTATION" H 8950 2550 50  0001 C CNN
	1    8950 2550
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U3
U 1 1 52653864
P 8950 3800
F 0 "U3" H 8950 3700 50  0000 C CNN
F 1 "ULN2803A" H 8950 3900 50  0000 C CNN
F 2 "MODULE" H 8950 3800 50  0001 C CNN
F 3 "DOCUMENTATION" H 8950 3800 50  0001 C CNN
	1    8950 3800
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U4
U 1 1 52653878
P 8950 5050
F 0 "U4" H 8950 4950 50  0000 C CNN
F 1 "ULN2803A" H 8950 5150 50  0000 C CNN
F 2 "MODULE" H 8950 5050 50  0001 C CNN
F 3 "DOCUMENTATION" H 8950 5050 50  0001 C CNN
	1    8950 5050
	1    0    0    -1  
$EndComp
Entry Wire Line
	7900 2050 8000 2150
Entry Wire Line
	7900 2150 8000 2250
Entry Wire Line
	7900 2250 8000 2350
Entry Wire Line
	7900 2350 8000 2450
Entry Wire Line
	7900 2450 8000 2550
Entry Wire Line
	7900 2550 8000 2650
Entry Wire Line
	7900 2650 8000 2750
Entry Wire Line
	7900 2750 8000 2850
Entry Wire Line
	7900 3300 8000 3400
Entry Wire Line
	7900 3400 8000 3500
Entry Wire Line
	7900 3500 8000 3600
Entry Wire Line
	7900 3600 8000 3700
Entry Wire Line
	7900 3700 8000 3800
Entry Wire Line
	7900 3800 8000 3900
Entry Wire Line
	7900 3900 8000 4000
Entry Wire Line
	7900 4550 8000 4650
Entry Wire Line
	7900 4650 8000 4750
Entry Wire Line
	7900 4650 8000 4750
Entry Wire Line
	7900 4750 8000 4850
Entry Wire Line
	7900 4750 8000 4850
Entry Wire Line
	7900 4850 8000 4950
Entry Wire Line
	7900 4850 8000 4950
Entry Wire Line
	7900 4950 8000 5050
Entry Wire Line
	7900 5050 8000 5150
Entry Wire Line
	7900 5150 8000 5250
Entry Wire Line
	7900 5150 8000 5250
Text Label 8100 2150 0    60   ~ 0
b8
Text Label 8100 2250 0    60   ~ 0
b7
Text Label 8100 2350 0    60   ~ 0
b6
Text Label 8100 2450 0    60   ~ 0
b5
Text Label 8100 2550 0    60   ~ 0
b4
Text Label 8100 2650 0    60   ~ 0
b3
Text Label 8100 2750 0    60   ~ 0
b2
Text Label 8100 2850 0    60   ~ 0
b1
Text Label 8100 3400 0    60   ~ 0
b16
Text Label 8100 3500 0    60   ~ 0
b15
Text Label 8100 3600 0    60   ~ 0
b14
Text Label 8100 3700 0    60   ~ 0
b13
Text Label 8100 3800 0    60   ~ 0
b12
Text Label 8100 3900 0    60   ~ 0
b11
Text Label 8100 4000 0    60   ~ 0
b10
Text Label 8100 4100 0    60   ~ 0
b9
Entry Wire Line
	7900 4000 8000 4100
Text Label 8100 4650 0    60   ~ 0
b24
Text Label 8100 4750 0    60   ~ 0
b23
Text Label 8100 4850 0    60   ~ 0
b22
Text Label 8100 4950 0    60   ~ 0
b21
Text Label 8100 5050 0    60   ~ 0
b20
Text Label 8100 5150 0    60   ~ 0
b19
Text Label 8100 5250 0    60   ~ 0
b18
Text Label 8100 5350 0    60   ~ 0
b17
Entry Wire Line
	7900 5250 8000 5350
Text GLabel 3250 4550 0    60   Input ~ 0
usart2_tx
Text GLabel 4050 5050 3    60   Input ~ 0
usart2_rx
Text GLabel 4550 1650 1    60   Input ~ 0
can1_rx
Text GLabel 4450 1650 1    60   Input ~ 0
can1_tx
Text GLabel 6450 1650 1    60   Input ~ 0
swclk
Text GLabel 7350 2350 2    60   Input ~ 0
swdio
Text Label 4350 5050 3    60   ~ 0
b1
Text Label 4450 5050 3    60   ~ 0
b2
Text Label 4550 5050 3    60   ~ 0
b3
Text Label 4650 5050 3    60   ~ 0
b4
Text Label 4750 5050 3    60   ~ 0
b5
Text Label 4850 5050 3    60   ~ 0
b6
Text Label 4950 5050 3    60   ~ 0
b7
Text Label 5050 5050 3    60   ~ 0
b8
Text Label 5150 5050 3    60   ~ 0
b9
Text Label 5250 5050 3    60   ~ 0
b10
Text Label 5350 5050 3    60   ~ 0
b11
Text Label 5450 5050 3    60   ~ 0
b12
Text Label 5550 5050 3    60   ~ 0
b13
Text Label 5650 5050 3    60   ~ 0
b14
Text Label 5750 5050 3    60   ~ 0
b15
Text Label 5850 5050 3    60   ~ 0
b16
Text Label 5950 5050 3    60   ~ 0
b17
Text Label 6050 5050 3    60   ~ 0
b18
Text Label 6150 5050 3    60   ~ 0
b19
Text Label 6250 5050 3    60   ~ 0
b20
Text Label 7350 4450 0    60   ~ 0
b21
Text Label 7350 4350 0    60   ~ 0
b22
Text Label 7350 4250 0    60   ~ 0
b23
Text Label 7350 4150 0    60   ~ 0
b24
Entry Wire Line
	4350 5050 4450 5150
Entry Wire Line
	4450 5050 4550 5150
Entry Wire Line
	4550 5050 4650 5150
Entry Wire Line
	4650 5050 4750 5150
Entry Wire Line
	4750 5050 4850 5150
Entry Wire Line
	4850 5050 4950 5150
Entry Wire Line
	4950 5050 5050 5150
Entry Wire Line
	5050 5050 5150 5150
Entry Wire Line
	5150 5050 5250 5150
Entry Wire Line
	5250 5050 5350 5150
Entry Wire Line
	5350 5050 5450 5150
Entry Wire Line
	5450 5050 5550 5150
Entry Wire Line
	5550 5050 5650 5150
Entry Wire Line
	5650 5050 5750 5150
Entry Wire Line
	5750 5050 5850 5150
Entry Wire Line
	5850 5050 5950 5150
Entry Wire Line
	5950 5050 6050 5150
Entry Wire Line
	6050 5050 6150 5150
Entry Wire Line
	6150 5050 6250 5150
Entry Wire Line
	6250 5050 6350 5150
Entry Wire Line
	7350 4450 7450 4550
Entry Wire Line
	7350 4350 7450 4450
Entry Wire Line
	7350 4250 7450 4350
Entry Wire Line
	7350 4150 7450 4250
Entry Wire Line
	7350 4050 7450 4150
Text GLabel 3250 3450 0    60   Input ~ 0
nrst
Text GLabel 7350 2150 2    60   Input ~ 0
vss
Text GLabel 4150 5050 3    60   Input ~ 0
vss
Text GLabel 3250 4050 0    60   Input ~ 0
vss
Text GLabel 3250 3050 0    60   Input ~ 0
vss
Text GLabel 4150 1650 1    60   Input ~ 0
vss
Text GLabel 6550 1650 1    60   Input ~ 0
3v3
Text GLabel 4050 1650 1    60   Input ~ 0
3v3
Text GLabel 3250 2650 0    60   Input ~ 0
3v3
Text GLabel 3250 3150 0    60   Input ~ 0
3v3
Text GLabel 3250 4150 0    60   Input ~ 0
3v3
Text GLabel 3250 4250 0    60   Input ~ 0
3v3
Text GLabel 4250 5050 3    60   Input ~ 0
3v3
Text GLabel 7350 4550 2    60   Input ~ 0
3v3
Text GLabel 8200 4200 0    60   Input ~ 0
vss
Text GLabel 8200 5450 0    60   Input ~ 0
vss
Text GLabel 8200 2950 0    60   Input ~ 0
vss
Text GLabel 4650 1650 1    60   Input ~ 0
vss
$Comp
L CP1 C1
U 1 1 52654FB3
P 1000 1350
F 0 "C1" H 1050 1450 50  0000 L CNN
F 1 "680uF" H 1050 1250 50  0000 L CNN
F 2 "" H 1000 1350 60  0001 C CNN
F 3 "" H 1000 1350 60  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
Text GLabel 750  1150 0    60   Input ~ 0
12v
$Comp
L DIODESCH D1
U 1 1 526550B1
P 2500 1550
F 0 "D1" H 2500 1650 40  0000 C CNN
F 1 "MURS320T3G" H 2500 1450 40  0000 C CNN
F 2 "" H 2500 1550 60  0001 C CNN
F 3 "" H 2500 1550 60  0001 C CNN
	1    2500 1550
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 526550C5
P 2800 1350
F 0 "L1" V 2750 1350 40  0000 C CNN
F 1 "33uH" V 2900 1350 40  0000 C CNN
F 2 "" H 2800 1350 60  0001 C CNN
F 3 "" H 2800 1350 60  0001 C CNN
	1    2800 1350
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C2
U 1 1 526550D9
P 3100 1550
F 0 "C2" H 3150 1650 50  0000 L CNN
F 1 "330uF" H 3150 1450 50  0000 L CNN
F 2 "" H 3100 1550 60  0001 C CNN
F 3 "" H 3100 1550 60  0001 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L LM2596 U5
U 1 1 526551E8
P 1750 1150
F 0 "U5" H 1750 1050 50  0000 C CNN
F 1 "LM2596" H 1750 1250 50  0000 C CNN
F 2 "MODULE" H 1750 1150 50  0001 C CNN
F 3 "DOCUMENTATION" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Text GLabel 750  1850 0    60   Input ~ 0
vss
Text GLabel 3300 1350 2    60   Input ~ 0
3v3
Text GLabel 2600 5500 2    60   Input ~ 0
canh
Text GLabel 2600 5600 2    60   Input ~ 0
canl
Text GLabel 1100 5500 0    60   Input ~ 0
vss
Text GLabel 1100 5600 0    60   Input ~ 0
3v3
Text GLabel 1100 5400 0    60   Input ~ 0
can1_tx
Text GLabel 1100 5700 0    60   Input ~ 0
can1_rx
$Comp
L SN65HVD230 U6
U 1 1 5265548F
P 1850 5550
F 0 "U6" H 1850 5450 50  0000 C CNN
F 1 "SN65HVD230" H 1850 5650 50  0000 C CNN
F 2 "MODULE" H 1850 5550 50  0001 C CNN
F 3 "DOCUMENTATION" H 1850 5550 50  0001 C CNN
	1    1850 5550
	1    0    0    -1  
$EndComp
NoConn ~ 2600 5700
Text GLabel 2600 5400 2    60   Input ~ 0
vss
$Comp
L CONN_8 P1
U 1 1 52655589
P 1100 6450
F 0 "P1" V 1050 6450 50  0000 C CNN
F 1 "RJ45" V 1150 6450 50  0000 C CNN
F 2 "" H 1100 6450 60  0001 C CNN
F 3 "" H 1100 6450 60  0001 C CNN
	1    1100 6450
	0    1    -1   0   
$EndComp
$Comp
L CONN_8 P2
U 1 1 5265559D
P 1950 6450
F 0 "P2" V 1900 6450 50  0000 C CNN
F 1 "RJ45" V 2000 6450 50  0000 C CNN
F 2 "" H 1950 6450 60  0001 C CNN
F 3 "" H 1950 6450 60  0001 C CNN
	1    1950 6450
	0    1    -1   0   
$EndComp
Entry Wire Line
	1300 7100 1400 7200
Entry Wire Line
	1400 7100 1500 7200
Entry Wire Line
	1500 7100 1600 7200
Entry Wire Line
	1600 7100 1700 7200
Entry Wire Line
	1900 7100 2000 7200
Entry Wire Line
	2000 7100 2100 7200
Entry Wire Line
	2100 7100 2200 7200
Entry Wire Line
	2200 7100 2300 7200
Text Label 1300 7100 0    60   ~ 0
c1
Text Label 1400 7100 0    60   ~ 0
c2
Text Label 1500 7100 0    60   ~ 0
c3
Text Label 1600 7100 0    60   ~ 0
c4
Text Label 1900 7100 2    60   ~ 0
c1
Text Label 2000 7100 2    60   ~ 0
c2
Text Label 2100 7100 2    60   ~ 0
c3
Text Label 2200 7100 2    60   ~ 0
c4
$Comp
L R R1
U 1 1 526556DC
P 2850 7400
F 0 "R1" V 2930 7400 50  0000 C CNN
F 1 "120" V 2850 7400 50  0000 C CNN
F 2 "" H 2850 7400 60  0001 C CNN
F 3 "" H 2850 7400 60  0001 C CNN
	1    2850 7400
	0    -1   -1   0   
$EndComp
$Comp
L JUMPER JP1
U 1 1 526556F0
P 3400 7400
F 0 "JP1" H 3400 7550 60  0000 C CNN
F 1 "CAN_TERM" H 3400 7320 40  0000 C CNN
F 2 "" H 3400 7400 60  0001 C CNN
F 3 "" H 3400 7400 60  0001 C CNN
	1    3400 7400
	1    0    0    -1  
$EndComp
Text Label 2600 7400 0    60   ~ 0
c1
Text Label 3700 7400 0    60   ~ 0
c2
Entry Wire Line
	2600 7400 2700 7500
Entry Wire Line
	3700 7400 3800 7500
$Comp
L GND #PWR01
U 1 1 52655A89
P 1000 1950
F 0 "#PWR01" H 1000 1950 30  0001 C CNN
F 1 "GND" H 1000 1880 30  0001 C CNN
F 2 "" H 1000 1950 60  0001 C CNN
F 3 "" H 1000 1950 60  0001 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 52655AD6
P 800 1150
F 0 "#PWR02" H 800 1100 20  0001 C CNN
F 1 "+12V" H 800 1250 30  0000 C CNN
F 2 "" H 800 1150 60  0001 C CNN
F 3 "" H 800 1150 60  0001 C CNN
	1    800  1150
	1    0    0    -1  
$EndComp
Text GLabel 2300 6800 2    60   Input ~ 0
12v
Text GLabel 2000 6800 2    60   Input ~ 0
vss
Text GLabel 850  6800 2    60   Input ~ 0
canh
Text GLabel 750  6800 0    60   Input ~ 0
canl
$Comp
L CRYSTAL X1
U 1 1 5266998C
P 1150 2950
F 0 "X1" H 1150 3100 60  0000 C CNN
F 1 "8MHz" H 1150 2800 60  0000 C CNN
F 2 "" H 1150 2950 60  0000 C CNN
F 3 "" H 1150 2950 60  0000 C CNN
	1    1150 2950
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 526699A0
P 950 2650
F 0 "C3" H 1000 2750 50  0000 L CNN
F 1 "20pF" H 1000 2550 50  0000 L CNN
F 2 "" H 950 2650 60  0000 C CNN
F 3 "" H 950 2650 60  0000 C CNN
	1    950  2650
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 526699B4
P 950 3250
F 0 "C4" H 1000 3350 50  0000 L CNN
F 1 "20pF" H 1000 3150 50  0000 L CNN
F 2 "" H 950 3250 60  0000 C CNN
F 3 "" H 950 3250 60  0000 C CNN
	1    950  3250
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 52669AB8
P 1400 3250
F 0 "R2" V 1480 3250 50  0000 C CNN
F 1 "220" V 1400 3250 50  0000 C CNN
F 2 "" H 1400 3250 60  0000 C CNN
F 3 "" H 1400 3250 60  0000 C CNN
	1    1400 3250
	0    -1   -1   0   
$EndComp
Text GLabel 1650 2650 2    60   Input ~ 0
oscin
Text GLabel 1650 3250 2    60   Input ~ 0
oscout
Text GLabel 750  3550 0    60   Input ~ 0
vss
$Comp
L C C6
U 1 1 52669BB7
P 6550 5600
F 0 "C6" H 6600 5700 50  0000 L CNN
F 1 "2.2uF" H 6600 5500 50  0000 L CNN
F 2 "" H 6550 5600 60  0000 C CNN
F 3 "" H 6550 5600 60  0000 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
Text GLabel 6550 5800 0    60   Input ~ 0
vss
$Comp
L C C7
U 1 1 52669C26
P 8150 1800
F 0 "C7" H 8200 1900 50  0000 L CNN
F 1 "2.2uF" H 8200 1700 50  0000 L CNN
F 2 "" H 8150 1800 60  0000 C CNN
F 3 "" H 8150 1800 60  0000 C CNN
	1    8150 1800
	0    -1   -1   0   
$EndComp
Text GLabel 8350 1800 2    60   Input ~ 0
vss
$Comp
L C C5
U 1 1 52669C4A
P 1400 4300
F 0 "C5" H 1450 4400 50  0000 L CNN
F 1 "1uF" H 1450 4200 50  0000 L CNN
F 2 "" H 1400 4300 60  0000 C CNN
F 3 "" H 1400 4300 60  0000 C CNN
	1    1400 4300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 52669C81
P 1750 4400
F 0 "SW1" H 1900 4510 50  0000 C CNN
F 1 "SW_RST" H 1750 4320 50  0000 C CNN
F 2 "" H 1750 4400 60  0000 C CNN
F 3 "" H 1750 4400 60  0000 C CNN
	1    1750 4400
	0    -1   -1   0   
$EndComp
Text GLabel 1900 4100 2    60   Input ~ 0
nrst
Text GLabel 1900 4700 2    60   Input ~ 0
vss
NoConn ~ 1800 6800
NoConn ~ 2100 6800
NoConn ~ 1250 6800
NoConn ~ 950  6800
Text GLabel 5150 1650 1    60   Input ~ 0
traceswo
$Comp
L CONN_6 P5
U 1 1 5266A1B9
P 4250 6400
F 0 "P5" V 4200 6400 60  0000 C CNN
F 1 "SWD" V 4300 6400 60  0000 C CNN
F 2 "" H 4250 6400 60  0000 C CNN
F 3 "" H 4250 6400 60  0000 C CNN
	1    4250 6400
	0    -1   -1   0   
$EndComp
Text GLabel 4000 6750 3    60   Input ~ 0
3v3
Text GLabel 4100 6750 3    60   Input ~ 0
swclk
Text GLabel 4200 6750 3    60   Input ~ 0
vss
Text GLabel 4300 6750 3    60   Input ~ 0
swdio
Text GLabel 4400 6750 3    60   Input ~ 0
nrst
Text GLabel 4500 6750 3    60   Input ~ 0
traceswo
$Comp
L CONN_4 P6
U 1 1 5266A349
P 5050 6400
F 0 "P6" V 5000 6400 50  0000 C CNN
F 1 "UART2" V 5100 6400 50  0000 C CNN
F 2 "" H 5050 6400 60  0000 C CNN
F 3 "" H 5050 6400 60  0000 C CNN
	1    5050 6400
	0    -1   -1   0   
$EndComp
Text GLabel 4900 6750 3    60   Input ~ 0
vss
Text GLabel 5000 6750 3    60   Input ~ 0
uart2_rx
Text GLabel 5100 6750 3    60   Input ~ 0
uart2_tx
Text GLabel 5200 6750 3    60   Input ~ 0
3v3
$Comp
L CONN_2 P11
U 1 1 5266A366
P 3400 850
F 0 "P11" V 3350 850 40  0000 C CNN
F 1 "PWR_IN" V 3450 850 40  0000 C CNN
F 2 "" H 3400 850 60  0000 C CNN
F 3 "" H 3400 850 60  0000 C CNN
	1    3400 850 
	-1   0    0    1   
$EndComp
Text GLabel 3750 950  2    60   Input ~ 0
12v
Text GLabel 3750 750  2    60   Input ~ 0
vss
Text GLabel 9700 2950 2    60   Input ~ 0
12v
Text GLabel 9700 4200 2    60   Input ~ 0
12v
Text GLabel 9700 5450 2    60   Input ~ 0
12v
Text Label 9700 2150 0    60   ~ 0
d8
Text Label 9700 2250 0    60   ~ 0
d7
Text Label 9700 2850 0    60   ~ 0
d1
Text Label 9700 2750 0    60   ~ 0
d2
Text Label 9700 2650 0    60   ~ 0
d3
Text Label 9700 2550 0    60   ~ 0
d4
Text Label 9700 2450 0    60   ~ 0
d5
Text Label 9700 2350 0    60   ~ 0
d6
Text Label 9700 3400 0    60   ~ 0
d16
Text Label 9700 3500 0    60   ~ 0
d15
Text Label 9700 3600 0    60   ~ 0
d14
Text Label 9700 3700 0    60   ~ 0
d13
Text Label 9700 3800 0    60   ~ 0
d12
Text Label 9700 3900 0    60   ~ 0
d11
Text Label 9700 4000 0    60   ~ 0
d10
Text Label 9700 4100 0    60   ~ 0
d9
Text Label 9700 4650 0    60   ~ 0
d24
Text Label 9700 4750 0    60   ~ 0
d23
Text Label 9700 4850 0    60   ~ 0
d22
Text Label 9700 4950 0    60   ~ 0
d21
Text Label 9700 5050 0    60   ~ 0
d20
Text Label 9700 5150 0    60   ~ 0
d19
Text Label 9700 5250 0    60   ~ 0
d18
Text Label 9700 5350 0    60   ~ 0
d17
Entry Wire Line
	9700 2150 9800 2250
Entry Wire Line
	9700 2250 9800 2350
Entry Wire Line
	9700 2350 9800 2450
Entry Wire Line
	9700 2450 9800 2550
Entry Wire Line
	9700 2550 9800 2650
Entry Wire Line
	9700 2650 9800 2750
Entry Wire Line
	9700 2750 9800 2850
Entry Wire Line
	9700 2850 9800 2950
Entry Wire Line
	9700 3400 9800 3500
Entry Wire Line
	9700 3500 9800 3600
Entry Wire Line
	9700 3600 9800 3700
Entry Wire Line
	9700 3700 9800 3800
Entry Wire Line
	9700 3800 9800 3900
Entry Wire Line
	9700 3900 9800 4000
Entry Wire Line
	9700 4000 9800 4100
Entry Wire Line
	9700 4100 9800 4200
Entry Wire Line
	9700 5350 9800 5450
Entry Wire Line
	9700 5250 9800 5350
Entry Wire Line
	9700 5150 9800 5250
Entry Wire Line
	9700 5050 9800 5150
Entry Wire Line
	9700 4950 9800 5050
Entry Wire Line
	9700 4850 9800 4950
Entry Wire Line
	9700 4750 9800 4850
Entry Wire Line
	9700 4650 9800 4750
$Comp
L CONN_8X2 P13
U 1 1 5266A7BC
P 10650 2600
F 0 "P13" V 10600 2600 60  0000 C CNN
F 1 "OUT_1" V 10700 2600 60  0000 C CNN
F 2 "" H 10650 2600 60  0000 C CNN
F 3 "" H 10650 2600 60  0000 C CNN
	1    10650 2600
	1    0    0    1   
$EndComp
Entry Wire Line
	10150 2150 10250 2250
Entry Wire Line
	10150 2250 10250 2350
Entry Wire Line
	10150 2350 10250 2450
Entry Wire Line
	10150 2450 10250 2550
Entry Wire Line
	10150 2550 10250 2650
Entry Wire Line
	10150 2650 10250 2750
Entry Wire Line
	10150 2750 10250 2850
Entry Wire Line
	10150 2850 10250 2950
$Comp
L CONN_8X2 P14
U 1 1 5266A7F4
P 10650 3850
F 0 "P14" V 10600 3850 60  0000 C CNN
F 1 "OUT_2" V 10700 3850 60  0000 C CNN
F 2 "" H 10650 3850 60  0000 C CNN
F 3 "" H 10650 3850 60  0000 C CNN
	1    10650 3850
	1    0    0    1   
$EndComp
Entry Wire Line
	10150 3400 10250 3500
Entry Wire Line
	10150 3500 10250 3600
Entry Wire Line
	10150 3600 10250 3700
Entry Wire Line
	10150 3700 10250 3800
Entry Wire Line
	10150 3800 10250 3900
Entry Wire Line
	10150 3900 10250 4000
Entry Wire Line
	10150 4000 10250 4100
Entry Wire Line
	10150 4100 10250 4200
$Comp
L CONN_8X2 P15
U 1 1 5266A972
P 10650 5100
F 0 "P15" V 10600 5100 60  0000 C CNN
F 1 "OUT_3" V 10700 5100 60  0000 C CNN
F 2 "" H 10650 5100 60  0000 C CNN
F 3 "" H 10650 5100 60  0000 C CNN
	1    10650 5100
	1    0    0    1   
$EndComp
Entry Wire Line
	10150 4650 10250 4750
Entry Wire Line
	10150 4750 10250 4850
Entry Wire Line
	10150 4850 10250 4950
Entry Wire Line
	10150 4950 10250 5050
Entry Wire Line
	10150 5050 10250 5150
Entry Wire Line
	10150 5150 10250 5250
Entry Wire Line
	10150 5250 10250 5350
Entry Wire Line
	10150 5350 10250 5450
Text Label 10250 2250 0    60   ~ 0
d8
Text Label 10250 2350 0    60   ~ 0
d7
Text Label 10250 2450 0    60   ~ 0
d6
Text Label 10250 2550 0    60   ~ 0
d5
Text Label 10250 2650 0    60   ~ 0
d4
Text Label 10250 2750 0    60   ~ 0
d3
Text Label 10250 2850 0    60   ~ 0
d2
Text Label 10250 2950 0    60   ~ 0
d1
Text Label 10250 3500 0    60   ~ 0
d16
Text Label 10250 3600 0    60   ~ 0
d15
Text Label 10250 3700 0    60   ~ 0
d14
Text Label 10250 3800 0    60   ~ 0
d13
Text Label 10250 3900 0    60   ~ 0
d12
Text Label 10250 4000 0    60   ~ 0
d11
Text Label 10250 4100 0    60   ~ 0
d10
Text Label 10250 4200 0    60   ~ 0
d9
Text Label 10250 4750 0    60   ~ 0
d24
Text Label 10250 4850 0    60   ~ 0
d23
Text Label 10250 4950 0    60   ~ 0
d22
Text Label 10250 5050 0    60   ~ 0
d21
Text Label 10250 5150 0    60   ~ 0
d20
Text Label 10250 5250 0    60   ~ 0
d19
Text Label 10250 5350 0    60   ~ 0
d18
Text Label 10250 5450 0    60   ~ 0
d17
Text Label 7350 3950 0    60   ~ 0
a1
Text Label 7350 3850 0    60   ~ 0
a2
Text Label 7350 3750 0    60   ~ 0
a3
Text Label 7350 3650 0    60   ~ 0
a4
Text Label 7350 3550 0    60   ~ 0
a5
Text Label 7350 3450 0    60   ~ 0
a6
Text Label 7350 3350 0    60   ~ 0
a7
Text Label 7350 3250 0    60   ~ 0
a8
Text Label 7350 3150 0    60   ~ 0
a9
Text Label 7350 3050 0    60   ~ 0
a10
Text Label 7350 2950 0    60   ~ 0
a11
Text Label 7350 2850 0    60   ~ 0
a12
Text Label 7350 2750 0    60   ~ 0
a13
Text Label 7350 2650 0    60   ~ 0
a14
Text Label 7350 2550 0    60   ~ 0
a15
Text Label 7350 2450 0    60   ~ 0
a16
Text Label 6350 1650 1    60   ~ 0
a17
Text Label 6250 1650 1    60   ~ 0
a18
Text Label 6150 1650 1    60   ~ 0
a19
Text Label 6050 1650 1    60   ~ 0
a20
Text Label 5950 1650 1    60   ~ 0
a21
Text Label 5850 1650 1    60   ~ 0
a22
Text Label 5750 1650 1    60   ~ 0
a23
Text Label 5650 1650 1    60   ~ 0
a24
Entry Wire Line
	5550 1550 5650 1650
Entry Wire Line
	5650 1550 5750 1650
Entry Wire Line
	5750 1550 5850 1650
Entry Wire Line
	5850 1550 5950 1650
Entry Wire Line
	5950 1550 6050 1650
Entry Wire Line
	6050 1550 6150 1650
Entry Wire Line
	6150 1550 6250 1650
Entry Wire Line
	6250 1550 6350 1650
Entry Wire Line
	7350 2450 7450 2550
Entry Wire Line
	7350 2550 7450 2650
Entry Wire Line
	7350 2650 7450 2750
Entry Wire Line
	7350 2750 7450 2850
Entry Wire Line
	7350 2850 7450 2950
Entry Wire Line
	7350 2950 7450 3050
Entry Wire Line
	7350 3050 7450 3150
Entry Wire Line
	7350 3150 7450 3250
Entry Wire Line
	7350 3250 7450 3350
Entry Wire Line
	7350 3350 7450 3450
Entry Wire Line
	7350 3450 7450 3550
Entry Wire Line
	7350 3550 7450 3650
Entry Wire Line
	7350 3650 7450 3750
Entry Wire Line
	7350 3750 7450 3850
Entry Wire Line
	7350 3850 7450 3950
Entry Wire Line
	7350 3950 7450 4050
Text GLabel 3250 3250 0    60   Input ~ 0
oscin
Text GLabel 3250 3350 0    60   Input ~ 0
oscout
$Comp
L CONN_8X2 P7
U 1 1 5266B052
P 7200 1000
F 0 "P7" V 7150 1000 60  0000 C CNN
F 1 "IN_1" V 7250 1000 60  0000 C CNN
F 2 "" H 7200 1000 60  0000 C CNN
F 3 "" H 7200 1000 60  0000 C CNN
	1    7200 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8X2 P8
U 1 1 5266B064
P 8100 1000
F 0 "P8" V 8050 1000 60  0000 C CNN
F 1 "IN_2" V 8150 1000 60  0000 C CNN
F 2 "" H 8100 1000 60  0000 C CNN
F 3 "" H 8100 1000 60  0000 C CNN
	1    8100 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8X2 P9
U 1 1 5266B06F
P 9000 1000
F 0 "P9" V 8950 1000 60  0000 C CNN
F 1 "IN_3" V 9050 1000 60  0000 C CNN
F 2 "" H 9000 1000 60  0000 C CNN
F 3 "" H 9000 1000 60  0000 C CNN
	1    9000 1000
	0    -1   -1   0   
$EndComp
Entry Wire Line
	6850 1400 6950 1500
Entry Wire Line
	6950 1400 7050 1500
Entry Wire Line
	7050 1400 7150 1500
Entry Wire Line
	7150 1400 7250 1500
Entry Wire Line
	7250 1400 7350 1500
Entry Wire Line
	7350 1400 7450 1500
Entry Wire Line
	7450 1400 7550 1500
Entry Wire Line
	7550 1400 7650 1500
Entry Wire Line
	7750 1400 7850 1500
Entry Wire Line
	7850 1400 7950 1500
Entry Wire Line
	7950 1400 8050 1500
Entry Wire Line
	8050 1400 8150 1500
Entry Wire Line
	8150 1400 8250 1500
Entry Wire Line
	8250 1400 8350 1500
Entry Wire Line
	8350 1400 8450 1500
Entry Wire Line
	8450 1400 8550 1500
Entry Wire Line
	8650 1400 8750 1500
Entry Wire Line
	8750 1400 8850 1500
Entry Wire Line
	8850 1400 8950 1500
Entry Wire Line
	8950 1400 9050 1500
Entry Wire Line
	9050 1400 9150 1500
Entry Wire Line
	9150 1400 9250 1500
Entry Wire Line
	9250 1400 9350 1500
Entry Wire Line
	9350 1400 9450 1500
Text Label 6850 1400 1    60   ~ 0
a1
Text Label 6950 1400 1    60   ~ 0
a2
Text Label 7050 1400 1    60   ~ 0
a3
Text Label 7150 1400 1    60   ~ 0
a4
Text Label 7250 1400 1    60   ~ 0
a5
Text Label 7350 1400 1    60   ~ 0
a6
Text Label 7450 1400 1    60   ~ 0
a7
Text Label 7550 1400 1    60   ~ 0
a8
Text Label 7750 1400 1    60   ~ 0
a9
Text Label 7850 1400 1    60   ~ 0
a10
Text Label 7950 1400 1    60   ~ 0
a11
Text Label 8050 1400 1    60   ~ 0
a12
Text Label 8150 1400 1    60   ~ 0
a13
Text Label 8250 1400 1    60   ~ 0
a14
Text Label 8350 1400 1    60   ~ 0
a15
Text Label 8450 1400 1    60   ~ 0
a16
Text Label 8650 1400 1    60   ~ 0
a17
Text Label 8750 1400 1    60   ~ 0
a18
Text Label 8850 1400 1    60   ~ 0
a19
Text Label 8950 1400 1    60   ~ 0
a20
Text Label 9050 1400 1    60   ~ 0
a21
Text Label 9150 1400 1    60   ~ 0
a22
Text Label 9250 1400 1    60   ~ 0
a23
Text Label 9350 1400 1    60   ~ 0
a24
Text Label 3250 2150 2    60   ~ 0
ld2
Text Label 3250 2250 2    60   ~ 0
ld3
Text Label 3250 2350 2    60   ~ 0
ld4
Text Label 3250 2450 2    60   ~ 0
ld5
Text Label 3250 2550 2    60   ~ 0
ld6
Text Label 3250 3550 2    60   ~ 0
ld7
Text Label 3250 3650 2    60   ~ 0
lrs
Text Label 3250 3750 2    60   ~ 0
lrw
Text Label 3250 3850 2    60   ~ 0
le
Text GLabel 5550 1650 1    60   Input ~ 0
led0
Text GLabel 5450 1650 1    60   Input ~ 0
led1
Text GLabel 5350 1650 1    60   Input ~ 0
led2
Text GLabel 5250 1650 1    60   Input ~ 0
led3
Text GLabel 5050 1650 1    60   Input ~ 0
btn0
Text GLabel 4950 1650 1    60   Input ~ 0
btn1
Text GLabel 4850 1650 1    60   Input ~ 0
btn2
Text GLabel 4750 1650 1    60   Input ~ 0
btn3
$Comp
L LED D2
U 1 1 5266B7AF
P 1000 2200
F 0 "D2" H 1000 2300 50  0000 C CNN
F 1 "LED" H 1000 2100 50  0000 C CNN
F 2 "" H 1000 2200 60  0000 C CNN
F 3 "" H 1000 2200 60  0000 C CNN
	1    1000 2200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5266B7C3
P 1450 2200
F 0 "R3" V 1530 2200 50  0000 C CNN
F 1 "770" V 1450 2200 50  0000 C CNN
F 2 "" H 1450 2200 60  0000 C CNN
F 3 "" H 1450 2200 60  0000 C CNN
	1    1450 2200
	0    -1   -1   0   
$EndComp
Text GLabel 1700 2200 2    60   Input ~ 0
vss
Text GLabel 800  2200 0    60   Input ~ 0
3v3
$Comp
L LED D3
U 1 1 5266B952
P 5650 6450
F 0 "D3" H 5650 6550 50  0000 C CNN
F 1 "LED" H 5650 6350 50  0000 C CNN
F 2 "" H 5650 6450 60  0000 C CNN
F 3 "" H 5650 6450 60  0000 C CNN
	1    5650 6450
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 5266B973
P 5950 6450
F 0 "D4" H 5950 6550 50  0000 C CNN
F 1 "LED" H 5950 6350 50  0000 C CNN
F 2 "" H 5950 6450 60  0000 C CNN
F 3 "" H 5950 6450 60  0000 C CNN
	1    5950 6450
	0    1    1    0   
$EndComp
$Comp
L LED D5
U 1 1 5266B97E
P 6250 6450
F 0 "D5" H 6250 6550 50  0000 C CNN
F 1 "LED" H 6250 6350 50  0000 C CNN
F 2 "" H 6250 6450 60  0000 C CNN
F 3 "" H 6250 6450 60  0000 C CNN
	1    6250 6450
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 5266B989
P 6550 6450
F 0 "D6" H 6550 6550 50  0000 C CNN
F 1 "LED" H 6550 6350 50  0000 C CNN
F 2 "" H 6550 6450 60  0000 C CNN
F 3 "" H 6550 6450 60  0000 C CNN
	1    6550 6450
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5266B996
P 5650 6900
F 0 "R4" V 5730 6900 50  0000 C CNN
F 1 "770" V 5650 6900 50  0000 C CNN
F 2 "" H 5650 6900 60  0000 C CNN
F 3 "" H 5650 6900 60  0000 C CNN
	1    5650 6900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5266B9B2
P 5950 6900
F 0 "R5" V 6030 6900 50  0000 C CNN
F 1 "770" V 5950 6900 50  0000 C CNN
F 2 "" H 5950 6900 60  0000 C CNN
F 3 "" H 5950 6900 60  0000 C CNN
	1    5950 6900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5266B9BD
P 6250 6900
F 0 "R6" V 6330 6900 50  0000 C CNN
F 1 "770" V 6250 6900 50  0000 C CNN
F 2 "" H 6250 6900 60  0000 C CNN
F 3 "" H 6250 6900 60  0000 C CNN
	1    6250 6900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5266B9C8
P 6550 6900
F 0 "R7" V 6630 6900 50  0000 C CNN
F 1 "770" V 6550 6900 50  0000 C CNN
F 2 "" H 6550 6900 60  0000 C CNN
F 3 "" H 6550 6900 60  0000 C CNN
	1    6550 6900
	1    0    0    -1  
$EndComp
Text GLabel 6550 7150 2    60   Input ~ 0
vss
Text GLabel 5650 6250 1    60   Input ~ 0
led0
Text GLabel 5950 6250 1    60   Input ~ 0
led1
Text GLabel 6250 6250 1    60   Input ~ 0
led2
Text GLabel 6550 6250 1    60   Input ~ 0
led3
Text GLabel 3250 3950 0    60   Input ~ 0
3v3
Text Label 3250 2750 2    60   ~ 0
ld0
Text Label 3250 2850 2    60   ~ 0
ld1
Entry Wire Line
	3150 3750 3250 3850
Entry Wire Line
	3150 3650 3250 3750
Entry Wire Line
	3150 3550 3250 3650
Entry Wire Line
	3150 3450 3250 3550
Entry Wire Line
	3150 2750 3250 2850
Entry Wire Line
	3150 2650 3250 2750
Entry Wire Line
	3150 2450 3250 2550
Entry Wire Line
	3150 2350 3250 2450
Entry Wire Line
	3150 2250 3250 2350
Entry Wire Line
	3150 2150 3250 2250
Entry Wire Line
	3150 2050 3250 2150
$Comp
L CONN_8X2 P4
U 1 1 5266BF21
P 3200 6350
F 0 "P4" H 3200 6800 60  0000 C CNN
F 1 "LCD" V 3200 6350 50  0000 C CNN
F 2 "" H 3200 6350 60  0000 C CNN
F 3 "" H 3200 6350 60  0000 C CNN
	1    3200 6350
	-1   0    0    1   
$EndComp
Text GLabel 3600 6700 2    60   Input ~ 0
vss
Text GLabel 2800 6700 0    60   Input ~ 0
3v3
NoConn ~ 3600 6600
NoConn ~ 2800 6000
NoConn ~ 3600 6000
Text Label 3600 6400 0    60   ~ 0
ld0
Text Label 2800 6400 2    60   ~ 0
ld1
Text Label 2800 6300 2    60   ~ 0
ld3
Text Label 2800 6200 2    60   ~ 0
ld5
Text Label 2800 6100 2    60   ~ 0
ld7
Text Label 3600 6100 0    60   ~ 0
ld6
Text Label 3600 6200 0    60   ~ 0
ld4
Text Label 3600 6300 0    60   ~ 0
ld2
Text Label 2800 6600 2    60   ~ 0
lrs
Text Label 2800 6500 2    60   ~ 0
le
Text Label 3600 6500 0    60   ~ 0
lrw
Entry Wire Line
	3600 6100 3700 6200
Entry Wire Line
	3600 6200 3700 6300
Entry Wire Line
	3600 6300 3700 6400
Entry Wire Line
	3600 6400 3700 6500
Entry Wire Line
	3600 6500 3700 6600
Entry Wire Line
	2700 6000 2800 6100
Entry Wire Line
	2700 6100 2800 6200
Entry Wire Line
	2700 6200 2800 6300
Entry Wire Line
	2700 6300 2800 6400
Entry Wire Line
	2700 6400 2800 6500
Entry Wire Line
	2700 6500 2800 6600
$Comp
L SW_PUSH SW2
U 1 1 5266C3AC
P 9100 6000
F 0 "SW2" H 9250 6110 50  0000 C CNN
F 1 "SW_U0" H 9100 5920 50  0000 C CNN
F 2 "" H 9100 6000 60  0000 C CNN
F 3 "" H 9100 6000 60  0000 C CNN
	1    9100 6000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 5266C3BE
P 9100 6250
F 0 "SW3" H 9250 6360 50  0000 C CNN
F 1 "SW_U1" H 9100 6170 50  0000 C CNN
F 2 "" H 9100 6250 60  0000 C CNN
F 3 "" H 9100 6250 60  0000 C CNN
	1    9100 6250
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 5266C3C9
P 10000 6000
F 0 "SW4" H 10150 6110 50  0000 C CNN
F 1 "SW_U2" H 10000 5920 50  0000 C CNN
F 2 "" H 10000 6000 60  0000 C CNN
F 3 "" H 10000 6000 60  0000 C CNN
	1    10000 6000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW5
U 1 1 5266C3D4
P 10000 6250
F 0 "SW5" H 10150 6360 50  0000 C CNN
F 1 "SW_U3" H 10000 6170 50  0000 C CNN
F 2 "" H 10000 6250 60  0000 C CNN
F 3 "" H 10000 6250 60  0000 C CNN
	1    10000 6250
	1    0    0    -1  
$EndComp
Text GLabel 9400 6000 2    60   Input ~ 0
vss
Text GLabel 9400 6250 2    60   Input ~ 0
vss
Text GLabel 10300 6000 2    60   Input ~ 0
vss
Text GLabel 10300 6250 2    60   Input ~ 0
vss
Text GLabel 8800 6000 0    60   Input ~ 0
btn0
Text GLabel 8800 6250 0    60   Input ~ 0
btn1
Text GLabel 9700 6000 1    60   Input ~ 0
btn2
Text GLabel 9700 6250 3    60   Input ~ 0
btn3
$Comp
L CSMALL C8
U 1 1 5266C5A1
P 10350 800
F 0 "C8" H 10375 850 30  0000 L CNN
F 1 "100nF" H 10375 750 30  0000 L CNN
F 2 "" H 10350 800 60  0000 C CNN
F 3 "" H 10350 800 60  0000 C CNN
	1    10350 800 
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C9
U 1 1 5266C5B3
P 10350 1000
F 0 "C9" H 10375 1050 30  0000 L CNN
F 1 "100nF" H 10375 950 30  0000 L CNN
F 2 "" H 10350 1000 60  0000 C CNN
F 3 "" H 10350 1000 60  0000 C CNN
	1    10350 1000
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C10
U 1 1 5266C5C4
P 10350 1200
F 0 "C10" H 10375 1250 30  0000 L CNN
F 1 "100nF" H 10375 1150 30  0000 L CNN
F 2 "" H 10350 1200 60  0000 C CNN
F 3 "" H 10350 1200 60  0000 C CNN
	1    10350 1200
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C11
U 1 1 5266C5CF
P 10350 1400
F 0 "C11" H 10375 1450 30  0000 L CNN
F 1 "100nF" H 10375 1350 30  0000 L CNN
F 2 "" H 10350 1400 60  0000 C CNN
F 3 "" H 10350 1400 60  0000 C CNN
	1    10350 1400
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C12
U 1 1 5266C5DA
P 10350 1600
F 0 "C12" H 10375 1650 30  0000 L CNN
F 1 "100nF" H 10375 1550 30  0000 L CNN
F 2 "" H 10350 1600 60  0000 C CNN
F 3 "" H 10350 1600 60  0000 C CNN
	1    10350 1600
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C13
U 1 1 5266C5E5
P 10750 800
F 0 "C13" H 10775 850 30  0000 L CNN
F 1 "4.7uF" H 10775 750 30  0000 L CNN
F 2 "" H 10750 800 60  0000 C CNN
F 3 "" H 10750 800 60  0000 C CNN
	1    10750 800 
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C14
U 1 1 5266C5F0
P 10750 1000
F 0 "C14" H 10775 1050 30  0000 L CNN
F 1 "100nF" H 10775 950 30  0000 L CNN
F 2 "" H 10750 1000 60  0000 C CNN
F 3 "" H 10750 1000 60  0000 C CNN
	1    10750 1000
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C15
U 1 1 5266C5FB
P 10750 1200
F 0 "C15" H 10775 1250 30  0000 L CNN
F 1 "1uF" H 10775 1150 30  0000 L CNN
F 2 "" H 10750 1200 60  0000 C CNN
F 3 "" H 10750 1200 60  0000 C CNN
	1    10750 1200
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C16
U 1 1 5266C606
P 10750 1400
F 0 "C16" H 10775 1450 30  0000 L CNN
F 1 "100nF" H 10775 1350 30  0000 L CNN
F 2 "" H 10750 1400 60  0000 C CNN
F 3 "" H 10750 1400 60  0000 C CNN
	1    10750 1400
	0    -1   -1   0   
$EndComp
Text GLabel 10250 800  0    60   Input ~ 0
3v3
Text GLabel 10850 800  2    60   Input ~ 0
vss
Text GLabel 11050 2250 1    60   Input ~ 0
12v
NoConn ~ 4350 1650
NoConn ~ 4250 1650
NoConn ~ 3250 2950
NoConn ~ 3250 4350
NoConn ~ 3250 4450
Text GLabel 6850 600  0    60   Input ~ 0
vss
Text GLabel 7400 5850 0    60   Input ~ 0
nrst
Text GLabel 7400 6250 0    60   Input ~ 0
btn3
Text GLabel 7400 6150 0    60   Input ~ 0
btn2
Text GLabel 7400 6050 0    60   Input ~ 0
btn1
Text GLabel 7400 5950 0    60   Input ~ 0
btn0
Text GLabel 8200 6250 2    60   Input ~ 0
vss
$Comp
L CONN_5X2 P10
U 1 1 5266C027
P 7800 6050
F 0 "P10" H 7800 6200 50  0000 C CNN
F 1 "BTNS" V 7800 5950 40  0000 C CNN
F 2 "" H 7800 6050 60  0000 C CNN
F 3 "" H 7800 6050 60  0000 C CNN
	1    7800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2150 8000 2150
Wire Wire Line
	8200 2250 8000 2250
Wire Wire Line
	8200 2350 8000 2350
Wire Wire Line
	8200 2450 8000 2450
Wire Wire Line
	8200 2550 8000 2550
Wire Wire Line
	8200 2650 8000 2650
Wire Wire Line
	8200 2750 8000 2750
Wire Wire Line
	8200 2850 8000 2850
Wire Wire Line
	8200 3400 8000 3400
Wire Wire Line
	8200 3500 8000 3500
Wire Wire Line
	8200 3600 8000 3600
Wire Wire Line
	8200 3700 8000 3700
Wire Wire Line
	8200 3800 8000 3800
Wire Wire Line
	8200 3900 8000 3900
Wire Wire Line
	8200 4000 8000 4000
Wire Wire Line
	8200 4100 8000 4100
Wire Wire Line
	8200 4650 8000 4650
Wire Wire Line
	8200 4750 8000 4750
Wire Wire Line
	8200 4850 8000 4850
Wire Wire Line
	8200 4950 8000 4950
Wire Wire Line
	8200 5050 8000 5050
Wire Wire Line
	8200 5150 8000 5150
Wire Wire Line
	8200 5250 8000 5250
Wire Wire Line
	8200 5350 8000 5350
Wire Bus Line
	7900 2050 7900 5250
Wire Bus Line
	4450 5150 7450 5150
Wire Bus Line
	7450 5150 7450 4150
Wire Wire Line
	1000 1150 750  1150
Wire Wire Line
	2500 950  3100 950 
Wire Wire Line
	3100 950  3100 1350
Wire Wire Line
	1000 1550 1000 1950
Wire Wire Line
	750  1850 3100 1850
Connection ~ 1650 1850
Connection ~ 1900 1850
Connection ~ 2500 1850
Wire Wire Line
	3100 1350 3300 1350
Wire Bus Line
	2300 7200 1400 7200
Wire Bus Line
	2300 7500 2300 7200
Connection ~ 1000 1850
Wire Wire Line
	2500 1850 2500 1750
Wire Wire Line
	1300 7100 750  7100
Wire Wire Line
	750  7100 750  6800
Wire Wire Line
	850  6800 850  7050
Wire Wire Line
	850  7050 1400 7050
Wire Wire Line
	1400 7050 1400 7100
Wire Wire Line
	1500 7100 1500 7000
Wire Wire Line
	1500 7000 1050 7000
Wire Wire Line
	1050 7000 1050 6800
Wire Wire Line
	1050 6800 1150 6800
Wire Wire Line
	1450 6800 1450 6950
Wire Wire Line
	1450 6950 1600 6950
Wire Wire Line
	1600 6950 1600 7100
Wire Wire Line
	1350 6800 1450 6800
Wire Wire Line
	2200 7100 2300 7100
Wire Wire Line
	2300 7100 2300 6800
Wire Wire Line
	2300 6800 2200 6800
Wire Wire Line
	2100 7100 2100 6900
Wire Wire Line
	2100 6900 2000 6900
Wire Wire Line
	2000 6900 2000 6800
Wire Wire Line
	2000 6800 1900 6800
Wire Wire Line
	1700 6800 1700 6950
Wire Wire Line
	1700 6950 2000 6950
Wire Wire Line
	2000 6950 2000 7100
Wire Wire Line
	1900 7100 1900 7000
Wire Wire Line
	1900 7000 1650 7000
Wire Wire Line
	1650 7000 1650 6850
Wire Wire Line
	1650 6850 1600 6850
Wire Wire Line
	1600 6850 1600 6800
Wire Bus Line
	2300 7500 3800 7500
Wire Wire Line
	750  2650 750  3550
Wire Wire Line
	750  3250 800  3250
Connection ~ 750  3250
Wire Wire Line
	1150 2650 1650 2650
Wire Wire Line
	6350 5050 6550 5050
Wire Wire Line
	6550 5050 6550 5400
Wire Wire Line
	7600 1800 7950 1800
Connection ~ 1400 4100
Wire Wire Line
	1400 4700 1400 4500
Connection ~ 1400 4700
Connection ~ 1750 4100
Connection ~ 1750 4700
Wire Bus Line
	9800 2250 9800 5450
Wire Bus Line
	9800 5450 10150 5450
Wire Bus Line
	10150 5450 10150 2150
Wire Bus Line
	7450 1500 7450 4050
Wire Wire Line
	3100 1850 3100 1750
Wire Wire Line
	5650 7150 6550 7150
Connection ~ 5950 7150
Connection ~ 6250 7150
Wire Bus Line
	3150 2050 3150 3750
Wire Bus Line
	3700 4850 3700 6600
Wire Bus Line
	3700 5750 2700 5750
Wire Bus Line
	2700 5750 2700 6500
Wire Bus Line
	3150 3750 2600 3750
Wire Bus Line
	2600 3750 2600 4850
Wire Bus Line
	2600 4850 3700 4850
Wire Wire Line
	10450 800  10450 1600
Connection ~ 10450 1000
Connection ~ 10450 1200
Connection ~ 10450 1400
Wire Wire Line
	10850 800  10850 1600
Connection ~ 10850 1200
Connection ~ 10850 1000
Wire Wire Line
	10850 1600 10450 1600
Connection ~ 10850 1400
Wire Wire Line
	10650 800  10650 1400
Connection ~ 10650 1200
Connection ~ 10650 1000
Wire Wire Line
	10250 800  10250 1600
Connection ~ 10250 1400
Connection ~ 10250 1200
Connection ~ 10250 1000
Wire Wire Line
	1400 4100 1900 4100
Wire Wire Line
	1400 4700 1900 4700
Wire Wire Line
	11050 2250 11050 5450
Connection ~ 11050 5350
Connection ~ 11050 5250
Connection ~ 11050 5150
Connection ~ 11050 5050
Connection ~ 11050 4950
Connection ~ 11050 4850
Connection ~ 11050 4750
Connection ~ 11050 4200
Connection ~ 11050 4100
Connection ~ 11050 4000
Connection ~ 11050 3900
Connection ~ 11050 3800
Connection ~ 11050 3700
Connection ~ 11050 3600
Connection ~ 11050 2850
Connection ~ 11050 2750
Connection ~ 11050 2650
Connection ~ 11050 2550
Connection ~ 11050 2450
Connection ~ 11050 2350
Connection ~ 11050 3500
Connection ~ 11050 2950
Wire Wire Line
	6850 600  9350 600 
Connection ~ 6950 600 
Connection ~ 7050 600 
Connection ~ 7150 600 
Connection ~ 7250 600 
Connection ~ 7350 600 
Connection ~ 7450 600 
Connection ~ 7550 600 
Connection ~ 7750 600 
Connection ~ 7850 600 
Connection ~ 7950 600 
Connection ~ 8050 600 
Connection ~ 8150 600 
Connection ~ 8250 600 
Connection ~ 8350 600 
Connection ~ 8450 600 
Connection ~ 8650 600 
Connection ~ 8750 600 
Connection ~ 8850 600 
Connection ~ 8950 600 
Connection ~ 9050 600 
Connection ~ 9150 600 
Connection ~ 9250 600 
Wire Bus Line
	5550 1550 6950 1550
Wire Bus Line
	6950 1550 6950 1500
Wire Bus Line
	6950 1500 9450 1500
Wire Wire Line
	7350 2250 7600 2250
Wire Wire Line
	7600 2250 7600 1800
Wire Wire Line
	8200 5850 8200 6250
Connection ~ 8200 5950
Connection ~ 8200 6050
Connection ~ 8200 6150
$EndSCHEMATC
