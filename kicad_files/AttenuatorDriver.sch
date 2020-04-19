EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Attenuator Driver Shift/ULN Edition"
Date "2020-01-21"
Rev "2"
Comp "Marcus Gustafsson, SA5PMG"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7400 5000 1400 1100
U 5E54E3AA
F0 "MCU_PWR_ETC" 50
F1 "MCU_PWR_ETC.sch" 50
$EndSheet
Wire Wire Line
	3300 4550 3800 4550
Text Label 3800 4550 2    50   ~ 0
SER_CASC_2
Wire Wire Line
	600  5950 1100 5950
Wire Wire Line
	600  5450 1100 5450
Text Label 600  5450 0    50   ~ 0
SER_CASC_2
Wire Wire Line
	850  3850 2500 3850
Text Label 850  4150 0    50   ~ 0
SER_LATCH
Text Label 850  3850 0    50   ~ 0
SER_CLK
Text Label 850  3650 0    50   ~ 0
SER_CASC_1
Wire Wire Line
	2500 3650 850  3650
Wire Wire Line
	2500 4150 850  4150
Wire Wire Line
	6000 5050 6000 5000
Wire Wire Line
	5750 4600 6000 4600
Connection ~ 5750 4600
Wire Wire Line
	5750 4750 5750 4600
Wire Wire Line
	5350 4600 5350 4450
$Comp
L dk_Diodes-Zener-Single:MMSZ5231B-7-F Z?
U 1 1 5EEC9B69
P 6000 4800
AR Path="/5E5A6B40/5EEC9B69" Ref="Z?"  Part="1" 
AR Path="/5EEC9B69" Ref="Z3"  Part="1" 
F 0 "Z3" V 6053 4697 60  0000 R CNN
F 1 "MMSZ4713-TP" V 5947 4697 60  0000 R CNN
F 2 "digikey-footprints:SOD-123" H 6200 5000 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 6200 5100 60  0001 L CNN
F 4 "MMSZ5231B-FDICT-ND" H 6200 5200 60  0001 L CNN "Digi-Key_PN"
F 5 "MMSZ5231B-7-F" H 6200 5300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 5400 60  0001 L CNN "Category"
F 7 "Diodes - Zener - Single" H 6200 5500 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 6200 5600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMSZ5231B-7-F/MMSZ5231B-FDICT-ND/755506" H 6200 5700 60  0001 L CNN "DK_Detail_Page"
F 10 "DIODE ZENER 5.1V 500MW SOD123" H 6200 5800 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 6200 5900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 6000 60  0001 L CNN "Status"
	1    6000 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4200 6050 4200
Wire Wire Line
	5800 4250 5800 4200
Wire Wire Line
	5350 4250 5800 4250
Wire Wire Line
	6550 4150 6550 4100
Wire Wire Line
	5350 4150 6550 4150
Wire Wire Line
	5800 4100 6050 4100
Wire Wire Line
	5800 4050 5800 4100
Wire Wire Line
	5350 4050 5800 4050
Wire Wire Line
	5850 4050 6550 4050
Wire Wire Line
	5850 3950 5850 4050
Wire Wire Line
	5350 3950 5850 3950
Wire Wire Line
	5900 4000 6050 4000
Wire Wire Line
	5900 3850 5900 4000
Wire Wire Line
	5350 3850 5900 3850
Wire Wire Line
	5950 3950 6550 3950
Wire Wire Line
	5950 3750 5950 3950
Wire Wire Line
	5350 3750 5950 3750
Wire Wire Line
	6000 3650 5350 3650
Wire Wire Line
	6000 3900 6000 3650
Wire Wire Line
	6050 3900 6000 3900
Connection ~ 5350 4600
Wire Wire Line
	5350 4750 5350 4600
$Comp
L power:GND #PWR023
U 1 1 5EEC9B89
P 5550 5050
AR Path="/5EEC9B89" Ref="#PWR023"  Part="1" 
AR Path="/5E5A6B40/5EEC9B89" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 5550 4800 50  0001 C CNN
F 1 "GND" H 5555 4877 50  0000 C CNN
F 2 "" H 5550 5050 50  0001 C CNN
F 3 "" H 5550 5050 50  0001 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C8
U 1 1 5EEC9B9A
P 5350 4950
AR Path="/5EEC9B9A" Ref="C8"  Part="1" 
AR Path="/5E793D9E/5EEC9B9A" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9B9A" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9B9A" Ref="C?"  Part="1" 
F 0 "C8" H 5150 5100 45  0000 C CNN
F 1 "0.1uF" H 5150 5000 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5350 5200 20  0001 C CNN
F 3 "" H 5350 4950 50  0001 C CNN
F 4 "" V 5189 5000 60  0000 C CNN "Field4"
	1    5350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4800 4850 4750
$Comp
L power:GND #PWR017
U 1 1 5EEC9BAA
P 4850 4800
AR Path="/5EEC9BAA" Ref="#PWR017"  Part="1" 
AR Path="/5E5A6B40/5EEC9BAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 4850 4550 50  0001 C CNN
F 1 "GND" H 4855 4627 50  0000 C CNN
F 2 "" H 4850 4800 50  0001 C CNN
F 3 "" H 4850 4800 50  0001 C CNN
	1    4850 4800
	1    0    0    -1  
$EndComp
$Comp
L SA5PMG:ULN2803ADWR Q?
U 1 1 5EEC9BC9
P 5150 4450
AR Path="/5E5A6B40/5EEC9BC9" Ref="Q?"  Part="1" 
AR Path="/5EEC9BC9" Ref="Q2"  Part="1" 
F 0 "Q2" H 4800 5537 60  0000 C CNN
F 1 "ULN2803ADWR" H 4800 5431 60  0000 C CNN
F 2 "digikey-footprints:SOIC-18_W7.5mm" H 5350 4650 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 5350 4750 60  0001 L CNN
F 4 "296-15777-1-ND" H 5350 4850 60  0001 L CNN "Digi-Key_PN"
F 5 "ULN2803ADWR" H 5350 4950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5350 5050 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Arrays" H 5350 5150 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 5350 5250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/ULN2803ADWR/296-15777-1-ND/598088" H 5350 5350 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS 8NPN DARL 50V 0.5A 18SO" H 5350 5450 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5350 5550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5350 5650 60  0001 L CNN "Status"
	1    5150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3450 3100 3300
Wire Wire Line
	3100 3300 3300 3300
Wire Wire Line
	3650 3300 3600 3300
$Comp
L power:GND #PWR012
U 1 1 5EEC9BD2
P 3650 3300
AR Path="/5EEC9BD2" Ref="#PWR012"  Part="1" 
AR Path="/5E5A6B40/5EEC9BD2" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 3650 3050 50  0001 C CNN
F 1 "GND" H 3655 3127 50  0000 C CNN
F 2 "" H 3650 3300 50  0001 C CNN
F 3 "" H 3650 3300 50  0001 C CNN
	1    3650 3300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C3
U 1 1 5EEC9BD9
P 3500 3300
AR Path="/5EEC9BD9" Ref="C3"  Part="1" 
AR Path="/5E793D9E/5EEC9BD9" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9BD9" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9BD9" Ref="C?"  Part="1" 
F 0 "C3" V 3550 3250 45  0000 C CNN
F 1 "0.1uF" V 3350 3350 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3500 3550 20  0001 C CNN
F 3 "" H 3500 3300 50  0001 C CNN
F 4 "" V 3339 3350 60  0000 C CNN "Field4"
	1    3500 3300
	0    -1   -1   0   
$EndComp
Connection ~ 3100 3300
$Comp
L power:+5V #PWR?
U 1 1 5EEC9BE0
P 3100 3300
AR Path="/5E793D9E/5EEC9BE0" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EEC9BE0" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/5EEC9BE0" Ref="#PWR?"  Part="1" 
AR Path="/5EEC9BE0" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3100 3150 50  0001 C CNN
F 1 "+5V" H 3100 3450 50  0000 C CNN
F 2 "" H 3100 3300 50  0001 C CNN
F 3 "" H 3100 3300 50  0001 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3450 3100 3450
Wire Wire Line
	2900 4800 2900 4750
$Comp
L power:GND #PWR07
U 1 1 5EEC9BE8
P 2900 4800
AR Path="/5EEC9BE8" Ref="#PWR07"  Part="1" 
AR Path="/5E5A6B40/5EEC9BE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2900 4550 50  0001 C CNN
F 1 "GND" H 2905 4627 50  0000 C CNN
F 2 "" H 2900 4800 50  0001 C CNN
F 3 "" H 2900 4800 50  0001 C CNN
	1    2900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4050 6550 4000
Wire Wire Line
	6550 3900 6550 3950
$Comp
L SparkFun-Connectors:CONN_05X2PTH J4
U 1 1 5EEC9C0B
P 6300 4100
AR Path="/5EEC9C0B" Ref="J4"  Part="1" 
AR Path="/5E5A6B40/5EEC9C0B" Ref="J?"  Part="1" 
F 0 "J4" H 6300 4610 45  0000 C CNN
F 1 "ATTENUATOR_2" H 6300 4526 45  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05_Pitch2.54mm" H 6300 4500 20  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
F 4 "CONN-08499" H 6300 4431 60  0001 C CNN "Field4"
	1    6300 4100
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 5EEC9C19
P 2900 4050
AR Path="/5EEC9C19" Ref="U3"  Part="1" 
AR Path="/5E5A6B40/5EEC9C19" Ref="U?"  Part="1" 
F 0 "U3" H 2900 4831 50  0000 C CNN
F 1 "74HC595" H 2900 4740 50  0000 C CNN
F 2 "digikey-footprints:SOIC-16_W3.90mm" H 2900 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2900 4050 50  0001 C CNN
	1    2900 4050
	1    0    0    -1  
