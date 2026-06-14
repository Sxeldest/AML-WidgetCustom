; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump
; Address            : 0x5D4F9C - 0x5D4FAA
; =========================================================

5D4F9C:  LDR             R1, =(_ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr - 0x5D4FA2)
5D4F9E:  ADD             R1, PC; _ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr
5D4FA0:  LDR             R1, [R1]; CVisibilityPlugins::ms_clumpPluginOffset ...
5D4FA2:  LDR             R1, [R1]; CVisibilityPlugins::ms_clumpPluginOffset
5D4FA4:  ADD             R0, R1
5D4FA6:  LDR             R0, [R0,#4]
5D4FA8:  BX              LR
