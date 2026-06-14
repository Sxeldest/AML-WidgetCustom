; =========================================================
; Game Engine Function: _ZN30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE18CreateFirstSubTaskEP4CPed
; Address            : 0x5465C8 - 0x546664
; =========================================================

5465C8:  PUSH            {R4,R5,R7,LR}
5465CA:  ADD             R7, SP, #8
5465CC:  VPUSH           {D8}
5465D0:  SUB             SP, SP, #0x28
5465D2:  MOV             R4, R0
5465D4:  ADD             R5, SP, #0x38+var_28
5465D6:  LDR             R0, [R4,#0xC]
5465D8:  VLDR            S0, [R4,#0x28]
5465DC:  VLDR            S2, [R4,#0x2C]
5465E0:  LDR             R2, [R0,#0x14]
5465E2:  VLDR            S4, [R4,#0x30]
5465E6:  ADD.W           R3, R2, #0x30 ; '0'
5465EA:  CMP             R2, #0
5465EC:  IT EQ
5465EE:  ADDEQ           R3, R0, #4; CVector *
5465F0:  ADD             R2, SP, #0x38+var_1C
5465F2:  VLDR            S6, [R3]
5465F6:  MOV             R0, R1; this
5465F8:  MOV             R1, R2; CPed *
5465FA:  MOV             R2, R5; CVector *
5465FC:  VADD.F32        S0, S6, S0
546600:  VSTR            S0, [SP,#0x38+var_1C]
546604:  VLDR            S0, [R3,#4]
546608:  VADD.F32        S0, S0, S2
54660C:  VSTR            S0, [SP,#0x38+var_18]
546610:  VLDR            S0, [R3,#8]
546614:  VADD.F32        S0, S0, S4
546618:  VSTR            S0, [SP,#0x38+var_14]
54661C:  BLX             j__ZN20CPedGeometryAnalyser18ComputeClearTargetERK4CPedRK7CVectorRS3_; CPedGeometryAnalyser::ComputeClearTarget(CPed const&,CVector const&,CVector&)
546620:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54662A)
546622:  MOVS            R2, #1
546624:  LDR             R1, [R4,#0x10]; unsigned int
546626:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
546628:  VLDR            S16, [R4,#0x14]
54662C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54662E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
546630:  STRB.W          R2, [R4,#0x20]
546634:  STRD.W          R0, R1, [R4,#0x18]
546638:  MOVS            R0, #off_3C; this
54663A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54663E:  MOVS            R3, #0
546640:  MOVS            R1, #0
546642:  MOV.W           R2, #0xFFFFFFFF
546646:  STR             R1, [SP,#0x38+var_2C]; int
546648:  VSTR            S16, [SP,#0x38+var_30]
54664C:  MOVT            R3, #0x41F0; float
546650:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
546654:  MOVS            R1, #0; CVehicle *
546656:  MOV             R2, R5; CVector *
546658:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
54665C:  ADD             SP, SP, #0x28 ; '('
54665E:  VPOP            {D8}
546662:  POP             {R4,R5,R7,PC}
