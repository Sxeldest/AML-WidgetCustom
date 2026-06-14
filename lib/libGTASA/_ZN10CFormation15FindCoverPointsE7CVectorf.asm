; =========================================================
; Game Engine Function: _ZN10CFormation15FindCoverPointsE7CVectorf
; Address            : 0x549384 - 0x54960A
; =========================================================

549384:  PUSH            {R4-R7,LR}
549386:  ADD             R7, SP, #0xC
549388:  PUSH.W          {R8-R11}
54938C:  SUB             SP, SP, #4
54938E:  VPUSH           {D8-D15}
549392:  SUB             SP, SP, #0x170
549394:  MOV             R5, R0
549396:  LDR             R0, =(__stack_chk_guard_ptr - 0x5493A0)
549398:  MOV             LR, R1
54939A:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x5493A6)
54939C:  ADD             R0, PC; __stack_chk_guard_ptr
54939E:  MOV             R12, R2
5493A0:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x5493AC)
5493A2:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
5493A4:  LDR             R0, [R0]; __stack_chk_guard
5493A6:  MOVS            R4, #0
5493A8:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
5493AA:  LDR             R1, [R1]; CFormation::m_Destinations ...
5493AC:  VMOV.I32        Q5, #0
5493B0:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
5493B2:  VMOV            S16, R3
5493B6:  LDR             R0, [R0]
5493B8:  STRD.W          R4, R4, [R1,#(dword_9FFA48 - 0x9FF914)]
5493BC:  STR             R4, [R1]; CFormation::m_Destinations
5493BE:  STR             R0, [SP,#0x1D0+var_64]
5493C0:  ADD.W           R0, R1, #0x124
5493C4:  LDR.W           R10, [R2]; CPools::ms_pVehiclePool
5493C8:  VST1.32         {D10-D11}, [R0]
5493CC:  LDR.W           R6, [R10,#8]
5493D0:  CMP             R6, #0
5493D2:  BEQ.W           loc_5494E6
5493D6:  ADD             R0, SP, #0x1D0+var_1A0
5493D8:  VMOV.F32        S24, #1.5
5493DC:  ADD.W           R1, R0, #8
5493E0:  ADD.W           R0, R0, #0x124
5493E4:  STR             R0, [SP,#0x1D0+var_1AC]
5493E6:  MOVW            R9, #0xA2C
5493EA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5493F4)
5493EC:  VLDR            S18, =0.005
5493F0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5493F2:  STR             R1, [SP,#0x1D0+var_1B4]
5493F4:  LDR             R2, [R0]; CModelInfo::ms_modelInfoPtrs ...
5493F6:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x5493FC)
5493F8:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
5493FA:  LDR             R0, [R0]; CFormation::m_Destinations ...
5493FC:  STR             R0, [SP,#0x1D0+var_1B8]
5493FE:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x549408)
549400:  STRD.W          LR, R5, [SP,#0x1D0+var_1A8]
549404:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
549406:  STR             R2, [SP,#0x1D0+var_1B0]
549408:  LDR.W           R11, [R0]; CFormation::m_Destinations ...
54940C:  LDR.W           R0, [R10,#4]
549410:  SUBS            R6, #1
549412:  LDRSB           R0, [R0,R6]
549414:  CMP             R0, #0
549416:  BLT             loc_5494E2
549418:  LDR.W           R0, [R10]
54941C:  MLA.W           R0, R6, R9, R0
549420:  CMP             R0, #0
549422:  BEQ             loc_5494E2
549424:  LDR.W           R1, [R0,#0x5A0]
549428:  CMP             R1, #0
54942A:  BNE             loc_5494E2
54942C:  VLDR            S0, [R0,#0x48]
549430:  VLDR            S2, [R0,#0x4C]
549434:  VMUL.F32        S0, S0, S0
549438:  VLDR            S4, [R0,#0x50]
54943C:  VMUL.F32        S2, S2, S2
549440:  VMUL.F32        S4, S4, S4
549444:  VADD.F32        S0, S0, S2
549448:  VADD.F32        S0, S0, S4
54944C:  VSQRT.F32       S0, S0
549450:  VCMPE.F32       S0, S18
549454:  VMRS            APSR_nzcv, FPSCR
549458:  BGE             loc_5494E2
54945A:  LDRSH.W         R1, [R0,#0x26]
54945E:  LDR.W           R1, [R2,R1,LSL#2]
549462:  LDR             R1, [R1,#0x2C]
549464:  VLDR            S0, [R1,#0x14]
549468:  VCMPE.F32       S0, S24
54946C:  VMRS            APSR_nzcv, FPSCR
549470:  BGE             loc_5494E2
549472:  LDR             R2, [SP,#0x1D0+var_1AC]
549474:  MOV             R3, R12
549476:  STR             R4, [SP,#0x1D0+var_1A0]
549478:  MOV             R8, R12
54947A:  STR             R4, [R2,#0x14]
54947C:  VST1.32         {D10-D11}, [R2]!
549480:  STR             R4, [R2]
549482:  ADD.W           R2, R1, #0xC
549486:  LDR             R0, [R0,#0x14]
549488:  VSTR            S16, [SP,#0x1D0+var_1C0]
54948C:  STRD.W          R1, R2, [SP,#0x1D0+var_1C8]
549490:  MOV             R1, R5
549492:  STR             R0, [SP,#0x1D0+var_1D0]
549494:  ADD             R0, SP, #0x1D0+var_1A0
549496:  MOV             R2, LR
549498:  BLX             j__ZN10CFormation24FindCoverPointsBehindBoxEP10CPointList7CVectorP7CMatrixPKS2_S6_S6_f; CFormation::FindCoverPointsBehindBox(CPointList *,CVector,CMatrix *,CVector const*,CVector const*,CVector const*,float)
54949C:  LDR.W           R12, [SP,#0x1D0+var_1A0]
5494A0:  CMP.W           R12, #1
5494A4:  BLT             loc_5494D8
5494A6:  LDR             R0, [SP,#0x1D0+var_1B8]
5494A8:  MOVS            R1, #0
5494AA:  LDR             R2, [SP,#0x1D0+var_1B4]
5494AC:  LDR             R0, [R0]
5494AE:  CMP             R0, #0x17
5494B0:  BGT             loc_5494D0
5494B2:  ADDS            R3, R0, #1
5494B4:  ADD.W           R0, R0, R0,LSL#1
5494B8:  LDR.W           R4, [R2,#-4]
5494BC:  ADD.W           R0, R11, R0,LSL#2
5494C0:  LDRD.W          R5, LR, [R2]
5494C4:  ADDS            R0, #4
5494C6:  STR.W           R3, [R11]; CFormation::m_Destinations
5494CA:  STM.W           R0, {R4,R5,LR}
5494CE:  MOV             R0, R3
5494D0:  ADDS            R1, #1
5494D2:  ADDS            R2, #0xC
5494D4:  CMP             R1, R12
5494D6:  BLT             loc_5494AE
5494D8:  LDRD.W          LR, R5, [SP,#0x1D0+var_1A8]
5494DC:  MOV             R12, R8
5494DE:  MOVS            R4, #0
5494E0:  LDR             R2, [SP,#0x1D0+var_1B0]
5494E2:  CMP             R6, #0
5494E4:  BNE             loc_54940C
5494E6:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5494EC)
5494E8:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5494EA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5494EC:  LDR.W           R9, [R0]; CPools::ms_pObjectPool
5494F0:  LDR.W           R0, [R9,#8]
5494F4:  CMP             R0, #0
5494F6:  BEQ             loc_5495E8
5494F8:  MOV.W           R1, #0x1A4
5494FC:  SUBS            R6, R0, #1
5494FE:  MULS            R1, R0
549500:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x54950A)
549502:  VMOV            S18, R12
549506:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
549508:  VMOV            S20, LR
54950C:  VMOV            S22, R5
549510:  VLDR            S24, =0.95
549514:  LDR.W           R10, [R0]; CFormation::m_Destinations ...
549518:  ADD.W           R8, SP, #0x1D0+var_1A0
54951C:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x549526)
54951E:  SUB.W           R4, R1, #0x1A4
549522:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
549524:  LDR.W           R11, [R0]; CFormation::m_Destinations ...
549528:  LDR.W           R0, [R9,#4]
54952C:  LDRSB           R0, [R0,R6]
54952E:  CMP             R0, #0
549530:  BLT             loc_5495DE
549532:  LDR.W           R0, [R9]
549536:  ADDS            R5, R0, R4
549538:  BEQ             loc_5495DE
54953A:  LDR             R0, [R5,#0x14]
54953C:  VLDR            S0, [R0,#0x28]
549540:  VCMPE.F32       S0, S24
549544:  VMRS            APSR_nzcv, FPSCR
549548:  BLE             loc_5495DE
54954A:  MOV             R0, R5; this
54954C:  BLX             j__ZN7CObject26CanBeUsedToTakeCoverBehindEv; CObject::CanBeUsedToTakeCoverBehind(void)
549550:  CMP             R0, #0
549552:  BEQ             loc_5495DE
549554:  LDR             R1, [R5,#0x14]
549556:  ADD.W           R0, R1, #0x30 ; '0'
54955A:  CMP             R1, #0
54955C:  IT EQ
54955E:  ADDEQ           R0, R5, #4
549560:  VLDR            S26, [R0]
549564:  VLDR            S28, [R0,#4]
549568:  VSUB.F32        S0, S26, S22
54956C:  VSUB.F32        S2, S28, S20
549570:  VMUL.F32        S6, S0, S0
549574:  VMUL.F32        S4, S2, S2
549578:  VADD.F32        S4, S6, S4
54957C:  VSQRT.F32       S4, S4
549580:  VCMPE.F32       S4, S16
549584:  VMRS            APSR_nzcv, FPSCR
549588:  BGE             loc_5495DE
54958A:  VLDR            S30, [R0,#8]
54958E:  MOV             R0, R8; this
549590:  VSTR            S2, [SP,#0x1D0+var_19C]
549594:  VSUB.F32        S4, S30, S18
549598:  VSTR            S0, [SP,#0x1D0+var_1A0]
54959C:  VSTR            S4, [SP,#0x1D0+var_198]
5495A0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5495A4:  LDR.W           R0, [R10]; CFormation::m_Destinations
5495A8:  CMP             R0, #0x17
5495AA:  BGT             loc_5495DE
5495AC:  VLDR            S0, [SP,#0x1D0+var_1A0]
5495B0:  ADDS            R1, R0, #1
5495B2:  VLDR            S2, [SP,#0x1D0+var_19C]
5495B6:  ADD.W           R0, R0, R0,LSL#1
5495BA:  VLDR            S4, [SP,#0x1D0+var_198]
5495BE:  VADD.F32        S0, S26, S0
5495C2:  VADD.F32        S2, S28, S2
5495C6:  ADD.W           R0, R11, R0,LSL#2
5495CA:  VADD.F32        S4, S30, S4
5495CE:  STR.W           R1, [R11]; CFormation::m_Destinations
5495D2:  VSTR            S0, [R0,#4]
5495D6:  VSTR            S2, [R0,#8]
5495DA:  VSTR            S4, [R0,#0xC]
5495DE:  SUBS            R6, #1
5495E0:  SUB.W           R4, R4, #0x1A4
5495E4:  ADDS            R0, R6, #1
5495E6:  BNE             loc_549528
5495E8:  LDR             R0, =(__stack_chk_guard_ptr - 0x5495F0)
5495EA:  LDR             R1, [SP,#0x1D0+var_64]
5495EC:  ADD             R0, PC; __stack_chk_guard_ptr
5495EE:  LDR             R0, [R0]; __stack_chk_guard
5495F0:  LDR             R0, [R0]
5495F2:  SUBS            R0, R0, R1
5495F4:  ITTTT EQ
5495F6:  ADDEQ           SP, SP, #0x170
5495F8:  VPOPEQ          {D8-D15}
5495FC:  ADDEQ           SP, SP, #4
5495FE:  POPEQ.W         {R8-R11}
549602:  IT EQ
549604:  POPEQ           {R4-R7,PC}
549606:  BLX             __stack_chk_fail
