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
LIBS:rj458
LIBS:stm32f303
LIBS:stm8s208cbt
LIBS:open-project
LIBS:soporoko-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "19 jun 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CP1 C5
U 1 1 51ACDE80
P 850 2200
F 0 "C5" H 900 2300 50  0000 L CNN
F 1 "10uF" H 900 2100 50  0000 L CNN
F 2 "~" H 850 2200 60  0000 C CNN
F 3 "~" H 850 2200 60  0000 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 51ACDE8F
P 2000 2200
F 0 "C6" H 2050 2300 50  0000 L CNN
F 1 "10uF" H 2050 2100 50  0000 L CNN
F 2 "~" H 2000 2200 60  0000 C CNN
F 3 "~" H 2000 2200 60  0000 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 51ACDFC6
P 1200 3100
F 0 "X1" H 1200 3250 60  0000 C CNN
F 1 "8MHz" V 1200 2950 60  0000 R CNN
F 2 "~" H 1200 3100 60  0000 C CNN
F 3 "~" H 1200 3100 60  0000 C CNN
	1    1200 3100
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 51AE3245
P 800 2800
F 0 "C3" H 800 2900 40  0000 L CNN
F 1 "20pF" H 806 2715 40  0000 L CNN
F 2 "~" H 838 2650 30  0000 C CNN
F 3 "~" H 800 2800 60  0000 C CNN
	1    800  2800
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 51AE3263
P 800 3400
F 0 "C4" H 800 3500 40  0000 L CNN
F 1 "20pF" H 806 3315 40  0000 L CNN
F 2 "~" H 838 3250 30  0000 C CNN
F 3 "~" H 800 3400 60  0000 C CNN
	1    800  3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 51AE32B0
P 600 3600
F 0 "#PWR01" H 600 3600 30  0001 C CNN
F 1 "GND" H 600 3530 30  0001 C CNN
F 2 "" H 600 3600 60  0000 C CNN
F 3 "" H 600 3600 60  0000 C CNN
	1    600  3600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 51AE34E1
P 600 4200
F 0 "R1" V 680 4200 40  0000 C CNN
F 1 "10K" V 607 4201 40  0000 C CNN
F 2 "~" V 530 4200 30  0000 C CNN
F 3 "~" H 600 4200 30  0000 C CNN
	1    600  4200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 51AE34F0
P 600 4750
F 0 "C2" H 600 4850 40  0000 L CNN
F 1 "180pF" H 606 4665 40  0000 L CNN
F 2 "~" H 638 4600 30  0000 C CNN
F 3 "~" H 600 4750 60  0000 C CNN
	1    600  4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 51AE34FF
P 600 5300
F 0 "#PWR02" H 600 5300 30  0001 C CNN
F 1 "GND" H 600 5230 30  0001 C CNN
F 2 "" H 600 5300 60  0000 C CNN
F 3 "" H 600 5300 60  0000 C CNN
	1    600  5300
	1    0    0    -1  
$EndComp
Text Label 600  3850 0    60   ~ 0
Vdd
Text Label 850  4500 0    60   ~ 0
NRST
Text Label 2250 2800 0    60   ~ 0
OSCIN
Text Label 2250 3400 0    60   ~ 0
OSCOUT
$Comp
L GND #PWR03
U 1 1 51AE38F2
P 3150 5000
F 0 "#PWR03" H 3150 5000 30  0001 C CNN
F 1 "GND" H 3150 4930 30  0001 C CNN
F 2 "" H 3150 5000 60  0000 C CNN
F 3 "" H 3150 5000 60  0000 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 51AE3986
P 3150 4550
F 0 "C9" H 3150 4650 40  0000 L CNN
F 1 "100nF" H 3156 4465 40  0000 L CNN
F 2 "~" H 3188 4400 30  0000 C CNN
F 3 "~" H 3150 4550 60  0000 C CNN
	1    3150 4550
	1    0    0    -1  
$EndComp
Text Label 3150 4200 0    60   ~ 0
Vdd
Text Label 850  1700 0    60   ~ 0
V12
NoConn ~ 8350 1850
Text Label 6950 1850 0    60   ~ 0
CAN_RX
Text Label 6950 1550 0    60   ~ 0
CAN_TX
Text Label 6950 1650 0    60   ~ 0
Vss
Text Label 6950 1750 0    60   ~ 0
Vdd
Text Label 8600 1650 0    60   ~ 0
CANH
Text Label 8600 1750 0    60   ~ 0
CANL
$Comp
L C C10
U 1 1 51AE4155
P 3450 4550
F 0 "C10" H 3450 4650 40  0000 L CNN
F 1 "100nF" H 3456 4465 40  0000 L CNN
F 2 "~" H 3488 4400 30  0000 C CNN
F 3 "~" H 3450 4550 60  0000 C CNN
	1    3450 4550
	1    0    0    -1  
