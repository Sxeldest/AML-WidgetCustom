; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE18CreateFirstSubTaskEP4CPed
; Address            : 0x499A68 - 0x499B6C
; =========================================================

499A68:  PUSH            {R4,R5,R7,LR}
499A6A:  ADD             R7, SP, #8
499A6C:  SUB             SP, SP, #0x18
499A6E:  MOV             R5, R0
499A70:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x499A7A)
499A72:  MOV             R4, R1
499A74:  MOVS            R2, #1
499A76:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
499A78:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
499A7A:  LDRD.W          R0, R3, [R5,#0x10]
499A7E:  LDR             R1, [R1]; unsigned int
499A80:  STRB.W          R2, [R5,#0x30]
499A84:  STRD.W          R1, R3, [R5,#0x28]
499A88:  ADDS            R3, R0, #1
499A8A:  ITT NE
499A8C:  STRBNE.W        R2, [R5,#0x3C]
499A90:  STRDNE.W        R1, R0, [R5,#0x34]
499A94:  LDR             R2, [R5,#0xC]; CEntity *
499A96:  CBZ             R2, loc_499B06
499A98:  LDRB.W          R0, [R4,#0x485]
499A9C:  LSLS            R0, R0, #0x1F
499A9E:  ITT NE
499AA0:  LDRNE.W         R0, [R4,#0x590]
499AA4:  CMPNE           R0, #0
499AA6:  BNE             loc_499B3E
499AA8:  ADD.W           R0, R5, #0x40 ; '@'; this
499AAC:  ADD             R3, SP, #0x20+var_18; CVector *
499AAE:  MOV             R1, R4; CPed *
499AB0:  BLX             j__ZNK32CEntitySeekPosCalculatorXYOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorXYOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
499AB4:  LDR             R0, [R4,#0x14]
499AB6:  VLDR            D16, [SP,#0x20+var_18]
499ABA:  ADD.W           R1, R0, #0x30 ; '0'
499ABE:  CMP             R0, #0
499AC0:  IT EQ
499AC2:  ADDEQ           R1, R4, #4
499AC4:  VLDR            S2, [R5,#0x18]
499AC8:  VLDR            D17, [R1]
499ACC:  VSUB.F32        D16, D17, D16
499AD0:  VLDR            S4, =0.0
499AD4:  VMUL.F32        S2, S2, S2
499AD8:  VMUL.F32        D0, D16, D16
499ADC:  VADD.F32        S0, S0, S1
499AE0:  VADD.F32        S0, S0, S4
499AE4:  VCMPE.F32       S0, S2
499AE8:  VMRS            APSR_nzcv, FPSCR
499AEC:  BGE             loc_499B18
499AEE:  LDRB.W          R0, [R5,#0x54]
499AF2:  MOVS            R1, #1
499AF4:  ORR.W           R0, R0, #4
499AF8:  STRB.W          R0, [R5,#0x54]
499AFC:  MOV             R0, R4
499AFE:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
499B02:  MOVS            R1, #0xF4
499B04:  B               loc_499B60
499B06:  MOVS            R0, #dword_1C; this
499B08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499B0C:  MOV.W           R1, #0x3E8; int
499B10:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
499B14:  ADD             SP, SP, #0x18
499B16:  POP             {R4,R5,R7,PC}
499B18:  VLDR            S2, [R5,#0x20]
499B1C:  VCMP.F32        S2, #0.0
499B20:  VMRS            APSR_nzcv, FPSCR
499B24:  BEQ             loc_499B5C
499B26:  VMUL.F32        S2, S2, S2
499B2A:  MOVW            R1, #0x387
499B2E:  VCMPE.F32       S0, S2
499B32:  VMRS            APSR_nzcv, FPSCR
499B36:  IT GT
499B38:  MOVWGT          R1, #0x38A
499B3C:  B               loc_499B60
499B3E:  MOVS            R0, #dword_34; this
499B40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499B44:  LDR.W           R1, [R4,#0x590]; CVehicle *
499B48:  MOVS            R2, #0
499B4A:  MOVS            R3, #1
499B4C:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
499B50:  MOVS            R2, #0; int
499B52:  MOVS            R3, #0; int
499B54:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
499B58:  ADD             SP, SP, #0x18
499B5A:  POP             {R4,R5,R7,PC}
499B5C:  MOVW            R1, #0x38A
499B60:  MOV             R0, R5
499B62:  MOV             R2, R4
499B64:  BLX             j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset>::CreateSubTask(int,CPed *)
499B68:  ADD             SP, SP, #0x18
499B6A:  POP             {R4,R5,R7,PC}
