; =========================================================
; Game Engine Function: sub_1649EC
; Address            : 0x1649EC - 0x1649FC
; =========================================================

1649EC:  LDR             R0, =(off_381AD0 - 0x1649F2)
1649EE:  ADD             R0, PC; off_381AD0
1649F0:  LDR             R0, [R0]
1649F2:  CBZ             R0, loc_1649F6
1649F4:  BX              R0
1649F6:  MOV.W           R0, #0xFFFFFFFF
1649FA:  BX              LR
