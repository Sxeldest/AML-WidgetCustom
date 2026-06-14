; =========================================================
; Game Engine Function: sub_164CC8
; Address            : 0x164CC8 - 0x164CD6
; =========================================================

164CC8:  LDR             R2, =(off_381B4C - 0x164CCE)
164CCA:  ADD             R2, PC; off_381B4C
164CCC:  LDR             R2, [R2]
164CCE:  CBZ             R2, loc_164CD2
164CD0:  BX              R2
164CD2:  MOVS            R0, #0
164CD4:  BX              LR
