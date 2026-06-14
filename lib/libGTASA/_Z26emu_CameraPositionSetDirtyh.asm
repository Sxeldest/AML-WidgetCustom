; =========================================================
; Game Engine Function: _Z26emu_CameraPositionSetDirtyh
; Address            : 0x1C06A0 - 0x1C06AA
; =========================================================

1C06A0:  LDR             R1, =(emu_cameraPositionDirty_ptr - 0x1C06A6)
1C06A2:  ADD             R1, PC; emu_cameraPositionDirty_ptr
1C06A4:  LDR             R1, [R1]; emu_cameraPositionDirty
1C06A6:  STRB            R0, [R1]
1C06A8:  BX              LR
