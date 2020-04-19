EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Attenuator Driver Shift/ULN Edition"
Date "2020-01-21"
Rev "1"
Comp "Marcus Gustafsson, SA5PMG"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2300 3150 2250 3150
Wire Wire Line
	2300 3250 2250 3250
Text GLabel 3350 4050 2    50   Output ~ 0
I2C_SCL
Text GLabel 3350 3950 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 2250 4150 0    50   Input ~ 0
MISO
Text GLabel 2250 4050 0    50   Output ~ 0
MOSI
Wire Wire Line
	2250 4050 2300 4050
Wire Wire Line
	2300 4150 2250 4150
Wire Wire Line
	2250 3350 2300 3350
$Comp
L power:GND #PWR?
U 1 1 5E57773E
P 3800 1050
AR Path="/5E57773E" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E57773E" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 3800 800 50  0001 C CNN
F 1 "GND" H 3900 900 50  0000 R CNN
F 2 "" H 3800 1050 50  0001 C CNN
F 3 "" H 3800 1050 50  0001 C CNN
	1    3800 1050
	1    0    0    -1  
$EndComp
Text GLabel 3700 1050 3    50   Input ~ 0
CE_DISP
Text GLabel 3400 1050 3    50   Input ~ 0
SCK
Wire Wire Line
	3900 1000 3900 1050
Wire Wire Line
	3700 1000 3700 1050
Wire Wire Line
	3400 1000 3400 1050
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5E57776D
P 3600 2300
AR Path="/5E57776D" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E57776D" Ref="C15"  Part="1" 
F 0 "C15" H 3700 2250 45  0000 C CNN
F 1 "0.1uF" H 3400 2350 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3600 2550 20  0001 C CNN
F 3 "" H 3600 2300 50  0001 C CNN
F 4 "CAP-09822" V 3439 2350 60  0001 C CNN "Field4"
	1    3600 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E577773
P 3500 2550
AR Path="/5E577773" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E577773" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3500 2300 50  0001 C CNN
F 1 "GND" H 3505 2377 50  0000 C CNN
F 2 "" H 3500 2550 50  0001 C CNN
F 3 "" H 3500 2550 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E5A0E4D
P 2350 4550
AR Path="/5E5A0E4D" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E5A0E4D" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 2350 4300 50  0001 C CNN
F 1 "GND" H 2355 4377 50  0000 C CNN
F 2 "" H 2350 4550 50  0001 C CNN
F 3 "" H 2350 4550 50  0001 C CNN
	1    2350 4550
	1    0    0    -1  
$EndComp
Text GLabel 2250 4250 0    50   Output ~ 0
SCK
Wire Wire Line
	2250 4250 2300 4250
Wire Wire Line
	3800 1050 3800 1000
Wire Wire Line
	3300 4050 3350 4050
Wire Wire Line
	3300 3950 3350 3950
$Comp
L power:GND #PWR?
U 1 1 5E6CA525
P 1300 1050
AR Path="/5E6CA525" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6CA525" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 1300 800 50  0001 C CNN
F 1 "GND" H 1305 877 50  0000 C CNN
F 2 "" H 1300 1050 50  0001 C CNN
F 3 "" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
Text GLabel 1450 600  2    50   BiDi ~ 0
I2C_SDA
Text GLabel 1450 700  2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	1450 700  1200 700 
Wire Wire Line
	2050 850  2150 850 
Wire Wire Line
	1000 950  1200 950 
Wire Wire Line
	1200 700  1200 950 
Connection ~ 1200 950 
Wire Wire Line
	1200 950  1400 950 
Wire Wire Line
	1000 850  1100 850 
Wire Wire Line
	1450 600  1100 600 
Wire Wire Line
	1100 600  1100 850 
Connection ~ 1100 850 
Wire Wire Line
	1100 850  1400 850 
Wire Wire Line
	1700 850  2050 850 
Connection ~ 2050 850 
Wire Wire Line
	1300 1050 1000 1050
Wire Wire Line
	1100 1300 2050 1300
Wire Wire Line
	1100 1300 1100 1150
Wire Wire Line
	1100 1150 1000 1150
$Comp
L SparkFun-Connectors:CONN_04JST-PTH J5
U 1 1 5E6CA543
P 900 1150
F 0 "J5" H 750 1550 45  0000 C CNN
F 1 "I2C" H 900 1550 45  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 900 1650 20  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
F 4 "WIRE-13531" H 858 1581 60  0001 C CNN "Field4"
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_02JST-PTH-2 J?
U 1 1 5E6EC736
P 6700 3150
AR Path="/5E6EC736" Ref="J?"  Part="1" 
AR Path="/5E26A046/5E6EC736" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E6EC736" Ref="J14"  Part="1" 
F 0 "J14" H 6472 3105 45  0000 R CNN
F 1 "12V_OUT_BOOST" H 6472 3189 45  0000 R CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-B_2x3.96mm_Vertical" H 6700 3450 20  0001 C CNN
F 3 "" H 6700 3150 50  0001 C CNN
F 4 "CONN-09863" H 6472 3284 60  0001 R CNN "Field4"
	1    6700 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6EC73C
P 6600 3250
AR Path="/5E6EC73C" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/5E6EC73C" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6EC73C" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 6600 3000 50  0001 C CNN
F 1 "GND" H 6605 3077 50  0000 C CNN
F 2 "" H 6600 3250 50  0001 C CNN
F 3 "" H 6600 3250 50  0001 C CNN
	1    6600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3150 6600 3100
$Comp
L SparkFun-Connectors:CONN_02JST-PTH-2 J?
U 1 1 5E6EC754
P 5800 3150
AR Path="/5E6EC754" Ref="J?"  Part="1" 
AR Path="/5E26A046/5E6EC754" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E6EC754" Ref="J12"  Part="1" 
F 0 "J12" H 5572 3105 45  0000 R CNN
F 1 "12V_IN" H 5572 3189 45  0000 R CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-B_2x3.96mm_Vertical" H 5800 3450 20  0001 C CNN
F 3 "" H 5800 3150 50  0001 C CNN
F 4 "CONN-09863" H 5572 3284 60  0001 R CNN "Field4"
	1    5800 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6EC75C
P 5450 3300
AR Path="/5E6EC75C" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/5E6EC75C" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6EC75C" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 5450 3050 50  0001 C CNN
F 1 "GND" H 5455 3127 50  0000 C CNN
F 2 "" H 5450 3300 50  0001 C CNN
F 3 "" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_03 J?
U 1 1 5E6EC763
P 900 1900
AR Path="/5E6EC763" Ref="J?"  Part="1" 
AR Path="/5E26A046/5E6EC763" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E6EC763" Ref="J6"  Part="1" 
F 0 "J6" H 858 2410 45  0000 C CNN
F 1 "DRV_PWR_SEL2" H 700 2250 45  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 900 2300 20  0001 C CNN
F 3 "" H 900 1900 50  0001 C CNN
F 4 "XXX-00000" H 858 2231 60  0001 C CNN "Field4"
	1    900  1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6F57C0
P 6350 2250
AR Path="/5E6F57C0" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/5E6F57C0" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6F57C0" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 6350 2000 50  0001 C CNN
F 1 "GND" H 6355 2077 50  0000 C CNN
F 2 "" H 6350 2250 50  0001 C CNN
F 3 "" H 6350 2250 50  0001 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2250 6350 2200
$Comp
L Device:CP C?
U 1 1 5E6F57CD
P 5950 1650
AR Path="/5E6F57CD" Ref="C?"  Part="1" 
AR Path="/5E26A046/5E6F57CD" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E6F57CD" Ref="C21"  Part="1" 
F 0 "C21" H 6068 1696 50  0000 L CNN
F 1 "1u" H 6068 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 5988 1500 50  0001 C CNN
F 3 "~" H 5950 1650 50  0001 C CNN
	1    5950 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E6F57D3
