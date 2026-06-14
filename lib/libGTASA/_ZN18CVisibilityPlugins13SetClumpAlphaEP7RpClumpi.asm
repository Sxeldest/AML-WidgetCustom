; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi
; Address            : 0x5D6594 - 0x5D65A2
; =========================================================

5D6594:  LDR             R2, =(_ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr - 0x5D659A)
5D6596:  ADD             R2, PC; _ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr
5D6598:  LDR             R2, [R2]; CVisibilityPlugins::ms_clumpPluginOffset ...
5D659A:  LDR             R2, [R2]; CVisibilityPlugins::ms_clumpPluginOffset
5D659C:  ADD             R0, R2
5D659E:  STR             R1, [R0,#4]
5D65A0:  BX              LR
