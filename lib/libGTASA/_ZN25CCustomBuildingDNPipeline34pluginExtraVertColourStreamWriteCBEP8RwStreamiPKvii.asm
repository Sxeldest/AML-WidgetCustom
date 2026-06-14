; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline34pluginExtraVertColourStreamWriteCBEP8RwStreamiPKvii
; Address            : 0x2CACA8 - 0x2CACDE
; =========================================================

2CACA8:  PUSH            {R4-R7,LR}
2CACAA:  ADD             R7, SP, #0xC
2CACAC:  PUSH.W          {R11}
2CACB0:  MOV             R4, R0
2CACB2:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CACBC)
2CACB4:  MOV             R5, R2
2CACB6:  MOVS            R2, #4; size_t
2CACB8:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CACBA:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CACBC:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CACBE:  LDR             R6, [R5,R0]
2CACC0:  MOV             R0, R4; int
2CACC2:  MOV             R1, R6; void *
2CACC4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2CACC8:  CBZ             R6, loc_2CACD6
2CACCA:  LDR             R0, [R5,#0x14]
2CACCC:  MOV             R1, R6; void *
2CACCE:  LSLS            R2, R0, #2; size_t
2CACD0:  MOV             R0, R4; int
2CACD2:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2CACD6:  MOV             R0, R4
2CACD8:  POP.W           {R11}
2CACDC:  POP             {R4-R7,PC}
