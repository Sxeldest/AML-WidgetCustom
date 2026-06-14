; =========================================================
; Game Engine Function: sub_164CDC
; Address            : 0x164CDC - 0x164CEA
; =========================================================

164CDC:  LDR             R2, =(off_381B50 - 0x164CE2)
164CDE:  ADD             R2, PC; off_381B50
164CE0:  LDR             R2, [R2]
164CE2:  CBZ             R2, loc_164CE6
164CE4:  BX              R2
164CE6:  MOVS            R0, #0
164CE8:  BX              LR
