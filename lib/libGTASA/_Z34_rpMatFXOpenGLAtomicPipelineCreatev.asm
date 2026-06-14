; =========================================================
; Game Engine Function: _Z34_rpMatFXOpenGLAtomicPipelineCreatev
; Address            : 0x1C43BC - 0x1C4426
; =========================================================

1C43BC:  PUSH            {R4-R7,LR}
1C43BE:  ADD             R7, SP, #0xC
1C43C0:  PUSH.W          {R11}
1C43C4:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
1C43C8:  MOV             R4, R0
1C43CA:  CBZ             R4, loc_1C441C
1C43CC:  MOV.W           R0, #0x120
1C43D0:  STR             R0, [R4,#0x2C]
1C43D2:  MOV             R0, R4
1C43D4:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
1C43D8:  MOV             R5, R0
1C43DA:  CBZ             R5, loc_1C4416
1C43DC:  BLX             j__Z39RxNodeDefinitionGetOpenGLAtomicAllInOnev; RxNodeDefinitionGetOpenGLAtomicAllInOne(void)
1C43E0:  MOV             R6, R0
1C43E2:  MOV             R0, R5
1C43E4:  MOVS            R1, #0
1C43E6:  MOV             R2, R6
1C43E8:  MOVS            R3, #0
1C43EA:  BLX             j__Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz; RxLockedPipeAddFragment(RxPipeline *,uint *,RxNodeDefinition *,...)
1C43EE:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
1C43F2:  LDR             R1, [R6]
1C43F4:  MOV             R0, R4
1C43F6:  MOVS            R2, #0
1C43F8:  MOVS            R3, #0
1C43FA:  BLX             j__Z24RxPipelineFindNodeByNameP10RxPipelinePKcP14RxPipelineNodePi; RxPipelineFindNodeByName(RxPipeline *,char const*,RxPipelineNode *,int *)
1C43FE:  MOV             R5, R0
1C4400:  LDR             R0, =(_Z30_rpMatFXOpenGLAllInOneRenderCBP10RwResEntryPvhj_ptr - 0x1C4406)
1C4402:  ADD             R0, PC; _Z30_rpMatFXOpenGLAllInOneRenderCBP10RwResEntryPvhj_ptr
1C4404:  LDR             R1, [R0]; _rpMatFXOpenGLAllInOneRenderCB(RwResEntry *,void *,uchar,uint)
1C4406:  MOV             R0, R5
1C4408:  BLX             j__Z33RxOpenGLAllInOneSetRenderCallBackP14RxPipelineNodePFvP10RwResEntryPvhjE; RxOpenGLAllInOneSetRenderCallBack(RxPipelineNode *,void (*)(RwResEntry *,void *,uchar,uint))
1C440C:  MOV             R0, R5
1C440E:  MOVS            R1, #1
1C4410:  BLX             j__Z34RxOpenGLAllInOneSetInstanceDLandVAP14RxPipelineNodei; RxOpenGLAllInOneSetInstanceDLandVA(RxPipelineNode *,int)
1C4414:  B               loc_1C441E
1C4416:  MOV             R0, R4
1C4418:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C441C:  MOVS            R4, #0
1C441E:  MOV             R0, R4
1C4420:  POP.W           {R11}
1C4424:  POP             {R4-R7,PC}
