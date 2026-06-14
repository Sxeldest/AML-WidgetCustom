; =========================================================
; Game Engine Function: sub_20F2FA
; Address            : 0x20F2FA - 0x20F316
; =========================================================

20F2FA:  PUSH            {R4,R5,R7,LR}
20F2FC:  ADD             R7, SP, #8
20F2FE:  MOV             R4, R1
20F300:  LDR             R1, [R1]
20F302:  MOV             R5, R0
20F304:  MOVS            R0, #0
20F306:  STR             R0, [R4]
20F308:  MOV             R0, R5
20F30A:  BL              sub_1F33B0
20F30E:  LDR             R0, [R4,#4]
20F310:  STR             R0, [R5,#4]
20F312:  MOV             R0, R5
20F314:  POP             {R4,R5,R7,PC}
