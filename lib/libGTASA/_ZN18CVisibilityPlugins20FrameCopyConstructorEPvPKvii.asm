; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins20FrameCopyConstructorEPvPKvii
; Address            : 0x5D42F4 - 0x5D4302
; =========================================================

5D42F4:  LDR             R2, =(_ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr - 0x5D42FA)
5D42F6:  ADD             R2, PC; _ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr
5D42F8:  LDR             R2, [R2]; CVisibilityPlugins::ms_framePluginOffset ...
5D42FA:  LDR             R2, [R2]; CVisibilityPlugins::ms_framePluginOffset
5D42FC:  LDR             R1, [R1,R2]
5D42FE:  STR             R1, [R0,R2]
5D4300:  BX              LR
