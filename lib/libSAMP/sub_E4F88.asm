; =========================================================
; Game Engine Function: sub_E4F88
; Address            : 0xE4F88 - 0xE4F90
; =========================================================

E4F88:  LDR             R0, =(byte_23DC44 - 0xE4F8E)
E4F8A:  ADD             R0, PC; byte_23DC44
E4F8C:  LDRB            R0, [R0]
E4F8E:  BX              LR
