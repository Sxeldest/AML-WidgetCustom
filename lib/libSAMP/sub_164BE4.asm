; =========================================================
; Game Engine Function: sub_164BE4
; Address            : 0x164BE4 - 0x164BF2
; =========================================================

164BE4:  LDR             R1, =(off_381B28 - 0x164BEA)
164BE6:  ADD             R1, PC; off_381B28
164BE8:  LDR             R1, [R1]
164BEA:  CBZ             R1, loc_164BEE
164BEC:  BX              R1
164BEE:  MOVS            R0, #0
164BF0:  BX              LR
