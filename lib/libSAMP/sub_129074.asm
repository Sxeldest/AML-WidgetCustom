; =========================================================
; Game Engine Function: sub_129074
; Address            : 0x129074 - 0x1290E0
; =========================================================

129074:  MOVW            R1, #0x3E5D
129078:  SUBS            R1, R0, R1
12907A:  CLZ.W           R1, R1
12907E:  LSRS            R2, R1, #5
129080:  MOVW            R1, #0x12BB
129084:  SUBS            R3, R0, R1
129086:  CLZ.W           R3, R3
12908A:  LSRS            R3, R3, #5
12908C:  ORRS            R2, R3
12908E:  CMP             R2, #1
129090:  BNE             loc_12909A
129092:  CMP             R0, R1
129094:  BEQ             loc_12909A
129096:  MOVS            R1, #3
129098:  B               loc_1290DC
12909A:  MOVW            R2, #0x1D1
12909E:  MOVS            R1, #3
1290A0:  CMP             R0, R2
1290A2:  BEQ             loc_1290DC
1290A4:  MOVW            R2, #0x1F5
1290A8:  CMP             R0, R2
1290AA:  ITT NE
1290AC:  MOVNE           R1, #2
1290AE:  CMPNE.W         R0, #0x1D0
1290B2:  BEQ             loc_1290DC
1290B4:  MOVW            R3, #0x3E5D
1290B8:  MOVW            R2, #0x12BB
1290BC:  SUBS            R3, R0, R3
1290BE:  SUBS            R2, R0, R2
1290C0:  CLZ.W           R3, R3
1290C4:  CLZ.W           R2, R2
1290C8:  LSRS            R3, R3, #5
1290CA:  LSRS            R2, R2, #5
1290CC:  ORRS            R3, R2
1290CE:  ANDS            R2, R3
1290D0:  ITTT EQ
1290D2:  SUBEQ.W         R0, R0, #0x234
1290D6:  CLZEQ.W         R0, R0
1290DA:  LSREQ           R1, R0, #5
1290DC:  MOV             R0, R1
1290DE:  BX              LR
