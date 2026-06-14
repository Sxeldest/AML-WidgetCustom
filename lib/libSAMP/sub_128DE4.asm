; =========================================================
; Game Engine Function: sub_128DE4
; Address            : 0x128DE4 - 0x128DF6
; =========================================================

128DE4:  LDR             R2, =(_ZTSZN15StreamingLimitsD1EvE3$_1 - 0x128DEE); type descriptor name
128DE6:  LDR             R3, [R1,#4]
128DE8:  MOVS            R1, #0
128DEA:  ADD             R2, PC; type descriptor name
128DEC:  CMP             R3, R2
128DEE:  IT EQ
128DF0:  ADDEQ           R1, R0, #4
128DF2:  MOV             R0, R1
128DF4:  BX              LR
