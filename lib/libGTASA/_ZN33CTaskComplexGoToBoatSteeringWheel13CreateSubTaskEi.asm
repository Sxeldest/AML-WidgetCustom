; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheel13CreateSubTaskEi
; Address            : 0x505DF0 - 0x505EDC
; =========================================================

505DF0:  PUSH            {R4,R5,R7,LR}
505DF2:  ADD             R7, SP, #8
505DF4:  SUB             SP, SP, #0x30; float
505DF6:  MOV             R5, R0
505DF8:  MOVW            R0, #0x387
505DFC:  MOVS            R4, #0
505DFE:  CMP             R1, R0
505E00:  BEQ             loc_505E24
505E02:  CMP             R1, #0xCB
505E04:  BNE             loc_505ED6
505E06:  MOVS            R0, #dword_20; this
505E08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505E0C:  MOV             R4, R0
505E0E:  MOV.W           R0, #0x41000000
505E12:  STR             R0, [SP,#0x38+var_38]; float
505E14:  MOV             R0, R4; this
505E16:  MOV.W           R1, #0xFFFFFFFF; int
505E1A:  MOVS            R2, #0; bool
505E1C:  MOVS            R3, #0; bool
505E1E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
505E22:  B               loc_505ED6
505E24:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x505E2C)
505E26:  LDR             R1, [R5,#0x18]
505E28:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
505E2A:  LDRSH.W         R2, [R1,#0x26]
505E2E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
505E30:  LDR.W           R0, [R0,R2,LSL#2]
505E34:  LDR             R2, [R0,#0x54]
505E36:  LDR             R0, [R0,#0x74]
505E38:  CMP             R2, #5
505E3A:  ADD             R2, SP, #0x38+var_18
505E3C:  IT NE
505E3E:  ADDNE           R0, #0x30 ; '0'
505E40:  VLDR            D16, [R0]
505E44:  LDR             R0, [R0,#8]
505E46:  STR             R0, [SP,#0x38+var_10]
505E48:  ADD             R0, SP, #0x38+var_28; CMatrix *
505E4A:  VSTR            D16, [SP,#0x38+var_18]
505E4E:  LDR             R1, [R1,#0x14]; CVector *
505E50:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
505E54:  VLDR            D16, [SP,#0x38+var_28]
505E58:  LDR             R0, [SP,#0x38+var_20]
505E5A:  STR             R0, [SP,#0x38+var_10]
505E5C:  VSTR            D16, [SP,#0x38+var_18]
505E60:  LDR             R0, [R5,#0x18]
505E62:  VLDR            S0, [SP,#0x38+var_18]
505E66:  VLDR            S2, [SP,#0x38+var_18+4]
505E6A:  LDR             R1, [R0,#0x14]; unsigned int
505E6C:  VLDR            S4, [SP,#0x38+var_10]
505E70:  ADD.W           R2, R1, #0x30 ; '0'
505E74:  CMP             R1, #0
505E76:  IT EQ
505E78:  ADDEQ           R2, R0, #4
505E7A:  VLDR            S6, [R2]
505E7E:  VADD.F32        S0, S6, S0
505E82:  VSTR            S0, [SP,#0x38+var_18]
505E86:  VLDR            S0, [R2,#4]
505E8A:  VADD.F32        S0, S0, S2
505E8E:  VSTR            S0, [SP,#0x38+var_18+4]
505E92:  VLDR            S0, [R2,#8]
505E96:  VLDR            D16, [SP,#0x38+var_18]
505E9A:  VADD.F32        S0, S0, S4
505E9E:  VSTR            S0, [SP,#0x38+var_10]
505EA2:  LDR             R0, [SP,#0x38+var_10]
505EA4:  VSTR            D16, [R5,#0xC]
505EA8:  STR             R0, [R5,#0x14]
505EAA:  MOVS            R0, #word_28; this
505EAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505EB0:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x505EB8)
505EB2:  LDR             R2, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x505EBE)
505EB4:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
505EB6:  STRD.W          R4, R4, [SP,#0x38+var_34]; bool
505EBA:  ADD             R2, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
505EBC:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
505EBE:  LDR             R2, [R2]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
505EC0:  LDR             R3, [R1]; float
505EC2:  MOVS            R1, #4; int
505EC4:  VLDR            S0, [R2]
505EC8:  ADD.W           R2, R5, #0xC; CVector *
505ECC:  VSTR            S0, [SP,#0x38+var_38]
505ED0:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
505ED4:  MOV             R4, R0
505ED6:  MOV             R0, R4
505ED8:  ADD             SP, SP, #0x30 ; '0'
505EDA:  POP             {R4,R5,R7,PC}
