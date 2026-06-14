; =========================================================
; Game Engine Function: _ZN8CColLine3SetERK7CVectorS2_
; Address            : 0x2D9696 - 0x2D96B0
; =========================================================

2D9696:  VLDR            D16, [R1]
2D969A:  LDR             R1, [R1,#8]
2D969C:  STR             R1, [R0,#8]
2D969E:  VSTR            D16, [R0]
2D96A2:  VLDR            D16, [R2]
2D96A6:  LDR             R1, [R2,#8]
2D96A8:  STR             R1, [R0,#0x18]
2D96AA:  VSTR            D16, [R0,#0x10]
2D96AE:  BX              LR
