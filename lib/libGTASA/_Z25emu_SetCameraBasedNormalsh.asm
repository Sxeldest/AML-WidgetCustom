; =========================================================
; Game Engine Function: _Z25emu_SetCameraBasedNormalsh
; Address            : 0x1C05EC - 0x1C0604
; =========================================================

1C05EC:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C05F4)
1C05EE:  CMP             R0, #0
1C05F0:  ADD             R1, PC; curShaderStateFlags_ptr
1C05F2:  LDR             R1, [R1]; curShaderStateFlags
1C05F4:  LDR             R2, [R1]
1C05F6:  BIC.W           R3, R2, #0x200
1C05FA:  IT NE
1C05FC:  ORRNE.W         R3, R2, #0x200
1C0600:  STR             R3, [R1]
1C0602:  BX              LR
