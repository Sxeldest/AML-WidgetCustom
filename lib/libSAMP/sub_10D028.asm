; =========================================================
; Game Engine Function: sub_10D028
; Address            : 0x10D028 - 0x10D04C
; =========================================================

10D028:  PUSH            {R4,R6,R7,LR}
10D02A:  ADD             R7, SP, #8
10D02C:  MOV             R4, R0
10D02E:  LDR             R0, =(off_23494C - 0x10D03A)
10D030:  MOVW            R2, #0x4014
10D034:  LDR             R1, [R4]
10D036:  ADD             R0, PC; off_23494C
10D038:  MOVT            R2, #0x67 ; 'g'
10D03C:  LDR             R0, [R0]; dword_23DF24
10D03E:  LDR             R0, [R0]
10D040:  ADD             R0, R2
10D042:  MOVS            R2, #0
10D044:  BL              sub_164196
10D048:  MOV             R0, R4
10D04A:  POP             {R4,R6,R7,PC}
