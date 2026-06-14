; =========================================================
; Game Engine Function: _ZN10CColSphere3SetEfRK7CVectorhhh
; Address            : 0x2E1C54 - 0x2E1C70
; =========================================================

2E1C54:  STR             R1, [R0,#0xC]
2E1C56:  LDR             R1, [R2,#8]
2E1C58:  VLDR            D16, [R2]
2E1C5C:  LDRD.W          R2, R12, [SP,#arg_0]
2E1C60:  STR             R1, [R0,#8]
2E1C62:  STRB            R3, [R0,#0x10]
2E1C64:  STRB            R2, [R0,#0x11]
2E1C66:  STRB.W          R12, [R0,#0x12]
2E1C6A:  VSTR            D16, [R0]
2E1C6E:  BX              LR
