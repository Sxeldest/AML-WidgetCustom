; =========================================================
; Game Engine Function: sub_8C550
; Address            : 0x8C550 - 0x8C55E
; =========================================================

8C550:  LDR             R0, =(dword_1ACF68 - 0x8C55A)
8C552:  MOVW            R1, #0x1C24
8C556:  ADD             R0, PC; dword_1ACF68
8C558:  LDR             R0, [R0]
8C55A:  ADD             R0, R1
8C55C:  BX              LR
