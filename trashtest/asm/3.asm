SP FF02H
R NULL
S 0E
PC 1000H
--------
SP FF03H
R 0E
S 0E
PC 1001H
--------
SP FF04H
R F0
S 0E
PC 1002H
--------
SP FF05H
R 01
S 0E
PC 1003H
------------------------

3 STAGE
4, 4, 4
MAX TIME = 4
INS = 5
STAGES - 1 = 2
EXC TIME pipeline = (5 + 2) * 4 = 28

------------------------

5 STAGES
TIMES = {5, 7, 10, 8, 6}
MAXTIME = MAX{TIMES} = 10 + 1 = 11
TOTAL TIME = MAXTIME * NO. OF CYCLES = 