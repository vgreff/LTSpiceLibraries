Version 4
SymbolType CELL
LINE Normal 0 -16 20 8
LINE Normal 0 -48 0 -32
LINE Normal -32 0 -48 0
LINE Normal 0 48 0 16
LINE Normal 0 -32 0 -16
CIRCLE Normal -32 -32 32 32
CIRCLE Normal -4 20 4 12
CIRCLE Normal 16 4 24 12
WINDOW 0 16 -48 Left 2
WINDOW 123 48 0 Left 1
WINDOW 3 48 -16 Left 1
SYMATTR Value2 Vt=0.5 Vh=-0.2
SYMATTR Value Ron=10m Roff=10meg
SYMATTR Prefix X
SYMATTR Description Voltage controlled switch
SYMATTR SpiceModel vcswitch
SYMATTR ModelFile vcswitch.sub
PIN -48 0 NONE 0
PINATTR PinName ctrl
PINATTR SpiceOrder 1
PIN 0 -48 NONE 0
PINATTR PinName t1
PINATTR SpiceOrder 2
PIN 0 48 NONE 0
PINATTR PinName t2
PINATTR SpiceOrder 3