$EndComp
Text Label 600  5950 0    50   ~ 0
SER_LATCH
Wire Wire Line
	1050 1750 2500 1750
Text Label 1150 2050 0    50   ~ 0
SER_LATCH
Text Label 1150 1750 0    50   ~ 0
SER_CLK
Wire Wire Line
	2500 2050 1050 2050
Wire Wire Line
	3300 2450 3800 2450
$Comp
L SparkFun-Connectors:CONN_02JST-PTH-2 J?
U 1 1 5EEC9D11
P 4100 6650
AR Path="/5E5A6B40/5EEC9D11" Ref="J?"  Part="1" 
AR Path="/5EEC9D11" Ref="J2"  Part="1" 
F 0 "J2" H 3872 6658 45  0000 R CNN
F 1 "RELAY_2" H 3872 6742 45  0000 R CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4100 6950 20  0001 C CNN
F 3 "" H 4100 6650 50  0001 C CNN
F 4 "" H 3872 6784 60  0001 R CNN "Field4"
	1    4100 6650
	-1   0    0    1   
$EndComp
$Comp
L SparkFun-Connectors:CONN_02JST-PTH-2 J?
U 1 1 5EEC9D1B
P 4100 6450
AR Path="/5E5A6B40/5EEC9D1B" Ref="J?"  Part="1" 
AR Path="/5EEC9D1B" Ref="J1"  Part="1" 
F 0 "J1" H 3872 6458 45  0000 R CNN
F 1 "RELAY_1" H 3872 6542 45  0000 R CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4100 6750 20  0001 C CNN
F 3 "" H 4100 6450 50  0001 C CNN
F 4 "" H 3872 6584 60  0001 R CNN "Field4"
	1    4100 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 6000 4850 5950
Wire Wire Line
	4600 5550 4850 5550
Connection ~ 4600 5550
Wire Wire Line
	4600 5700 4600 5550
$Comp
L dk_Diodes-Zener-Single:MMSZ5231B-7-F Z?
U 1 1 5EEC9D33
P 4850 5750
AR Path="/5E5A6B40/5EEC9D33" Ref="Z?"  Part="1" 
AR Path="/5EEC9D33" Ref="Z1"  Part="1" 
F 0 "Z1" V 4903 5647 60  0000 R CNN
F 1 "MMSZ4713-TP" V 4797 5647 60  0000 R CNN
F 2 "digikey-footprints:SOD-123" H 5050 5950 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 5050 6050 60  0001 L CNN
F 4 "MMSZ5231B-FDICT-ND" H 5050 6150 60  0001 L CNN "Digi-Key_PN"
F 5 "MMSZ5231B-7-F" H 5050 6250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5050 6350 60  0001 L CNN "Category"
F 7 "Diodes - Zener - Single" H 5050 6450 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 5050 6550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMSZ5231B-7-F/MMSZ5231B-FDICT-ND/755506" H 5050 6650 60  0001 L CNN "DK_Detail_Page"
F 10 "DIODE ZENER 5.1V 500MW SOD123" H 5050 6750 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 5050 6850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5050 6950 60  0001 L CNN "Status"
	1    4850 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 6050 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	4200 6000 4400 6000
$Comp
L power:GND #PWR015
U 1 1 5EEC9D41
P 4400 6050
AR Path="/5EEC9D41" Ref="#PWR015"  Part="1" 
AR Path="/5E5A6B40/5EEC9D41" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 4400 5800 50  0001 C CNN
F 1 "GND" H 4405 5877 50  0000 C CNN
F 2 "" H 4400 6050 50  0001 C CNN
F 3 "" H 4400 6050 50  0001 C CNN
	1    4400 6050
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C5
U 1 1 5EEC9D52
P 4200 5900
AR Path="/5EEC9D52" Ref="C5"  Part="1" 
AR Path="/5E793D9E/5EEC9D52" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9D52" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9D52" Ref="C?"  Part="1" 
F 0 "C5" H 4150 6050 45  0000 C CNN
F 1 "1uF" H 4300 6050 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4200 6150 20  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
F 4 "" V 4039 5950 60  0000 C CNN "Field4"
	1    4200 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2950 6000 2900
Wire Wire Line
	5750 2500 6000 2500
Connection ~ 5750 2500
Wire Wire Line
	5750 2650 5750 2500
Wire Wire Line
	5350 2500 5350 2350
$Comp
L dk_Diodes-Zener-Single:MMSZ5231B-7-F Z?
U 1 1 5EEC9D8A
P 6000 2700
AR Path="/5E5A6B40/5EEC9D8A" Ref="Z?"  Part="1" 
AR Path="/5EEC9D8A" Ref="Z2"  Part="1" 
F 0 "Z2" V 6100 2850 60  0000 R CNN
F 1 "MMSZ4713-TP" V 6250 3000 60  0000 R CNN
F 2 "digikey-footprints:SOD-123" H 6200 2900 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 6200 3000 60  0001 L CNN
F 4 "MMSZ5231B-FDICT-ND" H 6200 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "MMSZ5231B-7-F" H 6200 3200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 3300 60  0001 L CNN "Category"
F 7 "Diodes - Zener - Single" H 6200 3400 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds18010.pdf" H 6200 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMSZ5231B-7-F/MMSZ5231B-FDICT-ND/755506" H 6200 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "DIODE ZENER 5.1V 500MW SOD123" H 6200 3700 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 6200 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 3900 60  0001 L CNN "Status"
	1    6000 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 2250 6550 2200
Wire Wire Line
	5800 2100 6050 2100
Wire Wire Line
	5800 2150 5800 2100
Wire Wire Line
	5350 2150 5800 2150
Wire Wire Line
	6550 2050 6550 2000
Wire Wire Line
	5350 2050 6550 2050
Wire Wire Line
	5800 2000 6050 2000
Wire Wire Line
	5800 1950 5800 2000
Wire Wire Line
	5350 1950 5800 1950
Wire Wire Line
	5850 1950 6550 1950
Wire Wire Line
	5850 1850 5850 1950
Wire Wire Line
	5350 1850 5850 1850
Wire Wire Line
	5900 1900 6050 1900
Wire Wire Line
	5900 1750 5900 1900
Wire Wire Line
	5350 1750 5900 1750
Wire Wire Line
	5950 1850 6550 1850
Wire Wire Line
	5950 1650 5950 1850
Wire Wire Line
	5350 1650 5950 1650
Wire Wire Line
	6000 1550 5350 1550
Wire Wire Line
	6000 1800 6000 1550
Wire Wire Line
	6050 1800 6000 1800
Connection ~ 5350 2500
Wire Wire Line
	5350 2650 5350 2500
Wire Wire Line
	5550 3000 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	5350 2950 5550 2950
$Comp
L power:GND #PWR021
U 1 1 5EEC9DAA
P 5550 3000
AR Path="/5EEC9DAA" Ref="#PWR021"  Part="1" 
AR Path="/5E5A6B40/5EEC9DAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 5550 2750 50  0001 C CNN
F 1 "GND" H 5555 2827 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C7
U 1 1 5EEC9DBB
P 5350 2850
AR Path="/5EEC9DBB" Ref="C7"  Part="1" 
AR Path="/5E793D9E/5EEC9DBB" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9DBB" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9DBB" Ref="C?"  Part="1" 
F 0 "C7" H 5150 3000 45  0000 C CNN
F 1 "0.1uF" H 5150 2900 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5350 3100 20  0001 C CNN
F 3 "" H 5350 2850 50  0001 C CNN
F 4 "" V 5189 2900 60  0000 C CNN "Field4"
	1    5350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2500 5750 2500
Wire Wire Line
	5550 2500 5350 2500
Connection ~ 5550 2500
$Comp
L power:+24V #PWR020
U 1 1 5EEC9DC4
P 5550 2500
AR Path="/5EEC9DC4" Ref="#PWR020"  Part="1" 
AR Path="/5E5A6B40/5EEC9DC4" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 5550 2350 50  0001 C CNN
F 1 "+24V" H 5565 2673 50  0000 C CNN
F 2 "" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0001 C CNN
	1    5550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2700 4850 2650
$Comp
L power:GND #PWR016
U 1 1 5EEC9DCB
P 4850 2700
AR Path="/5EEC9DCB" Ref="#PWR016"  Part="1" 
AR Path="/5E5A6B40/5EEC9DCB" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 4850 2450 50  0001 C CNN
F 1 "GND" H 4855 2527 50  0000 C CNN
F 2 "" H 4850 2700 50  0001 C CNN
F 3 "" H 4850 2700 50  0001 C CNN
	1    4850 2700
	1    0    0    -1  
$EndComp
$Comp
L SA5PMG:ULN2803ADWR Q?
U 1 1 5EEC9DEA
P 5150 2350
AR Path="/5E5A6B40/5EEC9DEA" Ref="Q?"  Part="1" 
AR Path="/5EEC9DEA" Ref="Q1"  Part="1" 
F 0 "Q1" H 4800 3437 60  0000 C CNN
F 1 "ULN2803ADWR" H 4800 3331 60  0000 C CNN
F 2 "digikey-footprints:SOIC-18_W7.5mm" H 5350 2550 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 5350 2650 60  0001 L CNN
F 4 "296-15777-1-ND" H 5350 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "ULN2803ADWR" H 5350 2850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5350 2950 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Arrays" H 5350 3050 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 5350 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/ULN2803ADWR/296-15777-1-ND/598088" H 5350 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS 8NPN DARL 50V 0.5A 18SO" H 5350 3350 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5350 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5350 3550 60  0001 L CNN "Status"
	1    5150 2350
	1    0    0    -1  
