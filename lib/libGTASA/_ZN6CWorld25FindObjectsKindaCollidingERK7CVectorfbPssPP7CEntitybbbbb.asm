; =========================================================
; Game Engine Function: _ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb
; Address            : 0x429278 - 0x4297D0
; =========================================================

429278:  PUSH            {R4-R7,LR}
42927A:  ADD             R7, SP, #0xC
42927C:  PUSH.W          {R8-R11}
429280:  SUB             SP, SP, #4
429282:  VPUSH           {D8-D12}
429286:  SUB             SP, SP, #0x70
429288:  MOV             R11, R0
42928A:  VMOV            S16, R1
42928E:  VLDR            S18, [R11]
429292:  MOV             R8, R3
429294:  VLDR            S22, =50.0
429298:  MOV             R9, R2
42929A:  VSUB.F32        S0, S18, S16
42929E:  VLDR            S24, =60.0
4292A2:  VLDR            S20, [R11,#4]
4292A6:  VDIV.F32        S0, S0, S22
4292AA:  VADD.F32        S0, S0, S24
4292AE:  VMOV            R0, S0; x
4292B2:  BLX             floorf
4292B6:  VSUB.F32        S0, S20, S16
4292BA:  MOV             R10, R0
4292BC:  VDIV.F32        S0, S0, S22
4292C0:  VADD.F32        S0, S0, S24
4292C4:  VMOV            R0, S0; x
4292C8:  BLX             floorf
4292CC:  VADD.F32        S0, S18, S16
4292D0:  MOV             R5, R0
4292D2:  VDIV.F32        S0, S0, S22
4292D6:  VADD.F32        S0, S0, S24
4292DA:  VMOV            R0, S0; x
4292DE:  BLX             floorf
4292E2:  VADD.F32        S0, S20, S16
4292E6:  MOV             R4, R0
4292E8:  VDIV.F32        S0, S0, S22
4292EC:  VADD.F32        S0, S0, S24
4292F0:  VMOV            R0, S0; x
4292F4:  BLX             floorf
4292F8:  VMOV            S4, R0
4292FC:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42930C)
429300:  VMOV            S2, R5
429304:  VCVT.S32.F32    S4, S4
429308:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42930A:  VMOV            S6, R4
42930E:  LDR             R0, [R1]; CWorld::ms_nCurrentScanCode ...
429310:  VMOV            S0, R10
429314:  VCVT.S32.F32    S18, S6
429318:  VCVT.S32.F32    S2, S2
42931C:  VCVT.S32.F32    S20, S0
429320:  LDRH            R0, [R0]; this
429322:  VMOV            R1, S4
429326:  STR             R1, [SP,#0xB8+var_B8]
429328:  VMOV            R1, S2
42932C:  STR             R1, [SP,#0xB8+var_B0]
42932E:  MOVW            R1, #0xFFFF
429332:  CMP             R0, R1
429334:  BEQ             loc_42933A
429336:  ADDS            R0, #1
429338:  B               loc_429340
42933A:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42933E:  MOVS            R0, #1
429340:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429348)
429344:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429346:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
429348:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
42934A:  MOVS            R0, #0
42934C:  STRH.W          R0, [R8]
429350:  LDR             R0, [SP,#0xB8+var_B8]
429352:  LDR             R1, [SP,#0xB8+var_B0]
429354:  CMP             R1, R0
429356:  BGT.W           loc_4297C2
42935A:  VMOV            R0, S20
42935E:  LDR.W           R10, [R7,#arg_4]
429362:  ADD             R4, SP, #0xB8+var_58
429364:  STR             R0, [SP,#0xB8+var_B4]
429366:  VMOV            R0, S18
42936A:  STR             R0, [SP,#0xB8+var_90]
42936C:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x429374)
429370:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
429372:  LDR             R0, [R0]; CWorld::ms_aSectors ...
429374:  STR             R0, [SP,#0xB8+var_9C]
429376:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42937E)
42937A:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42937C:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
42937E:  STR             R0, [SP,#0xB8+var_5C]
429380:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x429388)
429384:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
429386:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
429388:  STR             R0, [SP,#0xB8+var_70]
42938A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x429392)
42938E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
429390:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
429392:  STR             R0, [SP,#0xB8+var_A0]
429394:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42939C)
429398:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42939A:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
42939C:  STR             R0, [SP,#0xB8+var_60]
42939E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4293A6)
4293A2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4293A4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4293A6:  STR             R0, [SP,#0xB8+var_74]
4293A8:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4293B0)
4293AC:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4293AE:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4293B0:  STR             R0, [SP,#0xB8+var_A4]
4293B2:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4293BA)
4293B6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4293B8:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4293BA:  STR             R0, [SP,#0xB8+var_64]
4293BC:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4293C4)
4293C0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4293C2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4293C4:  STR             R0, [SP,#0xB8+var_78]
4293C6:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4293CE)
4293CA:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4293CC:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4293CE:  STR             R0, [SP,#0xB8+var_A8]
4293D0:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4293D8)
4293D4:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4293D6:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4293D8:  STR             R0, [SP,#0xB8+var_68]
4293DA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4293E2)
4293DE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4293E0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4293E2:  STR             R0, [SP,#0xB8+var_7C]
4293E4:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4293EC)
4293E8:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4293EA:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4293EC:  STR             R0, [SP,#0xB8+var_AC]
4293EE:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4293F6)
4293F2:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4293F4:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4293F6:  STR             R0, [SP,#0xB8+var_6C]
4293F8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x429400)
4293FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4293FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
429400:  STR             R0, [SP,#0xB8+var_80]
429402:  LDR             R0, [SP,#0xB8+var_B4]
429404:  LDR             R1, [SP,#0xB8+var_90]
429406:  CMP             R0, R1
429408:  BGT.W           loc_4297B4
42940C:  LDR             R1, [SP,#0xB8+var_B0]
42940E:  MOVS            R0, #0
429410:  MOVS            R2, #0x77 ; 'w'
429412:  CMP             R1, #0
429414:  IT GT
429416:  MOVGT           R0, R1
429418:  CMP             R0, #0x77 ; 'w'
42941A:  IT GE
42941C:  MOVGE           R0, R2
42941E:  RSB.W           R0, R0, R0,LSL#4
429422:  LSLS            R0, R0, #3
429424:  STR             R0, [SP,#0xB8+var_94]
429426:  LSLS            R0, R1, #4
429428:  UXTB            R0, R0
42942A:  STR             R0, [SP,#0xB8+var_98]
42942C:  LDR             R0, [SP,#0xB8+var_B4]
42942E:  MOV             R1, R0
429430:  AND.W           R0, R1, #0xF
429434:  STR             R0, [SP,#0xB8+var_84]
429436:  CMP             R1, #0
429438:  MOV.W           R0, #0
42943C:  STR             R1, [SP,#0xB8+var_88]
42943E:  IT GT
429440:  MOVGT           R0, R1
429442:  MOVS            R1, #0x77 ; 'w'
429444:  CMP             R0, #0x77 ; 'w'
429446:  MOV             R6, R10
429448:  IT GE
42944A:  MOVGE           R0, R1
42944C:  LDR             R1, [SP,#0xB8+var_94]
42944E:  ADD             R0, R1
429450:  STR             R0, [SP,#0xB8+var_8C]
429452:  LDR             R0, [R7,#arg_8]
429454:  CMP             R0, #1
429456:  BNE             loc_4294F8
429458:  LDR             R0, [SP,#0xB8+var_9C]
42945A:  LDR             R1, [SP,#0xB8+var_8C]
42945C:  LDR.W           R10, [R0,R1,LSL#3]
429460:  B               loc_429476
429462:  MOV             R1, R6
429464:  CMP             R1, #0
429466:  ITT NE
429468:  STRNE.W         R5, [R1,R0,LSL#2]
42946C:  LDRHNE.W        R0, [R8]
429470:  ADDS            R0, #1
429472:  STRH.W          R0, [R8]
429476:  CMP.W           R10, #0
42947A:  BEQ             loc_4294F8
42947C:  LDRD.W          R5, R10, [R10]
429480:  LDR             R0, [SP,#0xB8+var_5C]
429482:  LDRH            R1, [R5,#0x30]
429484:  LDRH            R0, [R0]
429486:  CMP             R1, R0
429488:  BEQ             loc_429476
42948A:  STRH            R0, [R5,#0x30]
42948C:  MOV             R0, R4; this
42948E:  MOV             R1, R5
429490:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
429494:  MOV             R0, R4
429496:  MOV             R1, R11
429498:  VLD1.32         {D16}, [R0@64]!
42949C:  CMP.W           R9, #0
4294A0:  VLD1.32         {D17}, [R1]!
4294A4:  VSUB.F32        D16, D17, D16
4294A8:  VLDR            S0, [R0]
4294AC:  VLDR            S2, [R1]
4294B0:  VSUB.F32        S0, S2, S0
4294B4:  VMUL.F32        D1, D16, D16
4294B8:  VADD.F32        S2, S2, S3
4294BC:  VMUL.F32        S0, S0, S0
4294C0:  VADD.F32        S0, S2, S0
4294C4:  IT NE
4294C6:  VMOVNE.F32      S0, S2
4294CA:  LDRSH.W         R0, [R5,#0x26]
4294CE:  VSQRT.F32       S0, S0
4294D2:  LDR             R1, [SP,#0xB8+var_70]
4294D4:  LDR.W           R0, [R1,R0,LSL#2]
4294D8:  LDR             R0, [R0,#0x2C]
4294DA:  VLDR            S2, [R0,#0x24]
4294DE:  VADD.F32        S2, S2, S16
4294E2:  VCMPE.F32       S0, S2
4294E6:  VMRS            APSR_nzcv, FPSCR
4294EA:  BGE             loc_429476
4294EC:  LDRSH.W         R0, [R8]
4294F0:  LDR             R1, [R7,#arg_0]
4294F2:  CMP             R0, R1
4294F4:  BGE             loc_429476
4294F6:  B               loc_429462
4294F8:  LDR             R0, [SP,#0xB8+var_98]
4294FA:  MOV             R10, R6
4294FC:  LDR             R1, [SP,#0xB8+var_84]
4294FE:  ORRS            R0, R1
429500:  STR             R0, [SP,#0xB8+var_84]
429502:  LDR             R0, [R7,#arg_C]
429504:  CMP             R0, #1
429506:  BNE             loc_4295A8
429508:  LDR             R0, [SP,#0xB8+var_84]
42950A:  LDR             R1, [SP,#0xB8+var_A0]
42950C:  ADD.W           R0, R0, R0,LSL#1
429510:  LDR.W           R6, [R1,R0,LSL#2]
429514:  B               loc_42952A
429516:  CMP.W           R10, #0
42951A:  ITT NE
42951C:  STRNE.W         R5, [R10,R0,LSL#2]
429520:  LDRHNE.W        R0, [R8]
429524:  ADDS            R0, #1
429526:  STRH.W          R0, [R8]
42952A:  CBZ             R6, loc_4295A8
42952C:  LDRD.W          R5, R6, [R6]
429530:  LDR             R0, [SP,#0xB8+var_60]
429532:  LDRH            R1, [R5,#0x30]
429534:  LDRH            R0, [R0]
429536:  CMP             R1, R0
429538:  BEQ             loc_42952A
42953A:  STRH            R0, [R5,#0x30]
42953C:  MOV             R0, R4; this
42953E:  MOV             R1, R5
429540:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
429544:  MOV             R0, R4
429546:  MOV             R1, R11
429548:  VLD1.32         {D16}, [R0@64]!
42954C:  CMP.W           R9, #0
429550:  VLD1.32         {D17}, [R1]!
429554:  VSUB.F32        D16, D17, D16
429558:  VLDR            S0, [R0]
42955C:  VLDR            S2, [R1]
429560:  VSUB.F32        S0, S2, S0
429564:  VMUL.F32        D1, D16, D16
429568:  VADD.F32        S2, S2, S3
42956C:  VMUL.F32        S0, S0, S0
429570:  VADD.F32        S0, S2, S0
429574:  IT NE
429576:  VMOVNE.F32      S0, S2
42957A:  LDRSH.W         R0, [R5,#0x26]
42957E:  VSQRT.F32       S0, S0
429582:  LDR             R1, [SP,#0xB8+var_74]
429584:  LDR.W           R0, [R1,R0,LSL#2]
429588:  LDR             R0, [R0,#0x2C]
42958A:  VLDR            S2, [R0,#0x24]
42958E:  VADD.F32        S2, S2, S16
429592:  VCMPE.F32       S0, S2
429596:  VMRS            APSR_nzcv, FPSCR
42959A:  BGE             loc_42952A
42959C:  LDRSH.W         R0, [R8]
4295A0:  LDR             R1, [R7,#arg_0]
4295A2:  CMP             R0, R1
4295A4:  BGE             loc_42952A
4295A6:  B               loc_429516
4295A8:  LDR             R0, [R7,#arg_10]
4295AA:  CMP             R0, #1
4295AC:  BNE             loc_42965C
4295AE:  LDR             R0, [SP,#0xB8+var_84]
4295B0:  LDR             R1, [SP,#0xB8+var_A4]
4295B2:  ADD.W           R0, R0, R0,LSL#1
4295B6:  ADD.W           R0, R1, R0,LSL#2
4295BA:  LDR             R6, [R0,#4]
4295BC:  B               loc_4295D2
4295BE:  CMP.W           R10, #0
4295C2:  ITT NE
4295C4:  STRNE.W         R5, [R10,R0,LSL#2]
4295C8:  LDRHNE.W        R0, [R8]
4295CC:  ADDS            R0, #1
4295CE:  STRH.W          R0, [R8]
4295D2:  CMP             R6, #0
4295D4:  BEQ             loc_42965C
4295D6:  LDRD.W          R5, R6, [R6]
4295DA:  LDR             R0, [SP,#0xB8+var_64]
4295DC:  LDRH            R1, [R5,#0x30]
4295DE:  LDRH            R0, [R0]
4295E0:  CMP             R1, R0
4295E2:  BEQ             loc_4295D2
4295E4:  STRH            R0, [R5,#0x30]
4295E6:  MOV             R0, R4; this
4295E8:  MOV             R1, R5
4295EA:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
4295EE:  MOV             R0, R4
4295F0:  MOV             R1, R11
4295F2:  VLD1.32         {D16}, [R0@64]!
4295F6:  CMP.W           R9, #0
4295FA:  VLD1.32         {D17}, [R1]!
4295FE:  VSUB.F32        D16, D17, D16
429602:  VLDR            S0, [R0]
429606:  VLDR            S2, [R1]
42960A:  VSUB.F32        S0, S2, S0
42960E:  VMUL.F32        D1, D16, D16
429612:  VADD.F32        S2, S2, S3
429616:  VMUL.F32        S0, S0, S0
42961A:  VADD.F32        S0, S2, S0
42961E:  IT NE
429620:  VMOVNE.F32      S0, S2
429624:  LDRSH.W         R0, [R5,#0x26]
429628:  VSQRT.F32       S0, S0
42962C:  LDR             R1, [SP,#0xB8+var_78]
42962E:  LDR.W           R0, [R1,R0,LSL#2]
429632:  LDR             R0, [R0,#0x2C]
429634:  VLDR            S2, [R0,#0x24]
429638:  VADD.F32        S2, S2, S16
42963C:  VCMPE.F32       S0, S2
429640:  VMRS            APSR_nzcv, FPSCR
429644:  BGE             loc_4295D2
429646:  LDRSH.W         R0, [R8]
42964A:  LDR             R1, [R7,#arg_0]
42964C:  CMP             R0, R1
42964E:  BGE             loc_4295D2
429650:  B               loc_4295BE
429652:  ALIGN 4
429654:  DCFS 50.0
429658:  DCFS 60.0
42965C:  LDR             R0, [R7,#arg_14]
42965E:  CMP             R0, #1
429660:  BNE             loc_429704
429662:  LDR             R0, [SP,#0xB8+var_84]
429664:  LDR             R1, [SP,#0xB8+var_A8]
429666:  ADD.W           R0, R0, R0,LSL#1
42966A:  ADD.W           R0, R1, R0,LSL#2
42966E:  LDR             R6, [R0,#8]
429670:  B               loc_429686
429672:  CMP.W           R10, #0
429676:  ITT NE
429678:  STRNE.W         R5, [R10,R0,LSL#2]
42967C:  LDRHNE.W        R0, [R8]
429680:  ADDS            R0, #1
429682:  STRH.W          R0, [R8]
429686:  CBZ             R6, loc_429704
429688:  LDRD.W          R5, R6, [R6]
42968C:  LDR             R0, [SP,#0xB8+var_68]
42968E:  LDRH            R1, [R5,#0x30]
429690:  LDRH            R0, [R0]
429692:  CMP             R1, R0
429694:  BEQ             loc_429686
429696:  STRH            R0, [R5,#0x30]
429698:  MOV             R0, R4; this
42969A:  MOV             R1, R5
42969C:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
4296A0:  MOV             R0, R4
4296A2:  MOV             R1, R11
4296A4:  VLD1.32         {D16}, [R0@64]!
4296A8:  CMP.W           R9, #0
4296AC:  VLD1.32         {D17}, [R1]!
4296B0:  VSUB.F32        D16, D17, D16
4296B4:  VLDR            S0, [R0]
4296B8:  VLDR            S2, [R1]
4296BC:  VSUB.F32        S0, S2, S0
4296C0:  VMUL.F32        D1, D16, D16
4296C4:  VADD.F32        S2, S2, S3
4296C8:  VMUL.F32        S0, S0, S0
4296CC:  VADD.F32        S0, S2, S0
4296D0:  IT NE
4296D2:  VMOVNE.F32      S0, S2
4296D6:  LDRSH.W         R0, [R5,#0x26]
4296DA:  VSQRT.F32       S0, S0
4296DE:  LDR             R1, [SP,#0xB8+var_7C]
4296E0:  LDR.W           R0, [R1,R0,LSL#2]
4296E4:  LDR             R0, [R0,#0x2C]
4296E6:  VLDR            S2, [R0,#0x24]
4296EA:  VADD.F32        S2, S2, S16
4296EE:  VCMPE.F32       S0, S2
4296F2:  VMRS            APSR_nzcv, FPSCR
4296F6:  BGE             loc_429686
4296F8:  LDRSH.W         R0, [R8]
4296FC:  LDR             R1, [R7,#arg_0]
4296FE:  CMP             R0, R1
429700:  BGE             loc_429686
429702:  B               loc_429672
429704:  LDR             R0, [R7,#arg_18]
429706:  CMP             R0, #1
429708:  BNE             loc_4297A8
42970A:  LDR             R1, [SP,#0xB8+var_8C]
42970C:  LDR             R0, [SP,#0xB8+var_AC]
42970E:  ADD.W           R0, R0, R1,LSL#3
429712:  LDR             R6, [R0,#4]
429714:  B               loc_42972A
429716:  CMP.W           R10, #0
42971A:  ITT NE
42971C:  STRNE.W         R5, [R10,R0,LSL#2]
429720:  LDRHNE.W        R0, [R8]
429724:  ADDS            R0, #1
429726:  STRH.W          R0, [R8]
42972A:  CBZ             R6, loc_4297A8
42972C:  LDRD.W          R5, R6, [R6]
429730:  LDR             R0, [SP,#0xB8+var_6C]
429732:  LDRH            R1, [R5,#0x30]
429734:  LDRH            R0, [R0]
429736:  CMP             R1, R0
429738:  BEQ             loc_42972A
42973A:  STRH            R0, [R5,#0x30]
42973C:  MOV             R0, R4; this
42973E:  MOV             R1, R5
429740:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
429744:  MOV             R0, R4
429746:  MOV             R1, R11
429748:  VLD1.32         {D16}, [R0@64]!
42974C:  CMP.W           R9, #0
429750:  VLD1.32         {D17}, [R1]!
429754:  VSUB.F32        D16, D17, D16
429758:  VLDR            S0, [R0]
42975C:  VLDR            S2, [R1]
429760:  VSUB.F32        S0, S2, S0
429764:  VMUL.F32        D1, D16, D16
429768:  VADD.F32        S2, S2, S3
42976C:  VMUL.F32        S0, S0, S0
429770:  VADD.F32        S0, S2, S0
429774:  IT NE
429776:  VMOVNE.F32      S0, S2
42977A:  LDRSH.W         R0, [R5,#0x26]
42977E:  VSQRT.F32       S0, S0
429782:  LDR             R1, [SP,#0xB8+var_80]
429784:  LDR.W           R0, [R1,R0,LSL#2]
429788:  LDR             R0, [R0,#0x2C]
42978A:  VLDR            S2, [R0,#0x24]
42978E:  VADD.F32        S2, S2, S16
429792:  VCMPE.F32       S0, S2
429796:  VMRS            APSR_nzcv, FPSCR
42979A:  BGE             loc_42972A
42979C:  LDRSH.W         R0, [R8]
4297A0:  LDR             R1, [R7,#arg_0]
4297A2:  CMP             R0, R1
4297A4:  BGE             loc_42972A
4297A6:  B               loc_429716
4297A8:  LDR             R2, [SP,#0xB8+var_88]
4297AA:  LDR             R1, [SP,#0xB8+var_90]
4297AC:  ADDS            R0, R2, #1
4297AE:  CMP             R2, R1
4297B0:  BLT.W           loc_42942E
4297B4:  LDR             R2, [SP,#0xB8+var_B0]
4297B6:  LDR             R1, [SP,#0xB8+var_B8]
4297B8:  ADDS            R0, R2, #1
4297BA:  STR             R0, [SP,#0xB8+var_B0]
4297BC:  CMP             R2, R1
4297BE:  BLT.W           loc_429402
4297C2:  ADD             SP, SP, #0x70 ; 'p'
4297C4:  VPOP            {D8-D12}
4297C8:  ADD             SP, SP, #4
4297CA:  POP.W           {R8-R11}
4297CE:  POP             {R4-R7,PC}
