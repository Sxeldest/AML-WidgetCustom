; =========================================================
; Game Engine Function: alGetProcAddress
; Address            : 0x1DCDB0 - 0x1DCDC4
; =========================================================

1DCDB0:  MOV             R1, R0
1DCDB4:  MOV             R0, #0
1DCDB8:  CMP             R1, #0
1DCDBC:  BXEQ            LR
1DCDC0:  B               j_alcGetProcAddress
