; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline34pluginExtraVertColourConstructorCBEPvii
; Address            : 0x2CAB40 - 0x2CAB58
; =========================================================

2CAB40:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAB46)
2CAB42:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAB44:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAB46:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAB48:  CMP             R1, #1
2CAB4A:  ITTTT GE
2CAB4C:  MOVGE           R2, #0
2CAB4E:  STRGE           R2, [R0,R1]
2CAB50:  ADDGE           R1, R0
2CAB52:  STRDGE.W        R2, R2, [R1,#4]
2CAB56:  BX              LR
