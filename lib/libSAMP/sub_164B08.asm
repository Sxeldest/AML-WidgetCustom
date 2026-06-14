; =========================================================
; Game Engine Function: sub_164B08
; Address            : 0x164B08 - 0x164B18
; =========================================================

164B08:  LDR             R2, =(off_381AFC - 0x164B0E)
164B0A:  ADD             R2, PC; off_381AFC
164B0C:  LDR             R2, [R2]
164B0E:  CBZ             R2, loc_164B12
164B10:  BX              R2
164B12:  MOVS            R0, #0
164B14:  MOVS            R1, #0
164B16:  BX              LR
