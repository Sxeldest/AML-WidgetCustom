; =========================================================
; Game Engine Function: sub_10C1DC
; Address            : 0x10C1DC - 0x10C1E8
; =========================================================

10C1DC:  MOV             R12, #(j_ec_encode - 0x10C1E8)
10C1E4:  ADD             R12, PC; j_ec_encode
10C1E6:  BX              R12; j_ec_encode
