; =========================================================
; Game Engine Function: sub_135B30
; Address            : 0x135B30 - 0x135B42
; =========================================================

135B30:  LDR             R2, =(_ZTSZN13CommandLayoutC1EvE3$_0 - 0x135B3A); type descriptor name
135B32:  LDR             R3, [R1,#4]
135B34:  MOVS            R1, #0
135B36:  ADD             R2, PC; type descriptor name
135B38:  CMP             R3, R2
135B3A:  IT EQ
135B3C:  ADDEQ           R1, R0, #4
135B3E:  MOV             R0, R1
135B40:  BX              LR
