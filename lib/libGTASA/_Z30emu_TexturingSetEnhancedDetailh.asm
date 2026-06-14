; =========================================================
; Game Engine Function: _Z30emu_TexturingSetEnhancedDetailh
; Address            : 0x1BCB94 - 0x1BCBAC
; =========================================================

1BCB94:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BCB9C)
1BCB96:  CMP             R0, #0
1BCB98:  ADD             R1, PC; curShaderStateFlags_ptr
1BCB9A:  LDR             R1, [R1]; curShaderStateFlags
1BCB9C:  LDR             R2, [R1]
1BCB9E:  BIC.W           R3, R2, #0x800
1BCBA2:  IT NE
1BCBA4:  ORRNE.W         R3, R2, #0x800
1BCBA8:  STR             R3, [R1]
1BCBAA:  BX              LR
