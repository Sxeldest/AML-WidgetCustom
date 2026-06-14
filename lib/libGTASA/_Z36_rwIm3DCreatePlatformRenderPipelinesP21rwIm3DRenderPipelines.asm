; =========================================================
; Game Engine Function: _Z36_rwIm3DCreatePlatformRenderPipelinesP21rwIm3DRenderPipelines
; Address            : 0x1DD9B0 - 0x1DDA30
; =========================================================

1DD9B0:  PUSH            {R4-R7,LR}
1DD9B2:  ADD             R7, SP, #0xC
1DD9B4:  PUSH.W          {R11}
1DD9B8:  MOV             R4, R0
1DD9BA:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
1DD9BE:  MOV             R5, R0
1DD9C0:  CBZ             R5, loc_1DDA26
1DD9C2:  MOVS            R0, #1
1DD9C4:  STR             R0, [R5,#0x2C]
1DD9C6:  MOV             R0, R5
1DD9C8:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
1DD9CC:  MOV             R6, R0
1DD9CE:  CBZ             R6, loc_1DDA20
1DD9D0:  BLX             j__Z38RxNodeDefinitionGetOpenGLSubmitNoLightv; RxNodeDefinitionGetOpenGLSubmitNoLight(void)
1DD9D4:  MOV             R2, R0
1DD9D6:  MOV             R0, R6
1DD9D8:  MOVS            R1, #0
1DD9DA:  MOVS            R3, #0
1DD9DC:  MOVS            R5, #0
1DD9DE:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
1DD9E2:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
1DD9E6:  MOV             R6, R0
1DD9E8:  CBZ             R6, loc_1DDA20
1DD9EA:  VDUP.32         Q8, R6
1DD9EE:  MOV             R0, R6
1DD9F0:  MOVS            R1, #3
1DD9F2:  VST1.32         {D16-D17}, [R4]!
1DD9F6:  STR             R6, [R4]
1DD9F8:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DD9FC:  MOV             R0, R6
1DD9FE:  MOVS            R1, #5
1DDA00:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA04:  MOV             R0, R6
1DDA06:  MOVS            R1, #4
1DDA08:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA0C:  MOV             R0, R6
1DDA0E:  MOVS            R1, #1
1DDA10:  MOVS            R4, #1
1DDA12:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA16:  MOV             R0, R6
1DDA18:  MOVS            R1, #2
1DDA1A:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA1E:  B               loc_1DDA28
1DDA20:  MOV             R0, R5
1DDA22:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1DDA26:  MOVS            R4, #0
1DDA28:  MOV             R0, R4
1DDA2A:  POP.W           {R11}
1DDA2E:  POP             {R4-R7,PC}
