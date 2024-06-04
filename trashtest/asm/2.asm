LXI H, 2001H; M -> 2001H
MVI A, 21H; A = 21
INX H; M -> 2002H
ADD M; A = A + M = B1H + 21H
INX H; M -> 2003H
MOV M, A; M = B1H + 21H = D2H

---------------
	WHAT ARE THE CONTENTS OF A:

MVI A, 33H; A = 33H
MVI B, 78H; B = 78H
ADD B; A = A + B = 33 + 78 = ABH
CMA; ABH = 1010 1011 -> 0101 0100 = 54H
ANI 32H; 0101 0100 AND 0011 0010 -> 0001 0000 = 10H
A -> 10H

-----------
2200H -> X | 2201H -> Y

LXI H, 2200H
MOV B, M
LDA 2201H
ADD B;
MOV M, A; 2200H = X + Y
INX H
MOV A, M
SUB B;
MOV M, A


---------
time for no pipeline = all instructions * no. of instructions 
= (5 + 6 + 8 + 11) * 5 = 150
time for one cycle = max{5, 6, 8, 11} + 1 = 12
time for pipeline = 12 * (5 + 4- 1) = 12 * 8 = 96 nsec