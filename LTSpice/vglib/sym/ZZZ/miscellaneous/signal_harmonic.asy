Version 4
SymbolType CELL
LINE Normal -64 -32 -80 -32
LINE Normal -70 -38 -64 -32
LINE Normal -70 -26 -64 -32
LINE Normal 64 0 80 0
LINE Normal 64 -64 80 -64
RECTANGLE Normal 64 64 -64 -128
WINDOW 0 0 -144 Center 2
WINDOW 39 0 80 Center 2
WINDOW 3 0 -96 Center 1
SYMATTR SpiceLine F=
SYMATTR Value signal_harmonic
SYMATTR Description The Fourier transform block
SYMATTR Prefix X
SYMATTR SpiceModel signal_harmonic
SYMATTR ModelFile signal_harmonic.sub
PIN -80 -32 NONE 24
PINATTR PinName in
PINATTR SpiceOrder 1
PIN 80 -64 RIGHT 24
PINATTR PinName A
PINATTR SpiceOrder 2
PIN 80 0 RIGHT 24
PINATTR PinName P
PINATTR SpiceOrder 3