P 6800 1650
AR Path="/5E6F57D3" Ref="C?"  Part="1" 
AR Path="/5E26A046/5E6F57D3" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E6F57D3" Ref="C22"  Part="1" 
F 0 "C22" H 6918 1696 50  0000 L CNN
F 1 "4.7u" H 6918 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 6838 1500 50  0001 C CNN
F 3 "~" H 6800 1650 50  0001 C CNN
	1    6800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2200 6350 2200
Connection ~ 6350 2200
Wire Wire Line
	6350 2200 5950 2200
Wire Wire Line
	5950 2200 5950 1800
Wire Wire Line
	6800 800  6650 800 
$Comp
L power:GND #PWR?
U 1 1 5E6F5808
P 4850 1950
AR Path="/5E6F5808" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/5E6F5808" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6F5808" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 4850 1700 50  0001 C CNN
F 1 "GND" H 4855 1777 50  0000 C CNN
F 2 "" H 4850 1950 50  0001 C CNN
F 3 "" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1450 4850 1100
Connection ~ 4850 1450
$Comp
L Device:CP C?
U 1 1 5E6F5815
P 4350 1650
AR Path="/5E6F5815" Ref="C?"  Part="1" 
AR Path="/5E26A046/5E6F5815" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E6F5815" Ref="C17"  Part="1" 
F 0 "C17" H 4468 1696 50  0000 L CNN
F 1 "1u" H 4468 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 4388 1500 50  0001 C CNN
F 3 "~" H 4350 1650 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E6F581B
P 5300 1650
AR Path="/5E6F581B" Ref="C?"  Part="1" 
AR Path="/5E26A046/5E6F581B" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E6F581B" Ref="C20"  Part="1" 
F 0 "C20" H 5418 1696 50  0000 L CNN
F 1 "4.7u" H 5418 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 5338 1500 50  0001 C CNN
F 3 "~" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1800 5300 1900
Wire Wire Line
	4350 1900 4350 1800
Wire Wire Line
	6800 2200 6800 1800
Text GLabel 6550 3850 0    50   Input ~ 0
LED_01
Text GLabel 6550 4050 0    50   Input ~ 0
LED_03
Text GLabel 6550 4250 0    50   Input ~ 0
LED_05
Text GLabel 6550 4450 0    50   Input ~ 0
LED_07
Text GLabel 7350 4450 2    50   Output ~ 0
BTN_07
Text GLabel 7350 4650 2    50   Output ~ 0
BTN_09
Text GLabel 6550 3950 0    50   Input ~ 0
LED_02
Text GLabel 6550 4150 0    50   Input ~ 0
LED_04
Text GLabel 6550 4350 0    50   Input ~ 0
LED_06
Text GLabel 7350 4350 2    50   Output ~ 0
BTN_06
Text GLabel 6550 4550 0    50   Input ~ 0
LED_08
Text GLabel 7350 4550 2    50   Output ~ 0
BTN_08
Text GLabel 6550 4750 0    50   Input ~ 0
LED_10
Text GLabel 7350 4750 2    50   Output ~ 0
BTN_10
$Comp
L power:GND #PWR?
U 1 1 5E76061D
P 6150 4850
AR Path="/5E76061D" Ref="#PWR?"  Part="1" 
AR Path="/5E448698/5E76061D" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E76061D" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6150 4600 50  0001 C CNN
F 1 "GND" H 6155 4677 50  0000 C CNN
F 2 "" H 6150 4850 50  0001 C CNN
F 3 "" H 6150 4850 50  0001 C CNN
	1    6150 4850
	-1   0    0    -1  
$EndComp
Text GLabel 7350 4250 2    50   Output ~ 0
BTN_05
Text GLabel 7350 4150 2    50   Output ~ 0
BTN_04
Text GLabel 7350 4050 2    50   Output ~ 0
BTN_03
Text GLabel 7350 3950 2    50   Output ~ 0
BTN_02
Text GLabel 7350 3850 2    50   Output ~ 0
BTN_01
$Comp
L power:+12V #PWR068
U 1 1 5EA548B7
P 5450 3100
F 0 "#PWR068" H 5450 2950 50  0001 C CNN
F 1 "+12V" H 5465 3273 50  0000 C CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR075
U 1 1 5EA5ADB2
P 6600 3100
F 0 "#PWR075" H 6600 2950 50  0001 C CNN
F 1 "+12V" H 6615 3273 50  0000 C CNN
F 2 "" H 6600 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR062
U 1 1 5EA5B15F
P 4350 750
F 0 "#PWR062" H 4350 600 50  0001 C CNN
F 1 "+12V" H 4365 923 50  0000 C CNN
F 2 "" H 4350 750 50  0001 C CNN
F 3 "" H 4350 750 50  0001 C CNN
	1    4350 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR071
U 1 1 5EA611D0
P 5550 3850
F 0 "#PWR071" H 5550 3700 50  0001 C CNN
F 1 "+5V" H 5565 4023 50  0000 C CNN
F 2 "" H 5550 3850 50  0001 C CNN
F 3 "" H 5550 3850 50  0001 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3850 5650 3850
$Comp
L power:+5V #PWR054
U 1 1 5EA67769
P 3000 2050
F 0 "#PWR054" H 3000 1900 50  0001 C CNN
F 1 "+5V" H 3015 2223 50  0000 C CNN
F 2 "" H 3000 2050 50  0001 C CNN
F 3 "" H 3000 2050 50  0001 C CNN
	1    3000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 5EA6DBA5
P 4050 1050
F 0 "#PWR061" H 4050 900 50  0001 C CNN
F 1 "+5V" H 4065 1223 50  0000 C CNN
F 2 "" H 4050 1050 50  0001 C CNN
F 3 "" H 4050 1050 50  0001 C CNN
	1    4050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1050 4050 1050
$Comp
L power:+5V #PWR050
U 1 1 5EA7A813
P 2150 850
F 0 "#PWR050" H 2150 700 50  0001 C CNN
F 1 "+5V" H 2165 1023 50  0000 C CNN
F 2 "" H 2150 850 50  0001 C CNN
F 3 "" H 2150 850 50  0001 C CNN
	1    2150 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR080
U 1 1 5EA7B056
P 7700 3100
F 0 "#PWR080" H 7700 2950 50  0001 C CNN
F 1 "+24V" H 7715 3273 50  0000 C CNN
F 2 "" H 7700 3100 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR072
U 1 1 5EA7B3D2
P 5950 750
F 0 "#PWR072" H 5950 600 50  0001 C CNN
F 1 "+24V" H 5965 923 50  0000 C CNN
F 2 "" H 5950 750 50  0001 C CNN
F 3 "" H 5950 750 50  0001 C CNN
	1    5950 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR042
U 1 1 5EA7B64B
P 1200 1650
F 0 "#PWR042" H 1200 1500 50  0001 C CNN
F 1 "+24V" H 1215 1823 50  0000 C CNN
F 2 "" H 1200 1650 50  0001 C CNN
F 3 "" H 1200 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR077
U 1 1 5EA82160
P 6800 800
F 0 "#PWR077" H 6800 650 50  0001 C CNN
F 1 "+15V" H 6815 973 50  0000 C CNN
F 2 "" H 6800 800 50  0001 C CNN
F 3 "" H 6800 800 50  0001 C CNN
	1    6800 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR048