$EndComp
Text Label 3150 4900 0    60   ~ 0
Vss
$Comp
L JUMPER JP1
U 1 1 51AE41FA
P 9600 1900
F 0 "JP1" H 9600 2050 60  0000 C CNN
F 1 "JUMPER" H 9600 1820 40  0000 C CNN
F 2 "~" H 9600 1900 60  0000 C CNN
F 3 "~" H 9600 1900 60  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 51AE4209
P 10150 1900
F 0 "R5" V 10230 1900 40  0000 C CNN
F 1 "120R" V 10157 1901 40  0000 C CNN
F 2 "~" V 10080 1900 30  0000 C CNN
F 3 "~" H 10150 1900 30  0000 C CNN
	1    10150 1900
	0    -1   -1   0   
$EndComp
Text Label 10500 1900 0    60   ~ 0
CANH
Text Label 9100 1900 0    60   ~ 0
CANL
$Comp
L GND #PWR04
U 1 1 51AE8410
P 8700 1400
F 0 "#PWR04" H 8700 1400 30  0001 C CNN
F 1 "GND" H 8700 1330 30  0001 C CNN
F 2 "" H 8700 1400 60  0000 C CNN
F 3 "" H 8700 1400 60  0000 C CNN
	1    8700 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_4X2 P7
U 1 1 51BC93FD
P 9900 3750
F 0 "P7" H 9900 4000 50  0000 C CNN
F 1 "CONN_4X2" V 9900 3750 40  0000 C CNN
F 2 "" H 9900 3750 60  0000 C CNN
F 3 "" H 9900 3750 60  0000 C CNN
	1    9900 3750
	1    0    0    -1  
$EndComp
Text Label 10400 3900 0    60   ~ 0
Vss
$Comp
L STM32F303 U2
U 1 1 51C01FEB
P 5300 3250
F 0 "U2" H 5300 3150 50  0000 C CNN
F 1 "STM32F303" H 5300 3350 50  0000 C CNN
F 2 "MODULE" H 5300 3250 50  0001 C CNN
F 3 "DOCUMENTATION" H 5300 3250 50  0001 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
Text Label 3950 3100 2    60   ~ 0
OSCIN
Text Label 3950 3200 2    60   ~ 0
OSCOUT
Text Label 5250 2200 1    60   ~ 0
C0
Text Label 5350 2200 1    60   ~ 0
C1
Text Label 5450 2200 1    60   ~ 0
C2
Text Label 5550 2200 1    60   ~ 0
C3
Text Label 6650 3100 0    60   ~ 0
C5
Text Label 6650 3200 0    60   ~ 0
C6
Text Label 6650 3300 0    60   ~ 0
C7
Text Label 5150 4300 3    60   ~ 0
C8
Text Label 5050 4300 3    60   ~ 0
C9
Text Label 4950 4300 3    60   ~ 0
C10
Text Label 4850 4300 3    60   ~ 0
C11
Text Label 4750 4300 3    60   ~ 0
C12
Text Label 3950 3800 2    60   ~ 0
C13
Text Label 3950 3700 2    60   ~ 0
C14
Text Label 3950 3600 2    60   ~ 0
C15
$Comp
L MCP2551 U3
U 1 1 51C02760
P 7800 1900
F 0 "U3" H 7700 2000 60  0000 C CNN
F 1 "SN65HVD230D" H 7750 1750 60  0000 C CNN
F 2 "~" H 7700 2000 60  0000 C CNN
F 3 "~" H 7700 2000 60  0000 C CNN
	1    7800 1900
	1    0    0    -1  
$EndComp
Text Label 9050 2700 2    60   ~ 0
CANL
Text Label 8950 2550 2    60   ~ 0
CANH
Text Label 9150 2700 0    60   ~ 0
GND
Text Label 9250 2550 0    60   ~ 0
V12
Text Label 6650 2700 0    60   ~ 0
Vdd
Text Label 4750 2200 1    60   ~ 0
Vdd
Text Label 3950 3500 2    60   ~ 0
Vdd
Text Label 3950 2700 2    60   ~ 0
Vdd
Text Label 5850 4300 3    60   ~ 0
Vdd
Text Label 4850 2200 1    60   ~ 0
Vss
Text Label 3950 3400 2    60   ~ 0
Vss
Text Label 6650 2800 0    60   ~ 0
Vss
Text Label 5750 4300 3    60   ~ 0
Vss
$Comp
L CONN_4X2 P4
U 1 1 51C0766D
P 9900 4300
F 0 "P4" H 9900 4550 50  0000 C CNN
F 1 "CONN_4X2" V 9900 4300 40  0000 C CNN
F 2 "" H 9900 4300 60  0000 C CNN
F 3 "" H 9900 4300 60  0000 C CNN
	1    9900 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_4X2 P2
