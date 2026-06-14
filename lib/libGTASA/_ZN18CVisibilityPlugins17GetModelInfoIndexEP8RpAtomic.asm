; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins17GetModelInfoIndexEP8RpAtomic
; Address            : 0x5D4A38 - 0x5D4A44
; =========================================================

5D4A38:  LDR             R1, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4A3E)
5D4A3A:  ADD             R1, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4A3C:  LDR             R1, [R1]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4A3E:  LDR             R1, [R1]; CVisibilityPlugins::ms_atomicPluginOffset
5D4A40:  LDRSH           R0, [R0,R1]
5D4A42:  BX              LR
