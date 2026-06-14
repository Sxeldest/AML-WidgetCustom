; =========================================================
; Game Engine Function: sub_164CA0
; Address            : 0x164CA0 - 0x164CB0
; =========================================================

164CA0:  LDR             R2, =(off_381B44 - 0x164CA6)
164CA2:  ADD             R2, PC; off_381B44
164CA4:  LDR             R2, [R2]
164CA6:  CBZ             R2, loc_164CAA
164CA8:  BX              R2
164CAA:  MOVS            R0, #0
164CAC:  MOVS            R1, #0
164CAE:  BX              LR
