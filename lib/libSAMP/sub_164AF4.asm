; =========================================================
; Game Engine Function: sub_164AF4
; Address            : 0x164AF4 - 0x164B02
; =========================================================

164AF4:  LDR             R1, =(off_381AF8 - 0x164AFA)
164AF6:  ADD             R1, PC; off_381AF8
164AF8:  LDR             R1, [R1]
164AFA:  CBZ             R1, loc_164AFE
164AFC:  BX              R1
164AFE:  MOVS            R0, #0
164B00:  BX              LR
