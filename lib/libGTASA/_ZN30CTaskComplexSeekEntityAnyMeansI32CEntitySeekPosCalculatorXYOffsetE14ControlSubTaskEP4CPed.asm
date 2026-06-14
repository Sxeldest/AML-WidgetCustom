; =========================================================
; Game Engine Function: _ZN30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE14ControlSubTaskEP4CPed
; Address            : 0x546668 - 0x546736
; =========================================================

546668:  PUSH            {R4-R7,LR}
54666A:  ADD             R7, SP, #0xC
54666C:  PUSH.W          {R11}
546670:  SUB             SP, SP, #0x18
546672:  MOV             R4, R0
546674:  LDR             R0, [R4,#0xC]
546676:  CBZ             R0, loc_54669A
546678:  LDRB.W          R2, [R4,#0x20]
54667C:  CMP             R2, #0
54667E:  BEQ             loc_54672C
546680:  LDRB.W          R2, [R4,#0x21]
546684:  CBZ             R2, loc_5466B8
546686:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54668E)
546688:  MOVS            R3, #0
54668A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54668C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
54668E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
546690:  STRB.W          R3, [R4,#0x21]
546694:  STR             R2, [R4,#0x18]
546696:  MOV             R3, R2
546698:  B               loc_5466C2
54669A:  MOVS            R0, #dword_14; this
54669C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5466A0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5466A4:  LDR             R1, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x5466B0)
5466A6:  MOVS            R2, #0
5466A8:  STR             R2, [R0,#0xC]
5466AA:  MOVS            R2, #1
5466AC:  ADD             R1, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
5466AE:  STRH            R2, [R0,#0x10]
5466B0:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveAnyCar ...
5466B2:  ADDS            R1, #8
5466B4:  STR             R1, [R0]
5466B6:  B               loc_54672E
5466B8:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5466C0)
5466BA:  LDR             R3, [R4,#0x18]
5466BC:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5466BE:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
5466C0:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
5466C2:  LDR             R5, [R4,#0x1C]
5466C4:  ADD             R3, R5
5466C6:  CMP             R3, R2
5466C8:  BHI             loc_54672C
5466CA:  LDR             R3, [R4,#0x10]
5466CC:  MOVS            R5, #1
5466CE:  LDR             R6, [R4,#8]
5466D0:  STRB.W          R5, [R4,#0x20]
5466D4:  STRD.W          R2, R3, [R4,#0x18]
5466D8:  LDR             R2, [R0,#0x14]
5466DA:  VLDR            S0, [R4,#0x28]
5466DE:  ADD.W           R3, R2, #0x30 ; '0'
5466E2:  CMP             R2, #0
5466E4:  VLDR            S2, [R4,#0x2C]
5466E8:  MOV             R2, SP; CVector *
5466EA:  VLDR            S4, [R4,#0x30]
5466EE:  IT EQ
5466F0:  ADDEQ           R3, R0, #4
5466F2:  VLDR            S6, [R3]
5466F6:  MOV             R0, R1; this
5466F8:  VADD.F32        S0, S6, S0
5466FC:  VSTR            S0, [SP,#0x28+var_1C]
546700:  VLDR            S0, [R3,#4]
546704:  VADD.F32        S0, S0, S2
546708:  VSTR            S0, [SP,#0x28+var_18]
54670C:  VLDR            S0, [R3,#8]
546710:  ADD             R3, SP, #0x28+var_1C; CVector *
546712:  VADD.F32        S0, S0, S4
546716:  MOV             R1, R3; CPed *
546718:  VSTR            S0, [SP,#0x28+var_14]
54671C:  BLX             j__ZN20CPedGeometryAnalyser18ComputeClearTargetERK4CPedRK7CVectorRS3_; CPedGeometryAnalyser::ComputeClearTarget(CPed const&,CVector const&,CVector&)
546720:  VLDR            D16, [SP,#0x28+var_28]
546724:  LDR             R0, [SP,#0x28+var_20]
546726:  STR             R0, [R6,#0x2C]
546728:  VSTR            D16, [R6,#0x24]
54672C:  LDR             R0, [R4,#8]
54672E:  ADD             SP, SP, #0x18
546730:  POP.W           {R11}
546734:  POP             {R4-R7,PC}
