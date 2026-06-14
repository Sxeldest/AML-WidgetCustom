; =========================================================
; Game Engine Function: _Z15emu_ResetEnvMapv
; Address            : 0x1C05B4 - 0x1C05CA
; =========================================================

1C05B4:  LDR             R0, =(curShaderStateFlags_ptr - 0x1C05C2)
1C05B6:  MOV             R2, #0xFEFFFFBF
1C05BE:  ADD             R0, PC; curShaderStateFlags_ptr
1C05C0:  LDR             R0, [R0]; curShaderStateFlags
1C05C2:  LDR             R1, [R0]
1C05C4:  ANDS            R1, R2
1C05C6:  STR             R1, [R0]
1C05C8:  BX              LR