$EndComp
Text Label 3800 2450 2    50   ~ 0
SER_CASC_1
Text Label 2450 6050 2    50   ~ 0
RELAY_1A
Text Label 2450 5650 2    50   ~ 0
RELAY_1B
Wire Wire Line
	3100 1350 3100 1200
Wire Wire Line
	3100 1200 3300 1200
Wire Wire Line
	3650 1200 3600 1200
$Comp
L power:GND #PWR011
U 1 1 5EEC9DFB
P 3650 1200
AR Path="/5EEC9DFB" Ref="#PWR011"  Part="1" 
AR Path="/5E5A6B40/5EEC9DFB" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 3650 950 50  0001 C CNN
F 1 "GND" H 3655 1027 50  0000 C CNN
F 2 "" H 3650 1200 50  0001 C CNN
F 3 "" H 3650 1200 50  0001 C CNN
	1    3650 1200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C2
U 1 1 5EEC9E02
P 3500 1200
AR Path="/5EEC9E02" Ref="C2"  Part="1" 
AR Path="/5E793D9E/5EEC9E02" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9E02" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9E02" Ref="C?"  Part="1" 
F 0 "C2" V 3550 1150 45  0000 C CNN
F 1 "0.1uF" V 3350 1250 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3500 1450 20  0001 C CNN
F 3 "" H 3500 1200 50  0001 C CNN
F 4 "" V 3339 1250 60  0000 C CNN "Field4"
	1    3500 1200
	0    -1   -1   0   
$EndComp
Connection ~ 3100 1200
$Comp
L power:+5V #PWR?
U 1 1 5EEC9E09
P 3100 1200
AR Path="/5E793D9E/5EEC9E09" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EEC9E09" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/5EEC9E09" Ref="#PWR?"  Part="1" 
AR Path="/5EEC9E09" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3100 1050 50  0001 C CNN
F 1 "+5V" H 3100 1350 50  0000 C CNN
F 2 "" H 3100 1200 50  0001 C CNN
F 3 "" H 3100 1200 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5100 1900 5100
Wire Wire Line
	1700 5250 1700 5100
Wire Wire Line
	2250 5100 2200 5100
$Comp
L power:GND #PWR04
U 1 1 5EEC9E12
P 2250 5100
AR Path="/5EEC9E12" Ref="#PWR04"  Part="1" 
AR Path="/5E5A6B40/5EEC9E12" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 2250 4850 50  0001 C CNN
F 1 "GND" H 2255 4927 50  0000 C CNN
F 2 "" H 2250 5100 50  0001 C CNN
F 3 "" H 2250 5100 50  0001 C CNN
	1    2250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5250 1500 5250
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C1
U 1 1 5EEC9E1A
P 2100 5100
AR Path="/5EEC9E1A" Ref="C1"  Part="1" 
AR Path="/5E793D9E/5EEC9E1A" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EEC9E1A" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EEC9E1A" Ref="C?"  Part="1" 
F 0 "C1" V 2150 5050 45  0000 C CNN
F 1 "0.1uF" V 1950 5150 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2100 5350 20  0001 C CNN
F 3 "" H 2100 5100 50  0001 C CNN
F 4 "" V 1939 5150 60  0000 C CNN "Field4"
	1    2100 5100
	0    -1   -1   0   
$EndComp
Connection ~ 1700 5100
$Comp
L power:+5V #PWR?
U 1 1 5EEC9E21
P 1700 5100
AR Path="/5E793D9E/5EEC9E21" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EEC9E21" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/5EEC9E21" Ref="#PWR?"  Part="1" 
AR Path="/5EEC9E21" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1700 4950 50  0001 C CNN
F 1 "+5V" H 1700 5250 50  0000 C CNN
F 2 "" H 1700 5100 50  0001 C CNN
F 3 "" H 1700 5100 50  0001 C CNN
	1    1700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1350 3100 1350
Wire Wire Line
	2900 2700 2900 2650
Wire Wire Line
	1400 6000 1400 5950
$Comp
L power:GND #PWR01
U 1 1 5EEC9E2A
P 1400 6000
AR Path="/5EEC9E2A" Ref="#PWR01"  Part="1" 
AR Path="/5E5A6B40/5EEC9E2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1400 5750 50  0001 C CNN
F 1 "GND" H 1405 5827 50  0000 C CNN
F 2 "" H 1400 6000 50  0001 C CNN
F 3 "" H 1400 6000 50  0001 C CNN
	1    1400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EEC9E30
P 2900 2700
AR Path="/5EEC9E30" Ref="#PWR06"  Part="1" 
AR Path="/5E5A6B40/5EEC9E30" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 2900 2450 50  0001 C CNN
F 1 "GND" H 2905 2527 50  0000 C CNN
F 2 "" H 2900 2700 50  0001 C CNN
F 3 "" H 2900 2700 50  0001 C CNN
	1    2900 2700
	1    0    0    -1  
$EndComp
Text Label 2450 6150 2    50   ~ 0
RELAY_1_EN
Wire Wire Line
	6550 1950 6550 1900
Wire Wire Line
	6550 1800 6600 1800
Wire Wire Line
	6550 1800 6550 1850
$Comp
L power:GND #PWR028
U 1 1 5EEC9E48
P 6550 2250
AR Path="/5EEC9E48" Ref="#PWR028"  Part="1" 
AR Path="/5E5A6B40/5EEC9E48" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 6550 2000 50  0001 C CNN
F 1 "GND" H 6400 2200 50  0000 C CNN
F 2 "" H 6550 2250 50  0001 C CNN
F 3 "" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR026
U 1 1 5EEC9E52
P 6050 2200
AR Path="/5EEC9E52" Ref="#PWR026"  Part="1" 
AR Path="/5E5A6B40/5EEC9E52" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 6050 2050 50  0001 C CNN
F 1 "+24V" H 6065 2373 50  0000 C CNN
F 2 "" H 6050 2200 50  0001 C CNN
F 3 "" H 6050 2200 50  0001 C CNN
	1    6050 2200
	0    -1   -1   0   
$EndComp
Connection ~ 6550 1800
$Comp
L SparkFun-Connectors:CONN_05X2PTH J3
U 1 1 5EEC9E5A
P 6300 2000
AR Path="/5EEC9E5A" Ref="J3"  Part="1" 
AR Path="/5E5A6B40/5EEC9E5A" Ref="J?"  Part="1" 
F 0 "J3" H 6300 1700 45  0000 C CNN
F 1 "ATTENUATOR_1" H 6300 1550 45  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05_Pitch2.54mm" H 6300 2400 20  0001 C CNN
F 3 "" H 6300 2000 50  0001 C CNN
F 4 "CONN-08499" H 6300 2331 60  0001 C CNN "Field4"
	1    6300 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	6600 1800 6600 850 
Text GLabel 8450 1350 2    50   Output ~ 0
LED_03
Wire Wire Line
	8450 1350 8400 1350
Wire Wire Line
	8450 1850 8400 1850
$Comp
L Device:R R25
U 1 1 5EEC9ECA
P 8250 850
AR Path="/5EEC9ECA" Ref="R25"  Part="1" 
AR Path="/5E5A6B40/5EEC9ECA" Ref="R?"  Part="1" 
F 0 "R25" V 8150 850 50  0000 C CNN
F 1 "330" V 8250 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 850 50  0001 C CNN
F 3 "~" H 8250 850 50  0001 C CNN
	1    8250 850 
	0    1    1    0   
$EndComp
Text GLabel 8450 2350 2    50   Output ~ 0
LED_01
Text GLabel 1050 1750 0    50   Input ~ 0
SER_CLK
Text GLabel 1050 2050 0    50   Input ~ 0
SER_LATCH
NoConn ~ 1900 6350
Text GLabel 8450 1850 2    50   Output ~ 0
LED_02
Text GLabel 8450 850  2    50   Output ~ 0
LED_04
$Comp
L power:+VSW #PWR?
U 1 1 5F41555C
P 6050 4300
AR Path="/5E54E3AA/5F41555C" Ref="#PWR?"  Part="1" 
AR Path="/5F41555C" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 6050 4150 50  0001 C CNN
F 1 "+VSW" H 6065 4473 50  0000 C CNN
F 2 "" H 6050 4300 50  0001 C CNN
F 3 "" H 6050 4300 50  0001 C CNN
	1    6050 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4600 5550 4600
$Comp
L power:+VSW #PWR?
U 1 1 5F426FA9
P 5550 4600
AR Path="/5E54E3AA/5F426FA9" Ref="#PWR?"  Part="1" 
AR Path="/5F426FA9" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 5550 4450 50  0001 C CNN
F 1 "+VSW" H 5565 4773 50  0000 C CNN
F 2 "" H 5550 4600 50  0001 C CNN
F 3 "" H 5550 4600 50  0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
Connection ~ 5550 4600
Wire Wire Line
	5550 4600 5750 4600
Wire Wire Line
	4200 5550 4400 5550
$Comp
L power:+8V #PWR?
U 1 1 5F42917E
P 4400 5550
AR Path="/5E54E3AA/5F42917E" Ref="#PWR?"  Part="1" 
AR Path="/5F42917E" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4400 5400 50  0001 C CNN
F 1 "+8V" H 4415 5723 50  0000 C CNN
F 2 "" H 4400 5550 50  0001 C CNN
F 3 "" H 4400 5550 50  0001 C CNN
	1    4400 5550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5EEC9E68
