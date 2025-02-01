Version 4
SymbolType CELL
LINE Normal -48 -16 -48 16
LINE Normal 48 -16 48 16
LINE Normal 0 -64 0 -32
LINE Normal -20 -32 20 -32
LINE Normal -20 -28 20 -28
LINE Normal -20 -32 -20 -28
LINE Normal 20 -32 20 -28
LINE Normal -48 0 -28 0
LINE Normal -20 0 -12 0
LINE Normal -4 0 4 0
LINE Normal 12 0 20 0
LINE Normal 24 28 -24 28
LINE Normal 32 64 32 36
LINE Normal 24 28 32 36
LINE Normal -24 28 -32 36
LINE Normal -32 64 -32 36
ARC Normal -48 -64 48 32 48 -16 -48 -16
ARC Normal -48 -32 48 64 -48 16 48 16
WINDOW 0 8 -80 Left 2
WINDOW 38 62 -2 Left 2
SYMATTR SpiceModel 300B
SYMATTR Prefix X
SYMATTR Description Directly Heated Triode. Needs DHT model.
SYMATTR ModelFile new_triodes.txt
PIN 0 -64 NONE 0
PINATTR PinName A
PINATTR SpiceOrder 1
PIN -48 0 NONE 0
PINATTR PinName G
PINATTR SpiceOrder 2
PIN -32 64 NONE 8
PINATTR PinName K1
PINATTR SpiceOrder 3
PIN 32 64 NONE 0
PINATTR PinName K2
PINATTR SpiceOrder 4
