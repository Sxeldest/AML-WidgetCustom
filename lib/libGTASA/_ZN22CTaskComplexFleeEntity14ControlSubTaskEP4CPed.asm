; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntity14ControlSubTaskEP4CPed
; Address            : 0x513480 - 0x5135EC
; =========================================================

513480:  PUSH            {R4-R7,LR}
513482:  ADD             R7, SP, #0xC
513484:  PUSH.W          {R11}
513488:  SUB             SP, SP, #0x18
51348A:  MOV             R4, R0
51348C:  MOV             R5, R1
51348E:  LDRD.W          R0, R1, [R4,#8]
513492:  CBZ             R1, loc_5134C6
513494:  LDR             R1, [R0]
513496:  LDR             R1, [R1,#0x14]
513498:  BLX             R1
51349A:  CMP.W           R0, #0x38C
51349E:  BNE.W           loc_5135E2
5134A2:  LDRB.W          R0, [R4,#0x28]
5134A6:  CMP             R0, #0
5134A8:  BEQ.W           loc_5135E2
5134AC:  LDRB.W          R0, [R4,#0x29]
5134B0:  CBZ             R0, loc_5134D4
5134B2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5134BA)
5134B4:  MOVS            R1, #0
5134B6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5134B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5134BA:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds
5134BC:  STRB.W          R1, [R4,#0x29]
5134C0:  STR             R2, [R4,#0x20]
5134C2:  MOV             R0, R2
5134C4:  B               loc_5134DE
5134C6:  LDR             R1, [R0]
5134C8:  MOVS            R2, #0
5134CA:  MOVS            R3, #0
5134CC:  LDR             R6, [R1,#0x1C]
5134CE:  MOV             R1, R5
5134D0:  BLX             R6
5134D2:  B               loc_5135E2
5134D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5134DA)
5134D6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5134D8:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
5134DA:  LDR             R0, [R4,#0x20]
5134DC:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds
5134DE:  LDR             R1, [R4,#0x24]
5134E0:  ADD             R0, R1
5134E2:  CMP             R0, R2
5134E4:  BHI             loc_5135E2
5134E6:  LDR             R6, [R4,#0xC]
5134E8:  VLDR            S0, [R4,#0x10]
5134EC:  ADDS            R3, R6, #4
5134EE:  LDR             R0, [R6,#0x14]
5134F0:  MOV             R1, R3
5134F2:  CMP             R0, #0
5134F4:  IT NE
5134F6:  ADDNE.W         R1, R0, #0x30 ; '0'
5134FA:  VLDR            D16, [R4,#0x14]
5134FE:  VLDR            S2, [R1]
513502:  VLDR            D17, [R1,#4]
513506:  VSUB.F32        S0, S0, S2
51350A:  VLDR            S4, [R4,#0x38]
51350E:  VSUB.F32        D16, D16, D17
513512:  VMUL.F32        S4, S4, S4
513516:  VMUL.F32        D1, D16, D16
51351A:  VMUL.F32        S0, S0, S0
51351E:  VADD.F32        S0, S0, S2
513522:  VADD.F32        S0, S0, S3
513526:  VCMPE.F32       S0, S4
51352A:  VMRS            APSR_nzcv, FPSCR
51352E:  BLE             loc_5135E2
513530:  LDR             R1, [R4,#0x34]
513532:  MOV.W           R12, #1
513536:  STRB.W          R12, [R4,#0x28]
51353A:  ADD.W           R0, R4, #0x10
51353E:  STRD.W          R2, R1, [R4,#0x20]
513542:  LDR             R1, [R6,#0x14]
513544:  CMP             R1, #0
513546:  IT NE
513548:  ADDNE.W         R3, R1, #0x30 ; '0'
51354C:  VLDR            D16, [R3]
513550:  LDR             R1, [R3,#8]
513552:  STR             R1, [R0,#8]
513554:  VSTR            D16, [R0]
513558:  LDR             R2, [R4,#8]
51355A:  VLDR            S2, [R4,#0x10]
51355E:  LDRB.W          R3, [R4,#0x30]
513562:  VLDR            S4, [R2,#0xC]
513566:  VLDR            S0, [R4,#0x2C]
51356A:  VCMP.F32        S4, S2
51356E:  VMRS            APSR_nzcv, FPSCR
513572:  BNE             loc_5135AA
513574:  ADD.W           R1, R4, #0x14
513578:  VLDR            S4, [R2,#0x10]
51357C:  VLDR            S2, [R1]
513580:  VCMP.F32        S4, S2
513584:  VMRS            APSR_nzcv, FPSCR
513588:  BNE             loc_5135AA
51358A:  VLDR            S2, [R4,#0x18]
51358E:  VLDR            S4, [R2,#0x14]
513592:  VCMP.F32        S4, S2
513596:  VMRS            APSR_nzcv, FPSCR
51359A:  BNE             loc_5135AA
51359C:  VLDR            S2, [R2,#0x34]
5135A0:  VCMP.F32        S2, S0
5135A4:  VMRS            APSR_nzcv, FPSCR
5135A8:  BEQ             loc_5135C2
5135AA:  VLDR            D16, [R0]
5135AE:  ADD.W           R1, R2, #0xC
5135B2:  LDR             R0, [R0,#8]
5135B4:  STR             R0, [R1,#8]
5135B6:  VSTR            D16, [R1]
5135BA:  STRB.W          R12, [R2,#0x39]
5135BE:  VSTR            S0, [R2,#0x34]
5135C2:  ADD             R6, SP, #0x28+var_24
5135C4:  MOV             R1, R5; CPed *
5135C6:  STRB.W          R3, [R2,#0x38]
5135CA:  MOV             R0, R6; this
5135CC:  BLX             j__ZN21CEventSeenPanickedPedC2EP4CPed; CEventSeenPanickedPed::CEventSeenPanickedPed(CPed *)
5135D0:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
5135D4:  MOV             R1, R6; CEvent *
5135D6:  MOVS            R2, #0; bool
5135D8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5135DC:  MOV             R0, R6; this
5135DE:  BLX             j__ZN21CEventSeenPanickedPedD2Ev; CEventSeenPanickedPed::~CEventSeenPanickedPed()
5135E2:  LDR             R0, [R4,#8]
5135E4:  ADD             SP, SP, #0x18
5135E6:  POP.W           {R11}
5135EA:  POP             {R4-R7,PC}
