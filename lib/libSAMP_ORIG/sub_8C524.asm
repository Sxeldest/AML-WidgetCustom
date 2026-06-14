; =========================================================
; Game Engine Function: sub_8C524
; Address            : 0x8C524 - 0x8C532
; =========================================================

8C524:  LDR             R0, =(dword_1ACF68 - 0x8C52E)
8C526:  MOVW            R1, #0x1518
8C52A:  ADD             R0, PC; dword_1ACF68
8C52C:  LDR             R0, [R0]
8C52E:  ADD             R0, R1
8C530:  BX              LR