P 2900 1950
AR Path="/5EEC9E68" Ref="U2"  Part="1" 
AR Path="/5E5A6B40/5EEC9E68" Ref="U?"  Part="1" 
F 0 "U2" H 2900 2731 50  0000 C CNN
F 1 "74HC595" H 2900 2640 50  0000 C CNN
F 2 "digikey-footprints:SOIC-16_W3.90mm" H 2900 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
Text Label 600  5650 0    50   ~ 0
SER_CLK
Wire Wire Line
	600  5650 1100 5650
Text GLabel 1050 2200 0    50   Input ~ 0
~SER_EN
Text Label 1150 1550 0    50   ~ 0
SER_DATA
Wire Wire Line
	2500 1550 1050 1550
Text GLabel 1050 1550 0    50   Input ~ 0
SER_DATA
Wire Wire Line
	1050 2200 2500 2200
Wire Wire Line
	2500 2200 2500 2150
Text Label 1150 2200 0    50   ~ 0
~SER_EN
Text Label 850  4300 0    50   ~ 0
~SER_EN
Wire Wire Line
	2500 4300 2500 4250
Wire Wire Line
	850  4300 2500 4300
Text Label 600  6100 0    50   ~ 0
~SER_EN
Wire Wire Line
	1100 6100 1100 6050
Wire Wire Line
	600  6100 1100 6100
Connection ~ 4400 5550
Wire Wire Line
	4400 5550 4600 5550
Wire Wire Line
	5350 5050 5550 5050
Connection ~ 5550 5050
$Comp
L 74xx:74HC595 U1
U 1 1 5EEC9E37
P 1500 5850
AR Path="/5EEC9E37" Ref="U1"  Part="1" 
AR Path="/5E5A6B40/5EEC9E37" Ref="U?"  Part="1" 
F 0 "U1" H 1500 6631 50  0000 C CNN
F 1 "74HC595" H 1500 6540 50  0000 C CNN
F 2 "digikey-footprints:SOIC-16_W3.90mm" H 1500 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 1500 5850 50  0001 C CNN
	1    1500 5850
	1    0    0    -1  
$EndComp
Text Label 2450 5950 2    50   ~ 0
RELAY_2B
Text Label 2450 5750 2    50   ~ 0
RELAY_2A
Wire Wire Line
	4200 5700 4200 5550
$Comp
L 74xx:74HCT04 U5
U 1 1 5FFB46E7
P 7750 850
F 0 "U5" H 7750 1167 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 1076 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 850 50  0001 C CNN
	1    7750 850 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 2 1 5FFB5865
P 7750 1350
F 0 "U5" H 7750 1667 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 1576 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 1350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 1350 50  0001 C CNN
	2    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 7 1 5FFBB7C1
P 10650 1250
F 0 "U5" H 10880 1296 50  0000 L CNN
F 1 "SN74LS06DR" H 10880 1205 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10650 1250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10650 1250 50  0001 C CNN
	7    10650 1250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C11
U 1 1 5FFBD4C3
P 10250 1300
AR Path="/5FFBD4C3" Ref="C11"  Part="1" 
AR Path="/5E793D9E/5FFBD4C3" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5FFBD4C3" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5FFBD4C3" Ref="C?"  Part="1" 
F 0 "C11" H 10050 1450 45  0000 C CNN
F 1 "0.1uF" H 10050 1350 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 10250 1550 20  0001 C CNN
F 3 "" H 10250 1300 50  0001 C CNN
F 4 "" V 10089 1350 60  0000 C CNN "Field4"
	1    10250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FFBD861
P 10400 750
AR Path="/5E793D9E/5FFBD861" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5FFBD861" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/5FFBD861" Ref="#PWR?"  Part="1" 
AR Path="/5FFBD861" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 10400 600 50  0001 C CNN
F 1 "+5V" H 10400 900 50  0000 C CNN
F 2 "" H 10400 750 50  0001 C CNN
F 3 "" H 10400 750 50  0001 C CNN
	1    10400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 750  10400 750 
Wire Wire Line
	10400 750  10250 750 
Wire Wire Line
	10250 750  10250 1100
Connection ~ 10400 750 
Wire Wire Line
	10250 1400 10250 1750
Wire Wire Line
	10250 1750 10450 1750
$Comp
L power:GND #PWR040
U 1 1 5FFFC14E
P 10450 1850
AR Path="/5FFFC14E" Ref="#PWR040"  Part="1" 
AR Path="/5E5A6B40/5FFFC14E" Ref="#PWR?"  Part="1" 
F 0 "#PWR040" H 10450 1600 50  0001 C CNN
F 1 "GND" H 10300 1800 50  0000 C CNN
F 2 "" H 10450 1850 50  0001 C CNN
F 3 "" H 10450 1850 50  0001 C CNN
	1    10450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1850 10450 1750
Connection ~ 10450 1750
Wire Wire Line
	10450 1750 10650 1750
Wire Wire Line
	8050 850  8100 850 
Wire Wire Line
	8400 850  8450 850 
$Comp
L Device:R R26
U 1 1 600A8FBA
P 8250 1350
AR Path="/600A8FBA" Ref="R26"  Part="1" 
AR Path="/5E5A6B40/600A8FBA" Ref="R?"  Part="1" 
F 0 "R26" V 8150 1350 50  0000 C CNN
F 1 "330" V 8250 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 1350 50  0001 C CNN
F 3 "~" H 8250 1350 50  0001 C CNN
	1    8250 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 600A91AE
P 8250 1850
AR Path="/600A91AE" Ref="R27"  Part="1" 
AR Path="/5E5A6B40/600A91AE" Ref="R?"  Part="1" 
F 0 "R27" V 8150 1850 50  0000 C CNN
F 1 "330" V 8250 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 1850 50  0001 C CNN
F 3 "~" H 8250 1850 50  0001 C CNN
	1    8250 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 600A9300
P 8250 2350
AR Path="/600A9300" Ref="R28"  Part="1" 
AR Path="/5E5A6B40/600A9300" Ref="R?"  Part="1" 
F 0 "R28" V 8150 2350 50  0000 C CNN
F 1 "330" V 8250 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2350 8450 2350
$Comp
L Device:R R10
U 1 1 60103D17
P 7250 850
AR Path="/60103D17" Ref="R10"  Part="1" 
AR Path="/5E5A6B40/60103D17" Ref="R?"  Part="1" 
F 0 "R10" V 7150 850 50  0000 C CNN
F 1 "4.7k" V 7250 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 850 50  0001 C CNN
F 3 "~" H 7250 850 50  0001 C CNN
	1    7250 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 850  7450 850 
Wire Wire Line
	7400 1350 7450 1350
Wire Wire Line
	7400 1850 7450 1850
Wire Wire Line
	7400 2350 7450 2350
Wire Wire Line
	8050 2350 8100 2350
Wire Wire Line
	8050 1850 8100 1850
Wire Wire Line
	8050 1350 8100 1350
$Comp
L power:GND #PWR030
U 1 1 601AFA19
P 7100 600
AR Path="/601AFA19" Ref="#PWR030"  Part="1" 
AR Path="/5E5A6B40/601AFA19" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 7100 350 50  0001 C CNN
F 1 "GND" H 7105 427 50  0000 C CNN
F 2 "" H 7100 600 50  0001 C CNN
F 3 "" H 7100 600 50  0001 C CNN
	1    7100 600 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60249A77
P 7250 600
AR Path="/60249A77" Ref="R9"  Part="1" 
AR Path="/5E5A6B40/60249A77" Ref="R?"  Part="1" 
F 0 "R9" V 7150 600 50  0000 C CNN
F 1 "620" V 7250 600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 600 50  0001 C CNN
F 3 "~" H 7250 600 50  0001 C CNN
	1    7250 600 
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 6028476A
P 7250 1350
AR Path="/6028476A" Ref="R12"  Part="1" 
AR Path="/5E5A6B40/6028476A" Ref="R?"  Part="1" 
F 0 "R12" V 7150 1350 50  0000 C CNN
F 1 "4.7k" V 7250 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 1350 50  0001 C CNN
F 3 "~" H 7250 1350 50  0001 C CNN
	1    7250 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60284770
P 7100 1100
AR Path="/60284770" Ref="#PWR031"  Part="1" 
AR Path="/5E5A6B40/60284770" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 7100 850 50  0001 C CNN
F 1 "GND" H 7105 927 50  0000 C CNN
F 2 "" H 7100 1100 50  0001 C CNN
F 3 "" H 7100 1100 50  0001 C CNN
	1    7100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60284776
P 7250 1100
AR Path="/60284776" Ref="R11"  Part="1" 
AR Path="/5E5A6B40/60284776" Ref="R?"  Part="1" 
F 0 "R11" V 7150 1100 50  0000 C CNN
F 1 "620" V 7250 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 1100 50  0001 C CNN
F 3 "~" H 7250 1100 50  0001 C CNN
	1    7250 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1350 7100 1350
$Comp
L Device:R R14
U 1 1 602986E5
P 7250 1850
AR Path="/602986E5" Ref="R14"  Part="1" 
AR Path="/5E5A6B40/602986E5" Ref="R?"  Part="1" 
F 0 "R14" V 7150 1850 50  0000 C CNN
F 1 "4.7k" V 7250 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 1850 50  0001 C CNN
F 3 "~" H 7250 1850 50  0001 C CNN
	1    7250 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 602986EB
