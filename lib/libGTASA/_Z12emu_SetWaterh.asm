; =========================================================
; Game Engine Function: _Z12emu_SetWaterh
; Address            : 0x1B4E54 - 0x1B4E6C
; =========================================================

1B4E54:  LDR             R1, =(curShaderStateFlags_ptr - 0x1B4E5C)
1B4E56:  CMP             R0, #0
1B4E58:  ADD             R1, PC; curShaderStateFlags_ptr
1B4E5A:  LDR             R1, [R1]; curShaderStateFlags
1B4E5C:  LDR             R2, [R1]
1B4E5E:  BIC.W           R3, R2, #0x80000
1B4E62:  IT NE
1B4E64:  ORRNE.W         R3, R2, #0x80000
1B4E68:  STR             R3, [R1]
1B4E6A:  BX              LR
