; =========================================================
; Game Engine Function: _ZN9CRenderer24SetupMapEntityVisibilityEP7CEntityP14CBaseModelInfofb
; Address            : 0x412348 - 0x412664
; =========================================================

412348:  PUSH            {R4-R7,LR}
41234A:  ADD             R7, SP, #0xC
41234C:  PUSH.W          {R8-R11}
412350:  SUB             SP, SP, #4
412352:  VPUSH           {D8}
412356:  MOV             R5, R1
412358:  LDR             R1, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x412362)
41235A:  MOV             R9, R0
41235C:  LDR             R0, =(FadeDistMult_ptr - 0x412368)
41235E:  ADD             R1, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
412360:  MOV             R8, R2
412362:  LDR             R2, =(TheCamera_ptr - 0x41236E)
412364:  ADD             R0, PC; FadeDistMult_ptr
412366:  LDR             R1, [R1]; CRenderer::ms_fFarClipPlane ...
412368:  MOV             R4, R9
41236A:  ADD             R2, PC; TheCamera_ptr
41236C:  LDR             R0, [R0]; FadeDistMult
41236E:  LDR             R6, [R5,#0x2C]
412370:  LDR             R2, [R2]; TheCamera
412372:  VLDR            S6, [R1]
412376:  LDR.W           R1, [R4,#0x1C]!
41237A:  VLDR            S0, [R0]
41237E:  LDR             R0, [R5,#0x34]
412380:  CMP             R1, #0
412382:  LDR.W           R11, [R4,#0x18]
412386:  VLDR            S4, [R6,#0x24]
41238A:  VLDR            S2, [R5,#0x30]
41238E:  VLDR            S8, [R2,#0xEC]
412392:  BLT             loc_4123BA
412394:  ANDS.W          R2, R1, #0x40000000
412398:  BEQ             loc_4123A8
41239A:  LDR             R6, =(_ZN9CRenderer17ms_bRenderTunnelsE_ptr - 0x4123A0)
41239C:  ADD             R6, PC; _ZN9CRenderer17ms_bRenderTunnelsE_ptr
41239E:  LDR             R6, [R6]; CRenderer::ms_bRenderTunnels ...
4123A0:  LDRB            R6, [R6]; CRenderer::ms_bRenderTunnels
4123A2:  CMP             R6, #0
4123A4:  BEQ.W           loc_412656
4123A8:  LDR             R6, =(_ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr - 0x4123AE)
4123AA:  ADD             R6, PC; _ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr
4123AC:  LDR             R6, [R6]; CRenderer::ms_bRenderOutsideTunnels ...
4123AE:  LDRB            R6, [R6]; CRenderer::ms_bRenderOutsideTunnels
4123B0:  CMP             R6, #0
4123B2:  IT EQ
4123B4:  CMPEQ           R2, #0
4123B6:  BEQ.W           loc_412656
4123BA:  VMOV.F32        S10, #22.0
4123BE:  CMP.W           R11, #0
4123C2:  VADD.F32        S4, S6, S4
4123C6:  VMUL.F32        S6, S2, S8
4123CA:  VMOV            S16, R8
4123CE:  VMUL.F32        S0, S0, S10
4123D2:  VMIN.F32        D2, D3, D2
4123D6:  BEQ             loc_4123E8
4123D8:  CBZ             R0, loc_412452
4123DA:  MOV.W           R10, #1
4123DE:  VMOV.F32        S6, S0
4123E2:  VMOV.F32        S2, S4
4123E6:  B               loc_41242A
4123E8:  VMIN.F32        D1, D1, D2
4123EC:  VLDR            S6, =150.0
4123F0:  VCMPE.F32       S2, S6
4123F4:  VMOV.F32        S6, S0
4123F8:  VMRS            APSR_nzcv, FPSCR
4123FC:  BLE             loc_41240E
4123FE:  VMOV.F32        S6, #15.0
412402:  VDIV.F32        S2, S2, S6
412406:  VMOV.F32        S6, #10.0
41240A:  VADD.F32        S6, S2, S6
41240E:  LDR             R2, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x412418)
412410:  MOV.W           R10, #0
412414:  ADD             R2, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
412416:  LDR             R2, [R2]; CRenderer::ms_lowLodDistScale ...
412418:  VLDR            S2, [R2]
41241C:  LSLS            R2, R1, #0x17
41241E:  VMUL.F32        S2, S4, S2
412422:  IT PL
412424:  VMOVPL.F32      S2, S4
412428:  CBZ             R0, loc_41248C
41242A:  VADD.F32        S4, S6, S16
41242E:  VSUB.F32        S4, S4, S0
412432:  VCMPE.F32       S4, S2
412436:  VMRS            APSR_nzcv, FPSCR
41243A:  BGE             loc_41244C
41243C:  LDR.W           R0, [R9,#0x18]
412440:  CMP             R0, #0
412442:  BEQ             loc_412538
412444:  LSLS            R0, R1, #0x18
412446:  BMI.W           loc_412554
41244A:  B               loc_412656
41244C:  MOV.W           R10, #1
412450:  B               loc_41248C
412452:  LDRB.W          R0, [R11,#0x3B]
412456:  CMP             R0, #2
412458:  BCC             loc_412484
41245A:  VADD.F32        S2, S0, S16
41245E:  VSUB.F32        S2, S2, S0
412462:  VCMPE.F32       S2, S4
412466:  VMRS            APSR_nzcv, FPSCR
41246A:  BGE             loc_412484
41246C:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x412472)
41246E:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
412470:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
412472:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
412474:  STR.W           R9, [R1]
412478:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
41247A:  VSTR            S16, [R1,#4]
41247E:  ADDS            R1, #8
412480:  STR             R1, [R0]; CRenderer::ms_pLodRenderList
412482:  B               loc_412534
412484:  VMOV.F32        S2, S4
412488:  MOV.W           R10, #0
41248C:  LSLS            R0, R1, #0xC
41248E:  MOV.W           R0, #0
412492:  BMI.W           loc_412658
412496:  VSUB.F32        S4, S16, S0
41249A:  VCMPE.F32       S4, S2
41249E:  VMRS            APSR_nzcv, FPSCR
4124A2:  IT LT
4124A4:  MOVLT           R0, #1
4124A6:  AND.W           R0, R0, R10
4124AA:  CMP             R0, #1
4124AC:  BNE             loc_4124FA
4124AE:  LDR.W           R0, [R9,#0x18]
4124B2:  CBNZ            R0, loc_4124CA
4124B4:  LDR.W           R0, [R9]
4124B8:  LDR             R1, [R0,#0x20]
4124BA:  MOV             R0, R9
4124BC:  BLX             R1
4124BE:  LDR.W           R0, [R9,#0x18]
4124C2:  CMP             R0, #0
4124C4:  BEQ.W           loc_412656
4124C8:  LDR             R1, [R4]
4124CA:  LSLS            R0, R1, #0x18
4124CC:  BPL.W           loc_412656
4124D0:  MOV             R0, R9; this
4124D2:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4124D6:  CMP             R0, #1
4124D8:  BNE             loc_4124E4
4124DA:  MOV             R0, R9; this
4124DC:  BLX             j__ZN7CEntity16IsEntityOccludedEv; CEntity::IsEntityOccluded(void)
4124E0:  CMP             R0, #0
4124E2:  BEQ             loc_4125BC
4124E4:  LDRH            R0, [R5,#0x28]
4124E6:  TST.W           R0, #1
4124EA:  BIC.W           R0, R0, #1
4124EE:  ITT EQ
4124F0:  MOVEQ           R1, #0xFF
4124F2:  STRBEQ.W        R1, [R5,#0x22]
4124F6:  STRH            R0, [R5,#0x28]
4124F8:  B               loc_412656
4124FA:  VMOV.F32        S4, #10.0
4124FE:  MOVS            R0, #0
412500:  VADD.F32        S4, S0, S4
412504:  VADD.F32        S0, S0, S4
412508:  VSUB.F32        S0, S16, S0
41250C:  VCMPE.F32       S0, S2
412510:  VMRS            APSR_nzcv, FPSCR
412514:  BGE.W           loc_412658
412518:  CMP             R3, #0
41251A:  IT NE
41251C:  ANDSNE.W        R1, R1, #0x80
412520:  BEQ.W           loc_412658
412524:  LDR.W           R0, [R9,#0x18]
412528:  CBNZ            R0, loc_412534
41252A:  LDR.W           R0, [R9]
41252E:  LDR             R1, [R0,#0x20]
412530:  MOV             R0, R9
412532:  BLX             R1
412534:  MOVS            R0, #3
412536:  B               loc_412658
412538:  LDR.W           R0, [R9]
41253C:  LDR             R1, [R0,#0x20]
41253E:  MOV             R0, R9
412540:  BLX             R1
412542:  LDR.W           R0, [R9,#0x18]
412546:  CMP             R0, #0
412548:  BEQ.W           loc_412656
41254C:  LDR             R1, [R4]
41254E:  LSLS            R0, R1, #0x18
412550:  BPL.W           loc_412656
412554:  MOV             R0, R9; this
412556:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
41255A:  CMP             R0, #1
41255C:  BNE             loc_412566
41255E:  MOV             R0, R9; this
412560:  BLX             j__ZN7CEntity16IsEntityOccludedEv; CEntity::IsEntityOccluded(void)
412564:  CBZ             R0, loc_41257E
412566:  LDRH            R0, [R5,#0x28]
412568:  TST.W           R0, #1
41256C:  BIC.W           R0, R0, #1
412570:  ITT EQ
412572:  MOVEQ           R1, #0xFF
412574:  STRBEQ.W        R1, [R5,#0x22]
412578:  STRH            R0, [R5,#0x28]
41257A:  MOVS            R0, #2
41257C:  B               loc_412658
41257E:  LDR             R0, [R4]
412580:  LDRB.W          R1, [R5,#0x22]
412584:  BIC.W           R2, R0, #0x8000
412588:  CMP             R1, #0xFF
41258A:  IT NE
41258C:  ORRNE.W         R2, R0, #0x8000
412590:  CMP.W           R10, #1
412594:  STR             R2, [R4]
412596:  BNE             loc_4125B8
412598:  LDRB.W          R0, [R5,#0x22]
41259C:  CMP             R0, #0xFF
41259E:  ITTT EQ
4125A0:  LDRBEQ.W        R0, [R11,#0x32]
4125A4:  ADDEQ           R0, #1
4125A6:  STRBEQ.W        R0, [R11,#0x32]
4125AA:  LDRB.W          R0, [R11,#0x3B]
4125AE:  CMP             R0, #2
4125B0:  BCC             loc_4125B8
4125B2:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x4125B8)
4125B4:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
4125B6:  B               loc_4125D6
4125B8:  MOVS            R0, #1
4125BA:  B               loc_412658
4125BC:  LDR             R0, [R4]
4125BE:  ORR.W           R0, R0, #0x8000
4125C2:  STR             R0, [R4]
4125C4:  LDR.W           R0, [R9,#0x34]
4125C8:  CBZ             R0, loc_4125E8
4125CA:  LDRB.W          R0, [R0,#0x3B]
4125CE:  CMP             R0, #2
4125D0:  BCC             loc_4125E8
4125D2:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x4125D8)
4125D4:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
4125D6:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
4125D8:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
4125DA:  STR.W           R9, [R1]
4125DE:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
4125E0:  VSTR            S16, [R1,#4]
4125E4:  ADDS            R1, #8
4125E6:  B               loc_412654
4125E8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4125F2)
4125EA:  LDRSH.W         R1, [R9,#0x26]
4125EE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4125F0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4125F2:  LDR.W           R0, [R0,R1,LSL#2]
4125F6:  LDRH            R1, [R0,#0x28]
4125F8:  BIC.W           R1, R1, #1
4125FC:  STRH            R1, [R0,#0x28]
4125FE:  LDR             R0, [R4]
412600:  TST.W           R0, #0x8000
412604:  BNE             loc_412620
412606:  LSLS            R0, R0, #0x11
412608:  BPL             loc_41262A
41260A:  MOV             R0, R9; this
41260C:  MOV             R1, R8; CEntity *
41260E:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
412612:  CMP             R0, #1
412614:  BNE             loc_41262A
412616:  LDR             R0, [R4]
412618:  BIC.W           R0, R0, #0x8000
41261C:  STR             R0, [R4]
41261E:  B               loc_412656
412620:  MOV             R0, R9; this
412622:  MOV             R1, R8; CEntity *
412624:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
412628:  CBNZ            R0, loc_412656
41262A:  LDRB.W          R0, [R9,#0x3B]
41262E:  CBZ             R0, loc_412640
412630:  LDRB            R0, [R4,#2]
412632:  LSLS            R0, R0, #0x1B
412634:  BMI             loc_412640
412636:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x41263E)
412638:  LDR             R1, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x412640)
41263A:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
41263C:  ADD             R1, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
41263E:  B               loc_412648
412640:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x412648)
412642:  LDR             R1, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x41264A)
412644:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
412646:  ADD             R1, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
412648:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
41264A:  LDR             R1, [R1]; CRenderer::ms_aVisibleEntityPtrs
41264C:  LDR             R2, [R0]; CRenderer::ms_nNoOfVisibleEntities
41264E:  B.W             loc_3F67D0
412652:  ADDS            R1, R2, #1
412654:  STR             R1, [R0]; CRenderer::ms_nNoOfVisibleEntities
412656:  MOVS            R0, #0
412658:  VPOP            {D8}
41265C:  ADD             SP, SP, #4
41265E:  POP.W           {R8-R11}
412662:  POP             {R4-R7,PC}
