; =========================================================
; Game Engine Function: sub_164CB4
; Address            : 0x164CB4 - 0x164CC2
; =========================================================

164CB4:  LDR             R3, =(off_381B48 - 0x164CBA)
164CB6:  ADD             R3, PC; off_381B48
164CB8:  LDR             R3, [R3]
164CBA:  CBZ             R3, loc_164CBE
164CBC:  BX              R3
164CBE:  MOVS            R0, #0
164CC0:  BX              LR
