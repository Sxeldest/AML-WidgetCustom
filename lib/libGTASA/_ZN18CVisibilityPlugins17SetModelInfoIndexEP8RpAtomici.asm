; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins17SetModelInfoIndexEP8RpAtomici
; Address            : 0x5D4A28 - 0x5D4A34
; =========================================================

5D4A28:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4A2E)
5D4A2A:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4A2C:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4A2E:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset
5D4A30:  STRH            R1, [R0,R2]
5D4A32:  BX              LR
