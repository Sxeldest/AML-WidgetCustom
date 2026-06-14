; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE18CreateFirstSubTaskEP4CPed
; Address            : 0x49CB98 - 0x49CC9C
; =========================================================

49CB98:  PUSH            {R4,R5,R7,LR}
49CB9A:  ADD             R7, SP, #8
49CB9C:  SUB             SP, SP, #0x18
49CB9E:  MOV             R5, R0
49CBA0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49CBAA)
49CBA2:  MOV             R4, R1
49CBA4:  MOVS            R2, #1
49CBA6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49CBA8:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
49CBAA:  LDRD.W          R0, R3, [R5,#0x10]
49CBAE:  LDR             R1, [R1]; unsigned int
49CBB0:  STRB.W          R2, [R5,#0x30]
49CBB4:  STRD.W          R1, R3, [R5,#0x28]
49CBB8:  ADDS            R3, R0, #1
49CBBA:  ITT NE
49CBBC:  STRBNE.W        R2, [R5,#0x3C]
49CBC0:  STRDNE.W        R1, R0, [R5,#0x34]
49CBC4:  LDR             R2, [R5,#0xC]; CEntity *
49CBC6:  CBZ             R2, loc_49CC36
49CBC8:  LDRB.W          R0, [R4,#0x485]
49CBCC:  LSLS            R0, R0, #0x1F
49CBCE:  ITT NE
49CBD0:  LDRNE.W         R0, [R4,#0x590]
49CBD4:  CMPNE           R0, #0
49CBD6:  BNE             loc_49CC6E
49CBD8:  ADD.W           R0, R5, #0x40 ; '@'; this
49CBDC:  ADD             R3, SP, #0x20+var_18; CVector *
49CBDE:  MOV             R1, R4; CPed *
49CBE0:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49CBE4:  LDR             R0, [R4,#0x14]
49CBE6:  VLDR            D16, [SP,#0x20+var_18]
49CBEA:  ADD.W           R1, R0, #0x30 ; '0'
49CBEE:  CMP             R0, #0
49CBF0:  IT EQ
49CBF2:  ADDEQ           R1, R4, #4
49CBF4:  VLDR            S2, [R5,#0x18]
49CBF8:  VLDR            D17, [R1]
49CBFC:  VSUB.F32        D16, D17, D16
49CC00:  VLDR            S4, =0.0
49CC04:  VMUL.F32        S2, S2, S2
49CC08:  VMUL.F32        D0, D16, D16
49CC0C:  VADD.F32        S0, S0, S1
49CC10:  VADD.F32        S0, S0, S4
49CC14:  VCMPE.F32       S0, S2
49CC18:  VMRS            APSR_nzcv, FPSCR
49CC1C:  BGE             loc_49CC48
49CC1E:  LDRB.W          R0, [R5,#0x54]
49CC22:  MOVS            R1, #1
49CC24:  ORR.W           R0, R0, #4
49CC28:  STRB.W          R0, [R5,#0x54]
49CC2C:  MOV             R0, R4
49CC2E:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
49CC32:  MOVS            R1, #0xF4
49CC34:  B               loc_49CC90
49CC36:  MOVS            R0, #dword_1C; this
49CC38:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49CC3C:  MOV.W           R1, #0x3E8; int
49CC40:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49CC44:  ADD             SP, SP, #0x18
49CC46:  POP             {R4,R5,R7,PC}
49CC48:  VLDR            S2, [R5,#0x20]
49CC4C:  VCMP.F32        S2, #0.0
49CC50:  VMRS            APSR_nzcv, FPSCR
49CC54:  BEQ             loc_49CC8C
49CC56:  VMUL.F32        S2, S2, S2
49CC5A:  MOVW            R1, #0x387
49CC5E:  VCMPE.F32       S0, S2
49CC62:  VMRS            APSR_nzcv, FPSCR
49CC66:  IT GT
49CC68:  MOVWGT          R1, #0x38A
49CC6C:  B               loc_49CC90
49CC6E:  MOVS            R0, #dword_34; this
49CC70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49CC74:  LDR.W           R1, [R4,#0x590]; CVehicle *
49CC78:  MOVS            R2, #0
49CC7A:  MOVS            R3, #1
49CC7C:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
49CC80:  MOVS            R2, #0; int
49CC82:  MOVS            R3, #0; int
49CC84:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49CC88:  ADD             SP, SP, #0x18
49CC8A:  POP             {R4,R5,R7,PC}
49CC8C:  MOVW            R1, #0x38A
49CC90:  MOV             R0, R5
49CC92:  MOV             R2, R4
49CC94:  BLX             j__ZNK22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorDriving>::CreateSubTask(int,CPed *)
49CC98:  ADD             SP, SP, #0x18
49CC9A:  POP             {R4,R5,R7,PC}
