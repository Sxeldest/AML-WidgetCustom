; =========================================================
; Game Engine Function: _ZNK12CTaskManager15GetSimplestTaskEi
; Address            : 0x533A8E - 0x533AB0
; =========================================================

533A8E:  PUSH            {R4,R6,R7,LR}
533A90:  ADD             R7, SP, #8
533A92:  LDR.W           R0, [R0,R1,LSL#2]
533A96:  CBZ             R0, loc_533AAA
533A98:  MOV             R4, R0
533A9A:  LDR             R0, [R4]
533A9C:  LDR             R1, [R0,#0xC]
533A9E:  MOV             R0, R4
533AA0:  BLX             R1
533AA2:  CMP             R0, #0
533AA4:  BNE             loc_533A98
533AA6:  MOV             R0, R4
533AA8:  POP             {R4,R6,R7,PC}
533AAA:  MOVS            R4, #0
533AAC:  MOV             R0, R4
533AAE:  POP             {R4,R6,R7,PC}
