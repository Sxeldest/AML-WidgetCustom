; =========================================================
; Game Engine Function: _ZN8CColLineC2ERK7CVectorS2_
; Address            : 0x2D967C - 0x2D9696
; =========================================================

2D967C:  VLDR            D16, [R1]
2D9680:  LDR             R1, [R1,#8]
2D9682:  STR             R1, [R0,#8]
2D9684:  VSTR            D16, [R0]
2D9688:  VLDR            D16, [R2]
2D968C:  LDR             R1, [R2,#8]
2D968E:  STR             R1, [R0,#0x18]
2D9690:  VSTR            D16, [R0,#0x10]
2D9694:  BX              LR
