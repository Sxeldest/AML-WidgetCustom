; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline21GetExtraVertColourPtrEP10RpGeometry
; Address            : 0x2CAD5C - 0x2CAD68
; =========================================================

2CAD5C:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAD62)
2CAD5E:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAD60:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAD62:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAD64:  LDR             R0, [R0,R1]
2CAD66:  BX              LR
