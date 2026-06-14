; =========================================================
; Game Engine Function: _Z10GetPoolObji
; Address            : 0x483D62 - 0x483D6E
; =========================================================

483D62:  ADDS            R1, R0, #1; int
483D64:  IT NE
483D66:  BNE.W           sub_198A3C
483D6A:  MOVS            R0, #0
483D6C:  BX              LR
