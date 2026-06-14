; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpen18CreateFirstSubTaskEP4CPed
; Address            : 0x525B34 - 0x525D68
; =========================================================

525B34:  PUSH            {R4-R7,LR}
525B36:  ADD             R7, SP, #0xC
525B38:  PUSH.W          {R11}
525B3C:  SUB             SP, SP, #0x10
525B3E:  MOV             R5, R1
525B40:  MOV             R4, R0
525B42:  MOV             R0, R5; this
525B44:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
525B48:  CMP             R0, #1
525B4A:  BNE             loc_525B6A
525B4C:  MOVS            R0, #0; this
525B4E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
525B52:  LDRH.W          R1, [R0,#0x110]
525B56:  ORR.W           R1, R1, #8
525B5A:  STRH.W          R1, [R0,#0x110]
525B5E:  LDRB.W          R0, [R4,#0x34]
525B62:  ORR.W           R0, R0, #8
525B66:  STRB.W          R0, [R4,#0x34]
525B6A:  MOV             R6, SP
525B6C:  MOV             R1, R5; CPed *
525B6E:  MOV             R0, R6; this
525B70:  BLX             j__ZN15CEventAreaCodesC2EP4CPed_0; CEventAreaCodes::CEventAreaCodes(CPed *)
525B74:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
525B78:  MOV             R1, R6; CEvent *
525B7A:  MOVS            R2, #0; bool
525B7C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
525B80:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x525B8A)
525B82:  MOV.W           R2, #0x3E8
525B86:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
525B88:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
525B8A:  LDR             R0, [R4,#0xC]
525B8C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
525B8E:  CMP             R0, #0
525B90:  STRD.W          R1, R2, [R4,#0x28]
525B94:  MOV.W           R1, #1; unsigned int
525B98:  STRB.W          R1, [R4,#0x30]
525B9C:  BEQ             loc_525C62
525B9E:  LDR             R1, [R5,#0x14]
525BA0:  VMOV.F32        S9, #0.75
525BA4:  LDR             R2, [R0,#0x14]
525BA6:  VMOV.F32        S11, #-0.5
525BAA:  ADD.W           R3, R1, #0x30 ; '0'
525BAE:  CMP             R1, #0
525BB0:  IT EQ
525BB2:  ADDEQ           R3, R5, #4
525BB4:  ADD.W           R1, R2, #0x30 ; '0'
525BB8:  CMP             R2, #0
525BBA:  VLDR            S0, [R3]
525BBE:  VLDR            S2, [R3,#4]
525BC2:  VLDR            S6, [R3,#8]
525BC6:  IT EQ
525BC8:  ADDEQ           R1, R0, #4
525BCA:  VLDR            S10, [R1]
525BCE:  VLDR            S8, [R1,#4]
525BD2:  VSUB.F32        S1, S10, S0
525BD6:  VLDR            S12, [R1,#8]
525BDA:  VSUB.F32        S14, S8, S2
525BDE:  VLDR            S0, [R2,#0x10]
525BE2:  VLDR            S2, [R2,#0x14]
525BE6:  VSUB.F32        S6, S12, S6
525BEA:  VLDR            S4, [R2,#0x18]
525BEE:  VLDR            S3, [R2]
525BF2:  VLDR            S5, [R2,#4]
525BF6:  VLDR            S7, [R2,#8]
525BFA:  VMUL.F32        S3, S3, S9
525BFE:  VMUL.F32        S1, S0, S1
525C02:  VMUL.F32        S14, S2, S14
525C06:  VMUL.F32        S6, S4, S6
525C0A:  VMUL.F32        S7, S7, S9
525C0E:  VMUL.F32        S5, S5, S9
525C12:  VADD.F32        S10, S10, S3
525C16:  VADD.F32        S3, S2, S2
525C1A:  VADD.F32        S14, S1, S14
525C1E:  VMUL.F32        S1, S4, S11
525C22:  VADD.F32        S12, S12, S7
525C26:  VADD.F32        S8, S8, S5
525C2A:  VADD.F32        S4, S4, S4
525C2E:  VADD.F32        S5, S0, S0
525C32:  VADD.F32        S9, S14, S6
525C36:  VMUL.F32        S14, S2, S11
525C3A:  VMUL.F32        S6, S0, S11
525C3E:  VCMPE.F32       S9, #0.0
525C42:  VMRS            APSR_nzcv, FPSCR
525C46:  BLE             loc_525C9A
525C48:  VADD.F32        S2, S8, S14
525C4C:  VADD.F32        S6, S10, S6
525C50:  VADD.F32        S0, S12, S1
525C54:  VADD.F32        S4, S12, S4
525C58:  VADD.F32        S8, S8, S3
525C5C:  VADD.F32        S10, S10, S5
525C60:  B               loc_525CB2
525C62:  LDRB.W          R0, [R4,#0x34]
525C66:  TST.W           R0, #1
525C6A:  BNE             loc_525D56
525C6C:  ORR.W           R0, R0, #2
525C70:  STRB.W          R0, [R4,#0x34]
525C74:  MOVS            R0, #word_2C; this
525C76:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525C7A:  MOV             R5, R0
525C7C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
525C80:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x525C8C)
525C82:  VMOV.F32        S0, #0.5
525C86:  MOVS            R1, #4
525C88:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
525C8A:  STR             R1, [R5,#8]
525C8C:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
525C8E:  ADDS            R0, #8
525C90:  STR             R0, [R5]
525C92:  LDR             R0, [R4,#0x24]
525C94:  VLDR            D16, [R4,#0x1C]
525C98:  B               loc_525D30
525C9A:  VSUB.F32        S2, S8, S14
525C9E:  VSUB.F32        S6, S10, S6
525CA2:  VSUB.F32        S0, S12, S1
525CA6:  VSUB.F32        S4, S12, S4
525CAA:  VSUB.F32        S8, S8, S3
525CAE:  VSUB.F32        S10, S10, S5
525CB2:  VSTR            S6, [R4,#0x10]
525CB6:  VSTR            S2, [R4,#0x14]
525CBA:  VSTR            S0, [R4,#0x18]
525CBE:  VSTR            S10, [R4,#0x1C]
525CC2:  VSTR            S8, [R4,#0x20]
525CC6:  VSTR            S4, [R4,#0x24]
525CCA:  LDRB.W          R1, [R0,#0x44]
525CCE:  LSLS            R1, R1, #0x1C
525CD0:  BPL             loc_525CF0
525CD2:  LDRB.W          R1, [R4,#0x34]
525CD6:  ORR.W           R1, R1, #4
525CDA:  STRB.W          R1, [R4,#0x34]
525CDE:  LDR             R1, [R0,#0x44]
525CE0:  BIC.W           R1, R1, #8
525CE4:  STR             R1, [R0,#0x44]
525CE6:  LDR             R0, [R4,#0xC]
525CE8:  LDR             R1, [R0,#0x44]
525CEA:  BIC.W           R1, R1, #4
525CEE:  STR             R1, [R0,#0x44]
525CF0:  LDR             R0, [R5,#0x18]
525CF2:  MOVS            R1, #2
525CF4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
525CF8:  CBZ             R0, loc_525D0C
525CFA:  LDR.W           R1, [R5,#0x4E0]; int
525CFE:  MOVS            R3, #0
525D00:  LDR             R0, [R5,#0x18]; int
525D02:  MOVT            R3, #0x447A
525D06:  MOVS            R2, #0; unsigned int
525D08:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
525D0C:  MOVS            R0, #word_2C; this
525D0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525D12:  MOV             R5, R0
525D14:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
525D18:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x525D22)
525D1A:  MOVS            R1, #4
525D1C:  STR             R1, [R5,#8]
525D1E:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
525D20:  VLDR            S0, =0.35
525D24:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
525D26:  ADDS            R0, #8
525D28:  STR             R0, [R5]
525D2A:  VLDR            D16, [R4,#0x10]
525D2E:  LDR             R0, [R4,#0x18]
525D30:  STR             R0, [R5,#0x14]
525D32:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x525D3C)
525D34:  VSTR            D16, [R5,#0xC]
525D38:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
525D3A:  LDRB            R1, [R5,#0x1C]
525D3C:  VSTR            S0, [R5,#0x18]
525D40:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoToPoint ...
525D42:  AND.W           R1, R1, #0xC0
525D46:  STRB            R1, [R5,#0x1C]
525D48:  ADDS            R0, #8
525D4A:  STR             R0, [R5]
525D4C:  LDRB            R0, [R5,#0x1D]
525D4E:  AND.W           R0, R0, #0xE0
525D52:  STRB            R0, [R5,#0x1D]
525D54:  B               loc_525D58
525D56:  MOVS            R5, #0
525D58:  MOV             R0, SP; this
525D5A:  BLX             j__ZN15CEventAreaCodesD2Ev; CEventAreaCodes::~CEventAreaCodes()
525D5E:  MOV             R0, R5
525D60:  ADD             SP, SP, #0x10
525D62:  POP.W           {R11}
525D66:  POP             {R4-R7,PC}
