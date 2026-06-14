; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins11SetAtomicIdEP8RpAtomici
; Address            : 0x5D4A70 - 0x5D4A7E
; =========================================================

5D4A70:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4A76)
5D4A72:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4A74:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4A76:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset
5D4A78:  ADD             R0, R2
5D4A7A:  STRH            R1, [R0,#2]
5D4A7C:  BX              LR