U 1 1 51C07673
P 8550 3750
F 0 "P2" H 8550 4000 50  0000 C CNN
F 1 "CONN_4X2" V 8550 3750 40  0000 C CNN
F 2 "" H 8550 3750 60  0000 C CNN
F 3 "" H 8550 3750 60  0000 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_4X2 P3
U 1 1 51C07679
P 8550 4300
F 0 "P3" H 8550 4550 50  0000 C CNN
F 1 "CONN_4X2" V 8550 4300 40  0000 C CNN
F 2 "" H 8550 4300 60  0000 C CNN
F 3 "" H 8550 4300 60  0000 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
Text Label 8150 3600 2    60   ~ 0
C0
Text Label 8150 3700 2    60   ~ 0
C1
Text Label 8150 3800 2    60   ~ 0
C2
Text Label 8150 3900 2    60   ~ 0
C3
Text Label 8150 4150 2    60   ~ 0
C4
Text Label 8150 4250 2    60   ~ 0
C5
Text Label 8150 4350 2    60   ~ 0
C6
Text Label 8150 4450 2    60   ~ 0
C7
Text Label 9500 3600 2    60   ~ 0
C8
Text Label 9500 3700 2    60   ~ 0
C9
Text Label 9500 3800 2    60   ~ 0
C10
Text Label 9500 3900 2    60   ~ 0
C11
Text Label 9500 4150 2    60   ~ 0
C12
Text Label 9500 4250 2    60   ~ 0
C13
Text Label 9500 4350 2    60   ~ 0
C14
Text Label 9500 4450 2    60   ~ 0
C15
Text Label 10400 4450 0    60   ~ 0
Vss
Text Label 9050 4450 0    60   ~ 0
Vss
Text Label 9050 3900 0    60   ~ 0
Vss
Text Label 6650 3000 0    60   ~ 0
C4
$Comp
L C C11
U 1 1 51C07B1B
P 3700 4550
F 0 "C11" H 3700 4650 40  0000 L CNN
F 1 "100nF" H 3706 4465 40  0000 L CNN
F 2 "~" H 3738 4400 30  0000 C CNN
F 3 "~" H 3700 4550 60  0000 C CNN
	1    3700 4550
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 51C07B21
P 3950 4550
F 0 "C12" H 3950 4650 40  0000 L CNN
F 1 "100nF" H 3956 4465 40  0000 L CNN
F 2 "~" H 3988 4400 30  0000 C CNN
F 3 "~" H 3950 4550 60  0000 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 51C07B27
P 4200 4550
F 0 "C13" H 4200 4650 40  0000 L CNN
F 1 "100nF" H 4206 4465 40  0000 L CNN
F 2 "~" H 4238 4400 30  0000 C CNN
F 3 "~" H 4200 4550 60  0000 C CNN
	1    4200 4550
	1    0    0    -1  
$EndComp
Connection ~ 850  2400
Connection ~ 2000 2000
Connection ~ 2000 2400
Wire Wire Line
	1000 2800 2250 2800
Connection ~ 1200 2800
Wire Wire Line
	1000 3400 2250 3400
Connection ~ 1200 3400
Wire Wire Line
	600  2800 600  3600
Connection ~ 600  3400
Wire Wire Line
	600  4450 600  4550
Wire Wire Line
	600  4950 600  5300
Wire Wire Line
	600  4500 1000 4500
Connection ~ 600  4500
Wire Wire Line
	600  3950 600  3850
Wire Wire Line
	3150 4750 3150 5000
Wire Wire Line
	3150 4350 3150 4200
Wire Wire Line
	7200 1550 6950 1550
Wire Wire Line
	7200 1850 6950 1850
Wire Wire Line
	7200 1650 6950 1650
Wire Wire Line
	7200 1750 6950 1750
Wire Wire Line
	8350 1650 8600 1650
Wire Wire Line
	8350 1750 8600 1750
Wire Wire Line
	8500 1550 8350 1550
