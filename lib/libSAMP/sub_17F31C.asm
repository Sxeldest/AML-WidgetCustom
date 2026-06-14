; =========================================================
; Game Engine Function: sub_17F31C
; Address            : 0x17F31C - 0x17F33C
; =========================================================

17F31C:  PUSH            {R7,LR}
17F31E:  MOV             R7, SP
17F320:  SUB             SP, SP, #8
17F322:  LDR.W           R3, [R0,#0x340]
17F326:  CBZ             R3, loc_17F338
17F328:  MOV             LR, R1
17F32A:  LDRD.W          R1, R12, [R3,#4]
17F32E:  STR             R2, [SP,#0x10+var_10]
17F330:  MOV             R2, R12
17F332:  MOV             R3, LR
17F334:  BL              sub_181ACA
17F338:  ADD             SP, SP, #8
17F33A:  POP             {R7,PC}
