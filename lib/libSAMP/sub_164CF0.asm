; =========================================================
; Game Engine Function: sub_164CF0
; Address            : 0x164CF0 - 0x164CFE
; =========================================================

164CF0:  LDR             R0, =(off_381B54 - 0x164CF6)
164CF2:  ADD             R0, PC; off_381B54
164CF4:  LDR             R0, [R0]
164CF6:  CBZ             R0, loc_164CFA
164CF8:  BX              R0
164CFA:  MOVS            R0, #0
164CFC:  BX              LR