Wire Wire Line
	8500 1300 8500 1550
Wire Wire Line
	3150 4350 4200 4350
Wire Wire Line
	10400 1900 10500 1900
Wire Wire Line
	9300 1900 9100 1900
Wire Wire Line
	8500 1300 8700 1300
Wire Wire Line
	8700 1300 8700 1400
Connection ~ 600  2800
Connection ~ 1000 2800
Connection ~ 3150 4750
Connection ~ 3450 4750
Connection ~ 3450 4350
Connection ~ 3150 4350
Connection ~ 600  4550
Connection ~ 600  4450
Connection ~ 600  4950
Connection ~ 600  3950
Connection ~ 1000 3400
Wire Wire Line
	10300 3600 10300 3900
Connection ~ 10300 3700
Connection ~ 10300 3800
Wire Wire Line
	10300 3900 10400 3900
Wire Wire Line
	8950 3600 8950 3900
Connection ~ 8950 3700
Connection ~ 8950 3800
Wire Wire Line
	8950 4150 8950 4450
Connection ~ 8950 4250
Connection ~ 8950 4350
Wire Wire Line
	10300 4150 10300 4450
Connection ~ 10300 4250
Connection ~ 10300 4350
Wire Wire Line
	10300 4450 10400 4450
Wire Wire Line
	8950 4450 9050 4450
Wire Wire Line
	8950 3900 9050 3900
Connection ~ 3700 4350
Connection ~ 3950 4350
Connection ~ 3700 4750
Text Label 3950 3300 2    60   ~ 0
NRST
$Comp
L CONN_5 P1
U 1 1 51C07E3E
P 4050 1200
F 0 "P1" V 4000 1200 50  0000 C CNN
F 1 "SWD" V 4100 1200 50  0000 C CNN
F 2 "" H 4050 1200 60  0000 C CNN
F 3 "" H 4050 1200 60  0000 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
Text Label 3650 1000 2    60   ~ 0
Vdd
Text Label 3650 1100 2    60   ~ 0
SWDIO
Text Label 3650 1200 2    60   ~ 0
Vss
Text Label 3650 1300 2    60   ~ 0
SWCLK
Text Label 3650 1400 2    60   ~ 0
NRST
Text Label 4950 2200 1    60   ~ 0
CAN_TX
Text Label 5050 2200 1    60   ~ 0
CAN_RX
Text Label 5150 2200 1    60   ~ 0
Vss
Text Label 5850 2200 1    60   ~ 0
SWCLK
Text Label 6650 2900 0    60   ~ 0
SWDIO
NoConn ~ 5750 2200
NoConn ~ 5350 4300
NoConn ~ 5450 4300
NoConn ~ 5550 4300
NoConn ~ 5650 4300
NoConn ~ 6650 3800
NoConn ~ 6650 3700
NoConn ~ 6650 3600
NoConn ~ 6650 3500
NoConn ~ 3950 3000
NoConn ~ 3950 2900
NoConn ~ 3950 2800
Wire Wire Line
	3150 4750 4200 4750
Connection ~ 3950 4750
NoConn ~ 5650 2200
Text Label 2550 2000 2    60   ~ 0
Vdd
$Comp
L CONN_4 P5
U 1 1 51C1D0E8
P 9100 2200
F 0 "P5" V 9050 2200 50  0000 C CNN
F 1 "CONN_4" V 9150 2200 50  0000 C CNN
F 2 "" H 9100 2200 60  0000 C CNN
F 3 "" H 9100 2200 60  0000 C CNN
	1    9100 2200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_4 P6
U 1 1 51C1D0F5
P 9100 3050
F 0 "P6" V 9050 3050 50  0000 C CNN
F 1 "CONN_4" V 9150 3050 50  0000 C CNN
F 2 "" H 9100 3050 60  0000 C CNN
F 3 "" H 9100 3050 60  0000 C CNN
	1    9100 3050
	0    -1   1    0   
$EndComp
Wire Wire Line
	8950 2550 8950 2700
Wire Wire Line
	9050 2550 9050 2700
Wire Wire Line
	9150 2550 9150 2700
Wire Wire Line
	9250 2550 9250 2700
Wire Wire Line
	600  2400 2350 2400
