* Rename Subckt and Pins - eetech@yahoo.com
.SUBCKT TC4420 IN OUT VCC VGND
XTC4420 IN OUT VCC VGND TC4420_I2D_B
.ENDS TC4420
*
.SUBCKT TC4420_I2D_B 1 2 3 4
*                    | | | | 
*                    | | | Negative Supply
*                    | | Positive Supply
*                    | Output
*                    Input
*
********************************************************************************
* Software License Agreement                                                   *
*                                                                              *
* The software supplied herewith by Microchip Technology Incorporated (the     *
* 'Company') is intended and supplied to you, the Company's customer, for use  *
* soley and exclusively on Microchip products.                                 *
*                                                                              *
* The software is owned by the Company and/or its supplier, and is protected   *
* under applicable copyright laws. All rights are reserved. Any use in         *
* violation of the foregoing restrictions may subject the user to criminal     *
* sanctions under applicable laws, as well as to civil liability for the       *
* breach of the terms and conditions of this license.                          *
*                                                                              *
* THIS SOFTWARE IS PROVIDED IN AN 'AS IS' CONDITION. NO WARRANTIES, WHETHER    *
* EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED        *
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO  *
* THIS SOFTWARE. THE COMPANY SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR    *
* SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.     *
********************************************************************************
*
* The following MOSFET drivers are covered by this model:
*      Rev A Testing - TC4420
*
* Polarity: Non Inverting
*
* Date of model creation: 1/26/2007
* Level of Model Creator: A
*
* Revision History:
*      12/24/07 HNV Created by edit of TC4429_I2D_A 
*       2/18/08 HNV Updated quiescent current
*
* Recommendations:
*      Use PSPICE (or SPICE 2G6; other simulators may require translation)
*      For a quick, effective design, use a combination of: data sheet
*            specs, bench testing, and simulations with this macromodel
*      For high impedance circuits, set GMIN=100F in the .OPTIONS statement
*
* Supported:
*      Typical performance for temperature range (-40 to 125) degrees Celsius
*      DC, AC, Transient, and Noise analyses.
*      Most specs, including: propgation delays, rise times, fall times, max sink/source current,
*            input thresholds, voltage ranges, supply current, ... , etc.
*      Temperature effects for Ibias, Iquiescent, output current, output 
*            resistance,....,etc.
*
* Not Supported:
*      Some Variation in specs vs. Power Supply Voltage
*      Vos distribution, Ib distribution for Monte Carlo
*      Some Temperature analysis
*      Process variation
*      Behavior outside normal operating region
*
* Known Discrepancies in Model vs. Datasheet:
*      Rise and fall times are a little too fast over 16V Vdd
*      Use data from datasheet for more accurate estimates. 
*
*Modified for LTspice 11/18/2021 - eetech00@yahoo.com
* Input Impedance/Clamp
R1    4  1  2MEG
C1    4  1  38P
G3    3  1  TABLE { V(3, 1) } = (-770M,-1.00)(-700M,-10.0M)(-630M,-10N)(0,0)(20.0,10N)
G4    1  4  TABLE { V(1, 4) } = (-5.94,-1.00)(-5.4,-10.0M)(-4.86,-10N)(0,0)(20.0,10N)
* Threshold
G11 30 0 TABLE {V(1,11)} = (-1m,10n)(0,0)(0.88,-.1)(1.5,-0.9)(2.2,-1)(4,-1.1)(6,-1.3)
G12 30 0 TABLE {V(1,12)} = (-6,1.3)(-4,1.1)(-2.3,1)(-1.8,.9)(-0.7,.1)(0,0)(1,-10n)
R21 0 11 1 TC .3m 1.4u  
G21 0 11 TABLE { V(3, 4) } = (0,0)(4,1.34)(5,1.43)(6,1.5)(7,1.5)(10,1.48)(12,1.48)(18,1.5)
R22 0 12  1 TC .1m -0.8U
G22 0 12 TABLE { V(3, 4) } = (0,0)(4,1.16)(6,1.24)(7,1.24)(9,1.23)(11,1.23)(18,1.25)
C30 30   0    1n  
* HL Circuit
G31 0    31   TABLE { V(3, 4) } = (0,35)(5,20.5)(6,19)(8,16.6)(12,14.8)(15,15.1)(17,15.3)(18,15.1)
R31 31   0    1 TC 3.2M  
G33 0    30   TABLE { V(31, 30) } = (-1m,-10)(0,0)(1m,5n)(1,10n)
S31 31   30 31 30 SS31
* LH Circuit
G32 32   0    TABLE { V(3, 4) } = (0,71)(5,45)(6,38)(8.5,32)(11.5,31)(17,31.7)(18,31)
R32 0    32   1 TC 2.9M 5U
G34 30   0    TABLE { V(30, 32) } = (-1m,-10)(0,0)(1m,5n)(1,10n)
R30 32   30   1MEG  
* DRIVE
G51  0 50 TABLE {V(30, 0)} = (-5,-1n)(-3,-1n)(0,0)(4,10)(15,6)(22,7)
G52 50  0 TABLE {V(0, 30)} = (-5,-1n)(-3,-1n)(0,0)(2,6)(13,4.5)(15,2.7)(30,2.7)
R53  0 50 1 TC -5m 25u
G50 51 60 VALUE {V(50,0)*0.96/(-0.04+(18/V(3,4))**1.1)+1m}
R51 51  0 1
G53  3  0 TABLE {V(51,0)} = (-10,10)(0,0)(1,1n)
G54  0  4 TABLE {V(0,51)} = (-10,10)(0,0)(1,1n)
R60 0    60   100MEG  
H67 0    69   V67 1
V67 60   59   0V
C59 0    59   3N
C60 561    60   2N
*R59 59   2   0.5
L59 59   2   5N  Rpar=0.5
* Shoot-through adjustment
VC60        56 0 0V
RC60        56 561 1m
H60         58 0 VC60 56
G_G60P       0 3 TABLE { V(58, 0) } = (-1,-1u)(0,0)(16,.7)(250,5)
G_G60N       4 0 TABLE { V(0, 58) } = (-1,-1u)(0,0)(16,.7)(250,5)
* Source Output
.param CP=1u RP=1m
G67  67  0  TABLE {-1k*V(69, 0)} = (-10,-10)(0,0)(10,50)
C67a 67  0  {CP} Rpar={RP}
G63   0 63  POLY(1) 3 4 6 -280M 3M
R63   0 63  1 TC 3.3M,-2U
G61a 61 65  VALUE {-1k*V(67,0)*V(63,0)}
C61a 61 65  {CP} Rpar={RP}
V63  65  3  10.0M
G61  61 60  TABLE {V(61,60)} = (-12.0M,-200.0)(-11.0M,-60)(-10.0M,-6)(0,0)(.1,5N)(50,10N)
* Sink Output
G68  68  0  TABLE {-1k*V(69,0)} = (-50,-10)(0,0)(10,10)
C68a 68  0  {CP} Rpar={RP}
G64   0 64  POLY(1) 3 4 3.45 -180M 2.7M
R64   0 64  1 TC 3.3M 6U
G62a 62 66  VALUE {-1k*V(68,0)*V(64,0)}
C62a 62 66  {CP} Rpar={RP}
V64  66  4  10.0M
G62  60 62  TABLE {V(60,62)} = (-12.0M,-200.0)(-11.0M,-60)(-10.0M,-6)(0,0)(.1,5N)(10,10N)
* Bias Current
G55   0 55  TABLE {-1k*V(3,4)} = (0,0)(4,296U)(6,338U)(13,410U)(17,500U)(20,750U)
C55a 0  55  {CP} Rpar={RP}
G56   3  4 55 0 1
R55  55  0  1 TC  5.7M 19U
G57   0 57  TABLE {-1k*V(3,4)} = (0,0)(4.4,48U)(6,54U)(7,64U)(13,68U)(16,70U)(20,78U)
C57a 0  57  {CP} Rpar={RP}
G58   3  4 57 0 1
R57  57  0  1 TC  4.6M 49U
S59  55  0  1 0 SS59
* Models
.MODEL SS59 VSWITCH Roff=100MEG Ron=1m Voff=1.5V Von=1.2V
.MODEL SS31 VSWITCH Roff=100MEG Ron=800 Voff=0.2V Von=0.1V
.ENDS TC4420_I2D_B
