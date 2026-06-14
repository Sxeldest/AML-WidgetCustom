; =========================================================
; Game Engine Function: sub_3906EC
; Address            : 0x3906EC - 0x3906FC
; =========================================================

3906EC:  LDR             R2, [R0,#0x14]
3906EE:  CMP             R2, R1
3906F0:  IT NE
3906F2:  BXNE            LR
3906F4:  LDR             R1, =(dword_942EC8 - 0x3906FA)
3906F6:  ADD             R1, PC; dword_942EC8
3906F8:  STR             R0, [R1]
3906FA:  BX              LR
