; =========================================================
; Game Engine Function: _Z27emu_InternalSkinGetMatricesv
; Address            : 0x1C1FBC - 0x1C1FC4
; =========================================================

1C1FBC:  LDR             R0, =(skin_map_ptr - 0x1C1FC2)
1C1FBE:  ADD             R0, PC; skin_map_ptr
1C1FC0:  LDR             R0, [R0]; skin_map
1C1FC2:  BX              LR