U 1 1 5EA82315
P 1800 1900
F 0 "#PWR048" H 1800 1750 50  0001 C CNN
F 1 "+15V" H 1815 2073 50  0000 C CNN
F 2 "" H 1800 1900 50  0001 C CNN
F 3 "" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR045
U 1 1 5EA89018
P 1550 1800
F 0 "#PWR045" H 1550 1650 50  0001 C CNN
F 1 "+VSW" H 1565 1973 50  0000 C CNN
F 2 "" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1950 4850 1900
Wire Wire Line
	4350 1900 4850 1900
Connection ~ 4850 1900
Wire Wire Line
	5300 1900 4850 1900
Wire Wire Line
	1000 1700 1200 1700
Wire Wire Line
	1000 1800 1400 1800
Wire Wire Line
	1000 1900 1800 1900
Wire Wire Line
	1200 1650 1200 1700
Wire Wire Line
	5700 3150 5600 3150
Wire Wire Line
	5450 3150 5450 3100
Wire Wire Line
	5950 800  6050 800 
NoConn ~ 3300 2950
NoConn ~ 3300 3050
NoConn ~ 2700 2550
$Comp
L Device:R R57
U 1 1 5FD227C9
P 4850 1700
F 0 "R57" H 4900 1850 50  0000 L CNN
F 1 "1k" V 4850 1650 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 1700 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1450 4850 1550
Wire Wire Line
	4850 1850 4850 1900
$Comp
L Device:R R59
U 1 1 5FD3B107
P 6350 2000
F 0 "R59" H 6400 2150 50  0000 L CNN
F 1 "680" V 6350 1900 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6280 2000 50  0001 C CNN
F 3 "~" H 6350 2000 50  0001 C CNN
	1    6350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2150 6350 2200
$Comp
L Device:R R60
U 1 1 5FD4782E
P 6650 1250
F 0 "R60" H 6450 1400 50  0000 L CNN
F 1 "240" V 6650 1200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6580 1250 50  0001 C CNN
F 3 "~" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE20CA7
P 1550 950
AR Path="/5FE20CA7" Ref="R?"  Part="1" 
AR Path="/5E54E3AA/5FE20CA7" Ref="R34"  Part="1" 
F 0 "R34" V 1500 750 50  0000 C CNN
F 1 "10k" V 1550 950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 950 50  0001 C CNN
F 3 "~" H 1550 950 50  0001 C CNN
	1    1550 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 850  2050 950 
$Comp
L Device:R R?
U 1 1 5FE268C9
P 1550 850
AR Path="/5FE268C9" Ref="R?"  Part="1" 
AR Path="/5E54E3AA/5FE268C9" Ref="R33"  Part="1" 
F 0 "R33" V 1500 650 50  0000 C CNN
F 1 "10k" V 1550 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 850 50  0001 C CNN
F 3 "~" H 1550 850 50  0001 C CNN
	1    1550 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 950  2050 950 
Connection ~ 2050 950 
Wire Wire Line
	2050 950  2050 1300
Wire Wire Line
	4350 750  4350 800 
Wire Wire Line
	4550 800  4350 800 
Connection ~ 4350 800 
Wire Wire Line
	4350 800  4350 1500
Wire Wire Line
	5950 800  5950 750 
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5FFA9F10
P 5600 3300
F 0 "#FLG04" H 5600 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 3350 50  0000 C CNN
F 2 "" H 5600 3300 50  0001 C CNN
F 3 "~" H 5600 3300 50  0001 C CNN
	1    5600 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 800  5950 1500
Connection ~ 5950 800 
Wire Wire Line
	6350 1800 6350 1850
$Comp
L power:GND #PWR?
U 1 1 602D0D2B
P 7600 2250
AR Path="/602D0D2B" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/602D0D2B" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/602D0D2B" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 7600 2000 50  0001 C CNN
F 1 "GND" H 7605 2077 50  0000 C CNN
F 2 "" H 7600 2250 50  0001 C CNN
F 3 "" H 7600 2250 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2250 7600 2200
$Comp
L Device:CP C?
U 1 1 602D0D35
P 7200 1650
AR Path="/602D0D35" Ref="C?"  Part="1" 
AR Path="/5E26A046/602D0D35" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/602D0D35" Ref="C23"  Part="1" 
F 0 "C23" H 7318 1696 50  0000 L CNN
F 1 "1u" H 7318 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 7238 1500 50  0001 C CNN
F 3 "~" H 7200 1650 50  0001 C CNN
	1    7200 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 602D0D3B
P 8050 1650
AR Path="/602D0D3B" Ref="C?"  Part="1" 
AR Path="/5E26A046/602D0D3B" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/602D0D3B" Ref="C24"  Part="1" 
F 0 "C24" H 8168 1696 50  0000 L CNN
F 1 "4.7u" H 8168 1605 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 8088 1500 50  0001 C CNN
F 3 "~" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2200 7600 2200
Connection ~ 7600 2200
Wire Wire Line
	7600 2200 7200 2200
Wire Wire Line
	7200 2200 7200 1800
Wire Wire Line
	8050 800  7900 800 
Wire Wire Line
	8050 2200 8050 1800
$Comp
L power:+24V #PWR078
U 1 1 602D0D48
P 7200 750
F 0 "#PWR078" H 7200 600 50  0001 C CNN
F 1 "+24V" H 7215 923 50  0000 C CNN
F 2 "" H 7200 750 50  0001 C CNN
F 3 "" H 7200 750 50  0001 C CNN
	1    7200 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 800  7300 800 
$Comp
L Device:R R61
U 1 1 602D0D55
P 7600 2000
F 0 "R61" H 7650 2150 50  0000 L CNN
F 1 "680" V 7600 1900 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7530 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
	1    7600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2150 7600 2200
$Comp
L Device:R R62
U 1 1 602D0D5C
P 7900 1250
F 0 "R62" H 7700 1400 50  0000 L CNN
F 1 "240" V 7900 1200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7830 1250 50  0001 C CNN
F 3 "~" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 800  7200 750 
Wire Wire Line
	7200 800  7200 1500
Connection ~ 7200 800 
$Comp
L power:+9V #PWR082
U 1 1 602D987E
P 8050 800
F 0 "#PWR082" H 8050 650 50  0001 C CNN
F 1 "+9V" H 8065 973 50  0000 C CNN
F 2 "" H 8050 800 50  0001 C CNN
F 3 "" H 8050 800 50  0001 C CNN
	1    8050 800 
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_03 J?
U 1 1 602DA39B
P 900 2650
AR Path="/602DA39B" Ref="J?"  Part="1" 
AR Path="/5E26A046/602DA39B" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/602DA39B" Ref="J7"  Part="1" 
F 0 "J7" H 858 3160 45  0000 C CNN
F 1 "DRV_PWR_SEL3" H 750 3000 45  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 900 3050 20  0001 C CNN
F 3 "" H 900 2650 50  0001 C CNN
F 4 "XXX-00000" H 858 2981 60  0001 C CNN "Field4"
	1    900  2650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR043
U 1 1 602DA3A1
P 1200 2400
F 0 "#PWR043" H 1200 2250 50  0001 C CNN
F 1 "+24V" H 1215 2573 50  0000 C CNN
F 2 "" H 1200 2400 50  0001 C CNN
F 3 "" H 1200 2400 50  0001 C CNN
	1    1200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR049
U 1 1 602DA3A7
P 1800 2650
F 0 "#PWR049" H 1800 2500 50  0001 C CNN
F 1 "+9V" H 1815 2823 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2450 1200 2450
Wire Wire Line
	1000 2550 1400 2550
