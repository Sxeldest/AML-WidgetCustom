; =========================================================
; Game Engine Function: _ZN11CMatrixLink6RemoveEv
; Address            : 0x407F76 - 0x407F84
; =========================================================

407F76:  LDRD.W          R1, R2, [R0,#0x4C]
407F7A:  STR             R1, [R2,#0x4C]
407F7C:  LDRD.W          R1, R0, [R0,#0x4C]
407F80:  STR             R0, [R1,#0x50]
407F82:  BX              LR
