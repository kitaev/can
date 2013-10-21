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
Date ""
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
P 9400 2550
F 0 "U2" H 9400 2450 50  0000 C CNN
F 1 "ULN2803A" H 9400 2650 50  0000 C CNN
F 2 "MODULE" H 9400 2550 50  0001 C CNN
F 3 "DOCUMENTATION" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U3
U 1 1 52653864
P 9400 3800
F 0 "U3" H 9400 3700 50  0000 C CNN
F 1 "ULN2803A" H 9400 3900 50  0000 C CNN
F 2 "MODULE" H 9400 3800 50  0001 C CNN
F 3 "DOCUMENTATION" H 9400 3800 50  0001 C CNN
	1    9400 3800
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U4
U 1 1 52653878
P 9400 5050
F 0 "U4" H 9400 4950 50  0000 C CNN
F 1 "ULN2803A" H 9400 5150 50  0000 C CNN
F 2 "MODULE" H 9400 5050 50  0001 C CNN
F 3 "DOCUMENTATION" H 9400 5050 50  0001 C CNN
	1    9400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2150 8450 2150
Wire Wire Line
	8650 2250 8450 2250
Wire Wire Line
	8650 2350 8450 2350
Wire Wire Line
	8650 2450 8450 2450
Wire Wire Line
	8650 2550 8450 2550
Wire Wire Line
	8650 2650 8450 2650
Wire Wire Line
	8650 2750 8450 2750
Wire Wire Line
	8650 2850 8450 2850
Wire Wire Line
	8650 3400 8450 3400
Wire Wire Line
	8650 3500 8450 3500
Wire Wire Line
	8650 3600 8450 3600
Wire Wire Line
	8650 3700 8450 3700
Wire Wire Line
	8650 3800 8450 3800
Wire Wire Line
	8650 3900 8450 3900
Wire Wire Line
	8650 4000 8450 4000
Wire Wire Line
	8650 4100 8450 4100
Wire Wire Line
	8650 4650 8450 4650
Wire Wire Line
	8650 4750 8450 4750
Wire Wire Line
	8650 4850 8450 4850
Wire Wire Line
	8650 4950 8450 4950
Wire Wire Line
	8650 5050 8450 5050
Wire Wire Line
	8650 5150 8450 5150
Wire Wire Line
	8650 5250 8450 5250
Wire Wire Line
	8650 5350 8450 5350
Entry Wire Line
	8350 2050 8450 2150
Entry Wire Line
	8350 2150 8450 2250
Entry Wire Line
	8350 2250 8450 2350
Entry Wire Line
	8350 2350 8450 2450
Entry Wire Line
	8350 2450 8450 2550
Entry Wire Line
	8350 2550 8450 2650
Entry Wire Line
	8350 2650 8450 2750
Entry Wire Line
	8350 2750 8450 2850
Wire Bus Line
	8350 2050 8350 5250
Entry Wire Line
	8350 3300 8450 3400
Entry Wire Line
	8350 3400 8450 3500
Entry Wire Line
	8350 3500 8450 3600
Entry Wire Line
	8350 3600 8450 3700
Entry Wire Line
	8350 3700 8450 3800
Entry Wire Line
	8350 3800 8450 3900
Entry Wire Line
	8350 3900 8450 4000
Entry Wire Line
	8350 4550 8450 4650
Entry Wire Line
	8350 4650 8450 4750
Entry Wire Line
	8350 4650 8450 4750
Entry Wire Line
	8350 4750 8450 4850
Entry Wire Line
	8350 4750 8450 4850
Entry Wire Line
	8350 4850 8450 4950
Entry Wire Line
	8350 4850 8450 4950
Entry Wire Line
	8350 4950 8450 5050
Entry Wire Line
	8350 5050 8450 5150
Entry Wire Line
	8350 5150 8450 5250
Entry Wire Line
	8350 5150 8450 5250
