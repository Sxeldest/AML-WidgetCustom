; =========================================================
; Game Engine Function: sub_128EA8
; Address            : 0x128EA8 - 0x128EBA
; =========================================================

128EA8:  LDR             R2, =(_ZTSZN15StreamingLimitsD1EvE3$_2 - 0x128EB2); type descriptor name
128EAA:  LDR             R3, [R1,#4]
128EAC:  MOVS            R1, #0
128EAE:  ADD             R2, PC; type descriptor name
128EB0:  CMP             R3, R2
128EB2:  IT EQ
128EB4:  ADDEQ           R1, R0, #4
128EB6:  MOV             R0, R1
128EB8:  BX              LR