Wire Wire Line
	1000 2650 1800 2650
Wire Wire Line
	1200 2400 1200 2450
$Comp
L power:+8V #PWR046
U 1 1 602E4594
P 1550 2550
F 0 "#PWR046" H 1550 2400 50  0001 C CNN
F 1 "+8V" H 1565 2723 50  0000 C CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3300 5450 3250
Wire Wire Line
	5450 3250 5600 3250
Wire Wire Line
	5600 3300 5600 3250
Connection ~ 5600 3250
Wire Wire Line
	5600 3250 5700 3250
$Comp
L power:PWR_FLAG #FLG03
U 1 1 603527E6
P 5600 3100
F 0 "#FLG03" H 5600 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 3150 50  0000 C CNN
F 2 "" H 5600 3100 50  0001 C CNN
F 3 "~" H 5600 3100 50  0001 C CNN
	1    5600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3100 5600 3150
Connection ~ 5600 3150
Wire Wire Line
	5600 3150 5450 3150
$Comp
L SparkFun-Connectors:CONN_02JST-PTH-2 J?
U 1 1 5E6EC743
P 8050 3150
AR Path="/5E6EC743" Ref="J?"  Part="1" 
AR Path="/5E26A046/5E6EC743" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E6EC743" Ref="J16"  Part="1" 
F 0 "J16" H 7822 3105 45  0000 R CNN
F 1 "24V_IN_BOOST" H 7822 3189 45  0000 R CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-B_2x3.96mm_Vertical" H 8050 3450 20  0001 C CNN
F 3 "" H 8050 3150 50  0001 C CNN
F 4 "CONN-09863" H 7822 3284 60  0001 R CNN "Field4"
	1    8050 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6EC74D
P 7700 3300
AR Path="/5E6EC74D" Ref="#PWR?"  Part="1" 
AR Path="/5E26A046/5E6EC74D" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E6EC74D" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 7700 3050 50  0001 C CNN
F 1 "GND" H 7705 3127 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0001 C CNN
	1    7700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3300 7700 3250
Wire Wire Line
	7700 3250 7950 3250
Wire Wire Line
	7950 3150 7850 3150
Wire Wire Line
	7700 3150 7700 3100
$Comp
L power:PWR_FLAG #FLG05
U 1 1 603BC729
P 7850 3100
F 0 "#FLG05" H 7850 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 8100 3150 50  0000 C CNN
F 2 "" H 7850 3100 50  0001 C CNN
F 3 "~" H 7850 3100 50  0001 C CNN
	1    7850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3100 7850 3150
Connection ~ 7850 3150
Wire Wire Line
	7850 3150 7700 3150
$Comp
L power:PWR_FLAG #FLG02
U 1 1 603D99B5
P 1400 2550
F 0 "#FLG02" H 1400 2625 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 2600 50  0000 C CNN
F 2 "" H 1400 2550 50  0001 C CNN
F 3 "~" H 1400 2550 50  0001 C CNN
	1    1400 2550
	1    0    0    -1  
$EndComp
Connection ~ 1400 2550
Wire Wire Line
	1400 2550 1550 2550
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6040332B
P 1400 1800
F 0 "#FLG01" H 1400 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1850 50  0000 C CNN
F 2 "" H 1400 1800 50  0001 C CNN
F 3 "~" H 1400 1800 50  0001 C CNN
	1    1400 1800
	1    0    0    -1  
$EndComp
Connection ~ 1400 1800
Wire Wire Line
	1400 1800 1550 1800
Wire Wire Line
	7200 4750 7350 4750
Wire Wire Line
	7200 4650 7350 4650
Wire Wire Line
	7200 4550 7350 4550
Wire Wire Line
	7200 4450 7350 4450
Wire Wire Line
	7200 4150 7350 4150
Wire Wire Line
	7200 4050 7350 4050
Wire Wire Line
	7200 3950 7350 3950
Wire Wire Line
	7200 3850 7350 3850
$Comp
L SparkFun-Connectors:CONN_06FEMALE_LOCK J10
U 1 1 6128D4EB
P 3900 900
F 0 "J10" V 3650 1450 45  0000 R CNN
F 1 "SPI" V 3650 1300 45  0000 R CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 3900 1600 20  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
F 4 "XXX-00000" V 3942 822 60  0001 R CNN "Field4"
	1    3900 900 
	0    -1   1    0   
$EndComp
Text GLabel 2250 3450 0    50   Output ~ 0
PWR_LED
$Comp
L SparkFun-Connectors:CONN_03JST-PTH J9
U 1 1 6141A78B
P 2950 900
F 0 "J9" V 2700 1150 45  0000 R CNN
F 1 "PWR_LED" V 2700 1050 45  0000 R CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 2950 1300 20  0001 C CNN
F 3 "" H 2950 900 50  0001 C CNN
F 4 "WIRE-10037" V 2992 822 60  0001 R CNN "Field4"
	1    2950 900 
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 6141B715
P 3100 1050
F 0 "#PWR055" H 3100 900 50  0001 C CNN
F 1 "+5V" H 3115 1223 50  0000 C CNN
F 2 "" H 3100 1050 50  0001 C CNN
F 3 "" H 3100 1050 50  0001 C CNN
	1    3100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1050 3100 1050
Wire Wire Line
	2950 1050 2950 1000
$Comp
L power:GND #PWR?
U 1 1 6142DAB2
P 2850 1050
AR Path="/6142DAB2" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/6142DAB2" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 2850 800 50  0001 C CNN
F 1 "GND" H 2950 900 50  0000 R CNN
F 2 "" H 2850 1050 50  0001 C CNN
F 3 "" H 2850 1050 50  0001 C CNN
	1    2850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1050 2850 1000
Text GLabel 2700 1550 0    50   Input ~ 0
PWR_LED
$Comp
L Device:R R?
U 1 1 6144C165
P 2750 1300
AR Path="/6144C165" Ref="R?"  Part="1" 
AR Path="/5E54E3AA/6144C165" Ref="R45"  Part="1" 
F 0 "R45" H 2650 1450 50  0000 C CNN
F 1 "1k" V 2750 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2680 1300 50  0001 C CNN
F 3 "~" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1450 2750 1550
Wire Wire Line
	2750 1150 2750 1000
Wire Wire Line
	2750 1550 2700 1550
NoConn ~ 2300 2950
NoConn ~ 2300 3050
NoConn ~ 3300 3350
Text GLabel 2250 3350 0    50   Input ~ 0
ENC_BTN
Wire Wire Line
	7200 4250 7350 4250
Wire Wire Line
	7350 4350 7200 4350
$Comp
L dk_Trimmer-Potentiometers:TC33X-2-103E POT1
U 1 1 5E47945C
P 6350 1600
F 0 "POT1" V 6050 1700 60  0000 R CNN
F 1 "5k" V 6150 1550 60  0000 R CNN
F 2 "digikey-footprints:Trimpot_3.8mmx3.6mm_TC33X-2-103E" H 6550 1800 60  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/TC33.pdf" H 6550 1900 60  0001 L CNN
F 4 "TC33X-103ETR-ND" H 6550 2000 60  0001 L CNN "Digi-Key_PN"
F 5 "TC33X-2-103E" H 6550 2100 60  0001 L CNN "MPN"
F 6 "Potentiometers, Variable Resistors" H 6550 2200 60  0001 L CNN "Category"
F 7 "Trimmer Potentiometers" H 6550 2300 60  0001 L CNN "Family"
F 8 "https://www.bourns.com/docs/Product-Datasheets/TC33.pdf" H 6550 2400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/bourns-inc/TC33X-2-103E/TC33X-103ETR-ND/612858" H 6550 2500 60  0001 L CNN "DK_Detail_Page"
F 10 "TRIMMER 10K OHM 0.1W J LEAD TOP" H 6550 2600 60  0001 L CNN "Description"
F 11 "Bourns Inc." H 6550 2700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6550 2800 60  0001 L CNN "Status"
	1    6350 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 1400 6650 1450
