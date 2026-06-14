; =========================================================
; Game Engine Function: sub_7CF4C
; Address            : 0x7CF4C - 0x7CF5A
; =========================================================

7CF4C:  LDR             R0, [R0,#0x68]
7CF4E:  CMP             R0, #0
7CF50:  IT EQ
7CF52:  BXEQ            LR
7CF54:  LDR             R1, [R0]
7CF56:  LDR             R1, [R1,#0x18]
7CF58:  BX              R1
