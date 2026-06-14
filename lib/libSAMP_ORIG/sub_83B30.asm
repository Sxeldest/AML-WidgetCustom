; =========================================================
; Game Engine Function: sub_83B30
; Address            : 0x83B30 - 0x83B3A
; =========================================================

83B30:  LDR             R0, =(byte_1A6FAC - 0x83B38)
83B32:  MOVS            R1, #0
83B34:  ADD             R0, PC; byte_1A6FAC
83B36:  STRB            R1, [R0]
83B38:  BX              LR