Wire Wire Line
	6350 1100 6350 1250
Wire Wire Line
	6350 1250 6550 1250
Wire Wire Line
	6550 1250 6550 1450
Wire Wire Line
	6550 1450 6650 1450
Connection ~ 6650 1450
Wire Wire Line
	6650 1450 6650 1600
NoConn ~ 6350 1400
$Comp
L dk_Trimmer-Potentiometers:TC33X-2-103E POT2
U 1 1 5E4A257E
P 7600 1550
F 0 "POT2" V 7300 1650 60  0000 R CNN
F 1 "5k" V 7400 1500 60  0000 R CNN
F 2 "digikey-footprints:Trimpot_3.8mmx3.6mm_TC33X-2-103E" H 7800 1750 60  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/TC33.pdf" H 7800 1850 60  0001 L CNN
F 4 "TC33X-103ETR-ND" H 7800 1950 60  0001 L CNN "Digi-Key_PN"
F 5 "TC33X-2-103E" H 7800 2050 60  0001 L CNN "MPN"
F 6 "Potentiometers, Variable Resistors" H 7800 2150 60  0001 L CNN "Category"
F 7 "Trimmer Potentiometers" H 7800 2250 60  0001 L CNN "Family"
F 8 "https://www.bourns.com/docs/Product-Datasheets/TC33.pdf" H 7800 2350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/bourns-inc/TC33X-2-103E/TC33X-103ETR-ND/612858" H 7800 2450 60  0001 L CNN "DK_Detail_Page"
F 10 "TRIMMER 10K OHM 0.1W J LEAD TOP" H 7800 2550 60  0001 L CNN "Description"
F 11 "Bourns Inc." H 7800 2650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7800 2750 60  0001 L CNN "Status"
	1    7600 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1200 7800 1200
Wire Wire Line
	7800 1200 7800 1400
Wire Wire Line
	7800 1400 7900 1400
NoConn ~ 7600 1350
Wire Wire Line
	7600 1200 7600 1100
Wire Wire Line
	7900 1400 7900 1550
Wire Wire Line
	7600 1750 7600 1850
Text GLabel 2100 6050 2    50   Input ~ 0
BTN_03
Text GLabel 2100 5650 2    50   Input ~ 0
BTN_02
Text GLabel 2100 5300 2    50   Input ~ 0
BTN_01
Text GLabel 4050 6050 2    50   Input ~ 0
BTN_08
Text GLabel 4050 5650 2    50   Input ~ 0
BTN_07
Text GLabel 4050 5300 2    50   Input ~ 0
BTN_06
Text GLabel 2100 6750 2    50   Input ~ 0
BTN_05
Text GLabel 4050 6750 2    50   Input ~ 0
BTN_10
Text GLabel 4050 6400 2    50   Input ~ 0
BTN_09
$Comp
L SparkFun-Connectors:CONN_05JST J?
U 1 1 5E5321E0
P 5600 2350
AR Path="/5E793D9E/5E5321E0" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E5321E0" Ref="J11"  Part="1" 
F 0 "J11" H 5372 2508 45  0000 R CNN
F 1 "ENCODER" H 5372 2592 45  0000 R CNN
F 2 "Connectors_JST:JST_XH_B05B-XH-A_05x2.50mm_Straight" H 5600 2950 20  0001 C CNN
F 3 "" H 5600 2350 50  0001 C CNN
F 4 "PRT-09917" H 5372 2634 60  0001 R CNN "Field4"
	1    5600 2350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5321E6
P 5500 2300
AR Path="/5E793D9E/5E5321E6" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E5321E6" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 5500 2150 50  0001 C CNN
F 1 "+5V" H 5515 2473 50  0000 C CNN
F 2 "" H 5500 2300 50  0001 C CNN
F 3 "" H 5500 2300 50  0001 C CNN
	1    5500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E5321EC
P 5150 2450
AR Path="/5E5321EC" Ref="#PWR?"  Part="1" 
AR Path="/5E793D9E/5E5321EC" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E5321EC" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 5150 2200 50  0001 C CNN
F 1 "GND" H 5155 2277 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2350 5500 2300
Text GLabel 5450 2750 0    50   Output ~ 0
ENC_BTN
Wire Wire Line
	5150 1450 4850 1450
Wire Wire Line
	5150 1450 5150 1400
$Comp
L Device:R R58
U 1 1 5FD28BB9
P 5150 1250
F 0 "R58" H 5000 1400 50  0000 L CNN
F 1 "330" V 5150 1200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5080 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR067
U 1 1 5E4FA19A
P 5300 800
F 0 "#PWR067" H 5300 650 50  0001 C CNN
F 1 "+5V" H 5315 973 50  0000 C CNN
F 2 "" H 5300 800 50  0001 C CNN
F 3 "" H 5300 800 50  0001 C CNN
	1    5300 800 
	1    0    0    -1  
$EndComp
$Comp
L SA5PMG:V_REG_317DPACK U7
U 1 1 5E61AC3C
P 4850 800
F 0 "U7" H 4850 1054 45  0000 C CNN
F 1 "V_REG_317DPACK" H 4850 970 45  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 4850 1050 20  0001 C CNN
F 3 "" H 4850 800 60  0001 C CNN
F 4 "IC-09888" H 4850 981 60  0001 C CNN "Field4"
	1    4850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 800  5300 800 
Connection ~ 5300 800 
Wire Wire Line
	5300 800  5300 1500
Wire Wire Line
	5150 800  5150 1100
Connection ~ 5150 800 
Wire Wire Line
	6650 800  6650 1100
Wire Wire Line
	6800 800  6800 1500
Connection ~ 6800 800 
Wire Wire Line
	7900 800  7900 1100
Wire Wire Line
	8050 800  8050 1500
Connection ~ 8050 800 
$Comp
L SA5PMG:V_REG_317DPACK U8
U 1 1 5E6B5315
P 6350 800
F 0 "U8" H 6350 1054 45  0000 C CNN
F 1 "V_REG_317DPACK" H 6350 970 45  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 6350 1050 20  0001 C CNN
F 3 "" H 6350 800 60  0001 C CNN
F 4 "IC-09888" H 6350 981 60  0001 C CNN "Field4"
	1    6350 800 
	1    0    0    -1  
$EndComp
Connection ~ 6650 800 
$Comp
L SA5PMG:V_REG_317DPACK U9
U 1 1 5E6B592E
P 7600 800
F 0 "U9" H 7600 1054 45  0000 C CNN
F 1 "V_REG_317DPACK" H 7600 970 45  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 7600 1050 20  0001 C CNN
F 3 "" H 7600 800 60  0001 C CNN
F 4 "IC-09888" H 7600 981 60  0001 C CNN "Field4"
	1    7600 800 
	1    0    0    -1  
$EndComp
Connection ~ 7900 800 
Wire Wire Line
	5500 2750 5450 2750
Wire Wire Line
	5500 2650 5000 2650
Wire Wire Line
	5000 2650 5000 2750
Wire Wire Line
	5000 2750 4550 2750
Wire Wire Line
	3500 1000 3500 1050
Wire Wire Line
	3600 1000 3600 1050
