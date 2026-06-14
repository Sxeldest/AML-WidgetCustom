; =========================================================
; Game Engine Function: sub_31CEEE
; Address            : 0x31CEEE - 0x31CEF8
; =========================================================

31CEEE:  MOVS            R3, #0x34 ; '4'
31CEF0:  MLA.W           R0, R1, R3, R0
31CEF4:  STR             R2, [R0,#0x34]
31CEF6:  BX              LR
