; =========================================================
; Game Engine Function: sub_7CC9C
; Address            : 0x7CC9C - 0x7CCAA
; =========================================================

7CC9C:  LDR             R0, [R0,#0x68]
7CC9E:  CMP             R0, #0
7CCA0:  IT EQ
7CCA2:  BXEQ            LR
7CCA4:  LDR             R1, [R0]
7CCA6:  LDR             R1, [R1,#0x18]
7CCA8:  BX              R1
