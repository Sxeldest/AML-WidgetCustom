; =========================================================
; Game Engine Function: _ZN7CEntity13CreateEffectsEv
; Address            : 0x3EB250 - 0x3EB73A
; =========================================================

3EB250:  PUSH            {R4-R7,LR}
3EB252:  ADD             R7, SP, #0xC
3EB254:  PUSH.W          {R8-R11}
3EB258:  SUB             SP, SP, #4
3EB25A:  VPUSH           {D8-D15}
3EB25E:  SUB             SP, SP, #0xE0; float
3EB260:  MOV             R5, R0
3EB262:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EB270)
3EB266:  MOV             R3, R5
3EB268:  LDR.W           R1, [R3,#0x1C]!
3EB26C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EB26E:  LDRSH.W         R2, [R3,#0xA]
3EB272:  BIC.W           R1, R1, #0x1000000
3EB276:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EB278:  STR             R3, [SP,#0x140+var_D8]
3EB27A:  STR             R1, [R3]
3EB27C:  LDR.W           R4, [R0,R2,LSL#2]
3EB280:  LDRB.W          R6, [R4,#0x23]
3EB284:  CMP             R6, #0
3EB286:  BEQ.W           loc_3EB72C
3EB28A:  ADDS            R0, R5, #4
3EB28C:  STR             R0, [SP,#0x140+var_D4]
3EB28E:  LDR.W           R0, =(g_fx_ptr - 0x3EB2A2)
3EB292:  ADD.W           R9, SP, #0x140+var_70
3EB296:  VLDR            S16, =180.0
3EB29A:  ADD.W           R8, SP, #0x140+var_C0
3EB29E:  ADD             R0, PC; g_fx_ptr
3EB2A0:  VLDR            S18, =3.1416
3EB2A4:  MOV.W           R11, #0
3EB2A8:  STR             R5, [SP,#0x140+var_DC]
3EB2AA:  LDR             R0, [R0]; g_fx
3EB2AC:  STR             R0, [SP,#0x140+var_F4]
3EB2AE:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x3EB2B6)
3EB2B2:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
3EB2B4:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
3EB2B6:  STR             R0, [SP,#0x140+var_FC]
3EB2B8:  LDR.W           R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3EB2C0)
3EB2BC:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3EB2BE:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3EB2C0:  STR             R0, [SP,#0x140+var_F8]
3EB2C2:  LDR.W           R0, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3EB2CA)
3EB2C6:  ADD             R0, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3EB2C8:  LDR             R0, [R0]; CClock::ms_nGameClockDays ...
3EB2CA:  STR             R0, [SP,#0x140+var_100]
3EB2CC:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3EB2D4)
3EB2D0:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3EB2D2:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
3EB2D4:  STR             R0, [SP,#0x140+var_104]
3EB2D6:  STR             R0, [SP,#0x140+var_F0]
3EB2D8:  STR             R0, [SP,#0x140+var_E8]
3EB2DA:  STR             R0, [SP,#0x140+var_EC]
3EB2DC:  STRD.W          R6, R4, [SP,#0x140+var_E4]
3EB2E0:  MOV             R0, R4; this
3EB2E2:  MOV             R1, R11; int
3EB2E4:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
3EB2E8:  MOV             R10, R0
3EB2EA:  LDRB.W          R0, [R10,#0xC]
3EB2EE:  CMP             R0, #0xA; switch 11 cases
3EB2F0:  BHI.W           def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB2F4:  TBH.W           [PC,R0,LSL#1]; switch jump
3EB2F8:  DCW 0xB; jump table for switch statement
3EB2FA:  DCW 0x11
3EB2FC:  DCW 0x215
3EB2FE:  DCW 0x20
3EB300:  DCW 0x215
3EB302:  DCW 0x215
3EB304:  DCW 0x2B
3EB306:  DCW 0x59
3EB308:  DCW 0x215
3EB30A:  DCW 0x215
3EB30C:  DCW 0xCC
3EB30E:  LDR             R1, [SP,#0x140+var_D8]; jumptable 003EB2F4 case 0
3EB310:  LDR             R0, [R1]
3EB312:  ORR.W           R0, R0, #0x200000
3EB316:  STR             R0, [R1]
3EB318:  B               def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB31A:  LDR             R0, [R5,#0x18]; jumptable 003EB2F4 case 1
3EB31C:  ADD.W           R2, R10, #0x10; this
3EB320:  MOV             R1, R5; int
3EB322:  MOV             R3, R10; int
3EB324:  CMP             R0, #0
3EB326:  ITTE NE
3EB328:  LDRNE           R0, [R0,#4]
3EB32A:  ADDNE           R0, #0x10
3EB32C:  MOVEQ           R0, #0
3EB32E:  STR             R0, [SP,#0x140+var_140]; int
3EB330:  LDR             R0, [SP,#0x140+var_F4]; int
3EB332:  BLX             j__ZN4Fx_c14CreateEntityFxEP7CEntityPcP5RwV3dP11RwMatrixTag; Fx_c::CreateEntityFx(CEntity *,char *,RwV3d *,RwMatrixTag *)
3EB336:  B               def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB338:  LDRB.W          R0, [R10,#0x34]; jumptable 003EB2F4 case 3
3EB33C:  CMP             R0, #5
3EB33E:  BNE.W           def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB342:  LDR             R0, [SP,#0x140+var_FC]; this
3EB344:  ADD.W           R1, R10, #0x38 ; '8'; char *
3EB348:  BLX             j__ZN17CScriptsForBrains39RequestAttractorScriptBrainWithThisNameEPKc; CScriptsForBrains::RequestAttractorScriptBrainWithThisName(char const*)
3EB34C:  B               def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB34E:  VLDR            S0, [R10]; jumptable 003EB2F4 case 6
3EB352:  VLDR            S6, [R10,#0x1C]
3EB356:  VLDR            S2, [R10,#4]
3EB35A:  VLDR            S8, [R10,#0x20]
3EB35E:  VADD.F32        S0, S6, S0
3EB362:  VLDR            S4, [R10,#8]
3EB366:  VLDR            S10, [R10,#0x24]
3EB36A:  VADD.F32        S2, S8, S2
3EB36E:  VADD.F32        S4, S10, S4
3EB372:  VSTR            S2, [SP,#0x140+var_A0+4]
3EB376:  VSTR            S0, [SP,#0x140+var_A0]
3EB37A:  VSTR            S4, [SP,#0x140+var_98]
3EB37E:  LDR             R1, [R5,#0x14]
3EB380:  CMP             R1, #0
3EB382:  BEQ.W           loc_3EB4B8
3EB386:  VLDR            D16, [R10]
3EB38A:  ADD             R2, SP, #0x140+var_80
3EB38C:  LDR.W           R0, [R10,#8]
3EB390:  STR             R0, [SP,#0x140+var_78]
3EB392:  MOV             R0, R9
3EB394:  VSTR            D16, [SP,#0x140+var_80]
3EB398:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB39C:  VLDR            D16, [SP,#0x140+var_70]
3EB3A0:  LDR             R0, [SP,#0x140+var_68]
3EB3A2:  STR             R0, [SP,#0x140+var_88]
3EB3A4:  VSTR            D16, [SP,#0x140+var_90]
3EB3A8:  B               loc_3EB4C2
3EB3AA:  LDR             R1, [SP,#0x140+var_D8]; jumptable 003EB2F4 case 7
3EB3AC:  LDR             R0, [R1]
3EB3AE:  ORR.W           R0, R0, #0x1000000
3EB3B2:  STR             R0, [R1]
3EB3B4:  LDR             R2, [SP,#0x140+var_F0]
3EB3B6:  MOVW            R1, #0xFFFF
3EB3BA:  LDRH.W          R0, [R10,#0x24]
3EB3BE:  BIC.W           R1, R2, R1
3EB3C2:  LDRD.W          R5, R8, [R10,#0x10]
3EB3C6:  ORRS            R0, R1
3EB3C8:  LDR.W           R6, [R10,#0x28]
3EB3CC:  STR             R0, [SP,#0x140+var_F0]
3EB3CE:  BLX             j__ZN9C2dEffect29Roadsign_GetNumLinesFromFlagsE18CRoadsignAttrFlags; C2dEffect::Roadsign_GetNumLinesFromFlags(CRoadsignAttrFlags)
3EB3D2:  MOV             R4, R0
3EB3D4:  LDR             R0, [SP,#0x140+var_E8]
3EB3D6:  LDRH.W          R1, [R10,#0x24]
3EB3DA:  BFC.W           R0, #0, #0x10
3EB3DE:  ORRS            R0, R1
3EB3E0:  STR             R0, [SP,#0x140+var_E8]
3EB3E2:  BLX             j__ZN9C2dEffect31Roadsign_GetNumLettersFromFlagsE18CRoadsignAttrFlags; C2dEffect::Roadsign_GetNumLettersFromFlags(CRoadsignAttrFlags)
3EB3E6:  MOV             R9, R0
3EB3E8:  LDR             R0, [SP,#0x140+var_EC]
3EB3EA:  LDRH.W          R1, [R10,#0x24]
3EB3EE:  BFC.W           R0, #0, #0x10
3EB3F2:  ORRS            R0, R1
3EB3F4:  STR             R0, [SP,#0x140+var_EC]
3EB3F6:  BLX             j__ZN9C2dEffect30Roadsign_GetPaletteIDFromFlagsE18CRoadsignAttrFlags; C2dEffect::Roadsign_GetPaletteIDFromFlags(CRoadsignAttrFlags)
3EB3FA:  ADD.W           R2, R6, #0x20 ; ' '
3EB3FE:  ADD.W           R3, R6, #0x10
3EB402:  UXTB            R0, R0
3EB404:  ADD.W           R1, R6, #0x30 ; '0'
3EB408:  STRD.W          R3, R2, [SP,#0x140+var_140]; char *
3EB40C:  MOV             R2, R4; float
3EB40E:  STRD.W          R1, R9, [SP,#0x140+var_138]; char *
3EB412:  MOV             R1, R8; float
3EB414:  STR             R0, [SP,#0x140+var_130]; int
3EB416:  MOV             R0, R5; this
3EB418:  MOV             R3, R6; int
3EB41A:  ADD.W           R9, SP, #0x140+var_70
3EB41E:  LDR             R5, [SP,#0x140+var_DC]
3EB420:  LDR             R4, [SP,#0x140+var_E0]
3EB422:  BLX             j__ZN18CCustomRoadsignMgr20CreateRoadsignAtomicEffiPcS0_S0_S0_ih; CCustomRoadsignMgr::CreateRoadsignAtomic(float,float,int,char *,char *,char *,char *,int,uchar)
3EB426:  MOV             R6, R0
3EB428:  LDR.W           R8, [R6,#4]
3EB42C:  MOV             R0, R8
3EB42E:  BLX             j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
3EB432:  LDR             R1, =(unk_6170D8 - 0x3EB440)
3EB434:  MOV             R0, R8
3EB436:  LDR.W           R2, [R10,#0x20]
3EB43A:  MOVS            R3, #0
3EB43C:  ADD             R1, PC; unk_6170D8
3EB43E:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
3EB442:  LDR             R1, =(unk_6170C0 - 0x3EB450)
3EB444:  MOV             R0, R8
3EB446:  LDR.W           R2, [R10,#0x18]
3EB44A:  MOVS            R3, #2
3EB44C:  ADD             R1, PC; unk_6170C0
3EB44E:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
3EB452:  LDR             R1, =(unk_6170CC - 0x3EB460)
3EB454:  MOV             R0, R8
3EB456:  LDR.W           R2, [R10,#0x1C]
3EB45A:  MOVS            R3, #2
3EB45C:  ADD             R1, PC; unk_6170CC
3EB45E:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
3EB462:  LDR.W           R0, [R10]
3EB466:  MOV             R1, R9
3EB468:  STR             R0, [SP,#0x140+var_70]
3EB46A:  MOVS            R2, #2
3EB46C:  LDR.W           R0, [R10,#4]
3EB470:  STR             R0, [SP,#0x140+var_70+4]
3EB472:  LDR.W           R0, [R10,#8]
3EB476:  STR             R0, [SP,#0x140+var_68]
3EB478:  MOV             R0, R8
3EB47A:  BLX             j__Z16RwFrameTranslateP7RwFramePK5RwV3d15RwOpCombineType; RwFrameTranslate(RwFrame *,RwV3d const*,RwOpCombineType)
3EB47E:  MOV             R0, R8
3EB480:  ADD.W           R8, SP, #0x140+var_C0
3EB484:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
3EB488:  STR.W           R6, [R10,#0x2C]
3EB48C:  LDR             R6, [SP,#0x140+var_E4]
3EB48E:  B               def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB490:  LDR             R1, [R5,#0x14]; jumptable 003EB2F4 case 10
3EB492:  CBZ             R1, loc_3EB4E8
3EB494:  VLDR            D16, [R10]
3EB498:  ADD             R2, SP, #0x140+var_80
3EB49A:  LDR.W           R0, [R10,#8]
3EB49E:  STR             R0, [SP,#0x140+var_78]
3EB4A0:  MOV             R0, R9
3EB4A2:  VSTR            D16, [SP,#0x140+var_80]
3EB4A6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB4AA:  VLDR            D16, [SP,#0x140+var_70]
3EB4AE:  LDR             R0, [SP,#0x140+var_68]
3EB4B0:  STR             R0, [SP,#0x140+var_88]
3EB4B2:  VSTR            D16, [SP,#0x140+var_90]
3EB4B6:  B               loc_3EB4F2
3EB4B8:  LDR             R1, [SP,#0x140+var_D4]
3EB4BA:  ADD             R0, SP, #0x140+var_90
3EB4BC:  MOV             R2, R10
3EB4BE:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB4C2:  LDR             R1, [R5,#0x14]
3EB4C4:  CBZ             R1, loc_3EB524
3EB4C6:  LDR             R0, [SP,#0x140+var_98]
3EB4C8:  ADD             R2, SP, #0x140+var_80
3EB4CA:  VLDR            D16, [SP,#0x140+var_A0]
3EB4CE:  STR             R0, [SP,#0x140+var_78]
3EB4D0:  MOV             R0, R9
3EB4D2:  VSTR            D16, [SP,#0x140+var_80]
3EB4D6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB4DA:  VLDR            D16, [SP,#0x140+var_70]
3EB4DE:  LDR             R0, [SP,#0x140+var_68]
3EB4E0:  STR             R0, [SP,#0x140+var_A8]
3EB4E2:  VSTR            D16, [SP,#0x140+var_B0]
3EB4E6:  B               loc_3EB52E
3EB4E8:  LDR             R1, [SP,#0x140+var_D4]
3EB4EA:  ADD             R0, SP, #0x140+var_90
3EB4EC:  MOV             R2, R10
3EB4EE:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB4F2:  ADD.W           R2, R10, #0x10
3EB4F6:  ADD             R3, SP, #0x140+var_B0
3EB4F8:  LDM             R2, {R0-R2}
3EB4FA:  STM             R3!, {R0-R2}
3EB4FC:  LDR             R1, [R5,#0x14]
3EB4FE:  CMP             R1, #0
3EB500:  BEQ             loc_3EB58C
3EB502:  LDR             R0, [SP,#0x140+var_A8]
3EB504:  ADD             R2, SP, #0x140+var_80
3EB506:  VLDR            D16, [SP,#0x140+var_B0]
3EB50A:  STR             R0, [SP,#0x140+var_78]
3EB50C:  MOV             R0, R9
3EB50E:  VSTR            D16, [SP,#0x140+var_80]
3EB512:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB516:  VLDR            D16, [SP,#0x140+var_70]
3EB51A:  LDR             R0, [SP,#0x140+var_68]
3EB51C:  STR             R0, [SP,#0x140+var_98]
3EB51E:  VSTR            D16, [SP,#0x140+var_A0]
3EB522:  B               loc_3EB596
3EB524:  LDR             R1, [SP,#0x140+var_D4]
3EB526:  ADD             R0, SP, #0x140+var_B0
3EB528:  ADD             R2, SP, #0x140+var_A0
3EB52A:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB52E:  VLDR            D16, [SP,#0x140+var_B0]
3EB532:  LDR             R0, [SP,#0x140+var_A8]
3EB534:  STR             R0, [SP,#0x140+var_98]
3EB536:  VSTR            D16, [SP,#0x140+var_A0]
3EB53A:  LDRB.W          R0, [R10,#0x3A]
3EB53E:  LSLS            R0, R0, #0x1D
3EB540:  BPL             loc_3EB564
3EB542:  LDR             R0, [SP,#0x140+var_100]
3EB544:  LDRB.W          R2, [R10,#0x38]
3EB548:  LDRB.W          R1, [R10,#0x39]
3EB54C:  LDRB            R0, [R0]
3EB54E:  CMP             R2, R1
3EB550:  BLS             loc_3EB55C
3EB552:  LDR             R2, [SP,#0x140+var_104]
3EB554:  LDRB            R2, [R2]
3EB556:  CMP             R2, R1
3EB558:  IT CC
3EB55A:  SUBCC           R0, #1
3EB55C:  SUBS            R0, #1
3EB55E:  ANDS            R0, R5; seed
3EB560:  BLX             srand
3EB564:  LDR             R4, [R5,#0x14]
3EB566:  VLDR            S20, [SP,#0x140+var_90]
3EB56A:  VLDR            S22, [SP,#0x140+var_90+4]
3EB56E:  CMP             R4, #0
3EB570:  VLDR            S24, [SP,#0x140+var_88]
3EB574:  VLDR            S26, [R10,#0x10]
3EB578:  BEQ             loc_3EB5C6
3EB57A:  LDRD.W          R0, R1, [R4,#0x10]; x
3EB57E:  EOR.W           R0, R0, #0x80000000; y
3EB582:  BLX             atan2f
3EB586:  VMOV            S0, R0
3EB58A:  B               loc_3EB5CA
3EB58C:  LDR             R1, [SP,#0x140+var_D4]
3EB58E:  ADD             R0, SP, #0x140+var_A0
3EB590:  ADD             R2, SP, #0x140+var_B0
3EB592:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB596:  ADD.W           R2, R10, #0x1C
3EB59A:  ADD             R3, SP, #0x140+var_C0
3EB59C:  LDM             R2, {R0-R2}
3EB59E:  STM             R3!, {R0-R2}
3EB5A0:  LDR             R1, [R5,#0x14]
3EB5A2:  CBZ             R1, loc_3EB60C
3EB5A4:  LDR             R0, [SP,#0x140+var_B8]
3EB5A6:  ADD             R2, SP, #0x140+var_80
3EB5A8:  VLDR            D16, [SP,#0x140+var_C0]
3EB5AC:  STR             R0, [SP,#0x140+var_78]
3EB5AE:  MOV             R0, R9
3EB5B0:  VSTR            D16, [SP,#0x140+var_80]
3EB5B4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB5B8:  VLDR            D16, [SP,#0x140+var_70]
3EB5BC:  LDR             R0, [SP,#0x140+var_68]
3EB5BE:  STR             R0, [SP,#0x140+var_A8]
3EB5C0:  VSTR            D16, [SP,#0x140+var_B0]
3EB5C4:  B               loc_3EB616
3EB5C6:  VLDR            S0, [R5,#0x10]
3EB5CA:  VMUL.F32        S0, S0, S16
3EB5CE:  VLDR            S17, [SP,#0x140+var_A0+4]
3EB5D2:  VLDR            S19, [SP,#0x140+var_98]
3EB5D6:  CMP             R4, #0
3EB5D8:  VLDR            S28, [R10,#0x14]
3EB5DC:  VLDR            S30, [R10,#0x18]
3EB5E0:  VLDR            S23, [R10,#0x28]
3EB5E4:  VDIV.F32        S0, S0, S18
3EB5E8:  VADD.F32        S21, S26, S0
3EB5EC:  VLDR            S26, [SP,#0x140+var_A0]
3EB5F0:  BEQ             loc_3EB648
3EB5F2:  LDRD.W          R0, R1, [R4,#0x10]; x
3EB5F6:  EOR.W           R0, R0, #0x80000000; y
3EB5FA:  BLX             atan2f
3EB5FE:  VMOV            S0, R0
3EB602:  B               loc_3EB64C
3EB604:  DCFS 180.0
3EB608:  DCFS 3.1416
3EB60C:  LDR             R1, [SP,#0x140+var_D4]
3EB60E:  ADD             R0, SP, #0x140+var_B0
3EB610:  MOV             R2, R8
3EB612:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB616:  ADD.W           R2, R10, #0x28 ; '('
3EB61A:  ADD             R3, SP, #0x140+var_D0
3EB61C:  LDM             R2, {R0-R2}
3EB61E:  STM             R3!, {R0-R2}
3EB620:  LDR             R1, [R5,#0x14]
3EB622:  CMP             R1, #0
3EB624:  BEQ             loc_3EB6E0
3EB626:  LDR             R0, [SP,#0x140+var_C8]
3EB628:  ADD             R2, SP, #0x140+var_80
3EB62A:  VLDR            D16, [SP,#0x140+var_D0]
3EB62E:  STR             R0, [SP,#0x140+var_78]
3EB630:  MOV             R0, R9
3EB632:  VSTR            D16, [SP,#0x140+var_80]
3EB636:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB63A:  VLDR            D16, [SP,#0x140+var_70]
3EB63E:  LDR             R0, [SP,#0x140+var_68]
3EB640:  STR             R0, [SP,#0x140+var_B8]
3EB642:  VSTR            D16, [SP,#0x140+var_C0]
3EB646:  B               loc_3EB6EA
3EB648:  VLDR            S0, [R5,#0x10]
3EB64C:  VMUL.F32        S0, S0, S16
3EB650:  LDRB.W          R5, [R10,#0x3A]
3EB654:  VMOV            R0, S20; this
3EB658:  LDRB.W          R4, [R10,#0x2E]
3EB65C:  VMOV            R1, S22; float
3EB660:  LDRB.W          LR, [R10,#0x38]
3EB664:  VMOV            R2, S24; float
3EB668:  ORR.W           R4, R4, R5,LSL#8
3EB66C:  VMOV            R3, S21; float
3EB670:  LDRSH.W         R12, [R10,#0x2C]
3EB674:  LDRB.W          R6, [R10,#0x2F]
3EB678:  ADD.W           R9, R10, #0x30 ; '0'
3EB67C:  LDRB.W          R8, [R10,#0x39]
3EB680:  VDIV.F32        S0, S0, S18
3EB684:  STRD.W          R12, R4, [SP,#0x140+var_124]; float
3EB688:  STRD.W          R6, LR, [SP,#0x140+var_11C]; int
3EB68C:  MOVS            R6, #0
3EB68E:  STR.W           R8, [SP,#0x140+var_114]; int
3EB692:  STRD.W          R6, R9, [SP,#0x140+var_110]; int
3EB696:  VADD.F32        S0, S23, S0
3EB69A:  VSTR            S19, [SP,#0x140+var_12C]
3EB69E:  VSTR            S17, [SP,#0x140+var_130]
3EB6A2:  VSTR            S26, [SP,#0x140+var_134]
3EB6A6:  STR             R6, [SP,#0x140+var_138]; float
3EB6A8:  VSTR            S28, [SP,#0x140+var_140]
3EB6AC:  VSTR            S30, [SP,#0x140+var_13C]
3EB6B0:  VSTR            S0, [SP,#0x140+var_128]
3EB6B4:  BLX             j__ZN17CEntryExitManager6AddOneEfffffffffffiiiiiiPKc; CEntryExitManager::AddOne(float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,char const*)
3EB6B8:  LDRD.W          R6, R4, [SP,#0x140+var_E4]
3EB6BC:  ADD.W           R9, SP, #0x140+var_70
3EB6C0:  ADD.W           R8, SP, #0x140+var_C0
3EB6C4:  ADDS            R1, R0, #1
3EB6C6:  BEQ             loc_3EB720
3EB6C8:  LDR             R1, [SP,#0x140+var_F8]
3EB6CA:  LDR             R1, [R1]
3EB6CC:  LDR             R2, [R1,#4]
3EB6CE:  LDRSB           R2, [R2,R0]
3EB6D0:  CMP             R2, #0
3EB6D2:  BLT             loc_3EB70A
3EB6D4:  LDR             R1, [R1]
3EB6D6:  RSB.W           R0, R0, R0,LSL#4
3EB6DA:  ADD.W           R0, R1, R0,LSL#2
3EB6DE:  B               loc_3EB70C
3EB6E0:  LDR             R1, [SP,#0x140+var_D4]
3EB6E2:  ADD             R2, SP, #0x140+var_D0
3EB6E4:  MOV             R0, R8
3EB6E6:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB6EA:  LDRB.W          R0, [R10,#0x34]
3EB6EE:  ADD             R1, SP, #0x140+var_A0; CVector *
3EB6F0:  ADD             R2, SP, #0x140+var_B0; CVector *
3EB6F2:  MOV             R3, R8; CVector *
3EB6F4:  CMP             R0, #0
3EB6F6:  MOV.W           R0, #0
3EB6FA:  IT EQ
3EB6FC:  MOVEQ           R0, #(stderr+1)
3EB6FE:  STRD.W          R0, R5, [SP,#0x140+var_140]; CVector *
3EB702:  ADD             R0, SP, #0x140+var_90; this
3EB704:  BLX             j__ZN11CEscalators6AddOneERK7CVectorS2_S2_S2_bP7CEntity; CEscalators::AddOne(CVector const&,CVector const&,CVector const&,CVector const&,bool,CEntity *)
3EB708:  B               def_3EB2F4; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB70A:  MOVS            R0, #0
3EB70C:  LDR             R1, [R0,#0x38]
3EB70E:  CBZ             R1, loc_3EB720
3EB710:  LDRB.W          R1, [R1,#0x31]
3EB714:  LSLS            R1, R1, #0x19
3EB716:  ITTT PL
3EB718:  LDRHPL          R1, [R0,#0x30]
3EB71A:  BICPL.W         R1, R1, #0x4000
3EB71E:  STRHPL          R1, [R0,#0x30]
3EB720:  LDR             R5, [SP,#0x140+var_DC]
3EB722:  ADD.W           R11, R11, #1; jumptable 003EB2F4 default case, cases 2,4,5,8,9
3EB726:  CMP             R6, R11
3EB728:  BNE.W           loc_3EB2E0
3EB72C:  ADD             SP, SP, #0xE0
3EB72E:  VPOP            {D8-D15}
3EB732:  ADD             SP, SP, #4
3EB734:  POP.W           {R8-R11}
3EB738:  POP             {R4-R7,PC}
