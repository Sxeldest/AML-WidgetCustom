; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE18CreateFirstSubTaskEP4CPed
; Address            : 0x35DA20 - 0x35DB24
; =========================================================

35DA20:  PUSH            {R4,R5,R7,LR}
35DA22:  ADD             R7, SP, #8
35DA24:  SUB             SP, SP, #0x18
35DA26:  MOV             R5, R0
35DA28:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35DA32)
35DA2A:  MOV             R4, R1
35DA2C:  MOVS            R2, #1
35DA2E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35DA30:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
35DA32:  LDRD.W          R0, R3, [R5,#0x10]
35DA36:  LDR             R1, [R1]; unsigned int
35DA38:  STRB.W          R2, [R5,#0x30]
35DA3C:  STRD.W          R1, R3, [R5,#0x28]
35DA40:  ADDS            R3, R0, #1
35DA42:  ITT NE
35DA44:  STRBNE.W        R2, [R5,#0x3C]
35DA48:  STRDNE.W        R1, R0, [R5,#0x34]
35DA4C:  LDR             R2, [R5,#0xC]; CEntity *
35DA4E:  CBZ             R2, loc_35DABE
35DA50:  LDRB.W          R0, [R4,#0x485]
35DA54:  LSLS            R0, R0, #0x1F
35DA56:  ITT NE
35DA58:  LDRNE.W         R0, [R4,#0x590]
35DA5C:  CMPNE           R0, #0
35DA5E:  BNE             loc_35DAF6
35DA60:  ADD.W           R0, R5, #0x40 ; '@'; this
35DA64:  ADD             R3, SP, #0x20+var_18; CVector *
35DA66:  MOV             R1, R4; CPed *
35DA68:  BLX             j__ZNK41CEntitySeekPosCalculatorRadiusAngleOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorRadiusAngleOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
35DA6C:  LDR             R0, [R4,#0x14]
35DA6E:  VLDR            D16, [SP,#0x20+var_18]
35DA72:  ADD.W           R1, R0, #0x30 ; '0'
35DA76:  CMP             R0, #0
35DA78:  IT EQ
35DA7A:  ADDEQ           R1, R4, #4
35DA7C:  VLDR            S2, [R5,#0x18]
35DA80:  VLDR            D17, [R1]
35DA84:  VSUB.F32        D16, D17, D16
35DA88:  VLDR            S4, =0.0
35DA8C:  VMUL.F32        S2, S2, S2
35DA90:  VMUL.F32        D0, D16, D16
35DA94:  VADD.F32        S0, S0, S1
35DA98:  VADD.F32        S0, S0, S4
35DA9C:  VCMPE.F32       S0, S2
35DAA0:  VMRS            APSR_nzcv, FPSCR
35DAA4:  BGE             loc_35DAD0
35DAA6:  LDRB.W          R0, [R5,#0x50]
35DAAA:  MOVS            R1, #1
35DAAC:  ORR.W           R0, R0, #4
35DAB0:  STRB.W          R0, [R5,#0x50]
35DAB4:  MOV             R0, R4
35DAB6:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
35DABA:  MOVS            R1, #0xF4
35DABC:  B               loc_35DB18
35DABE:  MOVS            R0, #dword_1C; this
35DAC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DAC4:  MOV.W           R1, #0x3E8; int
35DAC8:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
35DACC:  ADD             SP, SP, #0x18
35DACE:  POP             {R4,R5,R7,PC}
35DAD0:  VLDR            S2, [R5,#0x20]
35DAD4:  VCMP.F32        S2, #0.0
35DAD8:  VMRS            APSR_nzcv, FPSCR
35DADC:  BEQ             loc_35DB14
35DADE:  VMUL.F32        S2, S2, S2
35DAE2:  MOVW            R1, #0x387
35DAE6:  VCMPE.F32       S0, S2
35DAEA:  VMRS            APSR_nzcv, FPSCR
35DAEE:  IT GT
35DAF0:  MOVWGT          R1, #0x38A
35DAF4:  B               loc_35DB18
35DAF6:  MOVS            R0, #dword_34; this
35DAF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DAFC:  LDR.W           R1, [R4,#0x590]; CVehicle *
35DB00:  MOVS            R2, #0
35DB02:  MOVS            R3, #1
35DB04:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
35DB08:  MOVS            R2, #0; int
35DB0A:  MOVS            R3, #0; int
35DB0C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
35DB10:  ADD             SP, SP, #0x18
35DB12:  POP             {R4,R5,R7,PC}
35DB14:  MOVW            R1, #0x38A
35DB18:  MOV             R0, R5
35DB1A:  MOV             R2, R4
35DB1C:  BLX             j__ZNK22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorRadiusAngleOffset>::CreateSubTask(int,CPed *)
35DB20:  ADD             SP, SP, #0x18
35DB22:  POP             {R4,R5,R7,PC}
