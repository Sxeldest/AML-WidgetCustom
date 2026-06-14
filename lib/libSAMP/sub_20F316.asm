; =========================================================
; Game Engine Function: sub_20F316
; Address            : 0x20F316 - 0x20F332
; =========================================================

20F316:  PUSH            {R4,R5,R7,LR}
20F318:  ADD             R7, SP, #8
20F31A:  MOV             R4, R1
20F31C:  LDR             R1, [R1]
20F31E:  MOV             R5, R0
20F320:  MOVS            R0, #0
20F322:  STR             R0, [R4]
20F324:  MOV             R0, R5
20F326:  BL              sub_20F2C4
20F32A:  LDR             R0, [R4,#4]
20F32C:  STR             R0, [R5,#4]
20F32E:  MOV             R0, R5
20F330:  POP             {R4,R5,R7,PC}