Wire Wire Line
	2300 3450 2250 3450
$Comp
L power:GND #PWR?
U 1 1 5E343212
P 5000 3150
AR Path="/5E343212" Ref="#PWR?"  Part="1" 
AR Path="/5E793D9E/5E343212" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E343212" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 5000 2900 50  0001 C CNN
F 1 "GND" H 5005 2977 50  0000 C CNN
F 2 "" H 5000 3150 50  0001 C CNN
F 3 "" H 5000 3150 50  0001 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 5000 3150
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5E34321A
P 5000 2900
AR Path="/5E34321A" Ref="C?"  Part="1" 
AR Path="/5E793D9E/5E34321A" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E34321A" Ref="C19"  Part="1" 
F 0 "C19" H 4900 2850 45  0000 C CNN
F 1 "0.1uF" H 4900 3050 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5000 3150 20  0001 C CNN
F 3 "" H 5000 2900 50  0001 C CNN
F 4 "" V 4839 2950 60  0000 C CNN "Field4"
	1    5000 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2800 5000 2750
Connection ~ 5000 2750
Wire Wire Line
	2350 4550 2800 4550
$Comp
L SA5PMG:Arduino_Nano_v3.x A1
U 1 1 5E4FD7DF
P 2800 3550
F 0 "A1" H 2800 2461 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2800 2370 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2800 3550 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4550 2900 4550
Connection ~ 2800 4550
Wire Wire Line
	3000 2050 3000 2550
$Comp
L SparkFun-Connectors:CONN_03 J?
U 1 1 5E53FAEC
P 2650 2050
AR Path="/5E53FAEC" Ref="J?"  Part="1" 
AR Path="/5E26A046/5E53FAEC" Ref="J?"  Part="1" 
AR Path="/5E54E3AA/5E53FAEC" Ref="J8"  Part="1" 
F 0 "J8" H 2350 1900 45  0000 C CNN
F 1 "PWR_OUT" H 2600 1900 45  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2650 2450 20  0001 C CNN
F 3 "" H 2650 2050 50  0001 C CNN
F 4 "XXX-00000" H 2608 2381 60  0001 C CNN "Field4"
	1    2650 2050
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 2050 3000 2050
Connection ~ 3000 2050
Wire Wire Line
	2750 2150 2900 2150
Wire Wire Line
	2900 2150 2900 2550
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EE837CD
P 3450 1750
AR Path="/5EE837CD" Ref="H?"  Part="1" 
AR Path="/5E54E3AA/5EE837CD" Ref="H1"  Part="1" 
F 0 "H1" H 3400 1950 50  0000 L CNN
F 1 "MountingHole_Pad" H 3550 1708 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3450 1750 50  0001 C CNN
F 3 "~" H 3450 1750 50  0001 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EE837D3
P 3600 1750
AR Path="/5EE837D3" Ref="H?"  Part="1" 
AR Path="/5E54E3AA/5EE837D3" Ref="H2"  Part="1" 
F 0 "H2" H 3550 1950 50  0000 L CNN
F 1 "MountingHole_Pad" H 3700 1708 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3600 1750 50  0001 C CNN
F 3 "~" H 3600 1750 50  0001 C CNN
	1    3600 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EE837D9
P 3750 1750
AR Path="/5EE837D9" Ref="H?"  Part="1" 
AR Path="/5E54E3AA/5EE837D9" Ref="H3"  Part="1" 
F 0 "H3" H 3700 1950 50  0000 L CNN
F 1 "MountingHole_Pad" H 3850 1708 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3750 1750 50  0001 C CNN
F 3 "~" H 3750 1750 50  0001 C CNN
	1    3750 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EE837DF
P 3900 1750
AR Path="/5EE837DF" Ref="H?"  Part="1" 
AR Path="/5E54E3AA/5EE837DF" Ref="H4"  Part="1" 
F 0 "H4" H 3850 1950 50  0000 L CNN
F 1 "MountingHole_Pad" H 4000 1708 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 3900 1750 50  0001 C CNN
F 3 "~" H 3900 1750 50  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1850 3700 1850
$Comp
L power:GND #PWR?
U 1 1 5EE837EA
P 3700 1900
AR Path="/5EE837EA" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5EE837EA" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 3700 1650 50  0001 C CNN
F 1 "GND" H 3550 1850 50  0000 C CNN
F 2 "" H 3700 1900 50  0001 C CNN
F 3 "" H 3700 1900 50  0001 C CNN
	1    3700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1900 3700 1850
Connection ~ 3700 1850
Text GLabel 3600 1050 3    50   Output ~ 0
MOSI
Text GLabel 3500 1050 3    50   Input ~ 0
MISO
Wire Wire Line
	2300 3650 2250 3650
Wire Wire Line
	2300 3750 2250 3750
Wire Wire Line
	2300 3850 2250 3850
Text GLabel 2250 3650 0    50   Output ~ 0
SER_DATA
Text GLabel 2250 3750 0    50   Output ~ 0
SER_CLK
Text GLabel 2250 3850 0    50   Output ~ 0
SER_LATCH
Wire Wire Line
	4550 2550 4650 2550
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5F171EC6
P 4650 2900
AR Path="/5F171EC6" Ref="C?"  Part="1" 
AR Path="/5E793D9E/5F171EC6" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5F171EC6" Ref="C18"  Part="1" 
F 0 "C18" H 4550 2850 45  0000 C CNN
F 1 "0.1uF" H 4550 3050 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4650 3150 20  0001 C CNN
F 3 "" H 4650 2900 50  0001 C CNN
F 4 "" V 4489 2950 60  0000 C CNN "Field4"
	1    4650 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F172082
P 4650 3150
AR Path="/5F172082" Ref="#PWR?"  Part="1" 
AR Path="/5E793D9E/5F172082" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5F172082" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 4650 2900 50  0001 C CNN
F 1 "GND" H 4655 2977 50  0000 C CNN
F 2 "" H 4650 3150 50  0001 C CNN
F 3 "" H 4650 3150 50  0001 C CNN
	1    4650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3100 4650 3150
Wire Wire Line
	4650 2800 4650 2550
Connection ~ 4650 2550
Wire Wire Line
	4650 2550 5500 2550
Text GLabel 4550 2550 0    50   Output ~ 0
ENC_DATA
Text GLabel 4550 2750 0    50   Output ~ 0
ENC_CLK
Text GLabel 2250 3150 0    50   Input ~ 0
ENC_DATA
Text GLabel 2250 3950 0    50   Output ~ 0
CE_DISP
Wire Wire Line
	2250 3950 2300 3950
Text GLabel 6550 4650 0    50   Input ~ 0
LED_09
Text GLabel 3950 3550 2    50   Output ~ 0
~SER_EN
$Comp
L Device:R R?
U 1 1 5F53B9F0
P 3900 3250
AR Path="/5F53B9F0" Ref="R?"  Part="1" 
AR Path="/5E54E3AA/5F53B9F0" Ref="R56"  Part="1" 
F 0 "R56" H 3800 3400 50  0000 C CNN
F 1 "10k" V 3900 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3830 3250 50  0001 C CNN
F 3 "~" H 3900 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2050 3600 2050
Wire Wire Line
	3900 2050 3900 3100
Text GLabel 2250 3250 0    50   Input ~ 0
ENC_CLK
Wire Wire Line
	3900 3400 3900 3550
Wire Wire Line
	3900 3550 3950 3550
Wire Wire Line
	5150 2450 5500 2450
NoConn ~ 3300 3850
NoConn ~ 3300 3650
Wire Wire Line
	3750 1850 3900 1850
