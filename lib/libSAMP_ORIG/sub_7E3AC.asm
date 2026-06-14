; =========================================================
; Game Engine Function: sub_7E3AC
; Address            : 0x7E3AC - 0x7E3BC
; =========================================================

7E3AC:  LDR             R0, =(byte_1A45F0 - 0x7E3B2)
7E3AE:  ADD             R0, PC; byte_1A45F0
7E3B0:  LDRB            R1, [R0]
7E3B2:  CMP             R1, #0
7E3B4:  ITT NE
7E3B6:  MOVNE           R1, #0
7E3B8:  STRBNE          R1, [R0]
7E3BA:  BX              LR
