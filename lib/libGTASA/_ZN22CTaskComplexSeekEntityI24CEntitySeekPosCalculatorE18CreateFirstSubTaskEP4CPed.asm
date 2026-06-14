; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE18CreateFirstSubTaskEP4CPed
; Address            : 0x498AB4 - 0x498BAA
; =========================================================

498AB4:  PUSH            {R4,R5,R7,LR}
498AB6:  ADD             R7, SP, #8
498AB8:  SUB             SP, SP, #8
498ABA:  MOV             R5, R0
498ABC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498AC6)
498ABE:  MOV             R4, R1
498AC0:  MOVS            R2, #1
498AC2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498AC4:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
498AC6:  LDRD.W          R0, R3, [R5,#0x10]
498ACA:  LDR             R1, [R1]; unsigned int
498ACC:  STRB.W          R2, [R5,#0x30]
498AD0:  STRD.W          R1, R3, [R5,#0x28]
498AD4:  ADDS            R3, R0, #1
498AD6:  ITT NE
498AD8:  STRBNE.W        R2, [R5,#0x3C]
498ADC:  STRDNE.W        R1, R0, [R5,#0x34]
498AE0:  LDR             R0, [R5,#0xC]
498AE2:  CBZ             R0, loc_498B42
498AE4:  LDRB.W          R0, [R4,#0x485]
498AE8:  LSLS            R0, R0, #0x1F
498AEA:  ITT NE
498AEC:  LDRNE.W         R0, [R4,#0x590]
498AF0:  CMPNE           R0, #0
498AF2:  BNE             loc_498B7A
498AF4:  LDR             R0, [R4,#0x14]
498AF6:  VLDR            S4, =0.0
498AFA:  ADD.W           R1, R0, #0x30 ; '0'
498AFE:  CMP             R0, #0
498B00:  IT EQ
498B02:  ADDEQ           R1, R4, #4
498B04:  VLDR            S2, [R5,#0x18]
498B08:  VLDR            D16, [R1]
498B0C:  VSUB.F32        D16, D16, D16
498B10:  VMUL.F32        S2, S2, S2
498B14:  VMUL.F32        D0, D16, D16
498B18:  VADD.F32        S0, S0, S1
498B1C:  VADD.F32        S0, S0, S4
498B20:  VCMPE.F32       S0, S2
498B24:  VMRS            APSR_nzcv, FPSCR
498B28:  BGE             loc_498B54
498B2A:  LDRB.W          R0, [R5,#0x48]
498B2E:  MOVS            R1, #1
498B30:  ORR.W           R0, R0, #4
498B34:  STRB.W          R0, [R5,#0x48]
498B38:  MOV             R0, R4
498B3A:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
498B3E:  MOVS            R1, #0xF4
498B40:  B               loc_498B9C
498B42:  MOVS            R0, #dword_1C; this
498B44:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498B48:  MOV.W           R1, #0x3E8; int
498B4C:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
498B50:  ADD             SP, SP, #8
498B52:  POP             {R4,R5,R7,PC}
498B54:  VLDR            S2, [R5,#0x20]
498B58:  VCMP.F32        S2, #0.0
498B5C:  VMRS            APSR_nzcv, FPSCR
498B60:  BEQ             loc_498B98
498B62:  VMUL.F32        S2, S2, S2
498B66:  MOVW            R1, #0x387
498B6A:  VCMPE.F32       S0, S2
498B6E:  VMRS            APSR_nzcv, FPSCR
498B72:  IT GT
498B74:  MOVWGT          R1, #0x38A
498B78:  B               loc_498B9C
498B7A:  MOVS            R0, #dword_34; this
498B7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498B80:  LDR.W           R1, [R4,#0x590]; CVehicle *
498B84:  MOVS            R2, #0
498B86:  MOVS            R3, #1
498B88:  STRD.W          R3, R2, [SP,#0x10+var_10]; bool
498B8C:  MOVS            R2, #0; int
498B8E:  MOVS            R3, #0; int
498B90:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
498B94:  ADD             SP, SP, #8
498B96:  POP             {R4,R5,R7,PC}
498B98:  MOVW            R1, #0x38A
498B9C:  MOV             R0, R5
498B9E:  MOV             R2, R4
498BA0:  ADD             SP, SP, #8
498BA2:  POP.W           {R4,R5,R7,LR}
498BA6:  B.W             sub_19D278
