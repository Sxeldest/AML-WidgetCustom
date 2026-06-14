; =========================================================
; Game Engine Function: sub_17F56E
; Address            : 0x17F56E - 0x17F594
; =========================================================

17F56E:  PUSH            {R4,R5,R7,LR}
17F570:  ADD             R7, SP, #8
17F572:  SUB             SP, SP, #8
17F574:  MOV             R5, R0
17F576:  LDR             R0, [R0]
17F578:  MOV             R4, R1
17F57A:  MOV             R1, R5
17F57C:  LDR.W           R2, [R0,#0x174]
17F580:  MOV             R0, SP
17F582:  BLX             R2
17F584:  LDRD.W          R2, R3, [SP,#0x10+var_10]
17F588:  MOV             R0, R5
17F58A:  MOV             R1, R4
17F58C:  BL              sub_181D0C
17F590:  ADD             SP, SP, #8
17F592:  POP             {R4,R5,R7,PC}
