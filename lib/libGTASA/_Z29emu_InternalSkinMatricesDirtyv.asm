; =========================================================
; Game Engine Function: _Z29emu_InternalSkinMatricesDirtyv
; Address            : 0x1C1F9C - 0x1C1FA6
; =========================================================

1C1F9C:  LDR             R0, =(skin_dirty_ptr - 0x1C1FA2)
1C1F9E:  ADD             R0, PC; skin_dirty_ptr
1C1FA0:  LDR             R0, [R0]; skin_dirty
1C1FA2:  LDRB            R0, [R0]
1C1FA4:  BX              LR
