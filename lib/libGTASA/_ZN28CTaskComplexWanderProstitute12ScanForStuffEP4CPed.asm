; =========================================================
; Game Engine Function: _ZN28CTaskComplexWanderProstitute12ScanForStuffEP4CPed
; Address            : 0x524298 - 0x52451A
; =========================================================

524298:  PUSH            {R4-R7,LR}
52429A:  ADD             R7, SP, #0xC
52429C:  PUSH.W          {R8-R11}
5242A0:  SUB             SP, SP, #4
5242A2:  VPUSH           {D8-D12}
5242A6:  SUB             SP, SP, #0x18
5242A8:  MOV             R5, R0
5242AA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5242B6)
5242AC:  MOV             R4, R1
5242AE:  LDRB.W          R1, [R5,#0x30]
5242B2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5242B4:  CMP             R1, #0
5242B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5242B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5242BA:  BNE             loc_5242C8
5242BC:  MOVS            R1, #0x32 ; '2'
5242BE:  STRD.W          R0, R1, [R5,#0x28]
5242C2:  MOVS            R1, #1
5242C4:  STRB.W          R1, [R5,#0x30]
5242C8:  LDR             R1, [R5,#0x34]
5242CA:  CMP             R0, R1
5242CC:  BCC             loc_524312
5242CE:  LDRB.W          R1, [R5,#0x31]
5242D2:  CBZ             R1, loc_5242E0
5242D4:  MOVS            R1, #0
5242D6:  STRB.W          R1, [R5,#0x31]
5242DA:  MOV             R1, R0
5242DC:  STR             R0, [R5,#0x28]
5242DE:  B               loc_5242E2
5242E0:  LDR             R1, [R5,#0x28]
5242E2:  LDR             R2, [R5,#0x2C]
5242E4:  ADD             R1, R2
5242E6:  CMP             R1, R0
5242E8:  BHI             loc_524312
5242EA:  MOVS            R1, #0x32 ; '2'
5242EC:  STRD.W          R0, R1, [R5,#0x28]
5242F0:  MOVS            R0, #1
5242F2:  STRB.W          R0, [R5,#0x30]
5242F6:  MOV             R0, R5; this
5242F8:  MOV             R1, R4; CPed *
5242FA:  BLX             j__ZN26CTaskComplexWanderStandard18LookForGangMembersEP4CPed; CTaskComplexWanderStandard::LookForGangMembers(CPed *)
5242FE:  CBNZ            R0, loc_524312
524300:  MOV             R0, R5; this
524302:  MOV             R1, R4; CPed *
524304:  BLX             j__ZN26CTaskComplexWanderStandard19LookForChatPartnersEP4CPed; CTaskComplexWanderStandard::LookForChatPartners(CPed *)
524308:  CBNZ            R0, loc_524312
52430A:  MOV             R0, R5; this
52430C:  MOV             R1, R4; CPed *
52430E:  BLX             j__ZN26CTaskComplexWanderStandard15LookForSexyCarsEP4CPed; CTaskComplexWanderStandard::LookForSexyCars(CPed *)
524312:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52431A)
524314:  LDR             R1, [R5,#0x38]
524316:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524318:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52431A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52431C:  CMP             R0, R1
52431E:  BLS.W           loc_52450C
524322:  ADD.W           R0, R0, #0x7D0
524326:  STR             R0, [R5,#0x38]
524328:  LDR.W           R0, [R4,#0x440]
52432C:  LDR.W           R5, [R0,#0x130]
524330:  CBZ             R5, loc_52433C
524332:  LDR.W           R1, [R5,#0x59C]
524336:  CMP             R1, #6
524338:  BEQ.W           loc_52450C
52433C:  LDR.W           R1, [R0,#0x134]
524340:  CBZ             R1, loc_52434C
524342:  LDR.W           R1, [R1,#0x59C]
524346:  CMP             R1, #6
524348:  BEQ.W           loc_52450C
52434C:  LDR.W           R1, [R0,#0x138]
524350:  CBZ             R1, loc_52435C
524352:  LDR.W           R1, [R1,#0x59C]
524356:  CMP             R1, #6
524358:  BEQ.W           loc_52450C
52435C:  LDR.W           R1, [R0,#0x13C]
524360:  CBZ             R1, loc_52436C
524362:  LDR.W           R1, [R1,#0x59C]
524366:  CMP             R1, #6
524368:  BEQ.W           loc_52450C
52436C:  LDR.W           R1, [R0,#0x140]
524370:  CBZ             R1, loc_52437C
524372:  LDR.W           R1, [R1,#0x59C]
524376:  CMP             R1, #6
524378:  BEQ.W           loc_52450C
52437C:  LDR.W           R1, [R0,#0x144]
524380:  CBZ             R1, loc_52438C
524382:  LDR.W           R1, [R1,#0x59C]
524386:  CMP             R1, #6
524388:  BEQ.W           loc_52450C
52438C:  LDR.W           R1, [R0,#0x148]
524390:  CBZ             R1, loc_52439C
524392:  LDR.W           R1, [R1,#0x59C]
524396:  CMP             R1, #6
524398:  BEQ.W           loc_52450C
52439C:  LDR.W           R1, [R0,#0x14C]
5243A0:  CBZ             R1, loc_5243AC
5243A2:  LDR.W           R1, [R1,#0x59C]
5243A6:  CMP             R1, #6
5243A8:  BEQ.W           loc_52450C
5243AC:  LDR.W           R1, [R0,#0x150]
5243B0:  CBZ             R1, loc_5243BC
5243B2:  LDR.W           R1, [R1,#0x59C]
5243B6:  CMP             R1, #6
5243B8:  BEQ.W           loc_52450C
5243BC:  LDR.W           R1, [R0,#0x154]
5243C0:  CBZ             R1, loc_5243CC
5243C2:  LDR.W           R1, [R1,#0x59C]
5243C6:  CMP             R1, #6
5243C8:  BEQ.W           loc_52450C
5243CC:  LDR.W           R1, [R0,#0x158]
5243D0:  CBZ             R1, loc_5243DC
5243D2:  LDR.W           R1, [R1,#0x59C]
5243D6:  CMP             R1, #6
5243D8:  BEQ.W           loc_52450C
5243DC:  LDR.W           R1, [R0,#0x15C]
5243E0:  CBZ             R1, loc_5243EC
5243E2:  LDR.W           R1, [R1,#0x59C]
5243E6:  CMP             R1, #6
5243E8:  BEQ.W           loc_52450C
5243EC:  LDR.W           R1, [R0,#0x160]
5243F0:  CBZ             R1, loc_5243FC
5243F2:  LDR.W           R1, [R1,#0x59C]
5243F6:  CMP             R1, #6
5243F8:  BEQ.W           loc_52450C
5243FC:  LDR.W           R1, [R0,#0x164]
524400:  CBZ             R1, loc_52440C
524402:  LDR.W           R1, [R1,#0x59C]
524406:  CMP             R1, #6
524408:  BEQ.W           loc_52450C
52440C:  LDR.W           R1, [R0,#0x168]
524410:  CBZ             R1, loc_52441A
524412:  LDR.W           R1, [R1,#0x59C]
524416:  CMP             R1, #6
524418:  BEQ             loc_52450C
52441A:  LDR.W           R1, [R0,#0x16C]
52441E:  CBZ             R1, loc_524428
524420:  LDR.W           R1, [R1,#0x59C]
524424:  CMP             R1, #6
524426:  BEQ             loc_52450C
524428:  LDR             R1, =(_ZN29CTaskComplexProstituteSolicit22ms_fMaxSolicitSpeedSqrE_ptr - 0x524438)
52442A:  ADD.W           R10, R0, #0x134
52442E:  ADD.W           R9, R0, #0x68 ; 'h'
524432:  LDR             R0, =(_ZTV28CEventAcquaintancePedRespect_ptr - 0x52443E)
524434:  ADD             R1, PC; _ZN29CTaskComplexProstituteSolicit22ms_fMaxSolicitSpeedSqrE_ptr
524436:  VLDR            S18, =0.000015259
52443A:  ADD             R0, PC; _ZTV28CEventAcquaintancePedRespect_ptr
52443C:  VLDR            S20, =50000.0
524440:  LDR             R1, [R1]; CTaskComplexProstituteSolicit::ms_fMaxSolicitSpeedSqr ...
524442:  ADD.W           R8, SP, #0x60+var_5C
524446:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedRespect ...
524448:  MOVS            R6, #0
52444A:  VLDR            S22, =50.0
52444E:  VLDR            S16, [R1]
524452:  ADD.W           R11, R0, #8
524456:  VLDR            D12, =2.06158464e11
52445A:  B               loc_524464
52445C:  ADDS            R0, R6, #1
52445E:  LDR.W           R5, [R10,R6,LSL#2]
524462:  MOV             R6, R0
524464:  CMP             R5, #0
524466:  ITT NE
524468:  LDRNE.W         R0, [R5,#0x444]
52446C:  CMPNE           R0, #0
52446E:  BEQ             loc_524508
524470:  LDR.W           R1, [R5,#0x590]
524474:  CMP             R1, #0
524476:  ITT NE
524478:  LDRNE.W         R0, [R0,#0xA8]
52447C:  CMPNE           R0, R4
52447E:  BEQ             loc_524508
524480:  BLX             rand
524484:  UXTH            R0, R0
524486:  VMOV            S0, R0
52448A:  VCVT.F32.S32    S0, S0
52448E:  LDR.W           R0, [R5,#0x590]
524492:  LDR.W           R1, [R0,#0x388]
524496:  LDR.W           R1, [R1,#0xD8]
52449A:  VMUL.F32        S0, S0, S18
52449E:  VMUL.F32        S0, S0, S20
5244A2:  VCVT.S32.F32    S0, S0
5244A6:  VMOV            R2, S0; CPed *
5244AA:  CMP             R1, R2
5244AC:  BLS             loc_524508
5244AE:  VLDR            S0, [R0,#0x48]
5244B2:  VLDR            D16, [R0,#0x4C]
5244B6:  VMUL.F32        S0, S0, S22
5244BA:  VMUL.F32        D16, D16, D12
5244BE:  VMUL.F32        D1, D16, D16
5244C2:  VMUL.F32        S0, S0, S0
5244C6:  VADD.F32        S0, S0, S2
5244CA:  VADD.F32        S0, S0, S3
5244CE:  VCMPE.F32       S0, S16
5244D2:  VMRS            APSR_nzcv, FPSCR
5244D6:  BGE             loc_524508
5244D8:  MOV             R0, R4; this
5244DA:  MOV             R1, R5; CPed *
5244DC:  BLX             j__ZN29CTaskComplexProstituteSolicit11IsTaskValidEP4CPedS1_; CTaskComplexProstituteSolicit::IsTaskValid(CPed *,CPed *)
5244E0:  CMP             R0, #1
5244E2:  BNE             loc_524508
5244E4:  MOV             R0, R8; this
5244E6:  MOV             R1, R5; CPed *
5244E8:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
5244EC:  MOVW            R0, #0x51D
5244F0:  MOV             R1, R8; CEvent *
5244F2:  STRH.W          R0, [SP,#0x60+var_52]
5244F6:  MOV             R0, R9; this
5244F8:  MOVS            R2, #0; bool
5244FA:  STR.W           R11, [SP,#0x60+var_5C]
5244FE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
524502:  MOV             R0, R8; this
524504:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
524508:  CMP             R6, #0xF
52450A:  BNE             loc_52445C
52450C:  ADD             SP, SP, #0x18
52450E:  VPOP            {D8-D12}
524512:  ADD             SP, SP, #4
524514:  POP.W           {R8-R11}
524518:  POP             {R4-R7,PC}
