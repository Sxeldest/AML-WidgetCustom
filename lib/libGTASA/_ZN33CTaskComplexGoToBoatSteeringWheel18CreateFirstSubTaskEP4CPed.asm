; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheel18CreateFirstSubTaskEP4CPed
; Address            : 0x505EE8 - 0x505FB2
; =========================================================

505EE8:  PUSH            {R4,R6,R7,LR}
505EEA:  ADD             R7, SP, #8
505EEC:  SUB             SP, SP, #0x30; float
505EEE:  MOV             R4, R0
505EF0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x505EF8)
505EF2:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x505EFC)
505EF4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
505EF6:  LDR             R2, [R4,#0x18]
505EF8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
505EFA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
505EFC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
505EFE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
505F00:  STR             R0, [R4,#0x20]
505F02:  LDRSH.W         R0, [R2,#0x26]
505F06:  LDR.W           R0, [R1,R0,LSL#2]
505F0A:  LDR             R1, [R0,#0x54]
505F0C:  LDR             R0, [R0,#0x74]
505F0E:  CMP             R1, #5
505F10:  IT NE
505F12:  ADDNE           R0, #0x30 ; '0'
505F14:  VLDR            D16, [R0]
505F18:  LDR             R0, [R0,#8]
505F1A:  STR             R0, [SP,#0x38+var_10]
505F1C:  ADD             R0, SP, #0x38+var_28; CMatrix *
505F1E:  VSTR            D16, [SP,#0x38+var_18]
505F22:  LDR             R1, [R2,#0x14]; CVector *
505F24:  ADD             R2, SP, #0x38+var_18
505F26:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
505F2A:  VLDR            D16, [SP,#0x38+var_28]
505F2E:  LDR             R0, [SP,#0x38+var_20]
505F30:  STR             R0, [SP,#0x38+var_10]
505F32:  VSTR            D16, [SP,#0x38+var_18]
505F36:  LDR             R0, [R4,#0x18]
505F38:  VLDR            S0, [SP,#0x38+var_18]
505F3C:  VLDR            S2, [SP,#0x38+var_18+4]
505F40:  LDR             R1, [R0,#0x14]; unsigned int
505F42:  VLDR            S4, [SP,#0x38+var_10]
505F46:  ADD.W           R2, R1, #0x30 ; '0'
505F4A:  CMP             R1, #0
505F4C:  IT EQ
505F4E:  ADDEQ           R2, R0, #4
505F50:  VLDR            S6, [R2]
505F54:  VADD.F32        S0, S6, S0
505F58:  VSTR            S0, [SP,#0x38+var_18]
505F5C:  VLDR            S0, [R2,#4]
505F60:  VADD.F32        S0, S0, S2
505F64:  VSTR            S0, [SP,#0x38+var_18+4]
505F68:  VLDR            S0, [R2,#8]
505F6C:  VLDR            D16, [SP,#0x38+var_18]
505F70:  VADD.F32        S0, S0, S4
505F74:  VSTR            S0, [SP,#0x38+var_10]
505F78:  LDR             R0, [SP,#0x38+var_10]
505F7A:  VSTR            D16, [R4,#0xC]
505F7E:  STR             R0, [R4,#0x14]
505F80:  MOVS            R0, #word_28; this
505F82:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505F86:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x505F92)
505F88:  MOV.W           R12, #0
505F8C:  LDR             R2, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x505F98)
505F8E:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
505F90:  STRD.W          R12, R12, [SP,#0x38+var_34]; bool
505F94:  ADD             R2, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
505F96:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
505F98:  LDR             R2, [R2]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
505F9A:  LDR             R3, [R1]; float
505F9C:  MOVS            R1, #4; int
505F9E:  VLDR            S0, [R2]
505FA2:  ADD.W           R2, R4, #0xC; CVector *
505FA6:  VSTR            S0, [SP,#0x38+var_38]
505FAA:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
505FAE:  ADD             SP, SP, #0x30 ; '0'
505FB0:  POP             {R4,R6,R7,PC}
