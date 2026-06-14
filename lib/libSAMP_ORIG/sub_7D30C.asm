; =========================================================
; Game Engine Function: sub_7D30C
; Address            : 0x7D30C - 0x7D33E
; =========================================================

7D30C:  PUSH            {R4,R6,R7,LR}
7D30E:  ADD             R7, SP, #8
7D310:  LDR             R1, =(_ZTV7OButton - 0x7D31A); `vtable for'OButton ...
7D312:  MOV             R4, R0
7D314:  LDR             R0, [R0,#0x68]
7D316:  ADD             R1, PC; `vtable for'OButton
7D318:  ADDS            R1, #8
7D31A:  STR             R1, [R4]
7D31C:  ADD.W           R1, R4, #0x58 ; 'X'
7D320:  CMP             R1, R0
7D322:  BEQ             loc_7D32A
7D324:  CBZ             R0, loc_7D334
7D326:  MOVS            R1, #5
7D328:  B               loc_7D32C
7D32A:  MOVS            R1, #4
7D32C:  LDR             R2, [R0]
7D32E:  LDR.W           R1, [R2,R1,LSL#2]
7D332:  BLX             R1
7D334:  MOV             R0, R4
7D336:  POP.W           {R4,R6,R7,LR}
7D33A:  B.W             sub_7C3B4