P 7100 1600
AR Path="/602986EB" Ref="#PWR032"  Part="1" 
AR Path="/5E5A6B40/602986EB" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 7100 1350 50  0001 C CNN
F 1 "GND" H 7105 1427 50  0000 C CNN
F 2 "" H 7100 1600 50  0001 C CNN
F 3 "" H 7100 1600 50  0001 C CNN
	1    7100 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 602986F1
P 7250 1600
AR Path="/602986F1" Ref="R13"  Part="1" 
AR Path="/5E5A6B40/602986F1" Ref="R?"  Part="1" 
F 0 "R13" V 7150 1600 50  0000 C CNN
F 1 "620" V 7250 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 1600 50  0001 C CNN
F 3 "~" H 7250 1600 50  0001 C CNN
	1    7250 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 602ACCE9
P 7250 2350
AR Path="/602ACCE9" Ref="R16"  Part="1" 
AR Path="/5E5A6B40/602ACCE9" Ref="R?"  Part="1" 
F 0 "R16" V 7150 2350 50  0000 C CNN
F 1 "4.7k" V 7250 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 2350 50  0001 C CNN
F 3 "~" H 7250 2350 50  0001 C CNN
	1    7250 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 602ACCEF
P 7100 2100
AR Path="/602ACCEF" Ref="#PWR033"  Part="1" 
AR Path="/5E5A6B40/602ACCEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 7100 1850 50  0001 C CNN
F 1 "GND" H 7105 1927 50  0000 C CNN
F 2 "" H 7100 2100 50  0001 C CNN
F 3 "" H 7100 2100 50  0001 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 602ACCF5
P 7250 2100
AR Path="/602ACCF5" Ref="R15"  Part="1" 
AR Path="/5E5A6B40/602ACCF5" Ref="R?"  Part="1" 
F 0 "R15" V 7150 2100 50  0000 C CNN
F 1 "620" V 7250 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 2100 50  0001 C CNN
F 3 "~" H 7250 2100 50  0001 C CNN
	1    7250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2350 6600 2100
Wire Wire Line
	6600 2100 6550 2100
Connection ~ 6550 2100
Connection ~ 6550 2000
Wire Wire Line
	7050 1350 7050 1400
Wire Wire Line
	7050 1400 6650 1400
Wire Wire Line
	6650 1900 6550 1900
Connection ~ 6550 1900
Wire Wire Line
	6650 1400 6650 1900
Wire Wire Line
	6550 2000 6700 2000
Wire Wire Line
	6700 2000 6700 1900
Wire Wire Line
	6700 1900 6850 1900
Wire Wire Line
	6850 1900 6850 1850
Wire Wire Line
	6550 3900 6600 3900
Wire Wire Line
	6600 3900 6600 2950
Text GLabel 8450 3450 2    50   Output ~ 0
LED_07
Wire Wire Line
	8450 3450 8400 3450
Wire Wire Line
	8450 3950 8400 3950
$Comp
L Device:R R29
U 1 1 6044C6CA
P 8250 2950
AR Path="/6044C6CA" Ref="R29"  Part="1" 
AR Path="/5E5A6B40/6044C6CA" Ref="R?"  Part="1" 
F 0 "R29" V 8150 2950 50  0000 C CNN
F 1 "330" V 8250 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 2950 50  0001 C CNN
F 3 "~" H 8250 2950 50  0001 C CNN
	1    8250 2950
	0    1    1    0   
$EndComp
Text GLabel 8450 4450 2    50   Output ~ 0
LED_05
Text GLabel 8450 3950 2    50   Output ~ 0
LED_06
Text GLabel 8450 2950 2    50   Output ~ 0
LED_08
$Comp
L 74xx:74HCT04 U6
U 1 1 6044C6D3
P 7750 2950
F 0 "U6" H 7750 3267 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 3176 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 2950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 2950 50  0001 C CNN
	1    7750 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U6
U 2 1 6044C6D9
P 7750 3450
F 0 "U6" H 7750 3767 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 3676 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 3450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 3450 50  0001 C CNN
	2    7750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2950 8100 2950
Wire Wire Line
	8400 2950 8450 2950
$Comp
L Device:R R30
U 1 1 6044C6ED
P 8250 3450
AR Path="/6044C6ED" Ref="R30"  Part="1" 
AR Path="/5E5A6B40/6044C6ED" Ref="R?"  Part="1" 
F 0 "R30" V 8150 3450 50  0000 C CNN
F 1 "330" V 8250 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 3450 50  0001 C CNN
F 3 "~" H 8250 3450 50  0001 C CNN
	1    8250 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 6044C6F3
P 8250 3950
AR Path="/6044C6F3" Ref="R31"  Part="1" 
AR Path="/5E5A6B40/6044C6F3" Ref="R?"  Part="1" 
F 0 "R31" V 8150 3950 50  0000 C CNN
F 1 "330" V 8250 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 3950 50  0001 C CNN
F 3 "~" H 8250 3950 50  0001 C CNN
	1    8250 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 6044C6F9
P 8250 4450
AR Path="/6044C6F9" Ref="R32"  Part="1" 
AR Path="/5E5A6B40/6044C6F9" Ref="R?"  Part="1" 
F 0 "R32" V 8150 4450 50  0000 C CNN
F 1 "330" V 8250 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8180 4450 50  0001 C CNN
F 3 "~" H 8250 4450 50  0001 C CNN
	1    8250 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 4450 8450 4450
$Comp
L Device:R R18
U 1 1 6044C700
P 7250 2950
AR Path="/6044C700" Ref="R18"  Part="1" 
AR Path="/5E5A6B40/6044C700" Ref="R?"  Part="1" 
F 0 "R18" V 7150 2950 50  0000 C CNN
F 1 "4.7k" V 7250 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 2950 50  0001 C CNN
F 3 "~" H 7250 2950 50  0001 C CNN
	1    7250 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2950 7450 2950
Wire Wire Line
	7400 3450 7450 3450
Wire Wire Line
	7400 3950 7450 3950
Wire Wire Line
	7400 4450 7450 4450
Wire Wire Line
	8050 4450 8100 4450
Wire Wire Line
	8050 3950 8100 3950
Wire Wire Line
	8050 3450 8100 3450
$Comp
L power:GND #PWR034
U 1 1 6044C70D
P 7100 2700
AR Path="/6044C70D" Ref="#PWR034"  Part="1" 
AR Path="/5E5A6B40/6044C70D" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 7100 2450 50  0001 C CNN
F 1 "GND" H 7105 2527 50  0000 C CNN
F 2 "" H 7100 2700 50  0001 C CNN
F 3 "" H 7100 2700 50  0001 C CNN
	1    7100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 6044C713
P 7250 2700
AR Path="/6044C713" Ref="R17"  Part="1" 
AR Path="/5E5A6B40/6044C713" Ref="R?"  Part="1" 
F 0 "R17" V 7150 2700 50  0000 C CNN
F 1 "620" V 7250 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 2700 50  0001 C CNN
F 3 "~" H 7250 2700 50  0001 C CNN
	1    7250 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 6044C71D
P 7250 3450
AR Path="/6044C71D" Ref="R20"  Part="1" 
AR Path="/5E5A6B40/6044C71D" Ref="R?"  Part="1" 
F 0 "R20" V 7150 3450 50  0000 C CNN
F 1 "4.7k" V 7250 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 3450 50  0001 C CNN
F 3 "~" H 7250 3450 50  0001 C CNN
	1    7250 3450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 6044C723
P 7100 3200
AR Path="/6044C723" Ref="#PWR035"  Part="1" 
AR Path="/5E5A6B40/6044C723" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 7100 2950 50  0001 C CNN
F 1 "GND" H 7105 3027 50  0000 C CNN
F 2 "" H 7100 3200 50  0001 C CNN
F 3 "" H 7100 3200 50  0001 C CNN
	1    7100 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 6044C729
P 7250 3200
AR Path="/6044C729" Ref="R19"  Part="1" 
AR Path="/5E5A6B40/6044C729" Ref="R?"  Part="1" 
F 0 "R19" V 7150 3200 50  0000 C CNN
F 1 "620" V 7250 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 3200 50  0001 C CNN
F 3 "~" H 7250 3200 50  0001 C CNN
	1    7250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3450 7100 3450
$Comp
L Device:R R22
U 1 1 6044C731
P 7250 3950
AR Path="/6044C731" Ref="R22"  Part="1" 
AR Path="/5E5A6B40/6044C731" Ref="R?"  Part="1" 
F 0 "R22" V 7150 3950 50  0000 C CNN
F 1 "4.7k" V 7250 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 3950 50  0001 C CNN
F 3 "~" H 7250 3950 50  0001 C CNN
	1    7250 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 6044C737
P 7100 3700
AR Path="/6044C737" Ref="#PWR036"  Part="1" 
AR Path="/5E5A6B40/6044C737" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 7100 3450 50  0001 C CNN
F 1 "GND" H 7105 3527 50  0000 C CNN
F 2 "" H 7100 3700 50  0001 C CNN
F 3 "" H 7100 3700 50  0001 C CNN
	1    7100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 6044C73D
P 7250 3700
AR Path="/6044C73D" Ref="R21"  Part="1" 
AR Path="/5E5A6B40/6044C73D" Ref="R?"  Part="1" 
F 0 "R21" V 7150 3700 50  0000 C CNN
F 1 "620" V 7250 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 3700 50  0001 C CNN
F 3 "~" H 7250 3700 50  0001 C CNN
	1    7250 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 6044C745
