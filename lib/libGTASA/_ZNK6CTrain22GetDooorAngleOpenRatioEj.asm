; =========================================================
; Game Engine Function: _ZNK6CTrain22GetDooorAngleOpenRatioEj
; Address            : 0x57F018 - 0x57F04A
; =========================================================

57F018:  SUBS            R1, #8; switch 4 cases
57F01A:  CMP             R1, #3
57F01C:  ITT HI
57F01E:  MOVHI           R0, #0
57F020:  BXHI            LR
57F022:  TBB.W           [PC,R1]; switch jump
57F026:  DCB 2; jump table for switch statement
57F027:  DCB 0xE
57F028:  DCB 6
57F029:  DCB 0xA
57F02A:  LDR             R1, [R0]; jumptable 0057F022 case 8
57F02C:  LDR             R2, [R1,#0x78]
57F02E:  MOVS            R1, #3
57F030:  BX              R2
57F032:  LDR             R1, [R0]; jumptable 0057F022 case 10
57F034:  LDR             R2, [R1,#0x78]
57F036:  MOVS            R1, #2
57F038:  BX              R2
57F03A:  LDR             R1, [R0]; jumptable 0057F022 case 11
57F03C:  LDR             R2, [R1,#0x78]
57F03E:  MOVS            R1, #4
57F040:  BX              R2
57F042:  LDR             R1, [R0]; jumptable 0057F022 case 9
57F044:  LDR             R2, [R1,#0x78]
57F046:  MOVS            R1, #5
57F048:  BX              R2
