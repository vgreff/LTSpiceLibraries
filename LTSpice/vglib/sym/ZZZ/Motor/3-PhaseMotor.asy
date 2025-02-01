Version 4
SymbolType CELL
LINE Normal 117 -96 -72 -96
LINE Normal 118 96 -72 96
LINE Normal 192 -16 112 -16
LINE Normal 192 16 112 16
LINE Normal -101 -64 -144 -64
LINE Normal -129 -70 -144 -64
LINE Normal -99 -70 -128 -70
LINE Normal -144 70 -144 -64
LINE Normal -99 70 -144 70
LINE Normal -53 112 -42 96
LINE Normal 89 112 -53 112
LINE Normal 80 96 89 112
LINE Normal 93 96 89 112
LINE Normal -47 96 -53 112
CIRCLE Normal 197 16 187 -16
ARC Normal 107 -16 117 16 112 -16 112 16
ARC Normal 80 -94 144 94 112 94 141 5
ARC Normal -111 -96 -34 96 -71 -96 -71 96
ARC Normal 86 -96 150 96 148 -5 147 5
ARC Normal 80 94 144 -94 141 -5 112 -94
ARC Normal 103 -21 121 21 121 -11 121 11
WINDOW 0 16 -96 Bottom 2
SYMATTR Value Np=2 J=0.03
SYMATTR ModelFile 3-phasemotor.sub
SYMATTR SpiceModel 3-phasemotor
SYMATTR SpiceLine N=475  Bs=1.8 Br=0.5 Hc=40
SYMATTR SpiceLine2 A=1m5 Lm=0.2 Lg=1m5
SYMATTR Value2 Ls=262m Lls=12m Llr=20m Rs=4.9  Rr=3.8
SYMATTR Description Np - Stator Pole Number  J -  Moment of Inertia Ls - Stator Mutual Inductance Lls - Stator Leakage Inductance Llr - Rotor Leakage Inductance Rs - Stator Resistanc Rr - Rotor Resistance
SYMATTR Prefix x
PIN -144 -48 LEFT 8
PINATTR PinName A
PINATTR SpiceOrder 1
PIN -144 -16 LEFT 8
PINATTR PinName B
PINATTR SpiceOrder 2
PIN -144 16 LEFT 8
PINATTR PinName C
PINATTR SpiceOrder 3
PIN -144 48 LEFT 8
PINATTR PinName N
PINATTR SpiceOrder 4
PIN 192 -96 RIGHT 8
PINATTR PinName rpm
PINATTR SpiceOrder 5
PIN 192 -64 RIGHT 8
PINATTR PinName rs
PINATTR SpiceOrder 6
PIN 192 -32 RIGHT 8
PINATTR PinName rt
PINATTR SpiceOrder 7
PIN 192 0 NONE 8
PINATTR PinName w
PINATTR SpiceOrder 8
