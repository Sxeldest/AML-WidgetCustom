; =========================================================
; Game Engine Function: sub_E4F04
; Address            : 0xE4F04 - 0xE4F0C
; =========================================================

E4F04:  LDR             R0, =(word_23DC24 - 0xE4F0A)
E4F06:  ADD             R0, PC; word_23DC24
E4F08:  LDRH            R0, [R0]
E4F0A:  BX              LR
