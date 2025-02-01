.SUBCKT FDB3682 2 1 3      
*PSpice model for FDB3682 & FDP3682
*Nom Temp=25 deg C        
*10 May 2002   

Ca 12 8 4e-10
Cb 15 14 5.5e-10
Cin 6 8 1.22e-9

Dbody 7 5 DbodyMOD
Dbreak 5 11 DbreakMOD
Dplcap 10 5 DplcapMOD

Ebreak 11 7 17 18 108
Eds 14 8 5 8 1
Egs 13 8 6 8 1
Esg 6 10 6 8 1
Evthres 6 21 19 8 1
Evtemp 20 6 18 22 1

It 8 17 1

Lgate 1 9 5.96e-9
Ldrain 2 5 1e-9
Lsource 3 7 3.19e-9

RLgate 1 9 59.6
RLdrain 2 5 10
RLsource 3 7 31.9

Mmed 16 6 8 8 MmedMOD
Mstro 16 6 8 8 MstroMOD 
Mweak 16 21 8 8 MweakMOD    

Rbreak 17 18 RbreakMOD 1
Rdrain 50 16 RdrainMOD 10.5e-3
Rgate 9 20 1.86
RSLC1 5 51 RSLCMOD 1e-6
RSLC2 5 50 1e3
Rsource 8 7 RsourceMOD 11.9e-3
Rvthres 22 8 Rvthresmod 1
Rvtemp 18 19 RvtempMOD 1
S1a 6 12 13 8 S1AMOD
S1b 13 12 13 8 S1BMOD
S2a 6 15 14 13 S2AMOD
S2b 13 15 14 13 S2BMOD

Vbat 22 19 DC 1

ESLC 51 50  VALUE={(V(5,51)/ABS(V(5,51)))*(PWR(V(5,51)/(1e-6*70),2.5))}

.MODEL DbodyMOD D (IS=2.4E-12 RS=4.4e-3 TRS1=2e-3 TRS2=4.5e-7 XTI=4.0
 + CJO=9e-10 TT=2.9e-8 M=0.57)
.MODEL DbreakMOD D (RS=0.6 TRS1=1.4e-3 TRS2=-5e-5)
.MODEL DplcapMOD D (CJO=2.7e-10 IS=1e-30 N=10 M=0.56)

.MODEL MmedMOD NMOS (VTO=3.48 KP=2.7 IS=1e-30 N=10 TOX=1 L=1u W=1u RG=1.86)
.MODEL MstroMOD NMOS (VTO=4.16 KP=32 IS=1e-30 N=10 TOX=1 L=1u W=1u)
.MODEL MweakMOD NMOS (VTO=2.97 KP=0.04 IS=1e-30 N=10 TOX=1 L=1u W=1u RG=18.6 RS=0.1) 

.MODEL RbreakMOD RES (TC1=1.05e-3 TC2=-1.1e-8)
.MODEL RdrainMOD RES (TC1=1.6e-2 TC2=4e-5)
.MODEL RSLCMOD RES (TC1=3.0e-3 TC2=2.9e-6)
.MODEL RsourceMOD RES (TC1=1e-3 TC2=1e-6)
.MODEL RvthresMOD RES (TC1=-4.1e-3 TC2=-1.4e-5)
.MODEL RvtempMOD RES (TC1=-3.5e-3 TC2=1.3e-6)

.MODEL S1AMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-5.0 VOFF=-2.0)
.MODEL S1BMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-2.0 VOFF=-5.0)
.MODEL S2AMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-0.4 VOFF=0.3)
.MODEL S2BMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=0.3 VOFF=-0.4)

.ENDS

.SUBCKT FDB3682_Thermal TH TL
*Thermal Model Subcircuit 10May02

CTHERM1 th c2 1.6E-3	   
CTHERM2 c2 c3 4.5E-3
CTHERM3 c3 c4 5.0E-3
CTHERM4 c4 c5 8.0E-3
CTHERM5 c5 c6 8.2E-3
CTHERM6 c6 tl 4.7E-2

RTHERM1 th c2 3.3E-2
RTHERM2 c2 c3 7.9E-2
RTHERM3 c3 c4 9.5E-2 
RTHERM4 c4 c5 1.4E-1
RTHERM5 c5 c6 2.9E-1
RTHERM6 c6 tl 6.7E-1

.ends