Wire Wire Line
	3750 1850 3700 1850
Connection ~ 3750 1850
Wire Wire Line
	3450 1850 3600 1850
Connection ~ 3600 1850
Connection ~ 7900 1400
$Comp
L power:GND #PWR?
U 1 1 5E91555B
P 2750 2300
AR Path="/5E91555B" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5E91555B" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2750 2050 50  0001 C CNN
F 1 "GND" H 2755 2127 50  0000 C CNN
F 2 "" H 2750 2300 50  0001 C CNN
F 3 "" H 2750 2300 50  0001 C CNN
	1    2750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2300 2750 2250
Wire Wire Line
	6550 3850 6700 3850
Wire Wire Line
	6550 3950 6700 3950
Wire Wire Line
	6550 4050 6700 4050
Wire Wire Line
	6550 4150 6700 4150
Wire Wire Line
	6550 4450 6700 4450
Wire Wire Line
	6550 4550 6700 4550
Wire Wire Line
	6550 4750 6700 4750
Wire Wire Line
	6550 4250 6700 4250
Wire Wire Line
	6550 4350 6700 4350
Wire Wire Line
	6550 4650 6700 4650
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5E9294DA
P 3400 2300
AR Path="/5E9294DA" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5E9294DA" Ref="C13"  Part="1" 
F 0 "C13" H 3500 2250 45  0000 C CNN
F 1 "0.1uF" H 3600 2350 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3400 2550 20  0001 C CNN
F 3 "" H 3400 2300 50  0001 C CNN
F 4 "CAP-09822" V 3239 2350 60  0001 C CNN "Field4"
	1    3400 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2500 3500 2500
Wire Wire Line
	3500 2550 3500 2500
Connection ~ 3500 2500
Wire Wire Line
	3500 2500 3600 2500
Wire Wire Line
	3600 2200 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	3000 2050 3600 2050
Wire Wire Line
	3400 2200 3400 2150
Wire Wire Line
	3400 2150 2900 2150
Connection ~ 2900 2150
Wire Wire Line
	6150 3850 6150 3950
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J13
U 1 1 5F08A30D
P 5850 4250
F 0 "J13" H 5900 4867 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 5900 4776 50  0000 C CNN
F 2 "Connectors:2X10" H 5850 4250 50  0001 C CNN
F 3 "~" H 5850 4250 50  0001 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4750 6150 4650
Wire Wire Line
	5650 3850 5650 3950
Connection ~ 5650 3850
Connection ~ 5650 3950
Wire Wire Line
	5650 3950 5650 4050
Connection ~ 5650 4050
Wire Wire Line
	5650 4050 5650 4150
Connection ~ 5650 4150
Wire Wire Line
	5650 4150 5650 4250
Connection ~ 5650 4250
Wire Wire Line
	5650 4250 5650 4350
Connection ~ 5650 4350
Wire Wire Line
	5650 4350 5650 4450
Connection ~ 5650 4450
Wire Wire Line
	5650 4450 5650 4550
Connection ~ 5650 4550
Wire Wire Line
	5650 4550 5650 4650
Connection ~ 5650 4650
Wire Wire Line
	5650 4650 5650 4750
Wire Wire Line
	6150 4650 6150 4550
Connection ~ 6150 4650
Connection ~ 6150 3950
Connection ~ 6150 4050
Wire Wire Line
	6150 4050 6150 3950
Connection ~ 6150 4150
Wire Wire Line
	6150 4150 6150 4050
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6150 4150
Connection ~ 6150 4350
Wire Wire Line
	6150 4350 6150 4250
Connection ~ 6150 4450
Wire Wire Line
	6150 4450 6150 4350
Connection ~ 6150 4550
Wire Wire Line
	6150 4550 6150 4450
Connection ~ 6150 4750
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J15
U 1 1 5F0BEFF7
P 7000 4250
F 0 "J15" H 7050 4867 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 7050 4776 50  0000 C CNN
F 2 "Connectors:2X10" H 7000 4250 50  0001 C CNN
F 3 "~" H 7000 4250 50  0001 C CNN
	1    7000 4250
	-1   0    0    -1  
$EndComp
Text GLabel 2100 6400 2    50   Input ~ 0
BTN_04
Wire Wire Line
	3300 4250 3500 4250
NoConn ~ 3300 3750
Wire Wire Line
	3300 3550 3900 3550
Connection ~ 3900 3550
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5F84ACED
P 3500 4400
AR Path="/5F84ACED" Ref="C?"  Part="1" 
AR Path="/5E793D9E/5F84ACED" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5F84ACED" Ref="C14"  Part="1" 
F 0 "C14" H 3400 4350 45  0000 C CNN
F 1 "0.1uF" H 3400 4550 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3500 4650 20  0001 C CNN
F 3 "" H 3500 4400 50  0001 C CNN
F 4 "" V 3339 4450 60  0000 C CNN "Field4"
	1    3500 4400
	-1   0    0    1   
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C?
U 1 1 5F84B23C
P 3900 4400
AR Path="/5F84B23C" Ref="C?"  Part="1" 
AR Path="/5E793D9E/5F84B23C" Ref="C?"  Part="1" 
AR Path="/5E54E3AA/5F84B23C" Ref="C16"  Part="1" 
F 0 "C16" H 3800 4350 45  0000 C CNN
F 1 "0.1uF" H 3800 4550 45  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3900 4650 20  0001 C CNN
F 3 "" H 3900 4400 50  0001 C CNN
F 4 "" V 3739 4450 60  0000 C CNN "Field4"
	1    3900 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 4300 3900 4150
Wire Wire Line
	3900 4600 3650 4600
$Comp
L power:GND #PWR?
U 1 1 5F873CA3
P 3650 4600
AR Path="/5F873CA3" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5F873CA3" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 3650 4350 50  0001 C CNN
F 1 "GND" H 3655 4427 50  0000 C CNN
F 2 "" H 3650 4600 50  0001 C CNN
F 3 "" H 3650 4600 50  0001 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
Connection ~ 3650 4600
Wire Wire Line
	3650 4600 3500 4600
Wire Wire Line
	3300 4150 3900 4150
Wire Wire Line
	3500 4300 3500 4250
$Comp
L Device:R R39
U 1 1 5F9AC735
P 1550 6900
F 0 "R39" H 1350 6900 50  0000 L CNN
F 1 "2k" V 1550 6850 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 6900 50  0001 C CNN
F 3 "~" H 1550 6900 50  0001 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5F9AD15A
P 1550 6550
F 0 "R38" H 1350 6550 50  0000 L CNN
F 1 "1k" V 1550 6500 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 6550 50  0001 C CNN
F 3 "~" H 1550 6550 50  0001 C CNN
	1    1550 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4750 6150 4850
$Comp
L power:GND #PWR?
U 1 1 5F9BB609
P 1550 7100
AR Path="/5F9BB609" Ref="#PWR?"  Part="1" 
AR Path="/5E448698/5F9BB609" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5F9BB609" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 1550 6850 50  0001 C CNN
F 1 "GND" H 1555 6927 50  0000 C CNN
F 2 "" H 1550 7100 50  0001 C CNN
F 3 "" H 1550 7100 50  0001 C CNN
	1    1550 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 7100 1550 7050
$Comp
L Device:R R44
U 1 1 5F9C9996
P 1900 6750
F 0 "R44" V 2000 6650 50  0000 L CNN
F 1 "2k" V 1900 6700 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 6750 50  0001 C CNN
F 3 "~" H 1900 6750 50  0001 C CNN
	1    1900 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 5F9CA31E
