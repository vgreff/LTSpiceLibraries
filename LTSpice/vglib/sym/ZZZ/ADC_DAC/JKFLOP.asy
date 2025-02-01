Version 4
SymbolType CELL
LINE Normal -80 -80 80 -80
LINE Normal -80 -80 -80 80
LINE Normal -80 80 80 80
LINE Normal 80 80 80 -80
LINE Normal -80 -8 -72 0
LINE Normal -80 8 -72 0
CIRCLE Normal 96 40 80 24
WINDOW 0 -79 -91 Left 2
SYMATTR Prefix x
SYMATTR SpiceModel JKFLOP
SYMATTR Description Behavioral J-K flip-flop with A-devices specific {Vhigh}, {Vlow} and {td}.
SYMATTR ModelFile 0101.sub
SYMATTR SpiceLine Vhigh=1 Vlow=0  td=10n
PIN -80 -48 LEFT 8
PINATTR PinName J
PINATTR SpiceOrder 1
PIN -80 0 LEFT 8
PINATTR PinName CLK
PINATTR SpiceOrder 2
PIN -80 48 LEFT 8
PINATTR PinName K
PINATTR SpiceOrder 3
PIN 80 -32 RIGHT 4
PINATTR PinName Q
PINATTR SpiceOrder 4
PIN 96 32 RIGHT 20
PINATTR PinName _Q
PINATTR SpiceOrder 5
PIN 0 -80 TOP 4
PINATTR PinName PRE
PINATTR SpiceOrder 6
PIN 0 80 BOTTOM 4
PINATTR PinName CLR
PINATTR SpiceOrder 7
PIN -80 80 NONE 4
PINATTR PinName RTN
PINATTR SpiceOrder 8
