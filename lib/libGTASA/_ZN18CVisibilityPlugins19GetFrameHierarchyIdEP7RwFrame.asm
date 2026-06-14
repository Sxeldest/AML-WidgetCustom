; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame
; Address            : 0x5D63B0 - 0x5D63BC
; =========================================================

5D63B0:  LDR             R1, =(_ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr - 0x5D63B6)
5D63B2:  ADD             R1, PC; _ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr
5D63B4:  LDR             R1, [R1]; CVisibilityPlugins::ms_framePluginOffset ...
5D63B6:  LDR             R1, [R1]; CVisibilityPlugins::ms_framePluginOffset
5D63B8:  LDR             R0, [R0,R1]
5D63BA:  BX              LR
