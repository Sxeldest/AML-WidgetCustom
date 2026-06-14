; =========================================================
; Game Engine Function: _ZNK11CAutomobile23RcbanditCheck1CarWheelsER8CPtrList
; Address            : 0x55D980 - 0x55DB3E
; =========================================================

55D980:  PUSH            {R4-R7,LR}
55D982:  ADD             R7, SP, #0xC
55D984:  PUSH.W          {R8-R11}
55D988:  SUB             SP, SP, #4
55D98A:  VPUSH           {D8-D10}
55D98E:  SUB             SP, SP, #0x50
55D990:  MOV             R4, R0
55D992:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55D99C)
55D994:  LDRSH.W         R2, [R4,#0x26]
55D998:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55D99A:  LDR.W           R8, [R1]
55D99E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55D9A0:  LDR.W           R0, [R0,R2,LSL#2]
55D9A4:  LDR             R2, =(byte_A01F54 - 0x55D9AC)
55D9A6:  LDR             R0, [R0,#0x2C]
55D9A8:  ADD             R2, PC; byte_A01F54
55D9AA:  STR             R0, [SP,#0x88+var_7C]
55D9AC:  LDRB            R0, [R2]
55D9AE:  DMB.W           ISH
55D9B2:  TST.W           R0, #1
55D9B6:  BNE             loc_55D9E2
55D9B8:  LDR             R0, =(byte_A01F54 - 0x55D9BE)
55D9BA:  ADD             R0, PC; byte_A01F54 ; __guard *
55D9BC:  BLX             j___cxa_guard_acquire
55D9C0:  CBZ             R0, loc_55D9E2
55D9C2:  LDR             R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x55D9CC)
55D9C4:  MOVS            R3, #0
55D9C6:  LDR             R1, =(unk_A01F0C - 0x55D9D0)
55D9C8:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
55D9CA:  LDR             R2, =(unk_67A000 - 0x55D9D4)
55D9CC:  ADD             R1, PC; unk_A01F0C ; obj
55D9CE:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
55D9D0:  ADD             R2, PC; unk_67A000 ; lpdso_handle
55D9D2:  STRD.W          R3, R3, [R1,#(dword_A01F4C - 0xA01F0C)]
55D9D6:  BLX             __cxa_atexit
55D9DA:  LDR             R0, =(byte_A01F54 - 0x55D9E0)
55D9DC:  ADD             R0, PC; byte_A01F54 ; __guard *
55D9DE:  BLX             j___cxa_guard_release
55D9E2:  CMP.W           R8, #0
55D9E6:  BEQ.W           loc_55DB2A
55D9EA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x55D9FC)
55D9EC:  VMOV.F32        S16, #10.0
55D9F0:  VMOV.F32        S18, #1.0
55D9F4:  LDR.W           R10, =(unk_A01F0C - 0x55DA02)
55D9F8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
55D9FA:  VMOV.F32        S20, #0.25
55D9FE:  ADD             R10, PC; unk_A01F0C
55DA00:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
55DA02:  STR             R0, [SP,#0x88+var_84]
55DA04:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DA0A)
55DA06:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DA08:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DA0A:  STR             R0, [SP,#0x88+var_88]
55DA0C:  LDRD.W          R9, R8, [R8]
55DA10:  CMP             R9, R4
55DA12:  BEQ.W           loc_55DB22
55DA16:  LDR.W           R0, [R9,#0x5A0]
55DA1A:  CMP             R0, #0
55DA1C:  BNE.W           loc_55DB22
55DA20:  LDRSH.W         R0, [R9,#0x26]
55DA24:  MOVW            R1, #0x1B9
55DA28:  CMP             R0, R1
55DA2A:  BEQ             loc_55DB22
55DA2C:  LDR             R1, [SP,#0x88+var_84]
55DA2E:  LDRH.W          R2, [R9,#0x30]
55DA32:  LDRH            R1, [R1]
55DA34:  CMP             R2, R1
55DA36:  BEQ             loc_55DB22
55DA38:  LDR.W           R2, [R9,#0x14]
55DA3C:  STRH.W          R1, [R9,#0x30]
55DA40:  LDR             R3, [R4,#0x14]
55DA42:  ADD.W           R1, R2, #0x30 ; '0'
55DA46:  CMP             R2, #0
55DA48:  IT EQ
55DA4A:  ADDEQ.W         R1, R9, #4
55DA4E:  ADD.W           R2, R3, #0x30 ; '0'
55DA52:  CMP             R3, #0
55DA54:  VLDR            S0, [R1]
55DA58:  IT EQ
55DA5A:  ADDEQ           R2, R4, #4
55DA5C:  VLDR            S2, [R2]
55DA60:  VSUB.F32        S0, S2, S0
55DA64:  VABS.F32        S0, S0
55DA68:  VCMPE.F32       S0, S16
55DA6C:  VMRS            APSR_nzcv, FPSCR
55DA70:  BGE             loc_55DB22
55DA72:  VLDR            S0, [R1,#4]
55DA76:  VLDR            S2, [R2,#4]
55DA7A:  VSUB.F32        S0, S2, S0
55DA7E:  VABS.F32        S0, S0
55DA82:  VCMPE.F32       S0, S16
55DA86:  VMRS            APSR_nzcv, FPSCR
55DA8A:  BGE             loc_55DB22
55DA8C:  LDR             R1, [SP,#0x88+var_88]
55DA8E:  ADD.W           R6, R9, #0x7F8
55DA92:  LDR.W           R0, [R1,R0,LSL#2]
55DA96:  MOV.W           R1, #0xFFFFFFFF
55DA9A:  STR             R0, [SP,#0x88+var_80]
55DA9C:  VLDR            S0, [R6]
55DAA0:  ADDS            R1, #1
55DAA2:  VCMPE.F32       S0, S18
55DAA6:  VMRS            APSR_nzcv, FPSCR
55DAAA:  BLT             loc_55DAB8
55DAAC:  LDRB.W          R0, [R9,#0x3A]
55DAB0:  AND.W           R0, R0, #0xF8
55DAB4:  CMP             R0, #0x10
55DAB6:  BNE             loc_55DB1C
55DAB8:  STR             R1, [SP,#0x88+var_78]
55DABA:  ADD             R5, SP, #0x88+var_44
55DABC:  LDR.W           R11, [SP,#0x88+var_80]
55DAC0:  MOVS            R3, #0; bool
55DAC2:  LDR             R1, [SP,#0x88+var_78]; int
55DAC4:  MOV             R2, R5; CVector *
55DAC6:  MOV             R0, R11; this
55DAC8:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
55DACC:  LDR             R0, [R4,#0x14]; CMatrix *
55DACE:  MOV             R1, R10; CMatrix *
55DAD0:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
55DAD4:  MOV             R1, R0
55DAD6:  MOV             R0, R10
55DAD8:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
55DADC:  MOV             R5, R4
55DADE:  ADD             R4, SP, #0x88+var_74
55DAE0:  LDR.W           R1, [R9,#0x14]
55DAE4:  ADD             R2, SP, #0x88+var_44
55DAE6:  MOV             R0, R4
55DAE8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55DAEC:  ADD             R0, SP, #0x88+var_68
55DAEE:  MOV             R2, R4
55DAF0:  MOV             R1, R10
55DAF2:  MOV             R4, R5
55DAF4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55DAF8:  VLDR            D16, [SP,#0x88+var_68]
55DAFC:  LDR             R0, [SP,#0x88+var_60]
55DAFE:  STR             R0, [SP,#0x88+var_50]
55DB00:  ADD             R0, SP, #0x88+var_58; this
55DB02:  VSTR            D16, [SP,#0x88+var_58]
55DB06:  VLDR            S0, [R11,#0x58]
55DB0A:  LDR             R1, [SP,#0x88+var_7C]; CSphere *
55DB0C:  VMUL.F32        S0, S0, S20
55DB10:  VSTR            S0, [SP,#0x88+var_4C]
55DB14:  BLX             j__ZN10CCollision13TestSphereBoxERK7CSphereRK4CBox; CCollision::TestSphereBox(CSphere const&,CBox const&)
55DB18:  LDR             R1, [SP,#0x88+var_78]
55DB1A:  CBNZ            R0, loc_55DB3A
55DB1C:  ADDS            R6, #4
55DB1E:  CMP             R1, #3
55DB20:  BLT             loc_55DA9C
55DB22:  CMP.W           R8, #0
55DB26:  BNE.W           loc_55DA0C
55DB2A:  MOVS            R0, #0
55DB2C:  ADD             SP, SP, #0x50 ; 'P'
55DB2E:  VPOP            {D8-D10}
55DB32:  ADD             SP, SP, #4
55DB34:  POP.W           {R8-R11}
55DB38:  POP             {R4-R7,PC}
55DB3A:  MOVS            R0, #1
55DB3C:  B               loc_55DB2C
