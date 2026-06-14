; =========================================================
; Game Engine Function: _Z38_rwIm3DCreatePlatformTransformPipelinePP10RxPipeline
; Address            : 0x1DD95C - 0x1DD9B0
; =========================================================

1DD95C:  PUSH            {R4-R7,LR}
1DD95E:  ADD             R7, SP, #0xC
1DD960:  PUSH.W          {R11}
1DD964:  MOV             R4, R0
1DD966:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
1DD96A:  MOV             R5, R0
1DD96C:  CBZ             R5, loc_1DD9A8
1DD96E:  MOVS            R0, #1
1DD970:  STR             R0, [R5,#0x2C]
1DD972:  MOV             R0, R5
1DD974:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
1DD978:  MOV             R6, R0
1DD97A:  CBZ             R6, loc_1DD9A2
1DD97C:  BLX             j__Z36RxNodeDefinitionGetOpenGLImmInstancev; RxNodeDefinitionGetOpenGLImmInstance(void)
1DD980:  MOV             R2, R0
1DD982:  MOV             R0, R6
1DD984:  MOVS            R1, #0
1DD986:  MOVS            R3, #0
1DD988:  MOVS            R5, #0
1DD98A:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
1DD98E:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
1DD992:  CBZ             R0, loc_1DD9A2
1DD994:  STR             R0, [R4]
1DD996:  BLX             j__Z26RwIm3DSetTransformPipelineP10RxPipeline; RwIm3DSetTransformPipeline(RxPipeline *)
1DD99A:  MOVS            R0, #1
1DD99C:  POP.W           {R11}
1DD9A0:  POP             {R4-R7,PC}
1DD9A2:  MOV             R0, R5
1DD9A4:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1DD9A8:  MOVS            R0, #0
1DD9AA:  POP.W           {R11}
1DD9AE:  POP             {R4-R7,PC}
