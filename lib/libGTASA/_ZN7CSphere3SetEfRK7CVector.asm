; =========================================================
; Game Engine Function: _ZN7CSphere3SetEfRK7CVector
; Address            : 0x2E1C44 - 0x2E1C54
; =========================================================

2E1C44:  STR             R1, [R0,#0xC]
2E1C46:  VLDR            D16, [R2]
2E1C4A:  LDR             R1, [R2,#8]
2E1C4C:  STR             R1, [R0,#8]
2E1C4E:  VSTR            D16, [R0]
2E1C52:  BX              LR