P 1550 6200
F 0 "R37" H 1350 6200 50  0000 L CNN
F 1 "1k" V 1550 6150 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 6200 50  0001 C CNN
F 3 "~" H 1550 6200 50  0001 C CNN
	1    1550 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5F9CA4B9
P 1900 6400
F 0 "R43" V 2000 6300 50  0000 L CNN
F 1 "2k" V 1900 6350 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 6400 50  0001 C CNN
F 3 "~" H 1900 6400 50  0001 C CNN
	1    1900 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 5F9CA789
P 1550 5850
F 0 "R36" H 1350 5850 50  0000 L CNN
F 1 "1k" V 1550 5800 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 5850 50  0001 C CNN
F 3 "~" H 1550 5850 50  0001 C CNN
	1    1550 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5F9CA91F
P 1900 6050
F 0 "R42" V 2000 5950 50  0000 L CNN
F 1 "2k" V 1900 6000 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 6050 50  0001 C CNN
F 3 "~" H 1900 6050 50  0001 C CNN
	1    1900 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R41
U 1 1 5F9CABB1
P 1900 5650
F 0 "R41" V 2000 5550 50  0000 L CNN
F 1 "2k" V 1900 5600 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 5650 50  0001 C CNN
F 3 "~" H 1900 5650 50  0001 C CNN
	1    1900 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 6750 1750 6750
Connection ~ 1550 6750
Wire Wire Line
	1550 6700 1550 6750
Wire Wire Line
	1550 6400 1750 6400
Wire Wire Line
	1550 6350 1550 6400
Connection ~ 1550 6400
Wire Wire Line
	1550 6000 1550 6050
Wire Wire Line
	1550 5700 1550 5650
Wire Wire Line
	1750 5650 1550 5650
Connection ~ 1550 5650
Wire Wire Line
	1750 6050 1550 6050
Connection ~ 1550 6050
Wire Wire Line
	2050 5650 2100 5650
Wire Wire Line
	2100 6050 2050 6050
Wire Wire Line
	2100 6400 2050 6400
Wire Wire Line
	2100 6750 2050 6750
$Comp
L Device:R R35
U 1 1 5FC3CE33
P 1550 5500
F 0 "R35" H 1350 5500 50  0000 L CNN
F 1 "1k" V 1550 5450 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1480 5500 50  0001 C CNN
F 3 "~" H 1550 5500 50  0001 C CNN
	1    1550 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5FC3CE39
P 1900 5300
F 0 "R40" V 2000 5200 50  0000 L CNN
F 1 "2k" V 1900 5250 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1830 5300 50  0001 C CNN
F 3 "~" H 1900 5300 50  0001 C CNN
	1    1900 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5350 1550 5300
Wire Wire Line
	1750 5300 1550 5300
Connection ~ 1550 5300
Wire Wire Line
	2050 5300 2100 5300
Wire Wire Line
	900  5300 1550 5300
Text GLabel 3900 4150 2    50   Input ~ 0
BTN_G1
Text GLabel 900  5300 0    50   Output ~ 0
BTN_G1
$Comp
L Device:R R50
U 1 1 5FCCF527
P 3500 6900
F 0 "R50" H 3300 6900 50  0000 L CNN
F 1 "2k" V 3500 6850 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3430 6900 50  0001 C CNN
F 3 "~" H 3500 6900 50  0001 C CNN
	1    3500 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R49
U 1 1 5FCCF52D
P 3500 6550
F 0 "R49" H 3300 6550 50  0000 L CNN
F 1 "1k" V 3500 6500 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3430 6550 50  0001 C CNN
F 3 "~" H 3500 6550 50  0001 C CNN
	1    3500 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCCF533
P 3500 7100
AR Path="/5FCCF533" Ref="#PWR?"  Part="1" 
AR Path="/5E448698/5FCCF533" Ref="#PWR?"  Part="1" 
AR Path="/5E54E3AA/5FCCF533" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 3500 6850 50  0001 C CNN
F 1 "GND" H 3505 6927 50  0000 C CNN
F 2 "" H 3500 7100 50  0001 C CNN
F 3 "" H 3500 7100 50  0001 C CNN
	1    3500 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 7100 3500 7050
$Comp
L Device:R R55
U 1 1 5FCCF53A
P 3850 6750
F 0 "R55" V 3950 6650 50  0000 L CNN
F 1 "2k" V 3850 6700 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 6750 50  0001 C CNN
F 3 "~" H 3850 6750 50  0001 C CNN
	1    3850 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R48
U 1 1 5FCCF540
P 3500 6200
F 0 "R48" H 3300 6200 50  0000 L CNN
F 1 "1k" V 3500 6150 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3430 6200 50  0001 C CNN
F 3 "~" H 3500 6200 50  0001 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R54
U 1 1 5FCCF546
P 3850 6400
F 0 "R54" V 3950 6300 50  0000 L CNN
F 1 "2k" V 3850 6350 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 6400 50  0001 C CNN
F 3 "~" H 3850 6400 50  0001 C CNN
	1    3850 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R47
U 1 1 5FCCF54C
P 3500 5850
F 0 "R47" H 3300 5850 50  0000 L CNN
F 1 "1k" V 3500 5800 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3430 5850 50  0001 C CNN
F 3 "~" H 3500 5850 50  0001 C CNN
	1    3500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R53
U 1 1 5FCCF552
P 3850 6050
F 0 "R53" V 3950 5950 50  0000 L CNN
F 1 "2k" V 3850 6000 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 6050 50  0001 C CNN
F 3 "~" H 3850 6050 50  0001 C CNN
	1    3850 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R52
U 1 1 5FCCF558
P 3850 5650
F 0 "R52" V 3950 5550 50  0000 L CNN
F 1 "2k" V 3850 5600 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 5650 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
	1    3850 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 6750 3700 6750
Connection ~ 3500 6750
Wire Wire Line
	3500 6700 3500 6750
Wire Wire Line
	3500 6400 3700 6400
Wire Wire Line
	3500 6350 3500 6400
Connection ~ 3500 6400
Wire Wire Line
	3500 6000 3500 6050
Wire Wire Line
	3500 5700 3500 5650
Wire Wire Line
	3700 5650 3500 5650
Connection ~ 3500 5650
Wire Wire Line
	3700 6050 3500 6050
Connection ~ 3500 6050
Wire Wire Line
	4000 5650 4050 5650
Wire Wire Line
	4050 6050 4000 6050
Wire Wire Line
	4050 6400 4000 6400
Wire Wire Line
	4050 6750 4000 6750
$Comp
L Device:R R46
U 1 1 5FCCF56E
P 3500 5500
F 0 "R46" H 3300 5500 50  0000 L CNN
F 1 "1k" V 3500 5450 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3430 5500 50  0001 C CNN
F 3 "~" H 3500 5500 50  0001 C CNN
	1    3500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R51
U 1 1 5FCCF574
P 3850 5300
F 0 "R51" V 3950 5200 50  0000 L CNN
F 1 "2k" V 3850 5250 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 5300 50  0001 C CNN
F 3 "~" H 3850 5300 50  0001 C CNN
	1    3850 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5350 3500 5300
Wire Wire Line
	3700 5300 3500 5300
Connection ~ 3500 5300
Wire Wire Line
	4000 5300 4050 5300
Wire Wire Line
	2850 5300 3500 5300
Text GLabel 2850 5300 0    50   Output ~ 0
BTN_G2
Text GLabel 3500 4250 2    50   Output ~ 0
BTN_G2
NoConn ~ 2300 3550
Text Notes 2450 5900 0    50   ~ 0
Use 1% resistors
$EndSCHEMATC
