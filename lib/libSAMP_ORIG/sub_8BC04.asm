; =========================================================
; Game Engine Function: sub_8BC04
; Address            : 0x8BC04 - 0x8BC0C
; =========================================================

8BC04:  LDR             R0, =(dword_1ACF68 - 0x8BC0A)
8BC06:  ADD             R0, PC; dword_1ACF68
8BC08:  LDR             R0, [R0]
8BC0A:  BX              LR
