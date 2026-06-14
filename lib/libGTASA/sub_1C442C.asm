; =========================================================
; Game Engine Function: sub_1C442C
; Address            : 0x1C442C - 0x1C456A
; =========================================================

1C442C:  PUSH            {R4-R7,LR}
1C442E:  ADD             R7, SP, #0xC
1C4430:  PUSH.W          {R8-R10}
1C4434:  MOV             R4, R3
1C4436:  MOV             R8, R0
1C4438:  LDR             R0, [R4,#4]
1C443A:  MOV             R6, R2
1C443C:  MOV             R10, R1
1C443E:  CMP             R0, #0
1C4440:  BEQ             loc_1C4510
1C4442:  LDR             R5, [R0]
1C4444:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1C4448:  CBZ             R0, loc_1C445C
1C444A:  LDR             R0, =(RasterExtOffset_ptr - 0x1C4454)
1C444C:  MOVS            R2, #0; int
1C444E:  LDR             R1, [R4,#8]; float
1C4450:  ADD             R0, PC; RasterExtOffset_ptr
1C4452:  LDR             R0, [R0]; RasterExtOffset
1C4454:  LDR             R0, [R0]
1C4456:  LDR             R0, [R5,R0]; void *
1C4458:  BLX             j__Z13emu_SetEnvMapPvfi; emu_SetEnvMap(void *,float,int)
1C445C:  MOVW            R0, #0x1702; unsigned int
1C4460:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1C4464:  BLX             j__Z16emu_glPushMatrixv; emu_glPushMatrix(void)
1C4468:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1C446C:  LDR             R0, [R4]
1C446E:  CMP             R0, #0
1C4470:  BEQ             loc_1C44F2
1C4472:  BLX             j__Z26emu_ArraysGetShareResourcev; emu_ArraysGetShareResource(void)
1C4476:  CBNZ            R0, loc_1C44F2
1C4478:  LDR             R0, =(RwEngineInstance_ptr - 0x1C447E)
1C447A:  ADD             R0, PC; RwEngineInstance_ptr
1C447C:  LDR             R5, [R0]; RwEngineInstance
1C447E:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
1C4482:  MOV             R4, R0
1C4484:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
1C4488:  MOV             R9, R0
1C448A:  LDR             R0, [R5]
1C448C:  LDR             R0, [R0]
1C448E:  LDR             R0, [R0,#4]
1C4490:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1C4494:  MOV             R1, R0
1C4496:  ADD.W           R2, R0, #0x20 ; ' '
1C449A:  ADDS            R0, #0x30 ; '0'
1C449C:  VLD1.32         {D16-D17}, [R1]!
1C44A0:  VLD1.32         {D22-D23}, [R0]
1C44A4:  ADD.W           R0, R4, #0x30 ; '0'
1C44A8:  VLD1.32         {D18-D19}, [R2]
1C44AC:  VLD1.32         {D20-D21}, [R1]
1C44B0:  MOV.W           R1, #0x3F000000
1C44B4:  VST1.32         {D22-D23}, [R0]
1C44B8:  ADD.W           R0, R4, #0x20 ; ' '
1C44BC:  VST1.32         {D18-D19}, [R0]
1C44C0:  MOV             R0, R4
1C44C2:  LDR             R2, =(unk_5EA71C - 0x1C44CC)
1C44C4:  VST1.32         {D16-D17}, [R0]!
1C44C8:  ADD             R2, PC; unk_5EA71C
1C44CA:  VST1.32         {D20-D21}, [R0]
1C44CE:  MOVS            R0, #0
1C44D0:  STR             R0, [R4,#0xC]
1C44D2:  STRD.W          R1, R1, [R4,#0x30]
1C44D6:  MOV             R1, R4
1C44D8:  STR             R0, [R4,#0x38]
1C44DA:  MOV             R0, R9
1C44DC:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C44E0:  MOV             R0, R9
1C44E2:  BLX             j__Z22_rwOpenGLApplyRwMatrixP11RwMatrixTag; _rwOpenGLApplyRwMatrix(RwMatrixTag *)
1C44E6:  MOV             R0, R4
1C44E8:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1C44EC:  MOV             R0, R9
1C44EE:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1C44F2:  TST.W           R6, #0x84
1C44F6:  IT NE
1C44F8:  CMPNE.W         R10, #0
1C44FC:  BEQ             loc_1C452E
1C44FE:  LDR.W           R1, [R10]
1C4502:  MOVS            R0, #1
1C4504:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
1C4508:  LDRB.W          R1, [R10,#0x50]
1C450C:  MOVS            R0, #9
1C450E:  B               loc_1C4532
1C4510:  TST.W           R6, #0x84
1C4514:  IT NE
1C4516:  CMPNE.W         R10, #0
1C451A:  BEQ             loc_1C4554
1C451C:  LDR.W           R1, [R10]
1C4520:  MOVS            R0, #1
1C4522:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
1C4526:  LDRB.W          R1, [R10,#0x50]
1C452A:  MOVS            R0, #9
1C452C:  B               loc_1C4558
1C452E:  MOVS            R0, #1
1C4530:  MOVS            R1, #0
1C4532:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C4536:  MOV             R0, R8; this
1C4538:  BLX             j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; RxOpenGLMeshInstanceData::DrawStored(void)
1C453C:  BLX             j__Z15emu_ResetEnvMapv; emu_ResetEnvMap(void)
1C4540:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
1C4544:  MOV.W           R0, #0x1700; unsigned int
1C4548:  POP.W           {R8-R10}
1C454C:  POP.W           {R4-R7,LR}
1C4550:  B.W             j_j__Z16emu_glMatrixModej; j_emu_glMatrixMode(uint)
1C4554:  MOVS            R0, #1
1C4556:  MOVS            R1, #0
1C4558:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C455C:  MOV             R0, R8; this
1C455E:  POP.W           {R8-R10}
1C4562:  POP.W           {R4-R7,LR}
1C4566:  B.W             j_j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; j_RxOpenGLMeshInstanceData::DrawStored(void)
