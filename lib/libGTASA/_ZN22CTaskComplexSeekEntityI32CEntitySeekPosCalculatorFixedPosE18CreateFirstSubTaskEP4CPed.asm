; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE18CreateFirstSubTaskEP4CPed
; Address            : 0x49DC0C - 0x49DD10
; =========================================================

49DC0C:  PUSH            {R4,R5,R7,LR}
49DC0E:  ADD             R7, SP, #8
49DC10:  SUB             SP, SP, #0x18
49DC12:  MOV             R5, R0
49DC14:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49DC1E)
49DC16:  MOV             R4, R1
49DC18:  MOVS            R2, #1
49DC1A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49DC1C:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
49DC1E:  LDRD.W          R0, R3, [R5,#0x10]
49DC22:  LDR             R1, [R1]; unsigned int
49DC24:  STRB.W          R2, [R5,#0x30]
49DC28:  STRD.W          R1, R3, [R5,#0x28]
49DC2C:  ADDS            R3, R0, #1
49DC2E:  ITT NE
49DC30:  STRBNE.W        R2, [R5,#0x3C]
49DC34:  STRDNE.W        R1, R0, [R5,#0x34]
49DC38:  LDR             R2, [R5,#0xC]; CEntity *
49DC3A:  CBZ             R2, loc_49DCAA
49DC3C:  LDRB.W          R0, [R4,#0x485]
49DC40:  LSLS            R0, R0, #0x1F
49DC42:  ITT NE
49DC44:  LDRNE.W         R0, [R4,#0x590]
49DC48:  CMPNE           R0, #0
49DC4A:  BNE             loc_49DCE2
49DC4C:  ADD.W           R0, R5, #0x40 ; '@'; this
49DC50:  ADD             R3, SP, #0x20+var_18; CVector *
49DC52:  MOV             R1, R4; CPed *
49DC54:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49DC58:  LDR             R0, [R4,#0x14]
49DC5A:  VLDR            D16, [SP,#0x20+var_18]
49DC5E:  ADD.W           R1, R0, #0x30 ; '0'
49DC62:  CMP             R0, #0
49DC64:  IT EQ
49DC66:  ADDEQ           R1, R4, #4
49DC68:  VLDR            S2, [R5,#0x18]
49DC6C:  VLDR            D17, [R1]
49DC70:  VSUB.F32        D16, D17, D16
49DC74:  VLDR            S4, =0.0
49DC78:  VMUL.F32        S2, S2, S2
49DC7C:  VMUL.F32        D0, D16, D16
49DC80:  VADD.F32        S0, S0, S1
49DC84:  VADD.F32        S0, S0, S4
49DC88:  VCMPE.F32       S0, S2
49DC8C:  VMRS            APSR_nzcv, FPSCR
49DC90:  BGE             loc_49DCBC
49DC92:  LDRB.W          R0, [R5,#0x54]
49DC96:  MOVS            R1, #1
49DC98:  ORR.W           R0, R0, #4
49DC9C:  STRB.W          R0, [R5,#0x54]
49DCA0:  MOV             R0, R4
49DCA2:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
49DCA6:  MOVS            R1, #0xF4
49DCA8:  B               loc_49DD04
49DCAA:  MOVS            R0, #dword_1C; this
49DCAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49DCB0:  MOV.W           R1, #0x3E8; int
49DCB4:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49DCB8:  ADD             SP, SP, #0x18
49DCBA:  POP             {R4,R5,R7,PC}
49DCBC:  VLDR            S2, [R5,#0x20]
49DCC0:  VCMP.F32        S2, #0.0
49DCC4:  VMRS            APSR_nzcv, FPSCR
49DCC8:  BEQ             loc_49DD00
49DCCA:  VMUL.F32        S2, S2, S2
49DCCE:  MOVW            R1, #0x387
49DCD2:  VCMPE.F32       S0, S2
49DCD6:  VMRS            APSR_nzcv, FPSCR
49DCDA:  IT GT
49DCDC:  MOVWGT          R1, #0x38A
49DCE0:  B               loc_49DD04
49DCE2:  MOVS            R0, #dword_34; this
49DCE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49DCE8:  LDR.W           R1, [R4,#0x590]; CVehicle *
49DCEC:  MOVS            R2, #0
49DCEE:  MOVS            R3, #1
49DCF0:  STRD.W          R3, R2, [SP,#0x20+var_20]; bool
49DCF4:  MOVS            R2, #0; int
49DCF6:  MOVS            R3, #0; int
49DCF8:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49DCFC:  ADD             SP, SP, #0x18
49DCFE:  POP             {R4,R5,R7,PC}
49DD00:  MOVW            R1, #0x38A
49DD04:  MOV             R0, R5
49DD06:  MOV             R2, R4
49DD08:  BLX             j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorFixedPos>::CreateSubTask(int,CPed *)
49DD0C:  ADD             SP, SP, #0x18
49DD0E:  POP             {R4,R5,R7,PC}
