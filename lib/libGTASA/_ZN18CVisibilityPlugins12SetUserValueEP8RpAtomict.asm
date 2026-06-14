; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins12SetUserValueEP8RpAtomict
; Address            : 0x5D4B18 - 0x5D4B26
; =========================================================

5D4B18:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4B1E)
5D4B1A:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4B1C:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4B1E:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset
5D4B20:  ADD             R0, R2
5D4B22:  STRH            R1, [R0,#2]
5D4B24:  BX              LR
