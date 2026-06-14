; =========================================================
; Game Engine Function: _Z24emu_SetSecondVertexColorhf
; Address            : 0x1B4E90 - 0x1B4EC6
; =========================================================

1B4E90:  LDR             R2, =(curShaderStateFlags_ptr - 0x1B4E98)
1B4E92:  CMP             R0, #0
1B4E94:  ADD             R2, PC; curShaderStateFlags_ptr
1B4E96:  LDR             R2, [R2]; curShaderStateFlags
1B4E98:  LDR             R2, [R2]
1B4E9A:  BEQ             loc_1B4EB8
1B4E9C:  LDR             R0, =(colorInterp_ptr - 0x1B4EA8)
1B4E9E:  VMOV            S0, R1
1B4EA2:  LDR             R1, =(curShaderStateFlags_ptr - 0x1B4EAA)
1B4EA4:  ADD             R0, PC; colorInterp_ptr
1B4EA6:  ADD             R1, PC; curShaderStateFlags_ptr
1B4EA8:  LDR             R0, [R0]; colorInterp
1B4EAA:  LDR             R1, [R1]; curShaderStateFlags
1B4EAC:  VSTR            S0, [R0]
1B4EB0:  ORR.W           R0, R2, #0x100000
1B4EB4:  STR             R0, [R1]
1B4EB6:  BX              LR
1B4EB8:  LDR             R0, =(curShaderStateFlags_ptr - 0x1B4EC2)
1B4EBA:  BIC.W           R1, R2, #0x100000
1B4EBE:  ADD             R0, PC; curShaderStateFlags_ptr
1B4EC0:  LDR             R0, [R0]; curShaderStateFlags
1B4EC2:  STR             R1, [R0]
1B4EC4:  BX              LR
