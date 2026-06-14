; =========================================================
; Game Engine Function: sub_164BBC
; Address            : 0x164BBC - 0x164BCA
; =========================================================

164BBC:  LDR             R1, =(off_381B1C - 0x164BC2)
164BBE:  ADD             R1, PC; off_381B1C
164BC0:  LDR             R1, [R1]
164BC2:  CBZ             R1, loc_164BC6
164BC4:  BX              R1
164BC6:  MOVS            R0, #0
164BC8:  BX              LR
