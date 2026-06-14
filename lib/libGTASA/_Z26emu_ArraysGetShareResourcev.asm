; =========================================================
; Game Engine Function: _Z26emu_ArraysGetShareResourcev
; Address            : 0x1BD10C - 0x1BD116
; =========================================================

1BD10C:  LDR             R0, =(sharingGPUResource_ptr - 0x1BD112)
1BD10E:  ADD             R0, PC; sharingGPUResource_ptr
1BD110:  LDR             R0, [R0]; sharingGPUResource
1BD112:  LDRB            R0, [R0]
1BD114:  BX              LR
