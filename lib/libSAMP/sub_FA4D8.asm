; =========================================================
; Game Engine Function: sub_FA4D8
; Address            : 0xFA4D8 - 0xFA4E4
; =========================================================

FA4D8:  MOVS            R1, #0
FA4DA:  STRD.W          R1, R1, [R0,#8]
FA4DE:  MOVS            R1, #1
FA4E0:  STR             R1, [R0]
FA4E2:  BX              LR