P 7250 4450
AR Path="/6044C745" Ref="R24"  Part="1" 
AR Path="/5E5A6B40/6044C745" Ref="R?"  Part="1" 
F 0 "R24" V 7150 4450 50  0000 C CNN
F 1 "4.7k" V 7250 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 4450 50  0001 C CNN
F 3 "~" H 7250 4450 50  0001 C CNN
	1    7250 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6044C74B
P 7100 4200
AR Path="/6044C74B" Ref="#PWR037"  Part="1" 
AR Path="/5E5A6B40/6044C74B" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 7100 3950 50  0001 C CNN
F 1 "GND" H 7105 4027 50  0000 C CNN
F 2 "" H 7100 4200 50  0001 C CNN
F 3 "" H 7100 4200 50  0001 C CNN
	1    7100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 6044C751
P 7250 4200
AR Path="/6044C751" Ref="R23"  Part="1" 
AR Path="/5E5A6B40/6044C751" Ref="R?"  Part="1" 
F 0 "R23" V 7150 4200 50  0000 C CNN
F 1 "620" V 7250 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7180 4200 50  0001 C CNN
F 3 "~" H 7250 4200 50  0001 C CNN
	1    7250 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 4450 6600 4200
Wire Wire Line
	6600 4200 6550 4200
Wire Wire Line
	7050 3450 7050 3500
Wire Wire Line
	7050 3500 6650 3500
Wire Wire Line
	6650 4000 6550 4000
Wire Wire Line
	6650 3500 6650 4000
Wire Wire Line
	6550 4100 6700 4100
Wire Wire Line
	6700 4100 6700 4000
Wire Wire Line
	6700 4000 6850 4000
Wire Wire Line
	6850 4000 6850 3950
$Comp
L 74xx:74HCT04 U6
U 7 1 6047A4B2
P 10650 2800
F 0 "U6" H 10880 2846 50  0000 L CNN
F 1 "SN74LS06DR" H 10880 2755 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10650 2800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10650 2800 50  0001 C CNN
	7    10650 2800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C12
U 1 1 6047A4B9
P 10250 2850
AR Path="/6047A4B9" Ref="C12"  Part="1" 
AR Path="/5E793D9E/6047A4B9" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/6047A4B9" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/6047A4B9" Ref="C?"  Part="1" 
F 0 "C12" H 10050 3000 45  0000 C CNN
F 1 "0.1uF" H 10050 2900 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 10250 3100 20  0001 C CNN
F 3 "" H 10250 2850 50  0001 C CNN
F 4 "" V 10089 2900 60  0000 C CNN "Field4"
	1    10250 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6047A4BF
P 10400 2300
AR Path="/5E793D9E/6047A4BF" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/6047A4BF" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/6047A4BF" Ref="#PWR?"  Part="1" 
AR Path="/6047A4BF" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 10400 2150 50  0001 C CNN
F 1 "+5V" H 10400 2450 50  0000 C CNN
F 2 "" H 10400 2300 50  0001 C CNN
F 3 "" H 10400 2300 50  0001 C CNN
	1    10400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2300 10400 2300
Wire Wire Line
	10400 2300 10250 2300
Wire Wire Line
	10250 2300 10250 2650
Connection ~ 10400 2300
Wire Wire Line
	10250 2950 10250 3300
Wire Wire Line
	10250 3300 10450 3300
$Comp
L power:GND #PWR041
U 1 1 6047A4CB
P 10450 3400
AR Path="/6047A4CB" Ref="#PWR041"  Part="1" 
AR Path="/5E5A6B40/6047A4CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR041" H 10450 3150 50  0001 C CNN
F 1 "GND" H 10300 3350 50  0000 C CNN
F 2 "" H 10450 3400 50  0001 C CNN
F 3 "" H 10450 3400 50  0001 C CNN
	1    10450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3400 10450 3300
Connection ~ 10450 3300
Wire Wire Line
	10450 3300 10650 3300
$Comp
L Device:R R7
U 1 1 604AB5B5
P 6050 6050
AR Path="/604AB5B5" Ref="R7"  Part="1" 
AR Path="/5E5A6B40/604AB5B5" Ref="R?"  Part="1" 
F 0 "R7" V 5950 6050 50  0000 C CNN
F 1 "330" V 6050 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5980 6050 50  0001 C CNN
F 3 "~" H 6050 6050 50  0001 C CNN
	1    6050 6050
	0    1    1    0   
$EndComp
Text GLabel 6250 6050 2    50   Output ~ 0
LED_09
Wire Wire Line
	6200 6050 6250 6050
$Comp
L Device:R R4
U 1 1 604AB5DF
P 5250 6500
AR Path="/604AB5DF" Ref="R4"  Part="1" 
AR Path="/5E5A6B40/604AB5DF" Ref="R?"  Part="1" 
F 0 "R4" V 5150 6500 50  0000 C CNN
F 1 "4.7k" V 5250 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 6500 50  0001 C CNN
F 3 "~" H 5250 6500 50  0001 C CNN
	1    5250 6500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 604AB5EC
P 5100 6250
AR Path="/604AB5EC" Ref="#PWR018"  Part="1" 
AR Path="/5E5A6B40/604AB5EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 5100 6000 50  0001 C CNN
F 1 "GND" H 5105 6077 50  0000 C CNN
F 2 "" H 5100 6250 50  0001 C CNN
F 3 "" H 5100 6250 50  0001 C CNN
	1    5100 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 604AB5F2
P 5250 6250
AR Path="/604AB5F2" Ref="R3"  Part="1" 
AR Path="/5E5A6B40/604AB5F2" Ref="R?"  Part="1" 
F 0 "R3" V 5150 6250 50  0000 C CNN
F 1 "620" V 5250 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 6250 50  0001 C CNN
F 3 "~" H 5250 6250 50  0001 C CNN
	1    5250 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 604AB5FC
P 5250 7100
AR Path="/604AB5FC" Ref="R6"  Part="1" 
AR Path="/5E5A6B40/604AB5FC" Ref="R?"  Part="1" 
F 0 "R6" V 5150 7100 50  0000 C CNN
F 1 "4.7k" V 5250 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 7100 50  0001 C CNN
F 3 "~" H 5250 7100 50  0001 C CNN
	1    5250 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 604AB602
P 5100 6850
AR Path="/604AB602" Ref="#PWR019"  Part="1" 
AR Path="/5E5A6B40/604AB602" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 5100 6600 50  0001 C CNN
F 1 "GND" H 5105 6677 50  0000 C CNN
F 2 "" H 5100 6850 50  0001 C CNN
F 3 "" H 5100 6850 50  0001 C CNN
	1    5100 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 604AB608
P 5250 6850
AR Path="/604AB608" Ref="R5"  Part="1" 
AR Path="/5E5A6B40/604AB608" Ref="R?"  Part="1" 
F 0 "R5" V 5150 6850 50  0000 C CNN
F 1 "620" V 5250 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 6850 50  0001 C CNN
F 3 "~" H 5250 6850 50  0001 C CNN
	1    5250 6850
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HCT04 U5
U 6 1 604AB5AC
P 10450 4500
F 0 "U5" H 10450 4817 50  0000 C CNN
F 1 "SN74LS06DR" H 10450 4726 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10450 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10450 4500 50  0001 C CNN
	6    10450 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 3 1 60662689
P 7750 1850
F 0 "U5" H 7750 2167 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 2076 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 1850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 1850 50  0001 C CNN
	3    7750 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 4 1 606631E8
P 7750 2350
F 0 "U5" H 7750 2667 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 2576 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 2350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 2350 50  0001 C CNN
	4    7750 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U6
U 5 1 5E345B1C
P 10450 5050
F 0 "U6" H 10450 5367 50  0000 C CNN
F 1 "SN74LS06DR" H 10450 5276 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10450 5050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10450 5050 50  0001 C CNN
	5    10450 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U6
U 6 1 5E345B22
P 10450 5550
F 0 "U6" H 10450 5867 50  0000 C CNN
F 1 "SN74LS06DR" H 10450 5776 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10450 5550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10450 5550 50  0001 C CNN
	6    10450 5550
	1    0    0    -1  
$EndComp
NoConn ~ 10150 3950
NoConn ~ 10150 4500
NoConn ~ 10150 5050
NoConn ~ 10150 5550
NoConn ~ 10750 5550
NoConn ~ 10750 5050
NoConn ~ 10750 4500
NoConn ~ 10750 3950
Wire Wire Line
	3300 3650 3700 3650
Wire Wire Line
	3700 3650 3700 4350
Wire Wire Line
	3700 4350 4250 4350
Wire Wire Line
	3300 3750 3750 3750
Wire Wire Line
	3750 3750 3750 4250
Wire Wire Line
	3300 3850 3800 3850
Wire Wire Line
	3800 3850 3800 4150
Wire Wire Line
	3300 3950 4150 3950
Wire Wire Line
	4150 3950 4150 4050
Wire Wire Line
	4150 4050 4250 4050
Wire Wire Line
	3300 4050 4100 4050
Wire Wire Line
	4100 4050 4100 3900
Wire Wire Line
	4100 3900 4250 3900
Wire Wire Line
	4250 3900 4250 3950
Wire Wire Line
	3300 4150 3300 4100
Wire Wire Line
	4050 4100 4050 3850
Wire Wire Line
	4050 3850 4250 3850
Wire Wire Line
	3300 4100 4050 4100
Wire Wire Line
	3800 4150 4250 4150
Wire Wire Line
	3300 4250 3300 4200
Wire Wire Line
	3300 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3750
Wire Wire Line
	4000 3750 4250 3750
