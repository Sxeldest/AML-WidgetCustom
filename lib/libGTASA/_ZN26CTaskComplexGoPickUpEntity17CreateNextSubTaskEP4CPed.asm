; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntity17CreateNextSubTaskEP4CPed
; Address            : 0x54293C - 0x542B76
; =========================================================

54293C:  PUSH            {R4-R7,LR}
54293E:  ADD             R7, SP, #0xC
542940:  PUSH.W          {R8,R9,R11}
542944:  VPUSH           {D8-D9}
542948:  MOV             R4, R0
54294A:  MOV             R6, R1
54294C:  LDR             R0, [R4,#0xC]
54294E:  CMP             R0, #0
542950:  BEQ.W           loc_542A72
542954:  LDR             R0, [R4,#8]
542956:  LDR             R1, [R0]
542958:  LDR             R1, [R1,#0x14]
54295A:  BLX             R1
54295C:  CMP.W           R0, #0x134
542960:  BEQ             loc_5429D8
542962:  MOVW            R1, #0x386
542966:  CMP             R0, R1
542968:  BEQ.W           loc_542A76
54296C:  MOVW            R1, #0x387
542970:  CMP             R0, R1
542972:  BNE             loc_542A72
542974:  LDR             R0, [R4,#0xC]
542976:  LDR             R1, [R6,#0x14]
542978:  LDR             R2, [R0,#0x14]
54297A:  ADD.W           R3, R1, #0x30 ; '0'
54297E:  CMP             R1, #0
542980:  IT EQ
542982:  ADDEQ           R3, R6, #4
542984:  ADD.W           R1, R2, #0x30 ; '0'
542988:  CMP             R2, #0
54298A:  VLDR            S0, [R3]
54298E:  VLDR            S2, [R3,#4]
542992:  IT EQ
542994:  ADDEQ           R1, R0, #4; unsigned int
542996:  VLDR            S4, [R1]
54299A:  VLDR            S6, [R1,#4]
54299E:  VSUB.F32        S0, S4, S0
5429A2:  VSUB.F32        S2, S6, S2
5429A6:  VMOV            R0, S0
5429AA:  VMOV            R4, S2
5429AE:  EOR.W           R6, R0, #0x80000000
5429B2:  MOVS            R0, #off_18; this
5429B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5429B8:  MOV             R5, R0
5429BA:  MOV             R0, R6; y
5429BC:  MOV             R1, R4; x
5429BE:  BLX             atan2f
5429C2:  MOVW            R3, #0x126F
5429C6:  MOV             R1, R0; float
5429C8:  MOVT            R3, #0x3A83; float
5429CC:  MOV             R0, R5; this
5429CE:  MOV.W           R2, #0x3F800000; float
5429D2:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
5429D6:  B               loc_542B6A
5429D8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5429E0)
5429DA:  MOVS            R1, #4; int
5429DC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5429DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5429E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5429E2:  STR             R0, [R4,#0x28]
5429E4:  LDR.W           R0, [R6,#0x440]
5429E8:  ADDS            R0, #4; this
5429EA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5429EE:  MOVS            R5, #0
5429F0:  CMP             R0, #0
5429F2:  BNE.W           loc_542B6A
5429F6:  MOVS            R0, #off_3C; this
5429F8:  LDR.W           R8, [R6,#0x440]
5429FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
542A00:  MOV             R6, R0
542A02:  LDR.W           R9, [R4,#0xC]
542A06:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542A0A:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x542A16)
542A0C:  MOVS            R1, #0x51 ; 'Q'
542A0E:  CMP.W           R9, #0
542A12:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
542A14:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
542A16:  ADD.W           R0, R0, #8
542A1A:  STR             R0, [R6]
542A1C:  MOV.W           R0, #0x106
542A20:  STRD.W          R5, R5, [R6,#0xC]
542A24:  STR             R5, [R6,#0x14]
542A26:  STRH            R0, [R6,#0x18]
542A28:  MOV.W           R0, #0x13E
542A2C:  STRD.W          R0, R1, [R6,#0x20]
542A30:  MOV.W           R0, #0x100
542A34:  MOV             R1, R6
542A36:  STRD.W          R5, R5, [R6,#0x2C]
542A3A:  STRH            R0, [R6,#0x34]
542A3C:  STRB.W          R5, [R6,#0x36]
542A40:  STR             R5, [R6,#0x38]
542A42:  STR.W           R9, [R1,#8]!; CEntity **
542A46:  VLDR            D16, [R4,#0x10]
542A4A:  LDR             R0, [R4,#0x18]
542A4C:  STR             R0, [R6,#0x14]
542A4E:  VSTR            D16, [R6,#0xC]
542A52:  BEQ             loc_542A66
542A54:  LDR.W           R0, [R9,#0x1C]
542A58:  ORR.W           R0, R0, #0x400
542A5C:  STR.W           R0, [R9,#0x1C]
542A60:  LDR             R0, [R1]; this
542A62:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
542A66:  ADD.W           R0, R8, #4; this
542A6A:  MOV             R1, R6; CTask *
542A6C:  MOVS            R2, #4; int
542A6E:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
542A72:  MOVS            R5, #0
542A74:  B               loc_542B6A
542A76:  LDR             R0, [R4,#0x2C]
542A78:  VLDR            S16, =0.6
542A7C:  CMP             R0, #0x51 ; 'Q'
542A7E:  BNE             loc_542ADA
542A80:  LDR             R0, [R4,#0xC]; this
542A82:  LDR             R1, [R0,#0x14]
542A84:  ADD.W           R2, R1, #0x30 ; '0'
542A88:  CMP             R1, #0
542A8A:  IT EQ
542A8C:  ADDEQ           R2, R0, #4
542A8E:  VLDR            S18, [R2,#8]
542A92:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
542A96:  VLDR            S0, [R0,#8]
542A9A:  LDR             R0, [R6,#0x14]
542A9C:  VADD.F32        S0, S18, S0
542AA0:  ADD.W           R1, R0, #0x30 ; '0'
542AA4:  CMP             R0, #0
542AA6:  IT EQ
542AA8:  ADDEQ           R1, R6, #4; unsigned int
542AAA:  VLDR            S2, [R1,#8]
542AAE:  VCMPE.F32       S2, S0
542AB2:  VMRS            APSR_nzcv, FPSCR
542AB6:  BGE             loc_542AC0
542AB8:  VLDR            S16, =0.2
542ABC:  MOVS            R0, #0x53 ; 'S'
542ABE:  B               loc_542AD8
542AC0:  VLDR            S4, =0.55
542AC4:  VADD.F32        S0, S0, S4
542AC8:  VCMPE.F32       S2, S0
542ACC:  VMRS            APSR_nzcv, FPSCR
542AD0:  BGE             loc_542ADA
542AD2:  VLDR            S16, =0.26667
542AD6:  MOVS            R0, #0x52 ; 'R'
542AD8:  STR             R0, [R4,#0x2C]
542ADA:  MOVS            R0, #dword_4C; this
542ADC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
542AE0:  MOV             R5, R0
542AE2:  LDR.W           R8, [R4,#0xC]
542AE6:  LDR.W           R9, [R4,#0x2C]
542AEA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542AEE:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x542AFE)
542AF0:  MOVS            R6, #0
542AF2:  MOV.W           R1, #0x106
542AF6:  STRD.W          R6, R6, [R5,#0xC]
542AFA:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
542AFC:  STR             R6, [R5,#0x14]
542AFE:  STRH            R1, [R5,#0x18]
542B00:  MOVW            R1, #0x13D
542B04:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
542B06:  CMP.W           R8, #0
542B0A:  STRD.W          R1, R9, [R5,#0x20]
542B0E:  MOV.W           R1, #0x100
542B12:  STRD.W          R6, R6, [R5,#0x2C]
542B16:  ADD.W           R0, R0, #8
542B1A:  STRH            R1, [R5,#0x34]
542B1C:  MOV             R1, R5
542B1E:  STRB.W          R6, [R5,#0x36]
542B22:  STR             R6, [R5,#0x38]
542B24:  STR             R0, [R5]
542B26:  STR.W           R8, [R1,#8]!; CEntity **
542B2A:  VLDR            D16, [R4,#0x10]
542B2E:  LDR             R0, [R4,#0x18]
542B30:  STR             R0, [R5,#0x14]
542B32:  VSTR            D16, [R5,#0xC]
542B36:  BEQ             loc_542B4A
542B38:  LDR.W           R0, [R8,#0x1C]
542B3C:  ORR.W           R0, R0, #0x400
542B40:  STR.W           R0, [R8,#0x1C]
542B44:  LDR             R0, [R1]; this
542B46:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
542B4A:  LDR             R0, =(_ZTV23CTaskSimplePickUpEntity_ptr - 0x542B5C)
542B4C:  ADD.W           R2, R4, #0x1C
542B50:  VSTR            S16, [R5,#0x3C]
542B54:  ADD.W           R3, R5, #0x40 ; '@'
542B58:  ADD             R0, PC; _ZTV23CTaskSimplePickUpEntity_ptr
542B5A:  STRD.W          R6, R6, [R5,#0x40]
542B5E:  STR             R6, [R5,#0x48]
542B60:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpEntity ...
542B62:  ADDS            R0, #8
542B64:  STR             R0, [R5]
542B66:  LDM             R2, {R0-R2}
542B68:  STM             R3!, {R0-R2}
542B6A:  MOV             R0, R5
542B6C:  VPOP            {D8-D9}
542B70:  POP.W           {R8,R9,R11}
542B74:  POP             {R4-R7,PC}
