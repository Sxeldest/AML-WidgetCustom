; =========================================================
; Game Engine Function: _Z16GetExtraColorPtrP10RpGeometry
; Address            : 0x2CAD6C - 0x2CAD78
; =========================================================

2CAD6C:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAD72)
2CAD6E:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAD70:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAD72:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAD74:  LDR             R0, [R0,R1]
2CAD76:  BX              LR
