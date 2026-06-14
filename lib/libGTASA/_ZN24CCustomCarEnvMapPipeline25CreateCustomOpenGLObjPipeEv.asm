; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline25CreateCustomOpenGLObjPipeEv
; Address            : 0x2CBF10 - 0x2CBF84
; =========================================================

2CBF10:  PUSH            {R4-R7,LR}
2CBF12:  ADD             R7, SP, #0xC
2CBF14:  PUSH.W          {R11}
2CBF18:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
2CBF1C:  MOV             R4, R0
2CBF1E:  CBZ             R4, loc_2CBF7A
2CBF20:  MOV             R0, R4
2CBF22:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
2CBF26:  MOV             R6, R0
2CBF28:  CBZ             R6, loc_2CBF74
2CBF2A:  BLX             j__Z39RxNodeDefinitionGetOpenGLAtomicAllInOnev; RxNodeDefinitionGetOpenGLAtomicAllInOne(void)
2CBF2E:  MOV             R5, R0
2CBF30:  MOV             R0, R6
2CBF32:  MOVS            R1, #0
2CBF34:  MOV             R2, R5
2CBF36:  MOVS            R3, #0
2CBF38:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
2CBF3C:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
2CBF40:  CBZ             R0, loc_2CBF74
2CBF42:  LDR             R1, [R5]
2CBF44:  MOV             R0, R4
2CBF46:  MOVS            R2, #0
2CBF48:  MOVS            R3, #0
2CBF4A:  BLX             j__Z24RxPipelineFindNodeByNameP10RxPipelinePKcP14RxPipelineNodePi; RxPipelineFindNodeByName(RxPipeline *,char const*,RxPipelineNode *,int *)
2CBF4E:  MOV             R5, R0
2CBF50:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline20CustomPipeInstanceCBEPvP24RxOpenGLMeshInstanceDataii_ptr - 0x2CBF56)
2CBF52:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline20CustomPipeInstanceCBEPvP24RxOpenGLMeshInstanceDataii_ptr
2CBF54:  LDR             R1, [R0]; CCustomCarEnvMapPipeline::CustomPipeInstanceCB(void *,RxOpenGLMeshInstanceData *,int,int)
2CBF56:  MOV             R0, R5
2CBF58:  BLX             j__Z35RxOpenGLAllInOneSetInstanceCallBackP14RxPipelineNodePFiPvP24RxOpenGLMeshInstanceDataiiE; RxOpenGLAllInOneSetInstanceCallBack(RxPipelineNode *,int (*)(void *,RxOpenGLMeshInstanceData *,int,int))
2CBF5C:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline18CustomPipeRenderCBEP10RwResEntryPvhj_ptr - 0x2CBF62)
2CBF5E:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline18CustomPipeRenderCBEP10RwResEntryPvhj_ptr
2CBF60:  LDR             R1, [R0]; CCustomCarEnvMapPipeline::CustomPipeRenderCB(RwResEntry *,void *,uchar,uint)
2CBF62:  MOV             R0, R5
2CBF64:  BLX             j__Z33RxOpenGLAllInOneSetRenderCallBackP14RxPipelineNodePFvP10RwResEntryPvhjE; RxOpenGLAllInOneSetRenderCallBack(RxPipelineNode *,void (*)(RwResEntry *,void *,uchar,uint))
2CBF68:  MOVS            R0, #0x53F2009A
2CBF6E:  STRD.W          R0, R0, [R4,#0x2C]
2CBF72:  B               loc_2CBF7C
2CBF74:  MOV             R0, R4
2CBF76:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
2CBF7A:  MOVS            R4, #0
2CBF7C:  MOV             R0, R4
2CBF7E:  POP.W           {R11}
2CBF82:  POP             {R4-R7,PC}
