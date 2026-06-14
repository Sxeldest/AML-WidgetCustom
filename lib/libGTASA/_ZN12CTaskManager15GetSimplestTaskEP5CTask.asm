; =========================================================
; Game Engine Function: _ZN12CTaskManager15GetSimplestTaskEP5CTask
; Address            : 0x533A14 - 0x533A32
; =========================================================

533A14:  PUSH            {R4,R6,R7,LR}
533A16:  ADD             R7, SP, #8
533A18:  CBZ             R0, loc_533A2C
533A1A:  MOV             R4, R0
533A1C:  LDR             R0, [R4]
533A1E:  LDR             R1, [R0,#0xC]
533A20:  MOV             R0, R4
533A22:  BLX             R1
533A24:  CMP             R0, #0
533A26:  BNE             loc_533A1A
533A28:  MOV             R0, R4
533A2A:  POP             {R4,R6,R7,PC}
533A2C:  MOVS            R4, #0
533A2E:  MOV             R0, R4
533A30:  POP             {R4,R6,R7,PC}
