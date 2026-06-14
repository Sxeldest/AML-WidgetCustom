; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins12GetUserValueEP8RpAtomic
; Address            : 0x5D4B2C - 0x5D4B3A
; =========================================================

5D4B2C:  LDR             R1, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4B32)
5D4B2E:  ADD             R1, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4B30:  LDR             R1, [R1]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4B32:  LDR             R1, [R1]; CVisibilityPlugins::ms_atomicPluginOffset
5D4B34:  ADD             R0, R1
5D4B36:  LDRH            R0, [R0,#2]
5D4B38:  BX              LR
