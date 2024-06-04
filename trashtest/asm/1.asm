		# X: 2400H, Y: 2401H

		// calculate Z1 and Z2 and store in memory locations 2402H and 2403H

		Z1 = X + Y - 2; -> 2402H
		Z2 = X - Y + 10; -> 2403H


LXI H, 2400H;  
MOV C, M; # C = X;
INX H;
MOV D, M; # D = Y;
MOV A, D; # A = Y;
ADD C; # X + Y;
SUI 02; # X + Y - 2
INX H;
MOV M, A; 
INX H;
MOV A, C; 
SUB D
ADI 0AH;
MOV M, A;
------------------------------------------------------

		X -> 2400H

		Z = [{(X + 5) AND (X - 5)} OR (X * 2)]

LXI H, 2400H
MOV A, M
ADI 05H
MOV C, A; # X + 5 = C
MOV A, M
SUI 05 # X - 5 = A
ANA C
MOV D, A; # D = (X + 5) AND (X - 5)
MOV A, M
ADD A
ORA D
INX H
MOV M, A


------------------------
MVI D, 01H; D = 01
MVI E, 02H; E = 02
MVI A, 03H; A = 03
STA 2000H; 2000H = A = 03
LXI H, 2100H
MOV M, E; M = 02
MOV A, D; A = 01
LDA 2100H; A = 02
A = 02
D = 01
E =  02