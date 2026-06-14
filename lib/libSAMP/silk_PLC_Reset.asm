; =========================================================
; Game Engine Function: silk_PLC_Reset
; Address            : 0x191BA4 - 0x191BD2
; =========================================================

191BA4:  MOVW            R1, #0x1098
191BA8:  MOV.W           R2, #0x10000
191BAC:  STR             R2, [R0,R1]
191BAE:  MOVW            R1, #0x1094
191BB2:  MOVS            R3, #0x14
191BB4:  STR             R2, [R0,R1]
191BB6:  MOV.W           R1, #0x10A0
191BBA:  MOVS            R2, #2
191BBC:  STR             R2, [R0,R1]
191BBE:  MOVW            R1, #0x10A4
191BC2:  LDR.W           R2, [R0,#0x918]
191BC6:  STR             R3, [R0,R1]
191BC8:  LSLS            R1, R2, #7
191BCA:  MOVW            R2, #0x104C
191BCE:  STR             R1, [R0,R2]
191BD0:  BX              LR
