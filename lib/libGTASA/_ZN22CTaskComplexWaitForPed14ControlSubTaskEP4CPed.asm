; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForPed14ControlSubTaskEP4CPed
; Address            : 0x5363CC - 0x536558
; =========================================================

5363CC:  PUSH            {R4-R7,LR}
5363CE:  ADD             R7, SP, #0xC
5363D0:  PUSH.W          {R11}
5363D4:  SUB             SP, SP, #0x28
5363D6:  MOV             R5, R0
5363D8:  MOV             R4, R1
5363DA:  LDR             R0, [R5,#0xC]; this
5363DC:  CMP             R0, #0
5363DE:  BEQ.W           loc_5364EE
5363E2:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
5363E6:  CBZ             R0, loc_536408
5363E8:  LDRB.W          R0, [R5,#0x24]
5363EC:  CBZ             R0, loc_53644E
5363EE:  LDRB.W          R0, [R5,#0x25]
5363F2:  CBZ             R0, loc_53643C
5363F4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5363FC)
5363F6:  MOVS            R1, #0
5363F8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5363FA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5363FC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5363FE:  STRB.W          R1, [R5,#0x25]
536402:  STR             R0, [R5,#0x1C]
536404:  MOV             R1, R0
536406:  B               loc_536446
536408:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x536414)
53640A:  MOVS            R2, #0; bool
53640C:  LDR             R1, [R5,#0xC]; CPed *
53640E:  ADD             R5, SP, #0x38+var_2C
536410:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
536412:  MOVS            R6, #0
536414:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
536416:  LDR             R3, [R0]; int
536418:  MOV             R0, R5; this
53641A:  BLX             j__ZN13CEventDeadPedC2EP4CPedbi; CEventDeadPed::CEventDeadPed(CPed *,bool,int)
53641E:  MOV.W           R0, #0x258
536422:  MOV             R1, R5; CEvent *
536424:  STRH.W          R0, [SP,#0x38+var_22]
536428:  MOVS            R2, #0; bool
53642A:  LDR.W           R0, [R4,#0x440]
53642E:  ADDS            R0, #0x68 ; 'h'; this
536430:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
536434:  MOV             R0, R5; this
536436:  BLX             j__ZN13CEventDeadPedD2Ev; CEventDeadPed::~CEventDeadPed()
53643A:  B               loc_5364F0
53643C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x536444)
53643E:  LDR             R1, [R5,#0x1C]
536440:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
536442:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
536444:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
536446:  LDR             R2, [R5,#0x20]
536448:  ADD             R1, R2
53644A:  CMP             R1, R0
53644C:  BLS             loc_5364EE
53644E:  LDR             R0, [R5,#0xC]
536450:  MOV.W           R1, #0x4B8; int
536454:  LDR.W           R0, [R0,#0x440]; this
536458:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
53645C:  CBZ             R0, loc_53648A
53645E:  VLDR            D16, [R0,#0x14]
536462:  MOV             R2, SP
536464:  LDR             R1, [R4,#0x14]
536466:  LDR             R0, [R0,#0x1C]
536468:  STR             R0, [SP,#0x38+var_30]
53646A:  ADD             R0, SP, #0x38+var_2C
53646C:  VSTR            D16, [SP,#0x38+var_38]
536470:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
536474:  LDR             R0, [R5,#0xC]
536476:  VLDR            S0, [SP,#0x38+var_2C]
53647A:  VLDR            S2, [SP,#0x38+var_28]
53647E:  LDR             R1, [R0,#0x14]
536480:  VLDR            S4, [SP,#0x14]
536484:  ADD.W           R2, R1, #0x30 ; '0'
536488:  B               loc_5364AA
53648A:  LDR             R0, [R5,#0xC]
53648C:  LDR             R2, [R4,#0x14]
53648E:  LDR             R1, [R0,#0x14]
536490:  ADD.W           R3, R2, #0x30 ; '0'
536494:  CMP             R2, #0
536496:  IT EQ
536498:  ADDEQ           R3, R4, #4
53649A:  ADD.W           R2, R1, #0x30 ; '0'
53649E:  VLDR            S0, [R3]
5364A2:  VLDR            S2, [R3,#4]
5364A6:  VLDR            S4, [R3,#8]
5364AA:  CMP             R1, #0
5364AC:  IT EQ
5364AE:  ADDEQ           R2, R0, #4
5364B0:  VLDR            S6, [R2]
5364B4:  VLDR            S8, [R2,#4]
5364B8:  VSUB.F32        S0, S0, S6
5364BC:  VLDR            S10, [R2,#8]
5364C0:  VSUB.F32        S2, S2, S8
5364C4:  VSUB.F32        S4, S4, S10
5364C8:  VMUL.F32        S0, S0, S0
5364CC:  VMUL.F32        S2, S2, S2
5364D0:  VMUL.F32        S4, S4, S4
5364D4:  VADD.F32        S0, S0, S2
5364D8:  VLDR            S2, [R5,#0x10]
5364DC:  VMUL.F32        S2, S2, S2
5364E0:  VADD.F32        S0, S0, S4
5364E4:  VCMPE.F32       S0, S2
5364E8:  VMRS            APSR_nzcv, FPSCR
5364EC:  BGE             loc_5364FA
5364EE:  MOVS            R6, #0
5364F0:  MOV             R0, R6
5364F2:  ADD             SP, SP, #0x28 ; '('
5364F4:  POP.W           {R11}
5364F8:  POP             {R4-R7,PC}; float
5364FA:  LDRB            R2, [R5,#0x18]
5364FC:  CBZ             R2, loc_536548
5364FE:  LDR             R2, [R5,#0x28]
536500:  CBNZ            R2, loc_536548
536502:  LDR             R3, [R4,#0x14]
536504:  ADD.W           R2, R1, #0x30 ; '0'
536508:  CMP             R1, #0
53650A:  IT EQ
53650C:  ADDEQ           R2, R0, #4
53650E:  ADD.W           R0, R3, #0x30 ; '0'
536512:  CMP             R3, #0
536514:  VLDR            S0, [R2]
536518:  VLDR            S2, [R2,#4]
53651C:  IT EQ
53651E:  ADDEQ           R0, R4, #4
536520:  VLDR            S4, [R0]
536524:  MOVS            R2, #0; float
536526:  VLDR            S6, [R0,#4]
53652A:  MOVS            R3, #0; float
53652C:  VSUB.F32        S0, S0, S4
536530:  VSUB.F32        S2, S2, S6
536534:  VMOV            R0, S0; this
536538:  VMOV            R1, S2; float
53653C:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
536540:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
536544:  STR.W           R0, [R4,#0x560]
536548:  LDR             R0, [R5,#0x28]
53654A:  LDR             R6, [R5,#8]
53654C:  ADDS            R1, R0, #1
53654E:  CMP             R0, #9
536550:  IT GT
536552:  MOVGT           R1, #0
536554:  STR             R1, [R5,#0x28]
536556:  B               loc_5364F0
