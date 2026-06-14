; =========================================================
; Game Engine Function: _ZN4CPed17UseGroundColModelEv
; Address            : 0x4A4B5C - 0x4A4B7C
; =========================================================

4A4B5C:  LDR.W           R0, [R0,#0x44C]
4A4B60:  SUBS            R0, #0x2A ; '*'
4A4B62:  CMP             R0, #0xD
4A4B64:  ITT HI
4A4B66:  MOVHI           R0, #0
4A4B68:  BXHI            LR
4A4B6A:  BFC.W           R0, #0xE, #0x12
4A4B6E:  MOVW            R1, #0x3009
4A4B72:  LSR.W           R0, R1, R0
4A4B76:  AND.W           R0, R0, #1
4A4B7A:  BX              LR
