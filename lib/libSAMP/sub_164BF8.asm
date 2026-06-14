; =========================================================
; Game Engine Function: sub_164BF8
; Address            : 0x164BF8 - 0x164C06
; =========================================================

164BF8:  LDR             R1, =(off_381B2C - 0x164BFE)
164BFA:  ADD             R1, PC; off_381B2C
164BFC:  LDR             R1, [R1]
164BFE:  CBZ             R1, loc_164C02
164C00:  BX              R1
164C02:  MOVS            R0, #0
164C04:  BX              LR
