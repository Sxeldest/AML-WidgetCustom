; =========================================================
; Game Engine Function: sub_8C514
; Address            : 0x8C514 - 0x8C51E
; =========================================================

8C514:  LDR             R0, =(dword_1ACF68 - 0x8C51A)
8C516:  ADD             R0, PC; dword_1ACF68
8C518:  LDR             R0, [R0]
8C51A:  ADDS            R0, #8
8C51C:  BX              LR
