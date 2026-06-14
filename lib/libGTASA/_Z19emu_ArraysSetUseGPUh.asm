; =========================================================
; Game Engine Function: _Z19emu_ArraysSetUseGPUh
; Address            : 0x1BD090 - 0x1BD09A
; =========================================================

1BD090:  LDR             R1, =(useGPUForArrays_ptr - 0x1BD096)
1BD092:  ADD             R1, PC; useGPUForArrays_ptr
1BD094:  LDR             R1, [R1]; useGPUForArrays
1BD096:  STRB            R0, [R1]
1BD098:  BX              LR
