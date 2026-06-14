; =========================================================
; Game Engine Function: _ZNK12CTaskManager14FindTaskByTypeEii
; Address            : 0x533C00 - 0x533C3A
; =========================================================

533C00:  PUSH            {R4-R7,LR}
533C02:  ADD             R7, SP, #0xC
533C04:  PUSH.W          {R11}
533C08:  LDR.W           R5, [R0,R1,LSL#2]
533C0C:  MOV             R4, R2
533C0E:  MOVS            R6, #0
533C10:  CBZ             R5, loc_533C32
533C12:  LDR             R0, [R5]
533C14:  LDR             R1, [R0,#0x14]
533C16:  MOV             R0, R5
533C18:  BLX             R1
533C1A:  LDR             R1, [R5]
533C1C:  CMP             R0, R4
533C1E:  MOV.W           R6, #0
533C22:  MOV             R0, R5
533C24:  LDR             R1, [R1,#0xC]
533C26:  IT EQ
533C28:  MOVEQ           R6, R5
533C2A:  BLX             R1
533C2C:  MOV             R5, R0
533C2E:  CMP             R6, #0
533C30:  BEQ             loc_533C10
533C32:  MOV             R0, R6
533C34:  POP.W           {R11}
533C38:  POP             {R4-R7,PC}
