; =========================================================
; Game Engine Function: sub_250EC4
; Address            : 0x250EC4 - 0x250EE0
; =========================================================

250EC4:  PUSH            {R4,R6,R7,LR}
250EC6:  ADD             R7, SP, #8
250EC8:  MOV             R4, R0
250ECA:  CMP             R4, #0
250ECC:  IT EQ
250ECE:  POPEQ           {R4,R6,R7,PC}
250ED0:  LDR             R0, [R4,#0x10]; p
250ED2:  BLX             free
250ED6:  MOV             R0, R4
250ED8:  POP.W           {R4,R6,R7,LR}
250EDC:  B.W             j_free
