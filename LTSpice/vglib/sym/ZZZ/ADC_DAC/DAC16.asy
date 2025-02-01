Version 4
SymbolType CELL
LINE Normal 48 -48 -64 -48
LINE Normal 80 0 48 -48
LINE Normal 48 48 80 0
LINE Normal -64 48 48 48
LINE Normal -64 -48 -64 48
WINDOW 0 -64 -39 Left 2
SYMATTR Prefix x
SYMATTR SpiceModel DAC16
SYMATTR Description 16 bit DAC. {Vhigh} and {Vlow} are the output logic levels, {Vt} is the input logic threshold. Unused inputs should be grounded.
SYMATTR ModelFile 0101.sub
SYMATTR SpiceLine Vhigh=1 Vlow=0 Vt=0.5
PIN -64 0 LEFT 1
PINATTR PinName D[0:15]
PINATTR SpiceOrder 1
PIN 80 0 RIGHT 8
PINATTR PinName out
PINATTR SpiceOrder 2
