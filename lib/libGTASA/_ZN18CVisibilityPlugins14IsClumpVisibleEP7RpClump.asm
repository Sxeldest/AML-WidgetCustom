; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins14IsClumpVisibleEP7RpClump
; Address            : 0x5D6584 - 0x5D6590
; =========================================================

5D6584:  LDR             R1, =(_ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr - 0x5D658A)
5D6586:  ADD             R1, PC; _ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr
5D6588:  LDR             R1, [R1]; CVisibilityPlugins::ms_clumpPluginOffset ...
5D658A:  LDR             R1, [R1]; CVisibilityPlugins::ms_clumpPluginOffset
5D658C:  LDR             R1, [R0,R1]
5D658E:  BX              R1
