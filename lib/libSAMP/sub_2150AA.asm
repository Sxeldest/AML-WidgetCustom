; =========================================================
; Game Engine Function: sub_2150AA
; Address            : 0x2150AA - 0x2150BC
; =========================================================

2150AA:  LDR             R0, [R3]
2150AC:  SUBS            R2, R2, R1
2150AE:  SUBS            R0, R0, R2
2150B0:  STR             R0, [R3]
2150B2:  CMP             R2, #1
2150B4:  IT GE
2150B6:  BGE.W           sub_2242EC
2150BA:  BX              LR
