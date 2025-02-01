Version 4
SymbolType CELL
LINE Normal -40 0 -48 -8
LINE Normal -48 8 -40 0
LINE Normal 48 -64 -48 -64
LINE Normal 48 64 48 -64
LINE Normal 48 64 -48 64
LINE Normal -48 64 -48 -64
CIRCLE Normal 64 40 48 24
WINDOW 0 -48 -71 Left 2
SYMATTR Description A 16 bit asynchronous counter. {Vhigh}, {Vlow}, {td} are LTspice's specific parameters for A-devices. Note: rename BOTH outputs with bus names, even if only one is used.
SYMATTR ModelFile 0101.sub
SYMATTR Prefix x
SYMATTR SpiceModel CNT16asy
SYMATTR SpiceLine Vigh=1 Vlow=0  td=10n
PIN -48 0 LEFT 8
PINATTR PinName CLK
PINATTR SpiceOrder 1
PIN -32 64 BOTTOM 1
PINATTR PinName S
PINATTR SpiceOrder 2
PIN 32 64 BOTTOM 1
PINATTR PinName R
PINATTR SpiceOrder 3
PIN 48 -32 RIGHT 1
PINATTR PinName Q[0:15]
PINATTR SpiceOrder 4
PIN 64 32 RIGHT 17
PINATTR PinName _Q[0:15]
PINATTR SpiceOrder 5
