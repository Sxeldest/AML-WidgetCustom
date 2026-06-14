; =========================================================
; Game Engine Function: _ZN9CRenderer11RenderRoadsEv
; Address            : 0x40FB74 - 0x40FC10
; =========================================================

40FB74:  PUSH            {R4-R7,LR}
40FB76:  ADD             R7, SP, #0xC
40FB78:  PUSH.W          {R8,R9,R11}
40FB7C:  MOVS            R0, #0xE
40FB7E:  MOVS            R1, #1
40FB80:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FB84:  MOVS            R0, #0xC
40FB86:  MOVS            R1, #1
40FB88:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FB8C:  MOVS            R0, #0x14
40FB8E:  MOVS            R1, #2
40FB90:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FB94:  BLX             j__Z21DeActivateDirectionalv; DeActivateDirectional(void)
40FB98:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
40FB9C:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FBA2)
40FB9E:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FBA0:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FBA2:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
40FBA4:  CMP             R0, #1
40FBA6:  BLT             loc_40FC0A
40FBA8:  LDR             R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40FBB0)
40FBAA:  MOVS            R5, #0
40FBAC:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40FBAE:  LDR.W           R9, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40FBB2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x40FBB8)
40FBB4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40FBB6:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
40FBBA:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40FBC0)
40FBBC:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40FBBE:  LDR             R6, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40FBC0:  LDR.W           R4, [R9,R5,LSL#2]
40FBC4:  LDRB.W          R0, [R4,#0x3A]
40FBC8:  AND.W           R0, R0, #7
40FBCC:  CMP             R0, #1
40FBCE:  BNE             loc_40FC02
40FBD0:  LDRSH.W         R0, [R4,#0x26]
40FBD4:  LDR.W           R0, [R8,R0,LSL#2]
40FBD8:  LDRB.W          R0, [R0,#0x29]
40FBDC:  LSLS            R0, R0, #0x1F; this
40FBDE:  BEQ             loc_40FC02
40FBE0:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
40FBE4:  CMP             R0, #1
40FBE6:  BNE             loc_40FBFA
40FBE8:  BLX             j__ZN12CPostEffects35FilterFX_StoreAndSetDayNightBalanceEv; CPostEffects::FilterFX_StoreAndSetDayNightBalance(void)
40FBEC:  LDR             R0, [R4]
40FBEE:  LDR             R1, [R0,#0x4C]
40FBF0:  MOV             R0, R4
40FBF2:  BLX             R1
40FBF4:  BLX             j__ZN12CPostEffects31FilterFX_RestoreDayNightBalanceEv; CPostEffects::FilterFX_RestoreDayNightBalance(void)
40FBF8:  B               loc_40FC02
40FBFA:  LDR             R0, [R4]
40FBFC:  LDR             R1, [R0,#0x4C]
40FBFE:  MOV             R0, R4
40FC00:  BLX             R1
40FC02:  LDR             R0, [R6]; CRenderer::ms_nNoOfVisibleEntities
40FC04:  ADDS            R5, #1
40FC06:  CMP             R5, R0
40FC08:  BLT             loc_40FBC0
40FC0A:  POP.W           {R8,R9,R11}
40FC0E:  POP             {R4-R7,PC}
