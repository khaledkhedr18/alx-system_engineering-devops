Z1 = (X1 OR X2) AND X3
Z2 = (X1 + X3) XOR X2
Z3 = (X3 - X1) AND X2

LDA 2000H
LHLD 2001H; L = X2, H = X3
ORA L
ANA H
STA 2100H
LDA 2000H
ADD H
XRA L
STA 2101H
MOV A, H; A = X3
LXI H, 2000H
MOV B, M; M = X1
SUB M
ANA L
STA 2102H
---------------------

LXI H,2400; H = 2400
MVI A, 08H; A = 08H
MOV M, A; M = A -> 2400H = 08H
INX H; H -> 2401H
SUI H
24H

0001 1000