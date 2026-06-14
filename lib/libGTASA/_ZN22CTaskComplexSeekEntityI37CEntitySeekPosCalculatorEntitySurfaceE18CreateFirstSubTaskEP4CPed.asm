; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE18CreateFirstSubTaskEP4CPed
; Address            : 0x49AAC0 - 0x49ABC4
; =========================================================

49AAC0:  PUSH            {R4,R5,R7,LR}
49AAC2:  ADD             R7, SP, #8
49AAC4:  SUB             SP, SP, #0x18
49AAC6:  MOV             R5, R0
49AAC8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49AAD2)
49AACA:  MOV             R4, R1
49AACC:  MOVS            R2, #1
49AACE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49AAD0:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
49AAD2:  LDRD.W          R0, R3, [R5,#0x10]
49AAD6:  LDR             R1, [R1]; unsigned int
49AAD8:  STRB.W          R2, [R5,#0x30]
49AADC:  STRD.W          R1, R3, [R5,#0x28]
49AAE0:  ADDS            R3, R0, #1
49AAE2:  ITT NE
49AAE4:  STRBNE.W        R2, [R5,#0x3C]
49AAE8:  STRDNE.W        R1, R0, [R5,#0x34]
49AAEC:  LDR             R2, [R5,#0xC]; CEntity *
49AAEE:  CBZ             R2, loc_49AB5E
49AAF0:  LDRB.W          R0, [R4,#0x485]
49AAF4:  LSLS            R0, R0, #0x1F
49AAF6:  ITT NE
49AAF8:  LDRNE.W         R0, [R4,#0x590]
49AAFC:  CMPNE           R0, #0
49AAFE:  BNE             loc_49AB96
49AB00:  ADD.W           R0, R5, #0x40 ; '@'; this
49AB04:  ADD             R3, SP, #0x20+var_18; CVector *
49AB06:  MOV             R1, R4; CPed *
49AB08:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49AB0C:  LDR             R0, [R4,#0x14]
49AB0E:  VLDR            D16, [SP,#0x20+var_18]
49AB12:  ADD.W           R1, R0, #0x30 ; '0'
49AB16:  CMP             R0, #0
49AB18:  IT EQ
49AB1A:  ADDEQ           R1, R4, #4
49AB1C:  VLDR            S2, [R5,#0x18]
49AB20:  VLDR            D17, [R1]
49AB24:  VSUB.F32        D16, D17, D16
49AB28:  VLDR            S4, =0.0
49AB2C:  VMUL.F32        S2, S2, S2
49AB30:  VMUL.F32        D0, D16, D16
49AB34:  VADD.F32        S0, S0, S1
49AB38:  VADD.F32        S0, S0, S4
49AB3C:  VCMPE.F32       S0, S2
49AB40:  VMRS            APSR_nzcv, FPSCR
49AB44:  BGE             loc_49AB70
49AB46:  LDRB.W          R0, [R5,#0x48]
49AB4A:  MOVS            R1, #1
49AB4C:  ORR.W           R0, R0, #4
49AB50:  STRB.W          R0, [R5,#0x48]
49AB54:  MOV             R0, R4
49AB56:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
49AB5A:  MOVS            R1, #0xF4
49AB5C:  B               loc_49ABB8
49AB5E:  MOVS            R0, #dword_1C; this
49AB60:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49AB64:  MOV.W           R1, #0x3E8; int
49AB68:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49AB6C:  ADD             SP, SP, #0x18
49AB6E:  POP             {R4,R5,R7,PC}
49AB70:  VLDR            S2, [R5,#0x20]
49AB74:  VCMP.F32        S2, #0.0
49AB78:  VMRS            APSR_nzcv, FPSCR
49AB7C:  BEQ             loc_49ABB4
49AB7E:  VMUL.F32        S2, S2, S2
49AB82:  MOVW            R1, #0x387
49AB86:  VCMPE.F32       S0, S2
49AB8A:  VMRS            APSR_nzcv, FPSCR
49AB8E:  IT GT
49AB90:  MOVWGT          R1, #0x38A
49AB94:  B               loc_49ABB8
49AB96:  MOVS            R0, #dword_34; this
49AB98:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49AB9C:  LDR.W           R1, [R4,#0x590]; CVehicle *
49ABA0:  MOVS            R2, #0
49ABA2:  MOVS            R3, #1
49ABA4:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
49ABA8:  MOVS            R2, #0; int
49ABAA:  MOVS            R3, #0; int
49ABAC:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49ABB0:  ADD             SP, SP, #0x18
49ABB2:  POP             {R4,R5,R7,PC}
49ABB4:  MOVW            R1, #0x38A
49ABB8:  MOV             R0, R5
49ABBA:  MOV             R2, R4
49ABBC:  BLX             j__ZNK22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorEntitySurface>::CreateSubTask(int,CPed *)
49ABC0:  ADD             SP, SP, #0x18
49ABC2:  POP             {R4,R5,R7,PC}
