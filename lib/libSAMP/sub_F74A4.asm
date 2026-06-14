; =========================================================
; Game Engine Function: sub_F74A4
; Address            : 0xF74A4 - 0xF74AC
; =========================================================

F74A4:  LDR             R0, =(byte_2401EC - 0xF74AA)
F74A6:  ADD             R0, PC; byte_2401EC
F74A8:  LDRB            R0, [R0]
F74AA:  BX              LR
