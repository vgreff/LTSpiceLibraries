Version 4
SymbolType BLOCK
LINE Normal 0 0 112 0
LINE Normal -30 -74 -32 -80
LINE Normal 29 -74 32 -80
LINE Normal -30 74 -32 80
LINE Normal 30 74 32 80
LINE Normal -74 29 -80 32
LINE Normal 74 30 80 32
LINE Normal 1 -40 -5 -42
LINE Normal -5 -38 1 -40
LINE Normal 0 40 6 38
LINE Normal 6 42 0 40
CIRCLE Normal 41 40 -40 -40
CIRCLE Normal 80 80 -80 -80
CIRCLE Normal -6 6 6 -6
TEXT -7 -67 Left 2 U
TEXT -48 43 Left 2 V
TEXT 42 42 Left 2 W
TEXT 92 -2 Bottom 2 W
TEXT 118 -51 Right 2 RPM
TEXT 22 -67 Left 2 +
TEXT -35 -67 Left 2 -
TEXT -71 25 Left 2 +
TEXT -33 65 Left 2 -
TEXT 22 62 Left 2 +
TEXT 62 25 Left 2 -
SYMATTR SpiceModel indmot3ph_my
SYMATTR ModelFile indmot3ph_my.txt
SYMATTR Value Np=2 J=0.62 k=0.97 Ls=29.4m Lr=29.7m Rs=67m Rr=32m
SYMATTR Prefix x
PIN 32 -80 NONE 8
PINATTR PinName U+
PINATTR SpiceOrder 1
PIN -32 -80 NONE 8
PINATTR PinName u-
PINATTR SpiceOrder 2
PIN -80 32 NONE 8
PINATTR PinName v+
PINATTR SpiceOrder 3
PIN 32 80 NONE 8
PINATTR PinName w+
PINATTR SpiceOrder 5
PIN 80 32 NONE 8
PINATTR PinName w-
PINATTR SpiceOrder 6
PIN 112 0 NONE 8
PINATTR PinName W
PINATTR SpiceOrder 7
PIN -32 80 NONE 8
PINATTR PinName v-
PINATTR SpiceOrder 4
PIN 112 -32 NONE 8
PINATTR PinName W1
PINATTR SpiceOrder 8
