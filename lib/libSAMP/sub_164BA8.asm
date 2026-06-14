; =========================================================
; Game Engine Function: sub_164BA8
; Address            : 0x164BA8 - 0x164BB8
; =========================================================

164BA8:  LDR             R1, =(off_381B18 - 0x164BAE)
164BAA:  ADD             R1, PC; off_381B18
164BAC:  LDR             R1, [R1]
164BAE:  CBZ             R1, loc_164BB2
164BB0:  BX              R1
164BB2:  MOVS            R0, #0
164BB4:  MOVS            R1, #0
164BB6:  BX              LR
