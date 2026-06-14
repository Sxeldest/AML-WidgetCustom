; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCar14ControlSubTaskEP4CPed
; Address            : 0x5403BC - 0x5408DA
; =========================================================

5403BC:  PUSH            {R4-R7,LR}
5403BE:  ADD             R7, SP, #0xC
5403C0:  PUSH.W          {R8}
5403C4:  MOV             R5, R0
5403C6:  MOV             R6, R1
5403C8:  LDR             R0, [R5,#0x14]
5403CA:  LDR             R4, [R5,#8]
5403CC:  CMP             R0, #0
5403CE:  ITT NE
5403D0:  LDRNE.W         R0, [R0,#0x44C]
5403D4:  CMPNE           R0, #0x37 ; '7'
5403D6:  BNE             loc_5403F4
5403D8:  LDR             R0, [R4]
5403DA:  MOV             R1, R6
5403DC:  MOVS            R2, #1
5403DE:  MOVS            R3, #0
5403E0:  LDR             R5, [R0,#0x1C]
5403E2:  MOV             R0, R4
5403E4:  BLX             R5
5403E6:  CMP             R0, #0
5403E8:  IT NE
5403EA:  MOVNE           R4, #0
5403EC:  MOV             R0, R4
5403EE:  POP.W           {R8}
5403F2:  POP             {R4-R7,PC}
5403F4:  LDR             R0, [R5,#0xC]
5403F6:  CBZ             R0, loc_54040C
5403F8:  LDR.W           R1, [R0,#0x464]
5403FC:  CBNZ            R1, loc_54040C
5403FE:  LDRB.W          R1, [R0,#0x3BE]
540402:  CMP             R1, #0
540404:  ITT NE
540406:  MOVNE           R1, #0
540408:  STRBNE.W        R1, [R0,#0x3BE]
54040C:  LDRB.W          R0, [R5,#0x30]
540410:  TST.W           R0, #1
540414:  BNE             loc_54042C
540416:  LDR             R1, [R5,#0x10]
540418:  CMP             R1, #0
54041A:  ITT NE
54041C:  LDRNE.W         R1, [R1,#0x44C]
540420:  CMPNE           R1, #0x37 ; '7'
540422:  BNE             loc_54042C
540424:  ORR.W           R0, R0, #1
540428:  STRB.W          R0, [R5,#0x30]
54042C:  LDR             R0, [R5,#8]
54042E:  LDR             R1, [R0]
540430:  LDR             R1, [R1,#0x14]
540432:  BLX             R1
540434:  CMP.W           R0, #0x390
540438:  BGE             loc_5404A4
54043A:  MOVW            R1, #0x2C5
54043E:  CMP             R0, R1
540440:  BEQ.W           loc_540644
540444:  CMP.W           R0, #0x2D4
540448:  BNE             loc_5403EC
54044A:  LDR             R1, [R5,#0x14]
54044C:  LDRB.W          R0, [R5,#0x30]
540450:  LDR.W           R1, [R1,#0x484]
540454:  UBFX.W          R2, R0, #3, #1
540458:  UBFX.W          R1, R1, #8, #1
54045C:  CMP             R1, R2
54045E:  BEQ.W           loc_5406A0
540462:  LDR             R0, [R4]
540464:  MOV             R1, R6
540466:  MOVS            R2, #1
540468:  MOVS            R3, #0
54046A:  LDR.W           R12, [R0,#0x1C]
54046E:  MOV             R0, R4
540470:  BLX             R12
540472:  CMP             R0, #0
540474:  BEQ.W           loc_54069C
540478:  LDR             R0, [R5,#0x14]
54047A:  MOVS            R2, #8
54047C:  LDRB.W          R1, [R5,#0x30]
540480:  LDR.W           R0, [R0,#0x484]
540484:  AND.W           R1, R1, #0xF7
540488:  AND.W           R0, R2, R0,LSR#5
54048C:  ORRS            R0, R1
54048E:  STRB.W          R0, [R5,#0x30]
540492:  MOV             R0, R5; this
540494:  MOV.W           R1, #0x2D4; int
540498:  MOV             R2, R6; CPed *
54049A:  POP.W           {R8}
54049E:  POP.W           {R4-R7,LR}
5404A2:  B               _ZNK20CTaskComplexCopInCar13CreateSubTaskEiP4CPed; CTaskComplexCopInCar::CreateSubTask(int,CPed *)
5404A4:  BEQ.W           loc_540674
5404A8:  MOVW            R1, #0x44F
5404AC:  CMP             R0, R1
5404AE:  BNE             loc_5403EC
5404B0:  LDR             R0, [R5,#0x14]
5404B2:  LDRB.W          R1, [R0,#0x485]
5404B6:  LSLS            R1, R1, #0x1F
5404B8:  BEQ             loc_5403EC
5404BA:  LDR.W           R1, [R0,#0x590]
5404BE:  CMP             R1, #0
5404C0:  ITT NE
5404C2:  LDRNE           R0, [R5,#0xC]; this
5404C4:  CMPNE           R1, R0
5404C6:  BEQ             loc_5403EC
5404C8:  CMP             R0, #0
5404CA:  ITT NE
5404CC:  LDRBNE.W        R1, [R5,#0x30]
5404D0:  MOVSNE.W        R1, R1,LSL#31
5404D4:  BEQ.W           loc_5403EC
5404D8:  ADDW            R1, R0, #0x4CC
5404DC:  VLDR            S0, [R1]
5404E0:  VCMPE.F32       S0, #0.0
5404E4:  VMRS            APSR_nzcv, FPSCR
5404E8:  BLE.W           loc_5403EC
5404EC:  LDR.W           R1, [R0,#0x494]
5404F0:  CMP             R1, #0
5404F2:  BNE.W           loc_5403EC
5404F6:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
5404FA:  CMP             R0, #0
5404FC:  BNE.W           loc_5403EC
540500:  LDR             R0, [R5,#0xC]; this
540502:  BLX             j__ZNK8CVehicle11IsOnItsSideEv; CVehicle::IsOnItsSide(void)
540506:  CMP             R0, #0
540508:  BNE.W           loc_5403EC
54050C:  LDR             R1, [R5,#0x14]
54050E:  LDR             R2, [R6,#0x14]
540510:  LDR.W           R12, [R5,#0xC]
540514:  LDR.W           R1, [R1,#0x590]
540518:  ADD.W           R3, R2, #0x30 ; '0'
54051C:  CMP             R2, #0
54051E:  LDR.W           R0, [R12,#0x14]
540522:  VLDR            S0, [R1,#0x48]
540526:  VLDR            S2, [R1,#0x4C]
54052A:  VLDR            S4, [R1,#0x50]
54052E:  IT EQ
540530:  ADDEQ           R3, R6, #4
540532:  LDR             R2, [R1,#0x14]
540534:  VMUL.F32        S2, S2, S2
540538:  VLDR            S6, [R3]
54053C:  VMUL.F32        S0, S0, S0
540540:  VLDR            S8, [R3,#4]
540544:  CMP             R2, #0
540546:  VLDR            S10, [R3,#8]
54054A:  ADD.W           R3, R2, #0x30 ; '0'
54054E:  IT EQ
540550:  ADDEQ           R3, R1, #4
540552:  ADD.W           R1, R0, #0x30 ; '0'
540556:  VLDR            S12, [R3]
54055A:  CMP             R0, #0
54055C:  VLDR            S14, [R3,#4]
540560:  VMUL.F32        S4, S4, S4
540564:  VSUB.F32        S12, S12, S6
540568:  VLDR            S1, [R3,#8]
54056C:  VSUB.F32        S14, S14, S8
540570:  IT EQ
540572:  ADDEQ.W         R1, R12, #4
540576:  VLDR            S3, [R1]
54057A:  VADD.F32        S0, S0, S2
54057E:  VLDR            S5, [R1,#4]
540582:  VSUB.F32        S6, S3, S6
540586:  VLDR            S7, [R1,#8]
54058A:  VSUB.F32        S2, S5, S8
54058E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x54059E)
540590:  VSUB.F32        S8, S1, S10
540594:  MOVS            R1, #0
540596:  VMUL.F32        S12, S12, S12
54059A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
54059C:  VMUL.F32        S14, S14, S14
5405A0:  VADD.F32        S0, S0, S4
5405A4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5405A6:  VSUB.F32        S4, S7, S10
5405AA:  VMUL.F32        S6, S6, S6
5405AE:  VMUL.F32        S2, S2, S2
5405B2:  VLDR            S10, [R0]
5405B6:  VMUL.F32        S8, S8, S8
5405BA:  MOVS            R0, #0
5405BC:  VADD.F32        S12, S12, S14
5405C0:  VMUL.F32        S0, S10, S0
5405C4:  VMUL.F32        S4, S4, S4
5405C8:  VMOV.F32        S10, #1.0
5405CC:  VADD.F32        S2, S6, S2
5405D0:  VLDR            S6, =50.0
5405D4:  VADD.F32        S8, S12, S8
5405D8:  VMUL.F32        S0, S0, S6
5405DC:  VMOV.F32        S6, #16.0
5405E0:  VADD.F32        S2, S2, S4
5405E4:  VLDR            S4, =100.0
5405E8:  VCMPE.F32       S8, S4
5405EC:  VMRS            APSR_nzcv, FPSCR
5405F0:  VCMPE.F32       S0, S10
5405F4:  IT GT
5405F6:  MOVGT           R1, #1
5405F8:  VMRS            APSR_nzcv, FPSCR
5405FC:  VCMPE.F32       S2, S6
540600:  IT GT
540602:  MOVGT           R0, #1
540604:  VMRS            APSR_nzcv, FPSCR
540608:  BGE.W           loc_5403EC
54060C:  ORRS            R0, R1
54060E:  CMP             R0, #1
540610:  BNE.W           loc_5403EC
540614:  LDR             R0, [R4]
540616:  MOV             R1, R6
540618:  MOVS            R2, #1
54061A:  MOVS            R3, #0
54061C:  LDR.W           R12, [R0,#0x1C]
540620:  MOV             R0, R4
540622:  BLX             R12
540624:  CMP             R0, #1
540626:  BNE.W           loc_5403EC
54062A:  LDR.W           R0, [R6,#0x440]; this
54062E:  MOVS            R1, #6; int
540630:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
540634:  MOVS            R0, #dword_50; this
540636:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54063A:  LDR             R1, [R5,#0xC]; CVehicle *
54063C:  MOV             R4, R0
54063E:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
540642:  B               loc_5403EC
540644:  LDRB.W          R8, [R5,#0x30]
540648:  TST.W           R8, #2
54064C:  BEQ.W           loc_5403EC
540650:  MOVS.W          R0, R8,LSL#31
540654:  BNE             loc_5406D0
540656:  LDR             R0, [R4]
540658:  MOV             R1, R6
54065A:  MOVS            R2, #1
54065C:  MOVS            R3, #0
54065E:  LDR.W           R12, [R0,#0x1C]
540662:  MOV             R0, R4
540664:  BLX             R12
540666:  CMP             R0, #1
540668:  BNE.W           loc_5403EC
54066C:  LDR             R0, [R5]
54066E:  LDRB.W          R1, [R5,#0x30]
540672:  B               loc_5408C2
540674:  LDRB.W          R0, [R5,#0x2C]
540678:  CMP             R0, #0
54067A:  BEQ.W           loc_5403EC
54067E:  LDRB.W          R0, [R5,#0x2D]
540682:  CMP             R0, #0
540684:  BEQ.W           loc_5407BE
540688:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540690)
54068A:  MOVS            R1, #0
54068C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54068E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540690:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540692:  STRB.W          R1, [R5,#0x2D]
540696:  STR             R0, [R5,#0x24]
540698:  MOV             R1, R0
54069A:  B               loc_5407C8
54069C:  LDRB.W          R0, [R5,#0x30]
5406A0:  LSLS            R0, R0, #0x1E
5406A2:  BPL.W           loc_5403EC
5406A6:  LDR             R0, [R4]
5406A8:  MOV             R1, R6
5406AA:  MOVS            R2, #1
5406AC:  MOVS            R3, #0
5406AE:  LDR.W           R12, [R0,#0x1C]
5406B2:  MOV             R0, R4
5406B4:  BLX             R12
5406B6:  CMP             R0, #1
5406B8:  BNE.W           loc_5403EC
5406BC:  MOVS            R0, #dword_60; this
5406BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5406C2:  LDR             R1, [R5,#0xC]; CVehicle *
5406C4:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
5406C6:  MOVS            R3, #0; bool
5406C8:  MOV             R4, R0
5406CA:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
5406CE:  B               loc_5403EC
5406D0:  LDRB.W          R0, [R5,#0x20]
5406D4:  CMP             R0, #0
5406D6:  BEQ.W           loc_540812
5406DA:  LDR             R0, [R5,#0x14]
5406DC:  LDRB.W          R1, [R0,#0x485]
5406E0:  LSLS            R1, R1, #0x1F
5406E2:  BEQ.W           loc_540870
5406E6:  LDR.W           R0, [R0,#0x590]
5406EA:  CMP             R0, #0
5406EC:  ITT NE
5406EE:  LDRNE           R1, [R5,#0xC]
5406F0:  CMPNE           R0, R1
5406F2:  BEQ.W           loc_540870
5406F6:  LDR             R1, [R6,#0x14]
5406F8:  LDR             R2, [R0,#0x14]
5406FA:  ADD.W           R3, R1, #0x30 ; '0'
5406FE:  CMP             R1, #0
540700:  IT EQ
540702:  ADDEQ           R3, R6, #4
540704:  ADD.W           R1, R2, #0x30 ; '0'
540708:  CMP             R2, #0
54070A:  VLDR            S0, [R3]
54070E:  IT EQ
540710:  ADDEQ           R1, R0, #4
540712:  VLDR            D16, [R3,#4]
540716:  VLDR            S2, [R1]
54071A:  VLDR            D17, [R1,#4]
54071E:  VSUB.F32        S0, S2, S0
540722:  VSUB.F32        D16, D17, D16
540726:  VMUL.F32        D1, D16, D16
54072A:  VMUL.F32        S0, S0, S0
54072E:  VADD.F32        S0, S0, S2
540732:  VADD.F32        S0, S0, S3
540736:  VLDR            S2, =100.0
54073A:  VCMPE.F32       S0, S2
54073E:  VMRS            APSR_nzcv, FPSCR
540742:  BGT             loc_540788
540744:  VLDR            S0, [R0,#0x48]
540748:  VLDR            S2, [R0,#0x4C]
54074C:  VMUL.F32        S0, S0, S0
540750:  VLDR            S4, [R0,#0x50]
540754:  VMUL.F32        S2, S2, S2
540758:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x540762)
54075A:  VMUL.F32        S4, S4, S4
54075E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
540760:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
540762:  VADD.F32        S0, S0, S2
540766:  VLDR            S2, [R0]
54076A:  VADD.F32        S0, S0, S4
54076E:  VMUL.F32        S0, S2, S0
540772:  VLDR            S2, =50.0
540776:  VMUL.F32        S0, S0, S2
54077A:  VMOV.F32        S2, #1.0
54077E:  VCMPE.F32       S0, S2
540782:  VMRS            APSR_nzcv, FPSCR
540786:  BLE             loc_540870
540788:  LDR             R0, [R4]
54078A:  MOV             R1, R6
54078C:  MOVS            R2, #1
54078E:  MOVS            R3, #0
540790:  MOV.W           R8, #0
540794:  LDR.W           R12, [R0,#0x1C]
540798:  MOV             R0, R4
54079A:  BLX             R12
54079C:  CMP             R0, #1
54079E:  BNE             loc_540866
5407A0:  LDRB.W          R1, [R5,#0x30]
5407A4:  LDR             R0, [R5,#0x14]
5407A6:  AND.W           R2, R1, #0xF9
5407AA:  STRB.W          R8, [R5,#0x20]
5407AE:  STRB.W          R2, [R5,#0x30]
5407B2:  MOVS            R2, #8
5407B4:  LDR.W           R0, [R0,#0x484]
5407B8:  AND.W           R1, R1, #0xF1
5407BC:  B               loc_540488
5407BE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5407C6)
5407C0:  LDR             R1, [R5,#0x24]
5407C2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5407C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5407C6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5407C8:  LDR             R2, [R5,#0x28]
5407CA:  ADD             R1, R2
5407CC:  CMP             R1, R0
5407CE:  BHI.W           loc_5403EC
5407D2:  LDR             R0, [R4]
5407D4:  MOV             R1, R6
5407D6:  MOVS            R2, #1
5407D8:  MOVS            R3, #0
5407DA:  MOV.W           R8, #0
5407DE:  LDR             R5, [R0,#0x1C]
5407E0:  MOV             R0, R4
5407E2:  BLX             R5
5407E4:  CMP             R0, #1
5407E6:  BNE.W           loc_5403EC
5407EA:  MOVS            R0, #off_18; this
5407EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5407F0:  MOV             R4, R0
5407F2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5407F6:  LDR             R0, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x5407FE)
5407F8:  LDRB            R1, [R4,#0xC]
5407FA:  ADD             R0, PC; _ZTV25CTaskComplexPolicePursuit_ptr
5407FC:  STRD.W          R8, R8, [R4,#0x10]
540800:  LDR             R0, [R0]; `vtable for'CTaskComplexPolicePursuit ...
540802:  ADDS            R0, #8
540804:  STR             R0, [R4]
540806:  AND.W           R0, R1, #0xF8
54080A:  ORR.W           R0, R0, #4
54080E:  STRB            R0, [R4,#0xC]
540810:  B               loc_5403EC
540812:  BLX             rand
540816:  UXTH            R0, R0
540818:  VLDR            S2, =0.000015259
54081C:  VMOV            S0, R0
540820:  ANDS.W          R1, R8, #4
540824:  ADR             R2, dword_540908
540826:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540834)
540828:  VCVT.F32.S32    S0, S0
54082C:  IT NE
54082E:  ADDNE           R2, #4
540830:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540832:  CMP             R1, #0
540834:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540836:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540838:  VMUL.F32        S0, S0, S2
54083C:  VLDR            S2, [R2]
540840:  STR             R0, [R5,#0x18]
540842:  MOV.W           R0, #1
540846:  MOV.W           R2, #0xFA
54084A:  VMUL.F32        S0, S2, S0
54084E:  VCVT.S32.F32    S0, S0
540852:  STRB.W          R0, [R5,#0x20]
540856:  IT NE
540858:  MOVWNE          R2, #0xBB8
54085C:  VMOV            R0, S0
540860:  ADD             R0, R2
540862:  STR             R0, [R5,#0x1C]
540864:  B               loc_5403EC
540866:  LDRB.W          R0, [R5,#0x20]
54086A:  CMP             R0, #0
54086C:  BEQ.W           loc_5403EC
540870:  LDRB.W          R0, [R5,#0x21]
540874:  CBZ             R0, loc_54088A
540876:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54087E)
540878:  MOVS            R1, #0
54087A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54087C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54087E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540880:  STRB.W          R1, [R5,#0x21]
540884:  STR             R0, [R5,#0x18]
540886:  MOV             R1, R0
540888:  B               loc_540894
54088A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540892)
54088C:  LDR             R1, [R5,#0x18]
54088E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540890:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540892:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540894:  LDR             R2, [R5,#0x1C]
540896:  ADD             R1, R2
540898:  CMP             R1, R0
54089A:  BHI.W           loc_5403EC
54089E:  LDR             R0, [R4]
5408A0:  MOV             R1, R6
5408A2:  MOVS            R2, #1
5408A4:  MOVS            R3, #0
5408A6:  MOV.W           R8, #0
5408AA:  LDR.W           R12, [R0,#0x1C]
5408AE:  MOV             R0, R4
5408B0:  BLX             R12
5408B2:  CMP             R0, #1
5408B4:  BNE.W           loc_5403EC
5408B8:  LDR             R0, [R5]
5408BA:  LDRB.W          R1, [R5,#0x30]
5408BE:  STRB.W          R8, [R5,#0x20]
5408C2:  AND.W           R1, R1, #0xFD
5408C6:  STRB.W          R1, [R5,#0x30]
5408CA:  LDR             R2, [R0,#0x28]
5408CC:  MOV             R0, R5
5408CE:  MOV             R1, R6
5408D0:  POP.W           {R8}
5408D4:  POP.W           {R4-R7,LR}
5408D8:  BX              R2
