; =========================================================
; Game Engine Function: _Z18RwRasterSetKeepCPUb
; Address            : 0x1AE8DC - 0x1AE8E6
; =========================================================

1AE8DC:  LDR             R1, =(keepingCPU_ptr - 0x1AE8E2)
1AE8DE:  ADD             R1, PC; keepingCPU_ptr
1AE8E0:  LDR             R1, [R1]; keepingCPU
1AE8E2:  STRB            R0, [R1]
1AE8E4:  BX              LR
