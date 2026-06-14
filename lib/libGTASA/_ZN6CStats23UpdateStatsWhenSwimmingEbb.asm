; =========================================================
; Game Engine Function: _ZN6CStats23UpdateStatsWhenSwimmingEbb
; Address            : 0x41B4E8 - 0x41B748
; =========================================================

41B4E8:  PUSH            {R4,R5,R7,LR}
41B4EA:  ADD             R7, SP, #8
41B4EC:  VPUSH           {D8}; float
41B4F0:  MOV             R4, R0
41B4F2:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B4FA)
41B4F4:  CMP             R1, #0
41B4F6:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B4F8:  LDR             R5, [R0]; CStats::StatReactionValue ...
41B4FA:  ADD.W           R0, R5, #0x74 ; 't'
41B4FE:  MOV             R1, R0
41B500:  IT EQ
41B502:  ADDEQ.W         R1, R5, #0x70 ; 'p'
41B506:  CMP             R4, #0
41B508:  IT NE
41B50A:  MOVNE           R1, R0; unsigned int
41B50C:  VLDR            S0, [R1]
41B510:  VCVT.U32.F32    S0, S0
41B514:  VMOV            R0, S0; this
41B518:  BLX             j__ZN6CStats23UpdateFatAndMuscleStatsEj; CStats::UpdateFatAndMuscleStats(uint)
41B51C:  LDR             R0, =(_ZN6CStats20m_SwimStaminaCounterE_ptr - 0x41B526)
41B51E:  VLDR            S16, =1000.0
41B522:  ADD             R0, PC; _ZN6CStats20m_SwimStaminaCounterE_ptr
41B524:  VLDR            S0, [R5,#0x88]
41B528:  LDR             R0, [R0]; CStats::m_SwimStaminaCounter ...
41B52A:  VMUL.F32        S0, S0, S16
41B52E:  LDR             R0, [R0]; CStats::m_SwimStaminaCounter
41B530:  VMOV            S2, R0
41B534:  VCVT.F32.U32    S2, S2
41B538:  VCMPE.F32       S0, S2
41B53C:  VMRS            APSR_nzcv, FPSCR
41B540:  BGE             loc_41B5FE
41B542:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B54A)
41B544:  LDR             R1, =(_ZN6CStats20m_SwimStaminaCounterE_ptr - 0x41B54C)
41B546:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B548:  ADD             R1, PC; _ZN6CStats20m_SwimStaminaCounterE_ptr
41B54A:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B54C:  LDR             R1, [R1]; CStats::m_SwimStaminaCounter ...
41B54E:  VLDR            S0, [R0,#4]
41B552:  MOVS            R0, #0
41B554:  STR             R0, [R1]; CStats::m_SwimStaminaCounter
41B556:  VCMPE.F32       S0, #0.0
41B55A:  VMRS            APSR_nzcv, FPSCR
41B55E:  BLE             loc_41B5BA
41B560:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B568)
41B562:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B56A)
41B564:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B566:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41B568:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B56A:  LDR             R1, [R1]; CStats::StatTypesInt ...
41B56C:  VLDR            S2, [R0,#0x58]
41B570:  LDR.W           R1, [R1,#(dword_9649E0 - 0x96492C)]; bool
41B574:  VADD.F32        S0, S0, S2
41B578:  CMP.W           R1, #0xFFFFFFFF
41B57C:  VMIN.F32        D0, D0, D8
41B580:  VSTR            S0, [R0,#0x58]
41B584:  BGT             loc_41B5AA
41B586:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B594)
41B588:  VMOV.F32        S0, #-23.0
41B58C:  VLDR            S4, =0.0
41B590:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B592:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B594:  VLDR            S2, [R0,#0x54]
41B598:  VADD.F32        S0, S2, S0
41B59C:  VMAX.F32        D0, D0, D2
41B5A0:  VSTR            S0, [R0,#0x54]
41B5A4:  MOVS            R0, #0; this
41B5A6:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B5AA:  MOVS            R0, #0; this
41B5AC:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B5B0:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B5B6)
41B5B2:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B5B4:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B5B6:  VLDR            S0, [R0,#4]
41B5BA:  VMOV.F32        S2, #1.0
41B5BE:  VCMPE.F32       S0, S2
41B5C2:  VMRS            APSR_nzcv, FPSCR
41B5C6:  BLE             loc_41B5F8
41B5C8:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41B5CE)
41B5CA:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41B5CC:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41B5CE:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41B5D0:  CBZ             R0, loc_41B5F8
41B5D2:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B5D8)
41B5D4:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B5D6:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B5D8:  VLDR            S2, [R0,#0x58]
41B5DC:  VCMPE.F32       S2, S16
41B5E0:  VMRS            APSR_nzcv, FPSCR
41B5E4:  BGE             loc_41B5F8
41B5E6:  VMOV            R2, S0; unsigned __int16
41B5EA:  MOVS            R3, #0x447A0000; float
41B5F0:  MOVS            R0, #(stderr+1); this
41B5F2:  MOVS            R1, #0x16; unsigned __int8
41B5F4:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41B5F8:  CMP             R4, #1
41B5FA:  BEQ             loc_41B62C
41B5FC:  B               loc_41B742
41B5FE:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41B608)
41B600:  VLDR            S0, =50.0
41B604:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41B606:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
41B608:  VLDR            S2, [R1]
41B60C:  LDR             R1, =(_ZN6CStats20m_SwimStaminaCounterE_ptr - 0x41B616)
41B60E:  VDIV.F32        S0, S2, S0
41B612:  ADD             R1, PC; _ZN6CStats20m_SwimStaminaCounterE_ptr
41B614:  LDR             R1, [R1]; CStats::m_SwimStaminaCounter ...
41B616:  VMUL.F32        S0, S0, S16
41B61A:  VCVT.U32.F32    S0, S0
41B61E:  VMOV            R2, S0
41B622:  ADD             R0, R2
41B624:  STR             R0, [R1]; CStats::m_SwimStaminaCounter
41B626:  CMP             R4, #1
41B628:  BNE.W           loc_41B742
41B62C:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B634)
41B62E:  LDR             R1, =(_ZN6CStats23m_SwimUnderWaterCounterE_ptr - 0x41B636)
41B630:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B632:  ADD             R1, PC; _ZN6CStats23m_SwimUnderWaterCounterE_ptr
41B634:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B636:  LDR             R1, [R1]; CStats::m_SwimUnderWaterCounter ...
41B638:  VLDR            S0, [R0,#0xB0]
41B63C:  LDR             R0, [R1]; CStats::m_SwimUnderWaterCounter
41B63E:  VMUL.F32        S0, S0, S16
41B642:  VMOV            S2, R0
41B646:  VCVT.F32.U32    S2, S2
41B64A:  VCMPE.F32       S0, S2
41B64E:  VMRS            APSR_nzcv, FPSCR
41B652:  BGE             loc_41B71A
41B654:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B65C)
41B656:  LDR             R1, =(_ZN6CStats23m_SwimUnderWaterCounterE_ptr - 0x41B65E)
41B658:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B65A:  ADD             R1, PC; _ZN6CStats23m_SwimUnderWaterCounterE_ptr
41B65C:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B65E:  LDR             R1, [R1]; CStats::m_SwimUnderWaterCounter ...
41B660:  VLDR            S0, [R0,#0x28]
41B664:  MOVS            R0, #0
41B666:  STR             R0, [R1]; CStats::m_SwimUnderWaterCounter
41B668:  VCMPE.F32       S0, #0.0
41B66C:  VMRS            APSR_nzcv, FPSCR
41B670:  BLE             loc_41B6D8
41B672:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B678)
41B674:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B676:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B678:  LDR.W           R1, [R0,#(dword_9649E0 - 0x96492C)]; bool
41B67C:  LDR.W           R2, [R0,#(dword_964AD0 - 0x96492C)]
41B680:  VCVT.S32.F32    S0, S0
41B684:  CMP.W           R1, #0xFFFFFFFF
41B688:  VMOV            R3, S0
41B68C:  ADD             R2, R3
41B68E:  VMOV            S0, R2
41B692:  VCVT.F32.S32    S0, S0
41B696:  VMIN.F32        D0, D0, D8
41B69A:  VCVT.S32.F32    S0, S0
41B69E:  VSTR            S0, [R0,#0x1A4]
41B6A2:  BGT             loc_41B6C8
41B6A4:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41B6B2)
41B6A6:  VMOV.F32        S0, #-23.0
41B6AA:  VLDR            S4, =0.0
41B6AE:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41B6B0:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41B6B2:  VLDR            S2, [R0,#0x54]
41B6B6:  VADD.F32        S0, S2, S0
41B6BA:  VMAX.F32        D0, D0, D2
41B6BE:  VSTR            S0, [R0,#0x54]
41B6C2:  MOVS            R0, #0; this
41B6C4:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B6C8:  MOVS            R0, #0; this
41B6CA:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B6CE:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B6D4)
41B6D0:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B6D2:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B6D4:  VLDR            S0, [R0,#0x28]
41B6D8:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41B6DE)
41B6DA:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41B6DC:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41B6DE:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41B6E0:  CBZ             R0, loc_41B742
41B6E2:  VMOV.F32        S2, #1.0
41B6E6:  VCMPE.F32       S0, S2
41B6EA:  VMRS            APSR_nzcv, FPSCR
41B6EE:  BLE             loc_41B742
41B6F0:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B6F6)
41B6F2:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B6F4:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B6F6:  LDR.W           R0, [R0,#(dword_964AD0 - 0x96492C)]
41B6FA:  CMP.W           R0, #0x3E8
41B6FE:  BGE             loc_41B742
41B700:  MOVS            R3, #0
41B702:  VMOV            R2, S0; unsigned __int16
41B706:  MOVT            R3, #0x447A; float
41B70A:  MOVS            R0, #(stderr+1); this
41B70C:  MOVS            R1, #0xE1; unsigned __int8
41B70E:  VPOP            {D8}
41B712:  POP.W           {R4,R5,R7,LR}
41B716:  B.W             sub_1A0900
41B71A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41B724)
41B71C:  VLDR            S0, =50.0
41B720:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41B722:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
41B724:  VLDR            S2, [R1]
41B728:  LDR             R1, =(_ZN6CStats23m_SwimUnderWaterCounterE_ptr - 0x41B732)
41B72A:  VDIV.F32        S0, S2, S0
41B72E:  ADD             R1, PC; _ZN6CStats23m_SwimUnderWaterCounterE_ptr
41B730:  LDR             R1, [R1]; CStats::m_SwimUnderWaterCounter ...
41B732:  VMUL.F32        S0, S0, S16
41B736:  VCVT.U32.F32    S0, S0
41B73A:  VMOV            R2, S0
41B73E:  ADD             R0, R2
41B740:  STR             R0, [R1]; CStats::m_SwimUnderWaterCounter
41B742:  VPOP            {D8}
41B746:  POP             {R4,R5,R7,PC}