Wire Wire Line
	3750 4250 4250 4250
Wire Wire Line
	3300 4350 3300 4300
Wire Wire Line
	3300 4300 3950 4300
Wire Wire Line
	3950 4300 3950 3650
Wire Wire Line
	3950 3650 4250 3650
Connection ~ 6550 3900
Connection ~ 6550 4000
Connection ~ 6550 4100
Connection ~ 6550 4200
Wire Wire Line
	5350 4350 5850 4350
Wire Wire Line
	5850 4350 5850 4250
Wire Wire Line
	5850 4250 6550 4250
Wire Wire Line
	6550 4250 6550 4200
$Comp
L power:GND #PWR029
U 1 1 5E74C931
P 6550 4350
AR Path="/5E74C931" Ref="#PWR029"  Part="1" 
AR Path="/5E5A6B40/5E74C931" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 6550 4100 50  0001 C CNN
F 1 "GND" H 6400 4300 50  0000 C CNN
F 2 "" H 6550 4350 50  0001 C CNN
F 3 "" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6550 4300
$Comp
L Device:CP C6
U 1 1 5E85D564
P 4600 5850
F 0 "C6" H 4400 5950 50  0000 L CNN
F 1 "47u" H 4350 5850 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 4638 5700 50  0001 C CNN
F 3 "~" H 4600 5850 50  0001 C CNN
	1    4600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6000 4600 6000
Connection ~ 4600 6000
Wire Wire Line
	4600 6000 4850 6000
$Comp
L Device:CP C10
U 1 1 5E85E49C
P 5750 4900
F 0 "C10" H 5500 4950 50  0000 L CNN
F 1 "47u" H 5500 4850 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 5788 4750 50  0001 C CNN
F 3 "~" H 5750 4900 50  0001 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5050 5750 5050
Connection ~ 5750 5050
Wire Wire Line
	5750 5050 6000 5050
$Comp
L Device:CP C9
U 1 1 5E85EE7D
P 5750 2800
F 0 "C9" H 5500 2850 50  0000 L CNN
F 1 "47u" H 5500 2750 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 5788 2650 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5750 2950
Connection ~ 5750 2950
Wire Wire Line
	6600 850  7100 850 
Wire Wire Line
	6850 1850 7100 1850
Wire Wire Line
	6600 2350 7100 2350
Wire Wire Line
	6600 2950 7100 2950
Wire Wire Line
	6850 3950 7100 3950
Wire Wire Line
	6600 4450 7100 4450
Wire Wire Line
	5750 2950 6000 2950
Wire Wire Line
	7400 600  7400 850 
Connection ~ 7400 850 
Wire Wire Line
	7400 1100 7400 1350
Connection ~ 7400 1350
Wire Wire Line
	7400 1600 7400 1850
Connection ~ 7400 1850
Wire Wire Line
	7400 2100 7400 2350
Connection ~ 7400 2350
Wire Wire Line
	7400 2700 7400 2950
Connection ~ 7400 2950
Wire Wire Line
	7400 3200 7400 3450
Connection ~ 7400 3450
Wire Wire Line
	7400 3700 7400 3950
Connection ~ 7400 3950
Wire Wire Line
	7400 4450 7400 4200
Connection ~ 7400 4450
Wire Wire Line
	5400 6250 5400 6500
Wire Wire Line
	5400 6850 5400 7100
$Comp
L 74xx:74HCT04 U6
U 3 1 5E32C7E1
P 7750 3950
F 0 "U6" H 7750 4267 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 4176 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 3950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 3950 50  0001 C CNN
	3    7750 3950
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Full-Half-Bridge-Drivers:SN754410NE U4
U 1 1 5ED36644
P 3450 6350
F 0 "U4" H 3450 6750 60  0000 C CNN
F 1 "SN754410NE" H 3200 6650 60  0000 C CNN
F 2 "digikey-footprints:DIP-16_W7.62mm" H 3650 6550 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn754410" H 3650 6650 60  0001 L CNN
F 4 "296-9911-5-ND" H 3650 6750 60  0001 L CNN "Digi-Key_PN"
F 5 "SN754410NE" H 3650 6850 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3650 6950 60  0001 L CNN "Category"
F 7 "PMIC - Full, Half-Bridge Drivers" H 3650 7050 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn754410" H 3650 7150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN754410NE/296-9911-5-ND/380180" H 3650 7250 60  0001 L CNN "DK_Detail_Page"
F 10 "IC HALF-H DRVR QUAD 16-DIP" H 3650 7350 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3650 7450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3650 7550 60  0001 L CNN "Status"
	1    3450 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6450 4000 6450
Wire Wire Line
	3850 6550 4000 6550
Wire Wire Line
	3850 6650 4000 6650
Wire Wire Line
	3850 6750 4000 6750
Wire Wire Line
	4900 7100 5100 7100
Wire Wire Line
	4900 7100 4900 6700
Wire Wire Line
	4900 6700 4000 6700
Wire Wire Line
	4000 6700 4000 6750
Connection ~ 4000 6750
Wire Wire Line
	4000 6500 4000 6550
Wire Wire Line
	4000 6500 5100 6500
Connection ~ 4000 6550
Wire Wire Line
	4200 5550 3550 5550
Wire Wire Line
	3550 5550 3550 6050
Connection ~ 4200 5550
Wire Wire Line
	3650 6000 3850 6000
Wire Wire Line
	3650 6150 3650 6050
Wire Wire Line
	4200 6000 4150 6000
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C4
U 1 1 5EE78BC7
P 4050 6000
AR Path="/5EE78BC7" Ref="C4"  Part="1" 
AR Path="/5E793D9E/5EE78BC7" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5EE78BC7" Ref="C?"  Part="1" 
AR Path="/5E5A6B40/5EE78BC7" Ref="C?"  Part="1" 
F 0 "C4" V 4100 5950 45  0000 C CNN
F 1 "0.1uF" V 3900 6050 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4050 6250 20  0001 C CNN
F 3 "" H 4050 6000 50  0001 C CNN
F 4 "" V 3889 6050 60  0000 C CNN "Field4"
	1    4050 6000
	0    -1   -1   0   
$EndComp
Connection ~ 3650 6000
$Comp
L power:+5V #PWR?
U 1 1 5EE78BCE
P 3650 5850
AR Path="/5E793D9E/5EE78BCE" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EE78BCE" Ref="#PWR?"  Part="1" 
AR Path="/5E5A6B40/5EE78BCE" Ref="#PWR?"  Part="1" 
AR Path="/5EE78BCE" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3650 5700 50  0001 C CNN
F 1 "+5V" H 3650 6000 50  0000 C CNN
F 2 "" H 3650 5850 50  0001 C CNN
F 3 "" H 3650 5850 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6000 3650 5850
Wire Wire Line
	3350 7050 3450 7050
Connection ~ 3450 7050
Wire Wire Line
	3450 7050 3500 7050
Connection ~ 3550 7050
Wire Wire Line
	3550 7050 3650 7050
$Comp
L power:GND #PWR010
U 1 1 5EEBD611
P 3500 7050
AR Path="/5EEBD611" Ref="#PWR010"  Part="1" 
AR Path="/5E5A6B40/5EEBD611" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3500 6800 50  0001 C CNN
F 1 "GND" H 3505 6877 50  0000 C CNN
F 2 "" H 3500 7050 50  0001 C CNN
F 3 "" H 3500 7050 50  0001 C CNN
	1    3500 7050
	1    0    0    -1  
$EndComp
Connection ~ 3500 7050
Wire Wire Line
	3500 7050 3550 7050
Connection ~ 3650 6050
Wire Wire Line
	3650 6050 3650 6000
Connection ~ 4200 6000
Wire Wire Line
	1900 6150 2450 6150
Wire Wire Line
	1900 6050 2450 6050
Wire Wire Line
	1900 5650 2450 5650
Wire Wire Line
	1900 5750 2450 5750
Wire Wire Line
	1900 5950 2450 5950
$Comp
L power:GND #PWR05
U 1 1 5EFCF214
P 2450 7200
AR Path="/5EFCF214" Ref="#PWR05"  Part="1" 
AR Path="/5E26A046/5EFCF214" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EFCF214" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 2450 6950 50  0001 C CNN
F 1 "GND" H 2455 7027 50  0000 C CNN
F 2 "" H 2450 7200 50  0001 C CNN
F 3 "" H 2450 7200 50  0001 C CNN
	1    2450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7200 2300 7200
Wire Wire Line
	2550 7200 2450 7200
$Comp
L Device:R R?
U 1 1 5EFFF492
P 2550 7000
AR Path="/5E54E3AA/5EFFF492" Ref="R?"  Part="1" 
AR Path="/5EFFF492" Ref="R2"  Part="1" 
F 0 "R2" H 2600 7150 50  0000 L CNN
F 1 "4.7k" V 2550 6900 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2480 7000 50  0001 C CNN
F 3 "~" H 2550 7000 50  0001 C CNN
	1    2550 7000
	1    0    0    -1  
$EndComp
Connection ~ 2450 7200
Wire Wire Line
	2550 7200 2550 7150
$Comp
L 74xx:74HCT04 U5
U 5 1 604AB5A6
P 10450 3950
F 0 "U5" H 10450 4267 50  0000 C CNN
F 1 "SN74LS06DR" H 10450 4176 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10450 3950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10450 3950 50  0001 C CNN
	5    10450 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U6
U 4 1 5E32C7E7
P 7750 4450
F 0 "U6" H 7750 4767 50  0000 C CNN
F 1 "SN74LS06DR" H 7750 4676 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7750 4450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7750 4450 50  0001 C CNN
	4    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single-Pre-Biased:MMUN2211LT1G Q3