$Comp
L NCP1117ST12T3G U1
U 1 1 51C1D42E
P 1400 2050
F 0 "U1" H 1550 1854 40  0000 C CNN
F 1 "LD1117S33CTR" H 1400 2250 40  0000 C CNN
F 2 "~" H 1400 2050 60  0000 C CNN
F 3 "~" H 1400 2050 60  0000 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 51C1D464
P 1400 4100
F 0 "D1" H 1400 4200 50  0000 C CNN
F 1 "LED" H 1400 4000 50  0000 C CNN
F 2 "~" H 1400 4100 60  0000 C CNN
F 3 "~" H 1400 4100 60  0000 C CNN
	1    1400 4100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 51C1D473
P 1400 4650
F 0 "R2" V 1480 4650 40  0000 C CNN
F 1 "560R" V 1407 4651 40  0000 C CNN
F 2 "~" V 1330 4650 30  0000 C CNN
F 3 "~" H 1400 4650 30  0000 C CNN
	1    1400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3900 1400 3750
Wire Wire Line
	1400 4300 1400 4400
Wire Wire Line
	1400 4900 1400 5000
Text Label 1400 5000 0    60   ~ 0
Vss
$Comp
L GND #PWR05
U 1 1 51C1D709
P 1400 5000
F 0 "#PWR05" H 1400 5000 30  0001 C CNN
F 1 "GND" H 1400 4930 30  0001 C CNN
F 2 "" H 1400 5000 60  0000 C CNN
F 3 "" H 1400 5000 60  0000 C CNN
	1    1400 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 51C1D812
P 2800 4100
F 0 "D4" H 2800 4200 50  0000 C CNN
F 1 "LED" H 2800 4000 50  0000 C CNN
F 2 "~" H 2800 4100 60  0000 C CNN
F 3 "~" H 2800 4100 60  0000 C CNN
	1    2800 4100
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 51C1D818
P 2800 4650
F 0 "R6" V 2880 4650 40  0000 C CNN
F 1 "560R" V 2807 4651 40  0000 C CNN
F 2 "~" V 2730 4650 30  0000 C CNN
F 3 "~" H 2800 4650 30  0000 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 51C1D824
P 2800 5000
F 0 "#PWR06" H 2800 5000 30  0001 C CNN
F 1 "GND" H 2800 4930 30  0001 C CNN
F 2 "" H 2800 5000 60  0000 C CNN
F 3 "" H 2800 5000 60  0000 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4900 2800 5000
Wire Wire Line
	2800 4300 2800 4400
Wire Wire Line
	2800 3900 2800 3750
Text Label 2800 3750 0    60   ~ 0
LED
Text Label 6650 3400 0    60   ~ 0
LED
Wire Wire Line
	1800 2000 2550 2000
Wire Wire Line
	1400 2300 1400 2500
Connection ~ 1400 2400
Text Label 1400 2500 2    60   ~ 0
Vss
Wire Wire Line
	850  1500 850  2000
Wire Wire Line
	600  2000 1000 2000
Connection ~ 850  2000
Connection ~ 1000 2000
$Comp
L +12V #PWR07
U 1 1 51C1E44C
P 1000 1500
F 0 "#PWR07" H 1000 1450 20  0001 C CNN
F 1 "+12V" H 1000 1600 30  0000 C CNN
F 2 "" H 1000 1500 60  0000 C CNN
F 3 "" H 1000 1500 60  0000 C CNN
	1    1000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1500 1200 1500
$Comp
L PWR_FLAG #FLG08
U 1 1 51C1E4BA
P 1200 1500
F 0 "#FLG08" H 1200 1595 30  0001 C CNN
F 1 "PWR_FLAG" H 1200 1680 30  0000 C CNN
F 2 "" H 1200 1500 60  0000 C CNN
F 3 "" H 1200 1500 60  0000 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Connection ~ 1000 1500
$Comp
L C C1
U 1 1 51C1E623
P 600 2200
F 0 "C1" H 600 2300 40  0000 L CNN
F 1 "100nF" H 606 2115 40  0000 L CNN
F 2 "~" H 638 2050 30  0000 C CNN
F 3 "~" H 600 2200 60  0000 C CNN
	1    600  2200
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 51C1E630
P 2350 2200
F 0 "C7" H 2350 2300 40  0000 L CNN
F 1 "100nF" H 2356 2115 40  0000 L CNN
F 2 "~" H 2388 2050 30  0000 C CNN
F 3 "~" H 2350 2200 60  0000 C CNN
	1    2350 2200
	1    0    0    -1  
$EndComp
Connection ~ 2350 2000
Wire Wire Line
	1000 4500 1000 4550
Connection ~ 600  5150
NoConn ~ 5250 4300
NoConn ~ 5100 4750
Text Label 1400 3750 0    60   ~ 0
Vdd
$EndSCHEMATC