Text Label 8550 2150 0    60   ~ 0
b8
Text Label 8550 2250 0    60   ~ 0
b7
Text Label 8550 2350 0    60   ~ 0
b6
Text Label 8550 2450 0    60   ~ 0
b5
Text Label 8550 2550 0    60   ~ 0
b4
Text Label 8550 2650 0    60   ~ 0
b3
Text Label 8550 2750 0    60   ~ 0
b2
Text Label 8550 2850 0    60   ~ 0
b1
Text Label 8550 3400 0    60   ~ 0
b16
Text Label 8550 3500 0    60   ~ 0
b15
Text Label 8550 3600 0    60   ~ 0
b14
Text Label 8550 3700 0    60   ~ 0
b13
Text Label 8550 3800 0    60   ~ 0
b12
Text Label 8550 3900 0    60   ~ 0
b11
Text Label 8550 4000 0    60   ~ 0
b10
Text Label 8550 4100 0    60   ~ 0
b9
Entry Wire Line
	8350 4000 8450 4100
Text Label 8550 4650 0    60   ~ 0
b24
Text Label 8550 4750 0    60   ~ 0
b23
Text Label 8550 4850 0    60   ~ 0
b22
Text Label 8550 4950 0    60   ~ 0
b21
Text Label 8550 5050 0    60   ~ 0
b20
Text Label 8550 5150 0    60   ~ 0
b19
Text Label 8550 5250 0    60   ~ 0
b18
Text Label 8550 5350 0    60   ~ 0
b17
Entry Wire Line
	8350 5250 8450 5350
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
Wire Bus Line
	4450 5150 7450 5150
Wire Bus Line
	7450 5150 7450 4150
Wire Bus Line
	7450 4150 8350 4150
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
Text GLabel 8650 4200 0    60   Input ~ 0
vss
Text GLabel 8650 5450 0    60   Input ~ 0
vss
Text GLabel 8650 2950 0    60   Input ~ 0
vss
Text GLabel 4650 1650 1    60   Input ~ 0
vss
$Comp
L CP1 C1
U 1 1 52654FB3
P 1000 1350
F 0 "C1" H 1050 1450 50  0000 L CNN
F 1 "CP1" H 1050 1250 50  0000 L CNN
F 2 "" H 1000 1350 60  0000 C CNN
F 3 "" H 1000 1350 60  0000 C CNN
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
F 1 "DIODESCH" H 2500 1450 40  0000 C CNN
F 2 "" H 2500 1550 60  0000 C CNN
F 3 "" H 2500 1550 60  0000 C CNN
	1    2500 1550
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 526550C5
P 2800 1350
F 0 "L1" V 2750 1350 40  0000 C CNN
F 1 "INDUCTOR" V 2900 1350 40  0000 C CNN
F 2 "" H 2800 1350 60  0000 C CNN
F 3 "" H 2800 1350 60  0000 C CNN
	1    2800 1350
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C2
U 1 1 526550D9
P 3100 1550
F 0 "C2" H 3150 1650 50  0000 L CNN
F 1 "CP1" H 3150 1450 50  0000 L CNN
F 2 "" H 3100 1550 60  0000 C CNN
F 3 "" H 3100 1550 60  0000 C CNN
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
Wire Wire Line
	1000 1150 750  1150
Wire Wire Line
	2500 950  3100 950 
Wire Wire Line
	3100 950  3100 1350
Wire Wire Line
	3100 1750 2500 1750
Wire Wire Line
	1000 1550 1000 1950
Wire Wire Line
	750  1850 2500 1850
Connection ~ 1650 1850
Connection ~ 1900 1850
Connection ~ 2500 1850
Text GLabel 750  1850 0    60   Input ~ 0
vss
Wire Wire Line
	3100 1350 3300 1350
Text GLabel 3300 1350 2    60   Input ~ 0
3v3
Text GLabel 3000 5800 2    60   Input ~ 0
canh
Text GLabel 3000 5900 2    60   Input ~ 0
canl
Text GLabel 1500 5800 0    60   Input ~ 0
vss
Text GLabel 1500 5900 0    60   Input ~ 0
3v3
Text GLabel 1500 5700 0    60   Input ~ 0
can1_tx
Text GLabel 1500 6000 0    60   Input ~ 0
can1_rx
$Comp
L SN65HVD230 U6
U 1 1 5265548F
P 2250 5850
F 0 "U6" H 2250 5750 50  0000 C CNN
F 1 "SN65HVD230" H 2250 5950 50  0000 C CNN
F 2 "MODULE" H 2250 5850 50  0001 C CNN
F 3 "DOCUMENTATION" H 2250 5850 50  0001 C CNN
	1    2250 5850
	1    0    0    -1  
