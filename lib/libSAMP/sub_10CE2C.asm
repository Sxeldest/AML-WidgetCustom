; =========================================================
; Game Engine Function: sub_10CE2C
; Address            : 0x10CE2C - 0x10CE3E
; =========================================================

10CE2C:  LDR             R2, =(_ZTSZN18DisplayPerformanceC1EvE3$_0 - 0x10CE36); type descriptor name
10CE2E:  LDR             R3, [R1,#4]
10CE30:  MOVS            R1, #0
10CE32:  ADD             R2, PC; type descriptor name
10CE34:  CMP             R3, R2
10CE36:  IT EQ
10CE38:  ADDEQ           R1, R0, #4
10CE3A:  MOV             R0, R1
10CE3C:  BX              LR
