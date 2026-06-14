; =========================================================
; Game Engine Function: sub_7DB4C
; Address            : 0x7DB4C - 0x7DB5A
; =========================================================

7DB4C:  LDRH            R0, [R0,#8]
7DB4E:  MOVW            R1, #0xFFFF
7DB52:  SUBS            R0, R0, R1
7DB54:  IT NE
7DB56:  MOVNE           R0, #1
7DB58:  BX              LR
