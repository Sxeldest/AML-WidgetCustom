; =========================================================
; Game Engine Function: _ZN9CRenderer21ProcessLodRenderListsEv
; Address            : 0x40F3D4 - 0x40F656
; =========================================================

40F3D4:  PUSH            {R4-R7,LR}
40F3D6:  ADD             R7, SP, #0xC
40F3D8:  PUSH.W          {R8-R11}
40F3DC:  SUB             SP, SP, #0x14
40F3DE:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40F3E6)
40F3E0:  LDR             R1, =(PC_Scratch_ptr - 0x40F3E8)
40F3E2:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40F3E4:  ADD             R1, PC; PC_Scratch_ptr
40F3E6:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
40F3E8:  LDR             R1, [R1]; PC_Scratch
40F3EA:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList
40F3EC:  ADD.W           R5, R1, #0x60 ; '`'
40F3F0:  CMP             R0, R5
40F3F2:  BEQ             loc_40F418
40F3F4:  LDR             R1, =(PC_Scratch_ptr - 0x40F3FC)
40F3F6:  MOVS            R2, #0
40F3F8:  ADD             R1, PC; PC_Scratch_ptr
40F3FA:  LDR             R1, [R1]; PC_Scratch
40F3FC:  ADDS            R1, #0x60 ; '`'
40F3FE:  LDR             R3, [R1]
40F400:  CBZ             R3, loc_40F410
40F402:  LDRB            R6, [R3,#0x1C]
40F404:  CMP.W           R2, R6,LSR#7
40F408:  ITT EQ
40F40A:  STRBEQ.W        R2, [R3,#0x32]
40F40E:  STREQ           R2, [R1]
40F410:  ADDS            R1, #8
40F412:  CMP             R0, R1
40F414:  BNE             loc_40F3FE
40F416:  MOV             R5, R0
40F418:  LDR             R0, =(PC_Scratch_ptr - 0x40F41E)
40F41A:  ADD             R0, PC; PC_Scratch_ptr
40F41C:  LDR             R0, [R0]; PC_Scratch
40F41E:  ADDS            R0, #0x60 ; '`'
40F420:  CMP             R5, R0
40F422:  BEQ             loc_40F514
40F424:  LDR             R0, =(PC_Scratch_ptr - 0x40F430)
40F426:  MOVS            R4, #0
40F428:  MOV.W           R11, #0x80
40F42C:  ADD             R0, PC; PC_Scratch_ptr
40F42E:  LDR             R1, [R0]; PC_Scratch
40F430:  LDR             R0, =(PC_Scratch_ptr - 0x40F436)
40F432:  ADD             R0, PC; PC_Scratch_ptr
40F434:  LDR.W           R9, [R0]; PC_Scratch
40F438:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x40F43E)
40F43A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40F43C:  LDR             R6, [R0]; CModelInfo::ms_modelInfoPtrs ...
40F43E:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40F444)
40F440:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40F442:  LDR.W           R10, [R0]; CRenderer::ms_pLodRenderList ...
40F446:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40F44C)
40F448:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40F44A:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
40F44C:  STR             R0, [SP,#0x30+var_20]
40F44E:  LDR             R0, =(PC_Scratch_ptr - 0x40F454)
40F450:  ADD             R0, PC; PC_Scratch_ptr
40F452:  LDR             R0, [R0]; PC_Scratch
40F454:  STRD.W          R0, R1, [SP,#0x30+var_28]
40F458:  ADDS            R1, #0x60 ; '`'
40F45A:  MOV             R0, R5
40F45C:  MOV.W           R8, #1
40F460:  MOV             R5, R1
40F462:  ADD.W           R1, R5, #8
40F466:  MOV             R5, R1
40F468:  LDR.W           R1, [R5,#-8]
40F46C:  CBZ             R1, loc_40F4C6
40F46E:  LDRB.W          R2, [R1,#0x3B]
40F472:  CBZ             R2, loc_40F47C
40F474:  LDRSB.W         R3, [R1,#0x32]
40F478:  CMP             R3, R2
40F47A:  BEQ             loc_40F4F2
40F47C:  LDR             R2, [R1,#0x34]; int
40F47E:  CBZ             R2, loc_40F4C6
40F480:  LDRSH.W         R3, [R1,#0x26]
40F484:  LDR.W           R3, [R6,R3,LSL#2]
40F488:  LDRB.W          R3, [R3,#0x22]
40F48C:  CMP             R3, #0xFF
40F48E:  ITT NE
40F490:  LDRBNE.W        R3, [R2,#0x32]
40F494:  CMPNE           R3, #0x80
40F496:  BEQ             loc_40F4A2
40F498:  LDRB            R3, [R2,#0x1F]
40F49A:  LSLS            R3, R3, #0x1E
40F49C:  IT MI
40F49E:  STRBMI.W        R4, [R2,#0x32]
40F4A2:  LDR             R3, [R1,#0x18]
40F4A4:  CBNZ            R3, loc_40F4C6
40F4A6:  LDRB            R0, [R2,#0x1F]
40F4A8:  LSLS            R0, R0, #0x1E
40F4AA:  IT MI
40F4AC:  STRBMI.W        R11, [R2,#0x32]
40F4B0:  STR.W           R4, [R5,#-8]
40F4B4:  LDRSH.W         R0, [R1,#0x26]; this
40F4B8:  STRB.W          R4, [R1,#0x32]
40F4BC:  MOVS            R1, #0; int
40F4BE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
40F4C2:  LDR.W           R0, [R10]; CRenderer::ms_pLodRenderList
40F4C6:  ADD.W           R1, R5, #8
40F4CA:  CMP             R5, R0
40F4CC:  BNE             loc_40F466
40F4CE:  SUB.W           R0, R1, R9
40F4D2:  ADD.W           R5, R9, #0x60 ; '`'
40F4D6:  CMP             R0, #0x68 ; 'h'
40F4D8:  MOV.W           R0, #0
40F4DC:  IT EQ
40F4DE:  MOVEQ           R0, #1
40F4E0:  ORR.W           R0, R0, R8
40F4E4:  MOV.W           R8, #1
40F4E8:  LSLS            R0, R0, #0x1F
40F4EA:  SUB.W           R0, R1, #8
40F4EE:  BEQ             loc_40F462
40F4F0:  B               loc_40F512
40F4F2:  MOV.W           R8, #0
40F4F6:  STRB.W          R8, [R1,#0x32]
40F4FA:  LDR             R0, [SP,#0x30+var_20]
40F4FC:  STR.W           R8, [R5,#-8]
40F500:  LDR             R0, [R0]
40F502:  CMP             R0, R5
40F504:  BNE             loc_40F462
40F506:  LDR             R0, [SP,#0x30+var_28]
40F508:  LDR             R1, [SP,#0x30+var_24]
40F50A:  SUBS            R0, R5, R0
40F50C:  CMP             R0, #0x60 ; '`'
40F50E:  BNE             loc_40F458
40F510:  B               loc_40F514
40F512:  MOV             R5, R0
40F514:  LDR             R0, =(PC_Scratch_ptr - 0x40F51A)
40F516:  ADD             R0, PC; PC_Scratch_ptr
40F518:  LDR             R0, [R0]; PC_Scratch
40F51A:  ADDS            R0, #0x60 ; '`'
40F51C:  CMP             R5, R0
40F51E:  BEQ.W           loc_40F64E
40F522:  LDR             R0, =(PC_Scratch_ptr - 0x40F52A)
40F524:  MOVS            R1, #0
40F526:  ADD             R0, PC; PC_Scratch_ptr
40F528:  LDR             R0, [R0]; PC_Scratch
40F52A:  ADDS            R0, #0x60 ; '`'
40F52C:  LDR             R2, [R0]
40F52E:  CBZ             R2, loc_40F548
40F530:  LDRSB.W         R3, [R2,#0x32]
40F534:  CMP             R3, #1
40F536:  ITTTT GE
40F538:  LDRGE           R3, [R2,#0x1C]
40F53A:  STRBGE.W        R1, [R2,#0x32]
40F53E:  BICGE.W         R3, R3, #0x2000000
40F542:  STRGE           R3, [R2,#0x1C]
40F544:  IT GE
40F546:  STRGE           R1, [R0]
40F548:  ADDS            R0, #8
40F54A:  CMP             R5, R0
40F54C:  BNE             loc_40F52C
40F54E:  LDR             R0, =(PC_Scratch_ptr - 0x40F554)
40F550:  ADD             R0, PC; PC_Scratch_ptr
40F552:  LDR             R0, [R0]; PC_Scratch
40F554:  ADDS            R0, #0x60 ; '`'
40F556:  CMP             R5, R0
40F558:  BEQ             loc_40F64E
40F55A:  LDR             R0, =(PC_Scratch_ptr - 0x40F566)
40F55C:  MOV.W           R10, #0
40F560:  LDR             R1, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40F568)
40F562:  ADD             R0, PC; PC_Scratch_ptr
40F564:  ADD             R1, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40F566:  LDR             R0, [R0]; PC_Scratch
40F568:  ADD.W           R6, R0, #0x60 ; '`'
40F56C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x40F572)
40F56E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40F570:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
40F574:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x40F57A)
40F576:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40F578:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
40F57C:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40F582)
40F57E:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40F580:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40F582:  STR             R0, [SP,#0x30+var_20]
40F584:  LDR             R0, [R1]; CRenderer::ms_aVisibleEntityPtrs ...
40F586:  STR             R0, [SP,#0x30+var_24]
40F588:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x40F590)
40F58A:  LDR             R1, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x40F592)
40F58C:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
40F58E:  ADD             R1, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
40F590:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleLods ...
40F592:  STR             R0, [SP,#0x30+var_28]
40F594:  LDR             R0, [R1]; CRenderer::ms_aVisibleLodPtrs ...
40F596:  STR             R0, [SP,#0x30+var_2C]
40F598:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40F59E)
40F59A:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40F59C:  LDR.W           R11, [R0]; CRenderer::ms_pLodRenderList ...
40F5A0:  LDR             R4, [R6]
40F5A2:  CMP             R4, #0
40F5A4:  BEQ             loc_40F648
40F5A6:  LDRB.W          R0, [R4,#0x32]
40F5AA:  ORN.W           R0, R0, #0x7F
40F5AE:  ADDS            R0, #0x80
40F5B0:  BNE             loc_40F640
40F5B2:  MOV             R5, R4
40F5B4:  LDR.W           R1, [R5,#0x1C]!
40F5B8:  LDRSH.W         R0, [R5,#0xA]
40F5BC:  ORR.W           R2, R1, #0x2000000
40F5C0:  LDR.W           R12, [R5,#4]
40F5C4:  LDR.W           R3, [R8,R0,LSL#2]
40F5C8:  STR             R2, [R5]
40F5CA:  LDRB.W          R2, [R3,#0x22]
40F5CE:  CMP             R2, #0xFF
40F5D0:  ITTTT NE
40F5D2:  MOVWNE          R2, #0x8000
40F5D6:  MOVTNE          R2, #0x200; float
40F5DA:  ORRNE           R1, R2
40F5DC:  STRDNE.W        R1, R12, [R5]
40F5E0:  LDR.W           R0, [R9,R0,LSL#2]
40F5E4:  VLDR            S0, [R6,#4]
40F5E8:  LDRH            R1, [R0,#0x28]
40F5EA:  BIC.W           R1, R1, #1
40F5EE:  STRH            R1, [R0,#0x28]
40F5F0:  LDR             R0, [R5]
40F5F2:  TST.W           R0, #0x8000
40F5F6:  BNE             loc_40F614
40F5F8:  LSLS            R0, R0, #0x11
40F5FA:  BPL             loc_40F620
40F5FC:  VMOV            R1, S0; CEntity *
40F600:  MOV             R0, R4; this
40F602:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
40F606:  CMP             R0, #1
40F608:  BNE             loc_40F620
40F60A:  LDR             R0, [R5]
40F60C:  BIC.W           R0, R0, #0x8000
40F610:  STR             R0, [R5]
40F612:  B               loc_40F640
40F614:  VMOV            R1, S0; CEntity *
40F618:  MOV             R0, R4; this
40F61A:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
40F61E:  CBNZ            R0, loc_40F640
40F620:  LDRB.W          R0, [R4,#0x3B]
40F624:  CBZ             R0, loc_40F632
40F626:  LDRB            R0, [R5,#2]
40F628:  LSLS            R0, R0, #0x1B
40F62A:  BMI             loc_40F632
40F62C:  LDR             R1, [SP,#0x30+var_28]
40F62E:  LDR             R2, [SP,#0x30+var_2C]
40F630:  B               loc_40F636
40F632:  LDR             R1, [SP,#0x30+var_20]
40F634:  LDR             R2, [SP,#0x30+var_24]
40F636:  LDR             R0, [R1]
40F638:  B.W             loc_3F67AC
40F63C:  ADDS            R0, #1
40F63E:  STR             R0, [R1]
40F640:  STRB.W          R10, [R4,#0x32]
40F644:  LDR.W           R5, [R11]; CRenderer::ms_pLodRenderList
40F648:  ADDS            R6, #8
40F64A:  CMP             R6, R5
40F64C:  BNE             loc_40F5A0
40F64E:  ADD             SP, SP, #0x14
40F650:  POP.W           {R8-R11}
40F654:  POP             {R4-R7,PC}
