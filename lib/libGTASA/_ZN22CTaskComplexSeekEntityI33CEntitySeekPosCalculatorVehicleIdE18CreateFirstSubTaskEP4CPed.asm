; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE18CreateFirstSubTaskEP4CPed
; Address            : 0x49BB24 - 0x49BC28
; =========================================================

49BB24:  PUSH            {R4,R5,R7,LR}
49BB26:  ADD             R7, SP, #8
49BB28:  SUB             SP, SP, #0x18
49BB2A:  MOV             R5, R0
49BB2C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49BB36)
49BB2E:  MOV             R4, R1
49BB30:  MOVS            R2, #1
49BB32:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49BB34:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
49BB36:  LDRD.W          R0, R3, [R5,#0x10]
49BB3A:  LDR             R1, [R1]; unsigned int
49BB3C:  STRB.W          R2, [R5,#0x30]
49BB40:  STRD.W          R1, R3, [R5,#0x28]
49BB44:  ADDS            R3, R0, #1
49BB46:  ITT NE
49BB48:  STRBNE.W        R2, [R5,#0x3C]
49BB4C:  STRDNE.W        R1, R0, [R5,#0x34]
49BB50:  LDR             R2, [R5,#0xC]; CEntity *
49BB52:  CBZ             R2, loc_49BBC2
49BB54:  LDRB.W          R0, [R4,#0x485]
49BB58:  LSLS            R0, R0, #0x1F
49BB5A:  ITT NE
49BB5C:  LDRNE.W         R0, [R4,#0x590]
49BB60:  CMPNE           R0, #0
49BB62:  BNE             loc_49BBFA
49BB64:  ADD.W           R0, R5, #0x40 ; '@'; this
49BB68:  ADD             R3, SP, #0x20+var_18; CVector *
49BB6A:  MOV             R1, R4; CPed *
49BB6C:  BLX             j__ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorVehicleId::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49BB70:  LDR             R0, [R4,#0x14]
49BB72:  VLDR            D16, [SP,#0x20+var_18]
49BB76:  ADD.W           R1, R0, #0x30 ; '0'
49BB7A:  CMP             R0, #0
49BB7C:  IT EQ
49BB7E:  ADDEQ           R1, R4, #4
49BB80:  VLDR            S2, [R5,#0x18]
49BB84:  VLDR            D17, [R1]
49BB88:  VSUB.F32        D16, D17, D16
49BB8C:  VLDR            S4, =0.0
49BB90:  VMUL.F32        S2, S2, S2
49BB94:  VMUL.F32        D0, D16, D16
49BB98:  VADD.F32        S0, S0, S1
49BB9C:  VADD.F32        S0, S0, S4
49BBA0:  VCMPE.F32       S0, S2
49BBA4:  VMRS            APSR_nzcv, FPSCR
49BBA8:  BGE             loc_49BBD4
49BBAA:  LDRB.W          R0, [R5,#0x4C]
49BBAE:  MOVS            R1, #1
49BBB0:  ORR.W           R0, R0, #4
49BBB4:  STRB.W          R0, [R5,#0x4C]
49BBB8:  MOV             R0, R4
49BBBA:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
49BBBE:  MOVS            R1, #0xF4
49BBC0:  B               loc_49BC1C
49BBC2:  MOVS            R0, #dword_1C; this
49BBC4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49BBC8:  MOV.W           R1, #0x3E8; int
49BBCC:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49BBD0:  ADD             SP, SP, #0x18
49BBD2:  POP             {R4,R5,R7,PC}
49BBD4:  VLDR            S2, [R5,#0x20]
49BBD8:  VCMP.F32        S2, #0.0
49BBDC:  VMRS            APSR_nzcv, FPSCR
49BBE0:  BEQ             loc_49BC18
49BBE2:  VMUL.F32        S2, S2, S2
49BBE6:  MOVW            R1, #0x387
49BBEA:  VCMPE.F32       S0, S2
49BBEE:  VMRS            APSR_nzcv, FPSCR
49BBF2:  IT GT
49BBF4:  MOVWGT          R1, #0x38A
49BBF8:  B               loc_49BC1C
49BBFA:  MOVS            R0, #dword_34; this
49BBFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49BC00:  LDR.W           R1, [R4,#0x590]; CVehicle *
49BC04:  MOVS            R2, #0
49BC06:  MOVS            R3, #1
49BC08:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
49BC0C:  MOVS            R2, #0; int
49BC0E:  MOVS            R3, #0; int
49BC10:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49BC14:  ADD             SP, SP, #0x18
49BC16:  POP             {R4,R5,R7,PC}
49BC18:  MOVW            R1, #0x38A
49BC1C:  MOV             R0, R5
49BC1E:  MOV             R2, R4
49BC20:  BLX             j__ZNK22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId>::CreateSubTask(int,CPed *)
49BC24:  ADD             SP, SP, #0x18
49BC26:  POP             {R4,R5,R7,PC}