$EndComp
NoConn ~ 3000 6000
Text GLabel 3000 5700 2    60   Input ~ 0
vss
$Comp
L CONN_4 P1
U 1 1 52655589
P 1450 6750
F 0 "P1" V 1400 6750 50  0000 C CNN
F 1 "CONN_4" V 1500 6750 50  0000 C CNN
F 2 "" H 1450 6750 60  0000 C CNN
F 3 "" H 1450 6750 60  0000 C CNN
	1    1450 6750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_4 P2
U 1 1 5265559D
P 2050 6750
F 0 "P2" V 2000 6750 50  0000 C CNN
F 1 "CONN_4" V 2100 6750 50  0000 C CNN
F 2 "" H 2050 6750 60  0000 C CNN
F 3 "" H 2050 6750 60  0000 C CNN
	1    2050 6750
	0    -1   -1   0   
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
Wire Bus Line
	2300 7200 1400 7200
$Comp
L R R1
U 1 1 526556DC
P 2850 7400
F 0 "R1" V 2930 7400 50  0000 C CNN
F 1 "R" V 2850 7400 50  0000 C CNN
F 2 "" H 2850 7400 60  0000 C CNN
F 3 "" H 2850 7400 60  0000 C CNN
	1    2850 7400
	0    -1   -1   0   
$EndComp
$Comp
L JUMPER JP1
U 1 1 526556F0
P 3400 7400
F 0 "JP1" H 3400 7550 60  0000 C CNN
F 1 "JUMPER" H 3400 7320 40  0000 C CNN
F 2 "" H 3400 7400 60  0000 C CNN
F 3 "" H 3400 7400 60  0000 C CNN
	1    3400 7400
	1    0    0    -1  
$EndComp
Text Label 2600 7400 0    60   ~ 0
c2
Text Label 3700 7400 0    60   ~ 0
c3
Entry Wire Line
	2600 7400 2700 7500
Entry Wire Line
	3700 7400 3800 7500
Wire Bus Line
	2300 7500 3800 7500
Wire Bus Line
	2300 7500 2300 7200
Wire Wire Line
	2200 7100 2550 7100
Wire Wire Line
	2100 7100 2100 7050
Wire Wire Line
	2000 7100 2000 7000
Wire Wire Line
	1900 7100 1900 6950
Wire Wire Line
	1900 6950 2550 6950
Text GLabel 2550 6950 2    60   Input ~ 0
12v
Text GLabel 2550 7100 2    60   Input ~ 0
vss
Wire Wire Line
	2000 7000 2400 7000
Wire Wire Line
	2400 7000 2400 6600
Wire Wire Line
	2400 6600 2550 6600
Wire Wire Line
	2100 7050 2450 7050
Wire Wire Line
	2450 7050 2450 6750
Wire Wire Line
	2450 6750 2550 6750
Text GLabel 2550 6600 2    60   Input ~ 0
canh
Text GLabel 2550 6750 2    60   Input ~ 0
canl
$Comp
L GND #PWR2
U 1 1 52655A89
P 1000 1950
F 0 "#PWR2" H 1000 1950 30  0001 C CNN
F 1 "GND" H 1000 1880 30  0001 C CNN
F 2 "" H 1000 1950 60  0000 C CNN
F 3 "" H 1000 1950 60  0000 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR1
U 1 1 52655AD6
P 800 1150
F 0 "#PWR1" H 800 1100 20  0001 C CNN
F 1 "+12V" H 800 1250 30  0000 C CNN
F 2 "" H 800 1150 60  0000 C CNN
F 3 "" H 800 1150 60  0000 C CNN
	1    800  1150
	1    0    0    -1  
$EndComp
Connection ~ 1000 1850
Wire Wire Line
	2500 1850 2500 1750
$Comp
L ULN2803A U7
U 1 1 52656480
P 5750 6250
F 0 "U7" H 5750 6150 50  0000 C CNN
F 1 "ULN2803A" H 5750 6350 50  0000 C CNN
F 2 "MODULE" H 5750 6250 50  0001 C CNN
F 3 "DOCUMENTATION" H 5750 6250 50  0001 C CNN
	1    5750 6250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
