; =========================================================
; Game Engine Function: _ZN8CColDisk3SetEfRK7CVectorS2_fhhh
; Address            : 0x2E200C - 0x2E2040
; =========================================================

2E200C:  STR             R1, [R0,#0xC]
2E200E:  ADD.W           R12, SP, #arg_4
2E2012:  VLDR            D16, [R2]
2E2016:  LDR             R1, [R2,#8]
2E2018:  STR             R1, [R0,#8]
2E201A:  VSTR            D16, [R0]
2E201E:  VLDR            S0, [SP,#arg_0]
2E2022:  VLDR            D16, [R3]
2E2026:  LDR             R1, [R3,#8]
2E2028:  LDM.W           R12, {R2,R3,R12}
2E202C:  STR             R1, [R0,#0x1C]
2E202E:  VSTR            S0, [R0,#0x20]
2E2032:  STRB            R2, [R0,#0x10]
2E2034:  STRB            R3, [R0,#0x11]
2E2036:  STRB.W          R12, [R0,#0x12]
2E203A:  VSTR            D16, [R0,#0x14]
2E203E:  BX              LR
