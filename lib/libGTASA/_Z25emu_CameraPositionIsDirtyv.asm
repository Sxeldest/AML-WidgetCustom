; =========================================================
; Game Engine Function: _Z25emu_CameraPositionIsDirtyv
; Address            : 0x1C0690 - 0x1C069A
; =========================================================

1C0690:  LDR             R0, =(emu_cameraPositionDirty_ptr - 0x1C0696)
1C0692:  ADD             R0, PC; emu_cameraPositionDirty_ptr
1C0694:  LDR             R0, [R0]; emu_cameraPositionDirty
1C0696:  LDRB            R0, [R0]
1C0698:  BX              LR
