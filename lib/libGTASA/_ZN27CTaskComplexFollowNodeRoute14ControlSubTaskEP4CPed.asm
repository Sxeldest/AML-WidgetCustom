; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute14ControlSubTaskEP4CPed
; Address            : 0x5203D0 - 0x520622
; =========================================================

5203D0:  PUSH            {R4-R7,LR}
5203D2:  ADD             R7, SP, #0xC
5203D4:  PUSH.W          {R8}
5203D8:  SUB             SP, SP, #0x10
5203DA:  MOV             R4, R0
5203DC:  MOV             R5, R1
5203DE:  LDRB.W          R0, [R4,#0x4C]
5203E2:  LSLS            R0, R0, #0x1D
5203E4:  BPL             loc_5203F4
5203E6:  LDR             R0, [R4,#8]
5203E8:  LDR             R1, [R0]
5203EA:  LDR             R1, [R1,#0x14]
5203EC:  BLX             R1
5203EE:  CMP.W           R0, #0x2C0
5203F2:  BNE             loc_520414
5203F4:  LDRB.W          R0, [R4,#0x48]
5203F8:  CBZ             R0, loc_520446
5203FA:  LDRB.W          R0, [R4,#0x49]
5203FE:  CBZ             R0, loc_520428
520400:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x520408)
520402:  MOVS            R1, #0
520404:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
520406:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
520408:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52040A:  STRB.W          R1, [R4,#0x49]
52040E:  STR             R0, [R4,#0x40]
520410:  MOV             R1, R0
520412:  B               loc_520432
520414:  LDR             R0, [R4]
520416:  MOV             R1, R5
520418:  LDR             R2, [R0,#0x2C]
52041A:  MOV             R0, R4
52041C:  ADD             SP, SP, #0x10
52041E:  POP.W           {R8}
520422:  POP.W           {R4-R7,LR}
520426:  BX              R2
520428:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x520430)
52042A:  LDR             R1, [R4,#0x40]
52042C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52042E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
520430:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
520432:  LDR             R2, [R4,#0x44]
520434:  ADD             R1, R2
520436:  CMP             R1, R0
520438:  BHI             loc_520446
52043A:  LDR             R0, [R4,#8]
52043C:  LDR             R1, [R0]
52043E:  LDR             R1, [R1,#0x14]
520440:  BLX             R1
520442:  CMP             R0, #0xCB
520444:  BNE             loc_52048A
520446:  LDRB.W          R0, [R4,#0x4C]
52044A:  TST.W           R0, #8
52044E:  BEQ.W           loc_5205DA
520452:  LSLS            R1, R0, #0x1A
520454:  BPL             loc_5204D4
520456:  LDR             R0, [R4,#8]
520458:  LDR             R1, [R0]
52045A:  LDR             R1, [R1,#0x14]
52045C:  BLX             R1
52045E:  MOVW            R1, #0x39E
520462:  CMP             R0, R1
520464:  BNE             loc_5204D0
520466:  MOV             R0, R4; this
520468:  MOV             R1, R5; CPed *
52046A:  MOVS            R2, #1; bool
52046C:  BLX             j__ZN27CTaskComplexFollowNodeRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowNodeRoute::CalcBlendRatio(CPed *,bool)
520470:  MOV             R1, R0
520472:  VMOV            S0, R1; float
520476:  VCMPE.F32       S0, #0.0
52047A:  VMRS            APSR_nzcv, FPSCR
52047E:  BGE             loc_520576
520480:  LDR             R0, [R4,#0x18]
520482:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
520486:  MOV             R1, R0
520488:  B               loc_520576
52048A:  LDR             R0, [R4,#8]
52048C:  MOVS            R2, #1
52048E:  MOVS            R3, #0
520490:  MOV.W           R8, #0
520494:  LDR             R1, [R0]
520496:  LDR             R6, [R1,#0x1C]
520498:  MOV             R1, R5
52049A:  BLX             R6
52049C:  CMP             R0, #1
52049E:  BNE.W           loc_5205DA
5204A2:  MOVS            R0, #dword_20; this
5204A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5204A8:  MOV             R6, R0
5204AA:  MOV.W           R0, #0x41000000
5204AE:  STR             R0, [SP,#0x20+var_20]; float
5204B0:  MOV             R0, R6; this
5204B2:  MOVS            R1, #0; int
5204B4:  MOVS            R2, #0; bool
5204B6:  MOVS            R3, #0; bool
5204B8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5204BC:  LDR             R0, [R5]
5204BE:  ADD.W           R3, R4, #0xC
5204C2:  LDM             R3, {R1-R3}
5204C4:  LDR             R4, [R0,#0x3C]
5204C6:  MOV             R0, R5
5204C8:  STR.W           R8, [SP,#0x20+var_20]
5204CC:  BLX             R4
5204CE:  B               loc_5205DC
5204D0:  LDRB.W          R0, [R4,#0x4C]
5204D4:  LSLS            R0, R0, #0x19
5204D6:  BPL             loc_52057C
5204D8:  LDR             R0, [R4,#8]
5204DA:  LDR             R1, [R0]
5204DC:  LDR             R1, [R1,#0x14]
5204DE:  BLX             R1
5204E0:  MOVW            R1, #0x39E
5204E4:  CMP             R0, R1
5204E6:  BNE             loc_52057C
5204E8:  MOV             R0, R4; this
5204EA:  MOV             R1, R5; CPed *
5204EC:  MOVS            R2, #0; bool
5204EE:  BLX             j__ZN27CTaskComplexFollowNodeRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowNodeRoute::CalcBlendRatio(CPed *,bool)
5204F2:  MOV             R1, R0
5204F4:  VMOV            S0, R1
5204F8:  VCMPE.F32       S0, #0.0
5204FC:  VMRS            APSR_nzcv, FPSCR
520500:  BGE             loc_520576
520502:  LDR             R0, [R4,#0x18]
520504:  LDRB.W          R1, [R4,#0x4C]
520508:  LDR             R5, [R4,#8]
52050A:  AND.W           R1, R1, #0xBF
52050E:  STRB.W          R1, [R4,#0x4C]
520512:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
520516:  MOV             R1, R0; float
520518:  MOV             R0, R5; this
52051A:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
52051E:  MOVS            R0, #word_2C; this
520520:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520524:  MOV             R6, R0
520526:  LDR             R5, [R4,#0x18]
520528:  LDR.W           R8, [R4,#0x30]
52052C:  LDR             R4, [R4,#0x38]
52052E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
520532:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x52053A)
520534:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x52053E)
520536:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
520538:  STR             R5, [R6,#8]
52053A:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
52053C:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
52053E:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
520540:  ADDS            R0, #8
520542:  STR             R0, [R6]
520544:  ADD.W           R0, R4, R4,LSL#1
520548:  LDRB            R2, [R6,#0x1C]
52054A:  LDRB            R3, [R6,#0x1D]
52054C:  ADD.W           R0, R8, R0,LSL#2
520550:  VLDR            D16, [R0,#4]
520554:  LDR             R0, [R0,#0xC]
520556:  STR             R0, [R6,#0x14]
520558:  ADD.W           R0, R1, #8
52055C:  STR             R0, [R6]
52055E:  MOV.W           R0, #0x3F000000
520562:  STR             R0, [R6,#0x18]
520564:  AND.W           R0, R3, #0xE0
520568:  STRB            R0, [R6,#0x1D]
52056A:  AND.W           R0, R2, #0xC0
52056E:  STRB            R0, [R6,#0x1C]
520570:  VSTR            D16, [R6,#0xC]
520574:  B               loc_5205DC
520576:  LDR             R0, [R4,#8]; this
520578:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
52057C:  LDRB.W          R0, [R4,#0x4C]
520580:  AND.W           R0, R0, #0x30 ; '0'
520584:  CMP             R0, #0x10
520586:  BNE             loc_5205DA
520588:  LDR             R0, [R4,#8]
52058A:  LDR             R1, [R0]
52058C:  LDR             R1, [R1,#0x14]
52058E:  BLX             R1
520590:  MOVW            R1, #0x387
520594:  CMP             R0, R1
520596:  BEQ             loc_5205DA
520598:  MOV             R0, R4; this
52059A:  MOV             R1, R5; CPed *
52059C:  MOVS            R2, #1; bool
52059E:  BLX             j__ZN27CTaskComplexFollowNodeRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowNodeRoute::CalcBlendRatio(CPed *,bool)
5205A2:  MOV             R5, R0
5205A4:  VMOV            S0, R5
5205A8:  VCMPE.F32       S0, #0.0
5205AC:  VMRS            APSR_nzcv, FPSCR
5205B0:  BLT             loc_5205DA
5205B2:  LDRB.W          R1, [R4,#0x4C]
5205B6:  LDR             R0, [R4,#8]
5205B8:  AND.W           R1, R1, #0x8F
5205BC:  ORR.W           R1, R1, #0x20 ; ' '
5205C0:  STRB.W          R1, [R4,#0x4C]
5205C4:  LDR             R1, [R0]
5205C6:  LDR             R1, [R1,#0x14]
5205C8:  BLX             R1
5205CA:  MOVW            R1, #0x39E; unsigned int
5205CE:  CMP             R0, R1
5205D0:  BNE             loc_5205E6
5205D2:  LDR             R0, [R4,#8]; this
5205D4:  MOV             R1, R5; float
5205D6:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
5205DA:  LDR             R6, [R4,#8]
5205DC:  MOV             R0, R6
5205DE:  ADD             SP, SP, #0x10
5205E0:  POP.W           {R8}
5205E4:  POP             {R4-R7,PC}
5205E6:  MOVS            R0, #dword_24; this
5205E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5205EC:  MOV             R6, R0
5205EE:  LDR             R0, [R4,#0x18]
5205F0:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
5205F4:  LDR             R2, [R4,#0x38]
5205F6:  MOV             R1, R0
5205F8:  LDR             R0, [R4,#0x30]
5205FA:  MOV.W           R12, #0
5205FE:  MOV.W           R4, #0x3F000000
520602:  ADD.W           R2, R2, R2,LSL#1
520606:  ADD.W           R0, R0, R2,LSL#2
52060A:  LDRD.W          R2, R3, [R0,#4]
52060E:  LDR             R0, [R0,#0xC]
520610:  STMEA.W         SP, {R0,R4,R12}
520614:  MOV             R0, R6
520616:  BLX             j__ZN24CTaskSimpleGoToPointFineC2Ef7CVectorfP7CEntity; CTaskSimpleGoToPointFine::CTaskSimpleGoToPointFine(float,CVector,float,CEntity *)
52061A:  MOV             R1, R5; float
52061C:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
520620:  B               loc_5205DC
