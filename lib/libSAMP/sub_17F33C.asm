; =========================================================
; Game Engine Function: sub_17F33C
; Address            : 0x17F33C - 0x17F366
; =========================================================

17F33C:  PUSH            {R7,LR}
17F33E:  MOV             R7, SP
17F340:  SUB             SP, SP, #8
17F342:  MOV             R12, R1
17F344:  MOV             R1, #0xFFFFF970
17F34C:  LDR             R3, [R0,R1]
17F34E:  CBZ             R3, loc_17F362
17F350:  LDRD.W          R1, R3, [R3,#4]
17F354:  SUB.W           R0, R0, #0x9D0
17F358:  STR             R2, [SP,#0x10+var_10]
17F35A:  MOV             R2, R3
17F35C:  MOV             R3, R12
17F35E:  BL              sub_181ACA
17F362:  ADD             SP, SP, #8
17F364:  POP             {R7,PC}
