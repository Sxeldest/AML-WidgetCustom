; =========================================================
; Game Engine Function: _ZN9CRenderer26SetupBigBuildingVisibilityEP7CEntityRf
; Address            : 0x4114F8 - 0x4116B8
; =========================================================

4114F8:  PUSH            {R4-R7,LR}
4114FA:  ADD             R7, SP, #0xC
4114FC:  PUSH.W          {R8,R9,R11}
411500:  MOV             R4, R0
411502:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41150E)
411504:  MOV             R8, R1
411506:  LDRSH.W         R1, [R4,#0x26]
41150A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41150C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
41150E:  LDR.W           R6, [R0,R1,LSL#2]
411512:  LDRB.W          R0, [R4,#0x33]
411516:  CMP             R0, #0xD
411518:  BEQ             loc_41152E
41151A:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x411520)
41151C:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
41151E:  LDR             R1, [R1]; CGame::currArea ...
411520:  LDR             R1, [R1]; CGame::currArea
411522:  CMP             R1, R0
411524:  BEQ             loc_41152E
411526:  MOVS            R0, #0
411528:  POP.W           {R8,R9,R11}
41152C:  POP             {R4-R7,PC}; bool
41152E:  LDR             R0, [R6]
411530:  LDR             R1, [R0,#0x14]
411532:  MOV             R0, R6
411534:  BLX             R1
411536:  CMP             R0, #3
411538:  BNE             loc_411576
41153A:  LDR             R0, [R6]
41153C:  LDR             R1, [R0,#0x18]
41153E:  MOV             R0, R6
411540:  BLX             R1
411542:  LDRB            R2, [R0]; unsigned __int8
411544:  LDRH            R5, [R0,#2]
411546:  LDRB            R1, [R0,#1]; unsigned __int8
411548:  MOV             R0, R2; this
41154A:  SXTH.W          R9, R5
41154E:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
411552:  CMP             R0, #0
411554:  BEQ             loc_41162C
411556:  MOVW            R0, #0xFFFF
41155A:  CMP             R5, R0
41155C:  BEQ             loc_411598
41155E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x411564)
411560:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
411562:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
411564:  LDR.W           R0, [R0,R9,LSL#2]
411568:  LDR             R0, [R0,#0x34]
41156A:  CMP             R0, #0
41156C:  ITT NE
41156E:  MOVNE           R0, #0xFF
411570:  STRBNE.W        R0, [R6,#0x22]
411574:  B               loc_411598
411576:  LDR             R0, [R6]
411578:  LDR             R1, [R0,#0x14]
41157A:  MOV             R0, R6
41157C:  BLX             R1
41157E:  CMP             R0, #6
411580:  BNE             loc_411598
411582:  MOV             R0, R4; this
411584:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
411588:  CMP             R0, #1
41158A:  BNE             loc_411526
41158C:  MOV             R0, R4; this
41158E:  BLX             j__ZN7CEntity16IsEntityOccludedEv; CEntity::IsEntityOccluded(void)
411592:  CMP             R0, #1
411594:  BEQ             loc_411526
411596:  B               loc_4116AC
411598:  MOVS            R3, #1; float
41159A:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4115A4)
41159C:  MOV             R1, R4
41159E:  LDR             R5, [R4,#0x34]
4115A0:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4115A2:  CMP             R5, #0
4115A4:  IT NE
4115A6:  MOVNE           R1, R5
4115A8:  LDR             R0, [R0]; CRenderer::ms_vecCameraPosition ...
4115AA:  LDR             R2, [R1,#0x14]
4115AC:  VLDR            S0, [R0]
4115B0:  CMP             R2, #0
4115B2:  VLDR            S2, [R0,#4]
4115B6:  VLDR            S4, [R0,#8]
4115BA:  ADD.W           R0, R2, #0x30 ; '0'
4115BE:  IT EQ
4115C0:  ADDEQ           R0, R1, #4
4115C2:  VLDR            S6, [R0]
4115C6:  VLDR            S8, [R0,#4]
4115CA:  VSUB.F32        S0, S6, S0
4115CE:  VLDR            S10, [R0,#8]
4115D2:  VSUB.F32        S2, S8, S2
4115D6:  VSUB.F32        S4, S10, S4
4115DA:  VMUL.F32        S0, S0, S0
4115DE:  VMUL.F32        S2, S2, S2
4115E2:  VMUL.F32        S4, S4, S4
4115E6:  VADD.F32        S0, S0, S2
4115EA:  VADD.F32        S0, S0, S4
4115EE:  VSQRT.F32       S0, S0
4115F2:  VSTR            S0, [R8]
4115F6:  LDRSB.W         R0, [R4,#0x32]
4115FA:  CMP             R0, #1
4115FC:  BLT             loc_41164C
4115FE:  CMP             R5, #0
411600:  ITTT NE
411602:  LDRBNE.W        R0, [R5,#0x32]
411606:  ADDNE           R0, #1
411608:  STRBNE.W        R0, [R5,#0x32]
41160C:  LDRB.W          R0, [R4,#0x3B]
411610:  CMP             R0, #2
411612:  BCC             loc_411692
411614:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x41161E)
411616:  LDR.W           R2, [R8]
41161A:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
41161C:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
41161E:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
411620:  STR             R4, [R1]
411622:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
411624:  STR             R2, [R1,#4]
411626:  ADDS            R1, #8
411628:  STR             R1, [R0]; CRenderer::ms_pLodRenderList
41162A:  B               loc_411698
41162C:  MOVW            R0, #0xFFFF
411630:  CMP             R5, R0
411632:  BEQ             loc_411642
411634:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41163A)
411636:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
411638:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
41163A:  LDR.W           R0, [R0,R9,LSL#2]
41163E:  LDR             R0, [R0,#0x34]
411640:  CBZ             R0, loc_4116B4
411642:  LDR             R0, [R4]
411644:  LDR             R1, [R0,#0x24]
411646:  MOV             R0, R4
411648:  BLX             R1
41164A:  B               loc_411526
41164C:  VMOV            R2, S0; CBaseModelInfo *
411650:  MOV             R0, R4; this
411652:  MOV             R1, R6; CEntity *
411654:  BLX             j__ZN9CRenderer24SetupMapEntityVisibilityEP7CEntityP14CBaseModelInfofb; CRenderer::SetupMapEntityVisibility(CEntity *,CBaseModelInfo *,float,bool)
411658:  CMP             R0, #1
41165A:  BNE.W           loc_411528
41165E:  LDRB.W          R0, [R4,#0x3B]
411662:  CMP             R0, #2
411664:  BCC             loc_4116AC
411666:  CBZ             R5, loc_41167A
411668:  LDRB.W          R0, [R6,#0x22]
41166C:  CMP             R0, #0xFF
41166E:  ITTT EQ
411670:  LDRBEQ.W        R0, [R5,#0x32]
411674:  ADDEQ           R0, #1
411676:  STRBEQ.W        R0, [R5,#0x32]
41167A:  LDR             R0, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x411684)
41167C:  LDR.W           R2, [R8]
411680:  ADD             R0, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
411682:  LDR             R0, [R0]; CRenderer::ms_pLodRenderList ...
411684:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
411686:  STR             R4, [R1]
411688:  LDR             R1, [R0]; CRenderer::ms_pLodRenderList
41168A:  STR             R2, [R1,#4]
41168C:  ADDS            R1, #8
41168E:  STR             R1, [R0]; CRenderer::ms_pLodRenderList
411690:  B               loc_411526
411692:  MOVS            R0, #0
411694:  STRB.W          R0, [R4,#0x32]
411698:  LDR             R0, [R4,#0x18]
41169A:  CBNZ            R0, loc_4116A4
41169C:  LDR             R0, [R4]
41169E:  LDR             R1, [R0,#0x20]
4116A0:  MOV             R0, R4
4116A2:  BLX             R1
4116A4:  MOVS            R0, #3
4116A6:  POP.W           {R8,R9,R11}
4116AA:  POP             {R4-R7,PC}
4116AC:  MOVS            R0, #1
4116AE:  POP.W           {R8,R9,R11}
4116B2:  POP             {R4-R7,PC}
4116B4:  MOVS            R3, #0
4116B6:  B               loc_41159A
