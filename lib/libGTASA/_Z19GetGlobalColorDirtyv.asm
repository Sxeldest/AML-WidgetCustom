; =========================================================
; Game Engine Function: _Z19GetGlobalColorDirtyv
; Address            : 0x1B5060 - 0x1B5068
; =========================================================

1B5060:  LDR             R0, =(GlobalColorDirty_ptr - 0x1B5066)
1B5062:  ADD             R0, PC; GlobalColorDirty_ptr
1B5064:  LDR             R0, [R0]; GlobalColorDirty
1B5066:  BX              LR
