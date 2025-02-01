Version 4
SymbolType CELL
LINE Normal -32 -48 80 -48
LINE Normal -64 0 -32 -48
LINE Normal -32 48 -64 0
LINE Normal 80 48 -32 48
LINE Normal 80 -48 80 48
WINDOW 0 80 -39 Right 2
SYMATTR Prefix x
SYMATTR SpiceModel ADC16
SYMATTR Description 16 bit ADC, N=<1:16> is the number of bits for the conversion. Output is a bus.
SYMATTR ModelFile 0101.sub
SYMATTR SpiceLine N=16
PIN -64 0 LEFT 8
PINATTR PinName in
PINATTR SpiceOrder 1
PIN 80 0 RIGHT 1
PINATTR PinName Q[0:15]
PINATTR SpiceOrder 2
