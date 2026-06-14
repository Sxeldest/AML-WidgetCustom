; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline36pluginExtraVertColourStreamGetSizeCBEPKvii
; Address            : 0x2CACE4 - 0x2CAD06
; =========================================================

2CACE4:  MOV             R1, R0
2CACE6:  MOVS            R0, #0
2CACE8:  CMP             R1, #0
2CACEA:  IT EQ
2CACEC:  BXEQ            LR
2CACEE:  LDR             R2, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CACF4)
2CACF0:  ADD             R2, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CACF2:  LDR             R2, [R2]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CACF4:  LDR             R2, [R2]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CACF6:  LDR             R2, [R1,R2]
2CACF8:  CMP             R2, #0
2CACFA:  ITTT NE
2CACFC:  LDRNE           R0, [R1,#0x14]
2CACFE:  MOVNE           R1, #4
2CAD00:  ADDNE.W         R0, R1, R0,LSL#2
2CAD04:  BX              LR
