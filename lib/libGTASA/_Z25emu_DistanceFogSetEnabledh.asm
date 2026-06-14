; =========================================================
; Game Engine Function: _Z25emu_DistanceFogSetEnabledh
; Address            : 0x1C077C - 0x1C0794
; =========================================================

1C077C:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0784)
1C077E:  CMP             R0, #0
1C0780:  ADD             R1, PC; curShaderStateFlags_ptr
1C0782:  LDR             R1, [R1]; curShaderStateFlags
1C0784:  LDR             R2, [R1]
1C0786:  BIC.W           R3, R2, #0x400
1C078A:  IT NE
1C078C:  ORRNE.W         R3, R2, #0x400
1C0790:  STR             R3, [R1]
1C0792:  BX              LR
