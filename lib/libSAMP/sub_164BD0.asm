; =========================================================
; Game Engine Function: sub_164BD0
; Address            : 0x164BD0 - 0x164BDE
; =========================================================

164BD0:  LDR             R2, =(off_381B24 - 0x164BD6)
164BD2:  ADD             R2, PC; off_381B24
164BD4:  LDR             R2, [R2]
164BD6:  CBZ             R2, loc_164BDA
164BD8:  BX              R2
164BDA:  MOVS            R0, #0
164BDC:  BX              LR
