; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline27ExtraVertColourPluginAttachEv
; Address            : 0x2CAA9C - 0x2CAB1E
; =========================================================

2CAA9C:  PUSH            {R4-R7,LR}
2CAA9E:  ADD             R7, SP, #0xC
2CAAA0:  PUSH.W          {R11}
2CAAA4:  SUB             SP, SP, #8
2CAAA6:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAAB8)
2CAAA8:  MOVW            R5, #0xF2F9
2CAAAC:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline34pluginExtraVertColourConstructorCBEPvii_ptr - 0x2CAABA)
2CAAAE:  MOVT            R5, #0x253
2CAAB2:  LDR             R3, =(_ZN25CCustomBuildingDNPipeline33pluginExtraVertColourDestructorCBEPvii_ptr - 0x2CAABE)
2CAAB4:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAAB6:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline34pluginExtraVertColourConstructorCBEPvii_ptr
2CAAB8:  MOVS            R4, #0
2CAABA:  ADD             R3, PC; _ZN25CCustomBuildingDNPipeline33pluginExtraVertColourDestructorCBEPvii_ptr
2CAABC:  LDR             R6, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAABE:  LDR             R2, [R1]; CCustomBuildingDNPipeline::pluginExtraVertColourConstructorCB(void *,int,int) ; void *(*)(void *, int, int)
2CAAC0:  MOV.W           R0, #0xFFFFFFFF
2CAAC4:  LDR             R3, [R3]; CCustomBuildingDNPipeline::pluginExtraVertColourDestructorCB(void *,int,int) ; void *(*)(void *, int, int)
2CAAC6:  MOV             R1, R5; unsigned int
2CAAC8:  STR             R0, [R6]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAACA:  MOVS            R0, #0xC; int
2CAACC:  STR             R4, [SP,#0x18+var_18]; void *(*)(void *, const void *, int, int)
2CAACE:  BLX             j__Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpGeometryRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
2CAAD2:  STR             R0, [R6]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAAD4:  ADDS            R0, #1
2CAAD6:  BEQ             loc_2CAB14
2CAAD8:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline33pluginExtraVertColourStreamReadCBEP8RwStreamiPvii_ptr - 0x2CAAE2)
2CAADA:  LDR             R2, =(_ZN25CCustomBuildingDNPipeline34pluginExtraVertColourStreamWriteCBEP8RwStreamiPKvii_ptr - 0x2CAAE4)
2CAADC:  LDR             R3, =(_ZN25CCustomBuildingDNPipeline36pluginExtraVertColourStreamGetSizeCBEPKvii_ptr - 0x2CAAE6)
2CAADE:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline33pluginExtraVertColourStreamReadCBEP8RwStreamiPvii_ptr
2CAAE0:  ADD             R2, PC; _ZN25CCustomBuildingDNPipeline34pluginExtraVertColourStreamWriteCBEP8RwStreamiPKvii_ptr
2CAAE2:  ADD             R3, PC; _ZN25CCustomBuildingDNPipeline36pluginExtraVertColourStreamGetSizeCBEPKvii_ptr
2CAAE4:  LDR             R1, [R0]; CCustomBuildingDNPipeline::pluginExtraVertColourStreamReadCB(RwStream *,int,void *,int,int)
2CAAE6:  LDR             R2, [R2]; CCustomBuildingDNPipeline::pluginExtraVertColourStreamWriteCB(RwStream *,int,void const*,int,int)
2CAAE8:  MOV             R0, R5
2CAAEA:  LDR             R3, [R3]; CCustomBuildingDNPipeline::pluginExtraVertColourStreamGetSizeCB(void const*,int,int)
2CAAEC:  BLX             j__Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpGeometryRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
2CAAF0:  CMP             R0, #0
2CAAF2:  BLT             loc_2CAB06
2CAAF4:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAAFC)
2CAAF6:  MOVS            R4, #0
2CAAF8:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAAFA:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAAFC:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAAFE:  ADDS            R0, #1
2CAB00:  IT NE
2CAB02:  MOVNE           R4, #1
2CAB04:  B               loc_2CAB14
2CAB06:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAB12)
2CAB08:  MOVS            R4, #0
2CAB0A:  MOV.W           R1, #0xFFFFFFFF
2CAB0E:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAB10:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAB12:  STR             R1, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAB14:  MOV             R0, R4
2CAB16:  ADD             SP, SP, #8
2CAB18:  POP.W           {R11}
2CAB1C:  POP             {R4-R7,PC}
