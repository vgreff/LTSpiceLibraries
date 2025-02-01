Version 4
SymbolType CELL
LINE Normal -32 -32 32 0
LINE Normal -32 32 32 0
LINE Normal -32 -32 -32 32
LINE Normal -28 -16 -20 -16
LINE Normal -28 16 -20 16
LINE Normal -24 20 -24 12
WINDOW 0 -7 -31 Left 0
SYMATTR Prefix X
SYMATTR Description Parameterized Single Pole Opamp.  En and in are equivalent voltage and current noises.  Enk and ink are the respective corner frequencies.
SYMATTR SpiceLine ilimit=25m rail=0 Vos=0
SYMATTR SpiceLine2 en=0 enk=0 in=0 ink=0  Rin=500Meg
SYMATTR ModelFile opampMy.txt
SYMATTR SpiceModel opampMy
SYMATTR Value Avol=1Meg GBW=1Meg Slew=0.6Meg
SYMATTR Value2 Vl=-12 Vh=12 raill=0.7 railh=1.2
PIN -32 16 NONE 0
PINATTR PinName In+
PINATTR SpiceOrder 1
PIN -32 -16 NONE 0
PINATTR PinName In-
PINATTR SpiceOrder 2
PIN 32 0 NONE 0
PINATTR PinName OUT
PINATTR SpiceOrder 3
