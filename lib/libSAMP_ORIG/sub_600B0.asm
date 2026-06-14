; =========================================================
; Game Engine Function: sub_600B0
; Address            : 0x600B0 - 0x600BC
; =========================================================

600B0:  LDR             R1, =(byte_1174AF - 0x600BA)
600B2:  MOVS            R2, #0
600B4:  STRB            R2, [R0]
600B6:  ADD             R1, PC; byte_1174AF
600B8:  STRB            R2, [R1]
600BA:  BX              LR