U 1 1 5F1A9644
P 5750 6250
F 0 "Q3" H 5838 6303 60  0000 L CNN
F 1 "PDTC114Y" H 5838 6197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5950 6450 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/DTC114E-D.PDF" H 5950 6550 60  0001 L CNN
F 4 "MMUN2211LT1GOSCT-ND" H 5950 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "MMUN2211LT1G" H 5950 6750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5950 6850 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single, Pre-Biased" H 5950 6950 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/DTC114E-D.PDF" H 5950 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMUN2211LT1G/MMUN2211LT1GOSCT-ND/1139908" H 5950 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PREBIAS NPN 246MW SOT23-3" H 5950 7250 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5950 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5950 7450 60  0001 L CNN "Status"
	1    5750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6050 5900 6050
$Comp
L power:GND #PWR024
U 1 1 5F1DF465
P 5800 6450
AR Path="/5F1DF465" Ref="#PWR024"  Part="1" 
AR Path="/5E5A6B40/5F1DF465" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 5800 6200 50  0001 C CNN
F 1 "GND" H 5805 6277 50  0000 C CNN
F 2 "" H 5800 6450 50  0001 C CNN
F 3 "" H 5800 6450 50  0001 C CNN
	1    5800 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6450 5750 6450
Connection ~ 5400 6250
$Comp
L Device:R R8
U 1 1 5F22B27E
P 6100 6900
AR Path="/5F22B27E" Ref="R8"  Part="1" 
AR Path="/5E5A6B40/5F22B27E" Ref="R?"  Part="1" 
F 0 "R8" V 6000 6900 50  0000 C CNN
F 1 "330" V 6100 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6030 6900 50  0001 C CNN
F 3 "~" H 6100 6900 50  0001 C CNN
	1    6100 6900
	0    1    1    0   
$EndComp
Text GLabel 6300 6900 2    50   Output ~ 0
LED_10
Wire Wire Line
	6250 6900 6300 6900
$Comp
L dk_Transistors-Bipolar-BJT-Single-Pre-Biased:MMUN2211LT1G Q4
U 1 1 5F22B28F
P 5800 7100
F 0 "Q4" H 5888 7153 60  0000 L CNN
F 1 "PDTC114Y" H 5888 7047 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 6000 7300 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/DTC114E-D.PDF" H 6000 7400 60  0001 L CNN
F 4 "MMUN2211LT1GOSCT-ND" H 6000 7500 60  0001 L CNN "Digi-Key_PN"
F 5 "MMUN2211LT1G" H 6000 7600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6000 7700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single, Pre-Biased" H 6000 7800 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/DTC114E-D.PDF" H 6000 7900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMUN2211LT1G/MMUN2211LT1GOSCT-ND/1139908" H 6000 8000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PREBIAS NPN 246MW SOT23-3" H 6000 8100 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6000 8200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6000 8300 60  0001 L CNN "Status"
	1    5800 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6900 5950 6900
$Comp
L power:GND #PWR025
U 1 1 5F22B296
P 5850 7300
AR Path="/5F22B296" Ref="#PWR025"  Part="1" 
AR Path="/5E5A6B40/5F22B296" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 5850 7050 50  0001 C CNN
F 1 "GND" H 5855 7127 50  0000 C CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "" H 5850 7300 50  0001 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7300 5800 7300
Wire Wire Line
	5450 7100 5400 7100
Connection ~ 5400 7100
$Comp
L power:GND #PWR02
U 1 1 5F2D3E0C
P 1500 6550
AR Path="/5F2D3E0C" Ref="#PWR02"  Part="1" 
AR Path="/5E26A046/5F2D3E0C" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5F2D3E0C" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1500 6300 50  0001 C CNN
F 1 "GND" H 1505 6377 50  0000 C CNN
F 2 "" H 1500 6550 50  0001 C CNN
F 3 "" H 1500 6550 50  0001 C CNN
	1    1500 6550
	1    0    0    -1  
$EndComp
Text Label 2700 6250 0    50   ~ 0
RELAY_1_EN
Text Label 2700 6350 0    50   ~ 0
RELAY_1A
Wire Wire Line
	3150 6350 2700 6350
Text Label 2700 6450 0    50   ~ 0
RELAY_1B
Wire Wire Line
	3150 6450 2700 6450
Wire Wire Line
	2300 7150 2300 7200
$Comp
L Device:R R?
U 1 1 5EFCF21E
P 2300 7000
AR Path="/5E54E3AA/5EFCF21E" Ref="R?"  Part="1" 
AR Path="/5EFCF21E" Ref="R1"  Part="1" 
F 0 "R1" H 2350 7150 50  0000 L CNN
F 1 "4.7k" V 2300 6900 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2230 7000 50  0001 C CNN
F 3 "~" H 2300 7000 50  0001 C CNN
	1    2300 7000
	1    0    0    -1  
$EndComp
Text Label 2700 6650 0    50   ~ 0
RELAY_2A
Wire Wire Line
	3150 6650 2700 6650
Wire Wire Line
	2300 6250 2300 6850
Wire Wire Line
	2300 6250 3150 6250
Text Label 2700 6750 0    50   ~ 0
RELAY_2B
Wire Wire Line
	3150 6750 2700 6750
Text Label 2450 5550 2    50   ~ 0
RELAY_2_EN
Wire Wire Line
	1900 5550 2450 5550
Wire Wire Line
	2550 6850 2550 6550
Wire Wire Line
	2550 6550 3150 6550
NoConn ~ 1900 5850
Text Label 2700 6550 0    50   ~ 0
RELAY_2_EN
NoConn ~ 1900 5450
Wire Wire Line
	3300 1550 3600 1550
Wire Wire Line
	3600 1550 3600 2250
Wire Wire Line
	3600 2250 4250 2250
Wire Wire Line
	3300 1650 3650 1650
Wire Wire Line
	3650 1650 3650 2150
Wire Wire Line
	3300 1750 3700 1750
Wire Wire Line
	3700 1750 3700 2050
Wire Wire Line
	3700 2050 4250 2050
Wire Wire Line
	3300 1850 3750 1850
Wire Wire Line
	3750 1850 3750 1950
Wire Wire Line
	3750 1950 4250 1950
Wire Wire Line
	3300 1950 3500 1950
Wire Wire Line
	3500 1950 3500 1900
Wire Wire Line
	3500 1900 3800 1900
Wire Wire Line
	3800 1900 3800 1850
Wire Wire Line
	3800 1850 4250 1850
Wire Wire Line
	3300 2050 3350 2050
Wire Wire Line
	3350 2050 3350 2000
Wire Wire Line
	3350 2000 3850 2000
Wire Wire Line
	3850 2000 3850 1750
Wire Wire Line
	3850 1750 4250 1750
Wire Wire Line
	3300 2150 3350 2150
Wire Wire Line
	3350 2150 3350 2100
Wire Wire Line
	3350 2100 3900 2100
Wire Wire Line
	3900 2100 3900 1650
Wire Wire Line
	3900 1650 4250 1650
Wire Wire Line
	3650 2150 4250 2150
Wire Wire Line
	3300 2250 3350 2250
Wire Wire Line
	3350 2250 3350 2200
Wire Wire Line
	3350 2200 3950 2200
Wire Wire Line
	3950 2200 3950 1550
Wire Wire Line
	3950 1550 4250 1550
Wire Wire Line
	5350 2250 5850 2250
Wire Wire Line
	5850 2250 5850 2150
Wire Wire Line
	5850 2150 6550 2150
Wire Wire Line
	6550 2150 6550 2100
$Comp
L Device:R R?
U 1 1 603EAC2A
P 1000 5100
AR Path="/5E54E3AA/603EAC2A" Ref="R?"  Part="1" 
AR Path="/603EAC2A" Ref="R63"  Part="1" 
F 0 "R63" H 1050 5250 50  0000 L CNN
F 1 "4.7k" V 1000 5000 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 930 5100 50  0001 C CNN
F 3 "~" H 1000 5100 50  0001 C CNN
	1    1000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4950 1600 4950
Wire Wire Line
	1600 4950 1600 5100
Wire Wire Line
	1600 5100 1700 5100
Wire Wire Line
	1000 5250 1000 5750
Wire Wire Line
	1000 5750 1100 5750
$Comp
L Device:R R?
U 1 1 60428640
P 2400 3400
AR Path="/5E54E3AA/60428640" Ref="R?"  Part="1" 
AR Path="/60428640" Ref="R65"  Part="1" 
F 0 "R65" H 2450 3550 50  0000 L CNN
F 1 "4.7k" V 2400 3300 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2330 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
	1    2400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3550 2400 3950
Wire Wire Line
	2400 3950 2500 3950
Wire Wire Line
	2400 3250 3050 3250
Wire Wire Line
	3050 3250 3050 3300
Wire Wire Line
	3050 3300 3100 3300
$Comp
L Device:R R?
U 1 1 60468033
P 2400 1300
AR Path="/5E54E3AA/60468033" Ref="R?"  Part="1" 
AR Path="/60468033" Ref="R64"  Part="1" 
F 0 "R64" H 2450 1450 50  0000 L CNN
F 1 "4.7k" V 2400 1200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2330 1300 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1450 2400 1850
Wire Wire Line
	2400 1850 2500 1850
Wire Wire Line
	2400 1150 3050 1150
Wire Wire Line
	3050 1150 3050 1200
Wire Wire Line
	3050 1200 3100 1200
$EndSCHEMATC
