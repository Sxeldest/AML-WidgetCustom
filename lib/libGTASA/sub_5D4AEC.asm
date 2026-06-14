; =========================================================
; Game Engine Function: sub_5D4AEC
; Address            : 0x5D4AEC - 0x5D4B00
; =========================================================

5D4AEC:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D4AF2)
5D4AEE:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D4AF0:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D4AF2:  LDR             R2, [R2]; CVisibilityPlugins::ms_atomicPluginOffset
5D4AF4:  ADD             R2, R0
5D4AF6:  LDRH            R3, [R2,#2]
5D4AF8:  BIC.W           R1, R3, R1
5D4AFC:  STRH            R1, [R2,#2]
5D4AFE:  BX              LR
