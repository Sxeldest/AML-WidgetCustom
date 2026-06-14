; =========================================================
; Game Engine Function: _Z26emu_InternalSkinClearDirtyv
; Address            : 0x1C1FAC - 0x1C1FB8
; =========================================================

1C1FAC:  LDR             R0, =(skin_dirty_ptr - 0x1C1FB4)
1C1FAE:  MOVS            R1, #0
1C1FB0:  ADD             R0, PC; skin_dirty_ptr
1C1FB2:  LDR             R0, [R0]; skin_dirty
1C1FB4:  STRB            R1, [R0]
1C1FB6:  BX              LR
