Version 4
SymbolType CELL
LINE Normal 0 44 32 44
LINE Normal 0 20 32 20
LINE Normal 32 20 16 44
LINE Normal 0 20 16 44
LINE Normal 16 0 16 20
LINE Normal 16 44 16 64
LINE Normal -12 64 -32 64
LINE Normal -12 64 8 44
WINDOW 0 24 0 Left 2
WINDOW 38 102 33 Center 2
SYMATTR SpiceModel Scr_params
SYMATTR Prefix X
SYMATTR ModelFile Scr_params.sub
SYMATTR Value Vdrm=400v  Vrrm=400v  Idrm=10u
SYMATTR Value2 Ih=6ma  dVdt=5e7 Igt=5ma
SYMATTR SpiceLine Vgt=0.7v  Vtm=1.7v  Itm=24
SYMATTR SpiceLine2 Ton=1u  Toff=15u
PIN 16 0 NONE 0
PINATTR PinName A
PINATTR SpiceOrder 1
PIN -32 64 NONE 0
PINATTR PinName G
PINATTR SpiceOrder 2
PIN 16 64 NONE 0
PINATTR PinName C
PINATTR SpiceOrder 3
