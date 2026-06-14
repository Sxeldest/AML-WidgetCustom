; =========================================================
; Game Engine Function: _Z23emu_CustomShaderUniformPvjiPf
; Address            : 0x1B4E3C - 0x1B4E54
; =========================================================

1B4E3C:  PUSH            {R7,LR}
1B4E3E:  MOV             R7, SP
1B4E40:  LDR             R0, [R0]
1B4E42:  MOV             LR, R2
1B4E44:  LDR             R2, [R0]
1B4E46:  LDR.W           R12, [R2,#8]
1B4E4A:  MOV             R2, R3
1B4E4C:  MOV             R3, LR
1B4E4E:  POP.W           {R7,LR}
1B4E52:  BX              R12
