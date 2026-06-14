; =========================================================
; Game Engine Function: _Z21emu_GetCameraPositionv
; Address            : 0x1C0684 - 0x1C068C
; =========================================================

1C0684:  LDR             R0, =(emu_cameraPosition_ptr - 0x1C068A)
1C0686:  ADD             R0, PC; emu_cameraPosition_ptr
1C0688:  LDR             R0, [R0]; emu_cameraPosition
1C068A:  BX              LR
