; =========================================================
; Game Engine Function: _ZN7CEntity9PreRenderEv
; Address            : 0x3EC23C - 0x3ECCE2
; =========================================================

3EC23C:  PUSH            {R4-R7,LR}
3EC23E:  ADD             R7, SP, #0xC
3EC240:  PUSH.W          {R8-R10}
3EC244:  VPUSH           {D8-D13}
3EC248:  SUB             SP, SP, #0x58
3EC24A:  MOV             R8, R0
3EC24C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC258)
3EC250:  LDRSH.W         R1, [R8,#0x26]
3EC254:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC256:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC258:  LDR.W           R6, [R0,R1,LSL#2]
3EC25C:  LDR             R0, [R6]
3EC25E:  LDR             R1, [R0,#8]
3EC260:  MOV             R0, R6
3EC262:  BLX             R1
3EC264:  MOV             R5, R0
3EC266:  LDRB.W          R0, [R6,#0x23]
3EC26A:  CMP             R0, #0
3EC26C:  ITT NE
3EC26E:  MOVNE           R0, R8; this
3EC270:  BLXNE           j__ZN7CEntity22ProcessLightsForEntityEv; CEntity::ProcessLightsForEntity(void)
3EC274:  LDRH            R0, [R6,#0x28]
3EC276:  TST.W           R0, #1
3EC27A:  BNE             loc_3EC2BA
3EC27C:  ORR.W           R0, R0, #1
3EC280:  STRH            R0, [R6,#0x28]
3EC282:  CMP             R5, #0
3EC284:  ITT NE
3EC286:  LDRNE           R4, [R5,#0x34]
3EC288:  CMPNE           R4, #0
3EC28A:  BEQ             loc_3EC2AA
3EC28C:  MOV             R0, R4
3EC28E:  BLX             j__Z25RpMatFXAtomicQueryEffectsP8RpAtomic; RpMatFXAtomicQueryEffects(RpAtomic *)
3EC292:  CMP             R0, #0
3EC294:  ITT NE
3EC296:  LDRNE           R0, [R4,#0x18]
3EC298:  CMPNE           R0, #0
3EC29A:  BEQ             loc_3EC2AA
3EC29C:  LDR.W           R1, =(_Z22MaterialUpdateUVAnimCBP10RpMaterialPv_ptr - 0x3EC2A6)
3EC2A0:  MOVS            R2, #0
3EC2A2:  ADD             R1, PC; _Z22MaterialUpdateUVAnimCBP10RpMaterialPv_ptr
3EC2A4:  LDR             R1, [R1]; MaterialUpdateUVAnimCB(RpMaterial *,void *)
3EC2A6:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
3EC2AA:  LDRB.W          R0, [R6,#0x22]
3EC2AE:  CMP             R0, #0xEE
3EC2B0:  ITE LS
3EC2B2:  ADDLS           R0, #0x10
3EC2B4:  MOVHI           R0, #0xFF
3EC2B6:  STRB.W          R0, [R6,#0x22]
3EC2BA:  LDRB.W          R0, [R8,#0x1E]
3EC2BE:  LSLS            R0, R0, #0x1A
3EC2C0:  BPL.W           loc_3EC4E6
3EC2C4:  CMP             R5, #0
3EC2C6:  BEQ             loc_3EC352
3EC2C8:  LDRH            R0, [R5,#0x28]
3EC2CA:  MOVS            R2, #0
3EC2CC:  MOVS            R1, #0
3EC2CE:  AND.W           R0, R0, #0x7800
3EC2D2:  CMP.W           R0, #0x800
3EC2D6:  IT NE
3EC2D8:  MOVNE           R2, #1
3EC2DA:  CMP.W           R0, #0x1000
3EC2DE:  IT EQ
3EC2E0:  MOVEQ           R1, #1
3EC2E2:  TEQ.W           R1, R2
3EC2E6:  BNE             loc_3EC352
3EC2E8:  LDRB.W          R0, [R8,#0x3A]
3EC2EC:  AND.W           R0, R0, #7
3EC2F0:  CMP             R0, #4
3EC2F2:  BNE             loc_3EC2FC
3EC2F4:  LDRB.W          R0, [R8,#0x144]
3EC2F8:  LSLS            R0, R0, #0x19
3EC2FA:  BMI             loc_3EC352
3EC2FC:  LDR.W           R0, =(TheCamera_ptr - 0x3EC308)
3EC300:  LDR.W           R1, [R8,#0x14]
3EC304:  ADD             R0, PC; TheCamera_ptr
3EC306:  ADD.W           R2, R1, #0x30 ; '0'
3EC30A:  CMP             R1, #0
3EC30C:  LDR             R0, [R0]; TheCamera
3EC30E:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
3EC310:  IT EQ
3EC312:  ADDEQ.W         R2, R8, #4
3EC316:  VLDR            D16, [R2]
3EC31A:  ADD.W           R1, R3, #0x30 ; '0'
3EC31E:  CMP             R3, #0
3EC320:  IT EQ
3EC322:  ADDEQ           R1, R0, #4
3EC324:  LDR.W           R0, =(_ZN7CObject18fDistToNearestTreeE_ptr - 0x3EC334)
3EC328:  VLDR            D17, [R1]
3EC32C:  VSUB.F32        D16, D17, D16
3EC330:  ADD             R0, PC; _ZN7CObject18fDistToNearestTreeE_ptr
3EC332:  LDR             R0, [R0]; CObject::fDistToNearestTree ...
3EC334:  VMUL.F32        D0, D16, D16
3EC338:  VLDR            S2, [R0]
3EC33C:  VADD.F32        S0, S0, S1
3EC340:  VSQRT.F32       S0, S0
3EC344:  VMIN.F32        D0, D1, D0
3EC348:  VSTR            S0, [R0]
3EC34C:  MOV             R0, R8; this
3EC34E:  BLX             j__ZN7CEntity25ModifyMatrixForTreeInWindEv; CEntity::ModifyMatrixForTreeInWind(void)
3EC352:  LDRB.W          R0, [R8,#0x3A]
3EC356:  AND.W           R0, R0, #7
3EC35A:  CMP             R0, #5
3EC35C:  BEQ             loc_3EC424
3EC35E:  CMP             R0, #4
3EC360:  BEQ             loc_3EC390
3EC362:  CMP             R0, #1
3EC364:  BNE.W           loc_3EC4E6
3EC368:  CMP             R5, #0
3EC36A:  BEQ.W           loc_3EC4E6
3EC36E:  LDRH            R0, [R5,#0x28]
3EC370:  AND.W           R0, R0, #0x7800
3EC374:  CMP.W           R0, #0x4800
3EC378:  BNE.W           loc_3EC4E6
3EC37C:  MOV             R0, R8; this
3EC37E:  ADD             SP, SP, #0x58 ; 'X'
3EC380:  VPOP            {D8-D13}
3EC384:  POP.W           {R8-R10}
3EC388:  POP.W           {R4-R7,LR}
3EC38C:  B.W             _ZN7CEntity20ModifyMatrixForCraneEv; CEntity::ModifyMatrixForCrane(void)
3EC390:  LDR.W           R2, =(MI_COLLECTABLE1_ptr - 0x3EC39C)
3EC394:  LDRSH.W         R1, [R8,#0x26]; CEntity *
3EC398:  ADD             R2, PC; MI_COLLECTABLE1_ptr
3EC39A:  LDR             R2, [R2]; MI_COLLECTABLE1
3EC39C:  LDRH            R2, [R2]
3EC39E:  CMP             R1, R2
3EC3A0:  BNE             loc_3EC3AA
3EC3A2:  MOV             R0, R8; this
3EC3A4:  BLX             j__ZN8CPickups20DoCollectableEffectsEP7CEntity; CPickups::DoCollectableEffects(CEntity *)
3EC3A8:  B               loc_3EC3FA
3EC3AA:  LDR.W           R2, =(MI_MONEY_ptr - 0x3EC3B2)
3EC3AE:  ADD             R2, PC; MI_MONEY_ptr
3EC3B0:  LDR             R2, [R2]; MI_MONEY
3EC3B2:  LDRH            R2, [R2]
3EC3B4:  CMP             R1, R2
3EC3B6:  BNE             loc_3EC3C0
3EC3B8:  MOV             R0, R8; this
3EC3BA:  BLX             j__ZN8CPickups14DoMoneyEffectsEP7CEntity; CPickups::DoMoneyEffects(CEntity *)
3EC3BE:  B               loc_3EC3FA
3EC3C0:  LDR.W           R2, =(MI_CARMINE_ptr - 0x3EC3C8)
3EC3C4:  ADD             R2, PC; MI_CARMINE_ptr
3EC3C6:  LDR             R2, [R2]; MI_CARMINE
3EC3C8:  LDRH            R2, [R2]
3EC3CA:  CMP             R1, R2
3EC3CC:  BEQ             loc_3EC3EC
3EC3CE:  LDR.W           R2, =(MI_NAUTICALMINE_ptr - 0x3EC3D6)
3EC3D2:  ADD             R2, PC; MI_NAUTICALMINE_ptr
3EC3D4:  LDR             R2, [R2]; MI_NAUTICALMINE
3EC3D6:  LDRH            R2, [R2]
3EC3D8:  CMP             R1, R2
3EC3DA:  BEQ             loc_3EC3EC
3EC3DC:  LDR.W           R2, =(MI_BRIEFCASE_ptr - 0x3EC3E4)
3EC3E0:  ADD             R2, PC; MI_BRIEFCASE_ptr
3EC3E2:  LDR             R2, [R2]; MI_BRIEFCASE
3EC3E4:  LDRH            R2, [R2]
3EC3E6:  CMP             R1, R2
3EC3E8:  BNE.W           loc_3EC558
3EC3EC:  LDRB.W          R0, [R8,#0x144]
3EC3F0:  LSLS            R0, R0, #0x1F
3EC3F2:  BEQ             loc_3EC424
3EC3F4:  MOV             R0, R8; this
3EC3F6:  BLX             j__ZN8CPickups13DoMineEffectsEP7CEntity; CPickups::DoMineEffects(CEntity *)
3EC3FA:  LDR.W           R0, [R8,#0x18]
3EC3FE:  CBZ             R0, loc_3EC424
3EC400:  LDR             R1, [R0,#4]
3EC402:  LDR.W           R0, [R8,#0x14]
3EC406:  ADDS            R1, #0x10
3EC408:  CBZ             R0, loc_3EC410
3EC40A:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3EC40E:  B               loc_3EC418
3EC410:  ADD.W           R0, R8, #4
3EC414:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3EC418:  LDR.W           R0, [R8,#0x18]
3EC41C:  CBZ             R0, loc_3EC424
3EC41E:  LDR             R0, [R0,#4]
3EC420:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
3EC424:  LDR.W           R0, =(MI_TRAFFICLIGHTS_ptr - 0x3EC42C)
3EC428:  ADD             R0, PC; MI_TRAFFICLIGHTS_ptr
3EC42A:  LDR             R1, [R0]; MI_TRAFFICLIGHTS
3EC42C:  LDRSH.W         R0, [R8,#0x26]
3EC430:  LDRH            R1, [R1]; CEntity *
3EC432:  CMP             R0, R1
3EC434:  BNE             loc_3EC464
3EC436:  MOV             R0, R8; this
3EC438:  BLX             j__ZN14CTrafficLights18DisplayActualLightEP7CEntity; CTrafficLights::DisplayActualLight(CEntity *)
3EC43C:  MOVW            R1, #0xCCCD
3EC440:  MOV.W           R2, #0x41800000
3EC444:  MOVT            R1, #0x3ECC
3EC448:  MOVS            R0, #0
3EC44A:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3EC44E:  MOVW            R1, #0x3F7D
3EC452:  MOVW            R2, #0x872B
3EC456:  STR             R0, [SP,#0xA0+var_98]
3EC458:  MOVT            R1, #0x403D
3EC45C:  MOVT            R2, #0x3E16
3EC460:  MOV             R0, R8
3EC462:  B               loc_3EC4E0
3EC464:  LDR.W           R1, =(MI_TRAFFICLIGHTS_VERTICAL_ptr - 0x3EC46C)
3EC468:  ADD             R1, PC; MI_TRAFFICLIGHTS_VERTICAL_ptr
3EC46A:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VERTICAL
3EC46C:  LDRH            R1, [R1]; CEntity *
3EC46E:  CMP             R0, R1
3EC470:  BNE             loc_3EC47A
3EC472:  MOV             R0, R8; this
3EC474:  BLX             j__ZN14CTrafficLights18DisplayActualLightEP7CEntity; CTrafficLights::DisplayActualLight(CEntity *)
3EC478:  B               loc_3EC4E6
3EC47A:  LDR.W           R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x3EC482)
3EC47E:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
3EC480:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
3EC482:  LDRH            R1, [R1]; CEntity *
3EC484:  CMP             R0, R1
3EC486:  BNE             loc_3EC4AC
3EC488:  MOV             R0, R8; this
3EC48A:  BLX             j__ZN14CTrafficLights18DisplayActualLightEP7CEntity; CTrafficLights::DisplayActualLight(CEntity *)
3EC48E:  MOVW            R1, #0xCCCD
3EC492:  MOV.W           R2, #0x41800000
3EC496:  MOVT            R1, #0x3ECC
3EC49A:  MOVS            R0, #0
3EC49C:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3EC4A0:  MOVW            R1, #0xEB85
3EC4A4:  STR             R0, [SP,#0xA0+var_98]
3EC4A6:  MOVT            R1, #0x4099
3EC4AA:  B               loc_3EC4DC
3EC4AC:  LDR.W           R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x3EC4B4)
3EC4B0:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
3EC4B2:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL
3EC4B4:  LDRH            R1, [R1]; CEntity *
3EC4B6:  CMP             R0, R1
3EC4B8:  BNE             loc_3EC4F2
3EC4BA:  MOV             R0, R8; this
3EC4BC:  BLX             j__ZN14CTrafficLights18DisplayActualLightEP7CEntity; CTrafficLights::DisplayActualLight(CEntity *)
3EC4C0:  MOVW            R1, #0xCCCD
3EC4C4:  MOV.W           R2, #0x41800000
3EC4C8:  MOVT            R1, #0x3ECC
3EC4CC:  MOVS            R0, #0
3EC4CE:  STRD.W          R2, R1, [SP,#0xA0+var_A0]; float
3EC4D2:  MOVW            R1, #0x1893
3EC4D6:  STR             R0, [SP,#0xA0+var_98]; float
3EC4D8:  MOVT            R1, #0x40F0; CEntity *
3EC4DC:  MOV             R0, R8; this
3EC4DE:  MOVS            R2, #0; float
3EC4E0:  MOVS            R3, #0; float
3EC4E2:  BLX             j__ZN8CShadows18StoreShadowForPoleEP7CEntityfffffj; CShadows::StoreShadowForPole(CEntity *,float,float,float,float,float,uint)
3EC4E6:  ADD             SP, SP, #0x58 ; 'X'
3EC4E8:  VPOP            {D8-D13}
3EC4EC:  POP.W           {R8-R10}
3EC4F0:  POP             {R4-R7,PC}
3EC4F2:  LDR.W           R1, =(MI_TRAFFICLIGHTS_3_ptr - 0x3EC4FA)
3EC4F6:  ADD             R1, PC; MI_TRAFFICLIGHTS_3_ptr
3EC4F8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_3
3EC4FA:  LDRH            R1, [R1]
3EC4FC:  CMP             R0, R1
3EC4FE:  BEQ             loc_3EC472
3EC500:  LDR.W           R1, =(MI_TRAFFICLIGHTS_4_ptr - 0x3EC508)
3EC504:  ADD             R1, PC; MI_TRAFFICLIGHTS_4_ptr
3EC506:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_4
3EC508:  LDRH            R1, [R1]
3EC50A:  CMP             R0, R1
3EC50C:  BEQ             loc_3EC472
3EC50E:  LDR.W           R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x3EC516)
3EC512:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
3EC514:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
3EC516:  LDRH            R1, [R1]
3EC518:  CMP             R0, R1
3EC51A:  BEQ             loc_3EC472
3EC51C:  LDR.W           R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x3EC524)
3EC520:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
3EC522:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
3EC524:  LDRH            R1, [R1]
3EC526:  CMP             R0, R1
3EC528:  BEQ             loc_3EC472
3EC52A:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS1_ptr - 0x3EC532)
3EC52E:  ADD             R1, PC; MI_SINGLESTREETLIGHTS1_ptr
3EC530:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS1
3EC532:  LDRH            R1, [R1]
3EC534:  CMP             R0, R1
3EC536:  BNE.W           loc_3EC91C
3EC53A:  MOVW            R1, #0xCCCD
3EC53E:  MOV.W           R2, #0x41800000
3EC542:  MOVT            R1, #0x3ECC
3EC546:  MOVS            R0, #0
3EC548:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3EC54C:  MOV             R1, #0x3F3E76C9
3EC554:  STR             R0, [SP,#0xA0+var_98]
3EC556:  B               loc_3EC4DC
3EC558:  UXTH            R2, R1
3EC55A:  MOVW            R3, #0x159
3EC55E:  CMP             R2, R3
3EC560:  BNE.W           loc_3EC6C8
3EC564:  LDR.W           R0, [R8,#0x14]
3EC568:  ADD.W           R1, R0, #0x30 ; '0'
3EC56C:  CMP             R0, #0
3EC56E:  IT EQ
3EC570:  ADDEQ.W         R1, R8, #4
3EC574:  VLDR            D16, [R1]
3EC578:  LDR             R0, [R1,#8]
3EC57A:  STR             R0, [SP,#0xA0+var_50]
3EC57C:  VSTR            D16, [SP,#0xA0+var_58]
3EC580:  BLX             rand
3EC584:  AND.W           R0, R0, #0xF
3EC588:  VLDR            S2, =0.0625
3EC58C:  VLDR            S4, =160.0
3EC590:  MOVS            R4, #0
3EC592:  VMOV            S0, R0
3EC596:  LDR.W           R0, =(gpShadowExplosionTex_ptr - 0x3EC5AA)
3EC59A:  MOV.W           R9, #0xFF
3EC59E:  ADD.W           R10, SP, #0xA0+var_58
3EC5A2:  VCVT.F32.S32    S0, S0
3EC5A6:  ADD             R0, PC; gpShadowExplosionTex_ptr
3EC5A8:  MOV             R2, R10; int
3EC5AA:  MOV.W           R3, #0x41000000; int
3EC5AE:  LDR             R0, [R0]; gpShadowExplosionTex
3EC5B0:  MOV.W           R5, #0x41000000
3EC5B4:  LDR             R1, [R0]; int
3EC5B6:  MOV.W           R0, #0x3F800000
3EC5BA:  STRD.W          R4, R0, [SP,#0xA0+var_80]; int
3EC5BE:  MOVS            R0, #0
3EC5C0:  VMUL.F32        S16, S0, S2
3EC5C4:  VLDR            S0, =120.0
3EC5C8:  MOVT            R0, #0x41A0
3EC5CC:  STRD.W          R4, R4, [SP,#0xA0+var_78]; int
3EC5D0:  STR             R0, [SP,#0xA0+var_84]; float
3EC5D2:  MOV.W           R0, #0xC1000000
3EC5D6:  STR.W           R9, [SP,#0xA0+var_94]; float
3EC5DA:  STRD.W          R4, R0, [SP,#0xA0+var_9C]; int
3EC5DE:  VLDR            S2, =200.0
3EC5E2:  VMUL.F32        S4, S16, S4
3EC5E6:  VMUL.F32        S0, S16, S0
3EC5EA:  VMUL.F32        S2, S16, S2
3EC5EE:  VCVT.U32.F32    S4, S4
3EC5F2:  STR             R4, [SP,#0xA0+var_A0]; float
3EC5F4:  VCVT.U32.F32    S0, S0
3EC5F8:  VCVT.U32.F32    S2, S2
3EC5FC:  VMOV            R0, S0
3EC600:  STR             R0, [SP,#0xA0+var_88]; int
3EC602:  VMOV            R0, S4
3EC606:  STR             R0, [SP,#0xA0+var_8C]; int
3EC608:  VMOV            R0, S2
3EC60C:  STR             R0, [SP,#0xA0+var_90]; int
3EC60E:  MOVS            R0, #2; int
3EC610:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
3EC614:  VLDR            S0, =0.6
3EC618:  ADD             R3, SP, #0xA0+var_58
3EC61A:  VLDR            S2, =0.8
3EC61E:  MOVS            R6, #1
3EC620:  VMUL.F32        S0, S16, S0
3EC624:  LDM             R3, {R1-R3}
3EC626:  VMUL.F32        S2, S16, S2
3EC62A:  MOVS            R0, #0
3EC62C:  STRD.W          R4, R6, [SP,#0xA0+var_84]; int
3EC630:  STR             R4, [SP,#0xA0+var_7C]; int
3EC632:  VSTR            S16, [SP,#0xA0+var_90]
3EC636:  VSTR            S2, [SP,#0xA0+var_8C]
3EC63A:  VSTR            S0, [SP,#0xA0+var_88]
3EC63E:  STRD.W          R4, R4, [SP,#0xA0+var_A0]; int
3EC642:  STRD.W          R4, R5, [SP,#0xA0+var_98]; int
3EC646:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
3EC64A:  VLDR            S0, =255.0
3EC64E:  MOV.W           R2, #0x3FC00000
3EC652:  VLDR            S4, =220.0
3EC656:  VMOV.F32        S2, #6.0
3EC65A:  VMUL.F32        S0, S16, S0
3EC65E:  VLDR            S6, =190.0
3EC662:  VMUL.F32        S4, S16, S4
3EC666:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x3EC674)
3EC66A:  VMUL.F32        S6, S16, S6
3EC66E:  MOVS            R1, #0
3EC670:  ADD             R0, PC; gpCoronaTexture_ptr
3EC672:  MOVT            R1, #0x4170
3EC676:  LDR             R0, [R0]; gpCoronaTexture
3EC678:  VMUL.F32        S2, S16, S2
3EC67C:  VCVT.U32.F32    S0, S0
3EC680:  VCVT.U32.F32    S4, S4
3EC684:  LDR             R0, [R0]
3EC686:  VCVT.U32.F32    S6, S6
3EC68A:  STRD.W          R2, R4, [SP,#0xA0+var_70]; float
3EC68E:  STRD.W          R1, R4, [SP,#0xA0+var_68]; float
3EC692:  MOVS            R1, #0x43960000
3EC698:  STR             R4, [SP,#0xA0+var_60]; int
3EC69A:  STRD.W          R1, R0, [SP,#0xA0+var_90]; float
3EC69E:  MOVS            R1, #0; this
3EC6A0:  STRD.W          R4, R6, [SP,#0xA0+var_88]; int
3EC6A4:  VMOV            R2, S0; int
3EC6A8:  STRD.W          R4, R4, [SP,#0xA0+var_80]; int
3EC6AC:  VMOV            R3, S4; int
3EC6B0:  STRD.W          R4, R4, [SP,#0xA0+var_78]; float
3EC6B4:  VMOV            R0, S6
3EC6B8:  VSTR            S2, [SP,#0xA0+var_94]
3EC6BC:  STMEA.W         SP, {R0,R9,R10}
3EC6C0:  MOV             R0, R8; int
3EC6C2:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
3EC6C6:  B               loc_3EC424
3EC6C8:  LDR.W           R2, =(MI_FLARE_ptr - 0x3EC6D0)
3EC6CC:  ADD             R2, PC; MI_FLARE_ptr
3EC6CE:  LDR             R2, [R2]; MI_FLARE
3EC6D0:  LDRH            R2, [R2]
3EC6D2:  CMP             R1, R2
3EC6D4:  BNE.W           loc_3EC7F6
3EC6D8:  LDR.W           R0, [R8,#0x14]
3EC6DC:  LDR.W           R1, =(gpShadowExplosionTex_ptr - 0x3EC6F0)
3EC6E0:  ADD.W           R2, R0, #0x30 ; '0'
3EC6E4:  CMP             R0, #0
3EC6E6:  IT EQ
3EC6E8:  ADDEQ.W         R2, R8, #4
3EC6EC:  ADD             R1, PC; gpShadowExplosionTex_ptr
3EC6EE:  VLDR            D16, [R2]
3EC6F2:  LDR             R0, [R2,#8]
3EC6F4:  STR             R0, [SP,#0xA0+var_50]
3EC6F6:  LDR             R4, [R1]; gpShadowExplosionTex
3EC6F8:  VSTR            D16, [SP,#0xA0+var_58]
3EC6FC:  BLX             rand
3EC700:  AND.W           R0, R0, #0xF
3EC704:  VLDR            S6, =0.0625
3EC708:  VMOV.F32        S4, #0.5
3EC70C:  VLDR            S2, =200.0
3EC710:  VMOV            S0, R0
3EC714:  MOV.W           R0, #0x3F800000
3EC718:  MOV.W           R9, #0xFF
3EC71C:  ADD             R5, SP, #0xA0+var_58
3EC71E:  VCVT.F32.S32    S0, S0
3EC722:  LDR             R1, [R4]; int
3EC724:  MOVS            R4, #0
3EC726:  MOV             R2, R5; int
3EC728:  STRD.W          R4, R0, [SP,#0xA0+var_80]; int
3EC72C:  MOVS            R0, #0x41A00000
3EC732:  STRD.W          R4, R4, [SP,#0xA0+var_78]; int
3EC736:  STR             R0, [SP,#0xA0+var_84]; float
3EC738:  MOV.W           R0, #0xC1000000
3EC73C:  STR.W           R9, [SP,#0xA0+var_94]; float
3EC740:  MOV.W           R3, #0x41000000; int
3EC744:  STRD.W          R4, R0, [SP,#0xA0+var_9C]; int
3EC748:  VMUL.F32        S0, S0, S6
3EC74C:  VMAX.F32        D8, D0, D2
3EC750:  VMUL.F32        S0, S16, S2
3EC754:  VCVT.U32.F32    S0, S0
3EC758:  STR             R4, [SP,#0xA0+var_A0]; float
3EC75A:  VMOV            R0, S0
3EC75E:  STR             R0, [SP,#0xA0+var_88]; int
3EC760:  STRD.W          R0, R0, [SP,#0xA0+var_90]; int
3EC764:  MOVS            R0, #2; int
3EC766:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
3EC76A:  ADD             R3, SP, #0xA0+var_58
3EC76C:  MOVS            R6, #1
3EC76E:  MOV.W           R0, #0x42000000
3EC772:  LDM             R3, {R1-R3}
3EC774:  STRD.W          R4, R6, [SP,#0xA0+var_84]; int
3EC778:  STR             R4, [SP,#0xA0+var_7C]; int
3EC77A:  VSTR            S16, [SP,#0xA0+var_90]
3EC77E:  VSTR            S16, [SP,#0xA0+var_8C]
3EC782:  VSTR            S16, [SP,#0xA0+var_88]
3EC786:  STRD.W          R4, R4, [SP,#0xA0+var_A0]
3EC78A:  STRD.W          R4, R0, [SP,#0xA0+var_98]
3EC78E:  MOVS            R0, #0
3EC790:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
3EC794:  VLDR            S0, =255.0
3EC798:  MOV.W           R2, #0x3FC00000
3EC79C:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x3EC7AE)
3EC7A0:  VMOV.F32        S2, #6.0
3EC7A4:  VMUL.F32        S0, S16, S0
3EC7A8:  MOVS            R1, #0
3EC7AA:  ADD             R0, PC; gpCoronaTexture_ptr
3EC7AC:  MOVT            R1, #0x4170
3EC7B0:  LDR             R0, [R0]; gpCoronaTexture
3EC7B2:  LDR             R0, [R0]
3EC7B4:  VMUL.F32        S2, S16, S2
3EC7B8:  VCVT.U32.F32    S0, S0
3EC7BC:  STRD.W          R2, R4, [SP,#0xA0+var_70]; float
3EC7C0:  STRD.W          R1, R4, [SP,#0xA0+var_68]; float
3EC7C4:  MOVS            R1, #0x43960000
3EC7CA:  STR             R4, [SP,#0xA0+var_60]; int
3EC7CC:  STRD.W          R1, R0, [SP,#0xA0+var_90]; float
3EC7D0:  MOV             R0, R8; int
3EC7D2:  MOVS            R1, #0; this
3EC7D4:  STRD.W          R4, R6, [SP,#0xA0+var_88]; int
3EC7D8:  STRD.W          R4, R4, [SP,#0xA0+var_80]; int
3EC7DC:  STRD.W          R4, R4, [SP,#0xA0+var_78]; float
3EC7E0:  VMOV            R2, S0; int
3EC7E4:  VSTR            S2, [SP,#0xA0+var_94]
3EC7E8:  STRD.W          R2, R9, [SP,#0xA0+var_A0]; int
3EC7EC:  STR             R5, [SP,#0xA0+var_98]; int
3EC7EE:  MOV             R3, R2; int
3EC7F0:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
3EC7F4:  B               loc_3EC424
3EC7F6:  CMP             R0, #4
3EC7F8:  BNE             loc_3EC850
3EC7FA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC802)
3EC7FE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC800:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC802:  LDR.W           R0, [R0,R1,LSL#2]
3EC806:  LDR             R1, [R0]
3EC808:  LDR             R1, [R1,#8]
3EC80A:  BLX             R1
3EC80C:  CBZ             R0, loc_3EC850
3EC80E:  LDRH            R0, [R0,#0x28]
3EC810:  AND.W           R0, R0, #0x7000
3EC814:  ORR.W           R0, R0, #0x800
3EC818:  CMP.W           R0, #0x2800
3EC81C:  BNE             loc_3EC850
3EC81E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC82A)
3EC822:  LDRSH.W         R1, [R8,#0x26]; CEntity *
3EC826:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC828:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC82A:  LDR.W           R0, [R0,R1,LSL#2]
3EC82E:  LDRH            R0, [R0,#0x28]
3EC830:  AND.W           R0, R0, #0x7800
3EC834:  CMP.W           R0, #0x2800
3EC838:  BEQ.W           loc_3EC424
3EC83C:  MOV             R0, R8; this
3EC83E:  ADD.W           R4, R8, #0x1C
3EC842:  BLX             j__ZN6CGlass31AskForObjectToBeRenderedInGlassEP7CEntity; CGlass::AskForObjectToBeRenderedInGlass(CEntity *)
3EC846:  LDR             R0, [R4]
3EC848:  BIC.W           R0, R0, #0x80
3EC84C:  STR             R0, [R4]
3EC84E:  B               loc_3EC424
3EC850:  LDRB.W          R0, [R8,#0x144]
3EC854:  LSLS            R0, R0, #0x1F
3EC856:  BNE             loc_3EC948
3EC858:  LDRH.W          R0, [R8,#0x26]
3EC85C:  CMP.W           R0, #0x158
3EC860:  BEQ.W           loc_3EC9B2
3EC864:  CMP.W           R0, #0x156
3EC868:  BNE.W           loc_3ECAAE
3EC86C:  VLDR            S0, [R8,#0x48]
3EC870:  VLDR            S2, [R8,#0x4C]
3EC874:  VMUL.F32        S0, S0, S0
3EC878:  LDR.W           R1, [R8,#0x14]
3EC87C:  VMUL.F32        S2, S2, S2
3EC880:  ADD.W           R0, R1, #0x30 ; '0'
3EC884:  CMP             R1, #0
3EC886:  IT EQ
3EC888:  ADDEQ.W         R0, R8, #4
3EC88C:  VADD.F32        S0, S0, S2
3EC890:  VLDR            S2, =0.03
3EC894:  VSQRT.F32       S0, S0
3EC898:  VCMPE.F32       S0, S2
3EC89C:  VMRS            APSR_nzcv, FPSCR
3EC8A0:  BLE.W           loc_3EC424
3EC8A4:  LDR.W           R1, =(TheCamera_ptr - 0x3EC8B0)
3EC8A8:  VLDR            S0, =0.07
3EC8AC:  ADD             R1, PC; TheCamera_ptr
3EC8AE:  VLDR            S8, [R0,#4]
3EC8B2:  VLDR            S10, [R0,#8]
3EC8B6:  LDR             R1, [R1]; TheCamera
3EC8B8:  ADDW            R2, R1, #0x8FC
3EC8BC:  ADDW            R3, R1, #0x904
3EC8C0:  ADD.W           R1, R1, #0x900
3EC8C4:  VLDR            S2, [R3]
3EC8C8:  VLDR            S4, [R1]
3EC8CC:  MOVS            R1, #0x64 ; 'd'
3EC8CE:  VLDR            S6, [R2]
3EC8D2:  VMUL.F32        S2, S2, S0
3EC8D6:  VMUL.F32        S4, S4, S0
3EC8DA:  MOVS            R2, #0x64 ; 'd'
3EC8DC:  VMUL.F32        S0, S6, S0
3EC8E0:  VLDR            S6, [R0]
3EC8E4:  MOVS            R0, #0xFF
3EC8E6:  STR             R0, [SP,#0xA0+var_A0]
3EC8E8:  MOV             R0, R8
3EC8EA:  VADD.F32        S12, S2, S10
3EC8EE:  VADD.F32        S14, S4, S8
3EC8F2:  VADD.F32        S1, S0, S6
3EC8F6:  VSUB.F32        S0, S6, S0
3EC8FA:  VSUB.F32        S2, S10, S2
3EC8FE:  VSUB.F32        S4, S8, S4
3EC902:  VSTR            S0, [SP,#0xA0+var_9C]
3EC906:  VSTR            S4, [SP,#0xA0+var_98]
3EC90A:  VSTR            S2, [SP,#0xA0+var_94]
3EC90E:  VSTR            S1, [SP,#0xA0+var_90]
3EC912:  VSTR            S14, [SP,#0xA0+var_8C]
3EC916:  VSTR            S12, [SP,#0xA0+var_88]
3EC91A:  B               loc_3ECAA6
3EC91C:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x3EC924)
3EC920:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
3EC922:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2
3EC924:  LDRH            R1, [R1]
3EC926:  CMP             R0, R1
3EC928:  BNE             loc_3EC97C
3EC92A:  MOVW            R1, #0xCCCD
3EC92E:  MOV.W           R2, #0x41800000
3EC932:  MOVT            R1, #0x3ECC
3EC936:  MOVS            R0, #0
3EC938:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3EC93C:  MOVW            R1, #0x20C5
3EC940:  STR             R0, [SP,#0xA0+var_98]
3EC942:  MOVT            R1, #0x3D30
3EC946:  B               loc_3EC4DC
3EC948:  MOV             R0, R8; this
3EC94A:  BLX             j__ZN8CPickups15DoPickUpEffectsEP7CEntity; CPickups::DoPickUpEffects(CEntity *)
3EC94E:  B               loc_3EC3FA
3EC950:  DCFS 0.0625
3EC954:  DCFS 160.0
3EC958:  DCFS 120.0
3EC95C:  DCFS 200.0
3EC960:  DCFS 0.6
3EC964:  DCFS 0.8
3EC968:  DCFS 255.0
3EC96C:  DCFS 220.0
3EC970:  DCFS 190.0
3EC974:  DCFS 0.03
3EC978:  DCFS 0.07
3EC97C:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x3EC984)
3EC980:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
3EC982:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3
3EC984:  LDRH            R1, [R1]
3EC986:  CMP             R0, R1
3EC988:  BNE.W           loc_3ECB7A
3EC98C:  MOVW            R1, #0xCCCD
3EC990:  MOV.W           R2, #0x41800000
3EC994:  MOVT            R1, #0x3ECC
3EC998:  MOVS            R0, #0
3EC99A:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3EC99E:  MOVW            R1, #0x4DD3
3EC9A2:  MOVW            R2, #0x7AE1
3EC9A6:  STR             R0, [SP,#0xA0+var_98]
3EC9A8:  MOVT            R1, #0x3F92
3EC9AC:  MOVT            R2, #0x3E14
3EC9B0:  B               loc_3EC460
3EC9B2:  VLDR            S0, [R8,#0x48]
3EC9B6:  ADD.W           R4, R8, #4
3EC9BA:  VLDR            S2, [R8,#0x4C]
3EC9BE:  VMUL.F32        S0, S0, S0
3EC9C2:  LDR.W           R1, [R8,#0x14]
3EC9C6:  VMUL.F32        S2, S2, S2
3EC9CA:  MOV             R0, R4
3EC9CC:  CMP             R1, #0
3EC9CE:  IT NE
3EC9D0:  ADDNE.W         R0, R1, #0x30 ; '0'
3EC9D4:  VADD.F32        S0, S0, S2
3EC9D8:  VLDR            S2, =0.03
3EC9DC:  VSQRT.F32       S0, S0
3EC9E0:  VCMPE.F32       S0, S2
3EC9E4:  VMRS            APSR_nzcv, FPSCR
3EC9E8:  BLE.W           loc_3EC424
3EC9EC:  LDR             R1, =(TheCamera_ptr - 0x3EC9F6)
3EC9EE:  VLDR            S16, [R0]
3EC9F2:  ADD             R1, PC; TheCamera_ptr
3EC9F4:  VLDR            S18, [R0,#4]
3EC9F8:  VLDR            S20, [R0,#8]
3EC9FC:  VMOV            R0, S16; this
3ECA00:  LDR             R1, [R1]; TheCamera
3ECA02:  ADDW            R2, R1, #0x8FC
3ECA06:  ADDW            R3, R1, #0x904
3ECA0A:  ADD.W           R1, R1, #0x900
3ECA0E:  VLDR            S26, [R2]
3ECA12:  VMOV            R2, S20; float
3ECA16:  VLDR            S24, [R1]
3ECA1A:  VMOV            R1, S18; float
3ECA1E:  VLDR            S22, [R3]
3ECA22:  MOVS            R3, #0
3ECA24:  STRD.W          R3, R3, [SP,#0xA0+var_A0]; float *
3ECA28:  ADD             R3, SP, #0xA0+var_58; float
3ECA2A:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
3ECA2E:  CMP             R0, #1
3ECA30:  BNE             loc_3ECA52
3ECA32:  LDR.W           R0, [R8,#0x14]
3ECA36:  VLDR            S0, [SP,#0xA0+var_58]
3ECA3A:  CMP             R0, #0
3ECA3C:  IT NE
3ECA3E:  ADDNE.W         R4, R0, #0x30 ; '0'
3ECA42:  VLDR            S2, [R4,#8]
3ECA46:  VCMPE.F32       S2, S0
3ECA4A:  VMRS            APSR_nzcv, FPSCR
3ECA4E:  BLE.W           loc_3EC424
3ECA52:  VLDR            S0, =0.07
3ECA56:  MOVS            R4, #0xFF
3ECA58:  VMUL.F32        S2, S22, S0
3ECA5C:  VMUL.F32        S4, S24, S0
3ECA60:  VMUL.F32        S0, S26, S0
3ECA64:  VADD.F32        S6, S2, S20
3ECA68:  VADD.F32        S8, S4, S18
3ECA6C:  VADD.F32        S10, S0, S16
3ECA70:  VSUB.F32        S2, S20, S2
3ECA74:  VSUB.F32        S4, S18, S4
3ECA78:  VSUB.F32        S0, S16, S0
3ECA7C:  VMOV            R0, S6
3ECA80:  VMOV            R1, S8
3ECA84:  VMOV            R2, S10
3ECA88:  VMOV            R3, S2
3ECA8C:  VMOV            R6, S4
3ECA90:  VMOV            R5, S0
3ECA94:  STMEA.W         SP, {R4-R6}
3ECA98:  STRD.W          R3, R2, [SP,#0xA0+var_94]
3ECA9C:  MOVS            R2, #0xA0
3ECA9E:  STRD.W          R1, R0, [SP,#0xA0+var_8C]
3ECAA2:  MOV             R0, R8
3ECAA4:  MOVS            R1, #0xFF
3ECAA6:  MOVS            R3, #0x64 ; 'd'
3ECAA8:  BLX             j__ZN18CMotionBlurStreaks14RegisterStreakEjhhhh7CVectorS0_; CMotionBlurStreaks::RegisterStreak(uint,uchar,uchar,uchar,uchar,CVector,CVector)
3ECAAC:  B               loc_3EC424
3ECAAE:  LDR             R1, =(MI_BEACHBALL_ptr - 0x3ECAB6)
3ECAB0:  SXTH            R0, R0
3ECAB2:  ADD             R1, PC; MI_BEACHBALL_ptr
3ECAB4:  LDR             R1, [R1]; MI_BEACHBALL
3ECAB6:  LDRH            R1, [R1]
3ECAB8:  CMP             R0, R1
3ECABA:  BNE             loc_3ECBAA
3ECABC:  LDR             R0, =(TheCamera_ptr - 0x3ECAC6)
3ECABE:  LDR.W           R1, [R8,#0x14]
3ECAC2:  ADD             R0, PC; TheCamera_ptr
3ECAC4:  CMP             R1, #0
3ECAC6:  LDR             R2, [R0]; TheCamera
3ECAC8:  ADD.W           R0, R1, #0x30 ; '0'
3ECACC:  LDR             R3, [R2,#(dword_951FBC - 0x951FA8)]
3ECACE:  IT EQ
3ECAD0:  ADDEQ.W         R0, R8, #4
3ECAD4:  VLDR            S0, [R0]
3ECAD8:  ADD.W           R1, R3, #0x30 ; '0'
3ECADC:  CMP             R3, #0
3ECADE:  IT EQ
3ECAE0:  ADDEQ           R1, R2, #4
3ECAE2:  VLDR            D16, [R0,#4]
3ECAE6:  VLDR            S2, [R1]
3ECAEA:  VLDR            D17, [R1,#4]
3ECAEE:  VSUB.F32        S0, S2, S0
3ECAF2:  VSUB.F32        D16, D17, D16
3ECAF6:  VMUL.F32        D1, D16, D16
3ECAFA:  VMUL.F32        S0, S0, S0
3ECAFE:  VADD.F32        S0, S0, S2
3ECB02:  VADD.F32        S0, S0, S3
3ECB06:  VLDR            S2, =50.0
3ECB0A:  VSQRT.F32       S0, S0
3ECB0E:  VCMPE.F32       S0, S2
3ECB12:  VMRS            APSR_nzcv, FPSCR
3ECB16:  BGE.W           loc_3EC424
3ECB1A:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x3ECB2A)
3ECB1C:  MOVW            R6, #0xCCCD
3ECB20:  LDR             R2, =(gpShadowPedTex_ptr - 0x3ECB30)
3ECB22:  MOVT            R6, #0xBECC
3ECB26:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
3ECB28:  VLDR            D16, [R0]
3ECB2C:  ADD             R2, PC; gpShadowPedTex_ptr
3ECB2E:  LDR             R0, [R0,#8]
3ECB30:  LDR             R3, [R1]; CTimeCycle::m_CurrentColours ...
3ECB32:  LDR             R1, [R2]; gpShadowPedTex
3ECB34:  STR             R0, [SP,#0xA0+var_50]
3ECB36:  MOVS            R0, #0
3ECB38:  LDRH.W          R2, [R3,#(dword_966594 - 0x96654C)]
3ECB3C:  MOV.W           R3, #0x3F800000
3ECB40:  LDR             R1, [R1]; int
3ECB42:  VSTR            D16, [SP,#0xA0+var_58]
3ECB46:  STRD.W          R0, R3, [SP,#0xA0+var_80]; int
3ECB4A:  MOVS            R3, #0
3ECB4C:  UXTB            R5, R2
3ECB4E:  MOVT            R3, #0x41A0
3ECB52:  SXTH            R2, R2
3ECB54:  STRD.W          R0, R0, [SP,#0xA0+var_78]; int
3ECB58:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; float
3ECB5C:  MOVS            R0, #1; int
3ECB5E:  STRD.W          R6, R2, [SP,#0xA0+var_98]; float
3ECB62:  ADD             R2, SP, #0xA0+var_58; int
3ECB64:  STRD.W          R5, R5, [SP,#0xA0+var_90]; int
3ECB68:  STRD.W          R5, R3, [SP,#0xA0+var_88]; int
3ECB6C:  MOV             R3, #0x3ECCCCCD; int
3ECB74:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
3ECB78:  B               loc_3EC424
3ECB7A:  LDR             R1, =(MI_DOUBLESTREETLIGHTS_ptr - 0x3ECB80)
3ECB7C:  ADD             R1, PC; MI_DOUBLESTREETLIGHTS_ptr
3ECB7E:  LDR             R1, [R1]; MI_DOUBLESTREETLIGHTS
3ECB80:  LDRH            R1, [R1]
3ECB82:  CMP             R0, R1
3ECB84:  BNE.W           loc_3ECC92
3ECB88:  MOVW            R1, #0xCCCD
3ECB8C:  MOV.W           R2, #0x41800000
3ECB90:  MOVT            R1, #0x3ECC
3ECB94:  MOVS            R0, #0
3ECB96:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3ECB9A:  MOVW            R2, #0x9BA6
3ECB9E:  STR             R0, [SP,#0xA0+var_98]
3ECBA0:  MOVT            R2, #0xBD44
3ECBA4:  MOV             R0, R8
3ECBA6:  MOVS            R1, #0
3ECBA8:  B               loc_3EC4E0
3ECBAA:  LDR             R1, =(MI_MAGNOCRANE_HOOK_ptr - 0x3ECBB0)
3ECBAC:  ADD             R1, PC; MI_MAGNOCRANE_HOOK_ptr
3ECBAE:  LDR             R1, [R1]; MI_MAGNOCRANE_HOOK
3ECBB0:  LDRH            R1, [R1]
3ECBB2:  CMP             R0, R1
3ECBB4:  BEQ             loc_3ECBE6
3ECBB6:  LDR             R1, =(MI_WRECKING_BALL_ptr - 0x3ECBBC)
3ECBB8:  ADD             R1, PC; MI_WRECKING_BALL_ptr
3ECBBA:  LDR             R1, [R1]; MI_WRECKING_BALL
3ECBBC:  LDRH            R1, [R1]
3ECBBE:  CMP             R0, R1
3ECBC0:  BEQ             loc_3ECBE6
3ECBC2:  LDR             R1, =(MI_CRANE_MAGNET_ptr - 0x3ECBC8)
3ECBC4:  ADD             R1, PC; MI_CRANE_MAGNET_ptr
3ECBC6:  LDR             R1, [R1]; MI_CRANE_MAGNET
3ECBC8:  LDRH            R1, [R1]
3ECBCA:  CMP             R0, R1
3ECBCC:  BEQ             loc_3ECBE6
3ECBCE:  LDR             R1, =(MI_MINI_MAGNET_ptr - 0x3ECBD4)
3ECBD0:  ADD             R1, PC; MI_MINI_MAGNET_ptr
3ECBD2:  LDR             R1, [R1]; MI_MINI_MAGNET
3ECBD4:  LDRH            R1, [R1]
3ECBD6:  CMP             R0, R1
3ECBD8:  BEQ             loc_3ECBE6
3ECBDA:  LDR             R1, =(MI_CRANE_HARNESS_ptr - 0x3ECBE0)
3ECBDC:  ADD             R1, PC; MI_CRANE_HARNESS_ptr
3ECBDE:  LDR             R1, [R1]; MI_CRANE_HARNESS
3ECBE0:  LDRH            R1, [R1]
3ECBE2:  CMP             R0, R1
3ECBE4:  BNE             loc_3ECCCC
3ECBE6:  LDR             R0, =(TheCamera_ptr - 0x3ECBF0)
3ECBE8:  LDR.W           R1, [R8,#0x14]
3ECBEC:  ADD             R0, PC; TheCamera_ptr
3ECBEE:  CMP             R1, #0
3ECBF0:  LDR             R2, [R0]; TheCamera
3ECBF2:  ADD.W           R0, R1, #0x30 ; '0'
3ECBF6:  LDR             R3, [R2,#(dword_951FBC - 0x951FA8)]
3ECBF8:  IT EQ
3ECBFA:  ADDEQ.W         R0, R8, #4
3ECBFE:  VLDR            S0, [R0]
3ECC02:  ADD.W           R1, R3, #0x30 ; '0'
3ECC06:  CMP             R3, #0
3ECC08:  IT EQ
3ECC0A:  ADDEQ           R1, R2, #4
3ECC0C:  VLDR            D16, [R0,#4]
3ECC10:  VLDR            S2, [R1]
3ECC14:  VLDR            D17, [R1,#4]
3ECC18:  VSUB.F32        S0, S2, S0
3ECC1C:  VSUB.F32        D16, D17, D16
3ECC20:  VMUL.F32        D1, D16, D16
3ECC24:  VMUL.F32        S0, S0, S0
3ECC28:  VADD.F32        S0, S0, S2
3ECC2C:  VADD.F32        S0, S0, S3
3ECC30:  VLDR            S2, =110.0
3ECC34:  VSQRT.F32       S0, S0
3ECC38:  VCMPE.F32       S0, S2
3ECC3C:  VMRS            APSR_nzcv, FPSCR
3ECC40:  BGE.W           loc_3EC424
3ECC44:  LDR             R1, =(gpShadowPedTex_ptr - 0x3ECC54)
3ECC46:  MOV.W           R2, #0x3F800000
3ECC4A:  VLDR            D16, [R0]
3ECC4E:  MOVS            R3, #0x80
3ECC50:  ADD             R1, PC; gpShadowPedTex_ptr
3ECC52:  LDR             R0, [R0,#8]
3ECC54:  STR             R0, [SP,#0xA0+var_50]
3ECC56:  MOVS            R0, #0
3ECC58:  LDR             R1, [R1]; gpShadowPedTex
3ECC5A:  MOV.W           R6, #0xC0000000
3ECC5E:  VSTR            D16, [SP,#0xA0+var_58]
3ECC62:  LDR             R1, [R1]; int
3ECC64:  STRD.W          R0, R2, [SP,#0xA0+var_80]; int
3ECC68:  MOVS            R2, #0x42480000
3ECC6E:  STRD.W          R0, R0, [SP,#0xA0+var_78]; int
3ECC72:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; float
3ECC76:  MOVS            R0, #1; int
3ECC78:  STRD.W          R6, R3, [SP,#0xA0+var_98]; float
3ECC7C:  STRD.W          R3, R3, [SP,#0xA0+var_90]; int
3ECC80:  STRD.W          R3, R2, [SP,#0xA0+var_88]; int
3ECC84:  ADD             R2, SP, #0xA0+var_58; int
3ECC86:  MOV.W           R3, #0x40000000; int
3ECC8A:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
3ECC8E:  B.W             loc_3EC424
3ECC92:  LDR             R1, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x3ECC98)
3ECC94:  ADD             R1, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
3ECC96:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VEGAS
3ECC98:  LDRH            R1, [R1]; CEntity *
3ECC9A:  CMP             R0, R1
3ECC9C:  BNE.W           loc_3EC4E6
3ECCA0:  MOV             R0, R8; this
3ECCA2:  BLX             j__ZN14CTrafficLights18DisplayActualLightEP7CEntity; CTrafficLights::DisplayActualLight(CEntity *)
3ECCA6:  MOVW            R1, #0xCCCD
3ECCAA:  MOV.W           R2, #0x41800000
3ECCAE:  MOVT            R1, #0x3ECC
3ECCB2:  MOVS            R0, #0
3ECCB4:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
3ECCB8:  MOVS            R1, #0
3ECCBA:  MOVW            R2, #0xCCCD
3ECCBE:  MOVT            R1, #0x40F0
3ECCC2:  MOVT            R2, #0x3E4C
3ECCC6:  STR             R0, [SP,#0xA0+var_98]
3ECCC8:  B.W             loc_3EC460
3ECCCC:  LDR             R1, =(MI_WINDSOCK_ptr - 0x3ECCD2)
3ECCCE:  ADD             R1, PC; MI_WINDSOCK_ptr
3ECCD0:  LDR             R1, [R1]; MI_WINDSOCK
3ECCD2:  LDRH            R1, [R1]
3ECCD4:  CMP             R0, R1
3ECCD6:  ITT EQ
3ECCD8:  MOVEQ           R0, R8; this
3ECCDA:  BLXEQ           j__ZN7CEntity19BuildWindSockMatrixEv; CEntity::BuildWindSockMatrix(void)
3ECCDE:  B.W             loc_3EC424
