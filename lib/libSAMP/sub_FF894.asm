; =========================================================
; Game Engine Function: sub_FF894
; Address            : 0xFF894 - 0xFF8BA
; =========================================================

FF894:  PUSH            {R4,R5,R7,LR}
FF896:  ADD             R7, SP, #8
FF898:  LDR             R1, =(off_25B1D4 - 0xFF8A2)
FF89A:  LDR             R5, =(word_25B1D2 - 0xFF8A8)
FF89C:  LDR             R3, =(byte_25B1D0 - 0xFF8AA)
FF89E:  ADD             R1, PC; off_25B1D4
FF8A0:  LDRB.W          R2, [R0,#0x3A]
FF8A4:  ADD             R5, PC; word_25B1D2
FF8A6:  ADD             R3, PC; byte_25B1D0
FF8A8:  LDRH            R4, [R0,#0x26]
FF8AA:  AND.W           R2, R2, #7
FF8AE:  LDR             R1, [R1]
FF8B0:  STRB            R2, [R3]
FF8B2:  STRH            R4, [R5]
FF8B4:  POP.W           {R4,R5,R7,LR}
FF8B8:  BX              R1
