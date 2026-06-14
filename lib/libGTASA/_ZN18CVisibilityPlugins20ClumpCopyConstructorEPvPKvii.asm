; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins20ClumpCopyConstructorEPvPKvii
; Address            : 0x5D4334 - 0x5D4342
; =========================================================

5D4334:  LDR             R2, =(_ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr - 0x5D433A)
5D4336:  ADD             R2, PC; _ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr
5D4338:  LDR             R2, [R2]; CVisibilityPlugins::ms_clumpPluginOffset ...
5D433A:  LDR             R2, [R2]; CVisibilityPlugins::ms_clumpPluginOffset
5D433C:  LDR             R1, [R1,R2]
5D433E:  STR             R1, [R0,R2]
5D4340:  BX              LR
