; =========================================================
; Game Engine Function: sub_5D4AAC
; Address            : 0x5D4AAC - 0x5D4ABE
; =========================================================

5D4AAC:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4AB2)
5D4AAE:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4AB0:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4AB2:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset
5D4AB4:  ADD             R2, R0
5D4AB6:  LDRH            R3, [R2,#2]
5D4AB8:  ORRS            R1, R3
5D4ABA:  STRH            R1, [R2,#2]
5D4ABC:  BX              LR
