; =========================================================
; Game Engine Function: _ZN15CSexyPedScanner20ScanForSexyPedEventsERK4CPedPP7CEntityi
; Address            : 0x4BCE5C - 0x4BD052
; =========================================================

4BCE5C:  PUSH            {R4-R7,LR}
4BCE5E:  ADD             R7, SP, #0xC
4BCE60:  PUSH.W          {R8-R11}
4BCE64:  SUB             SP, SP, #4
4BCE66:  VPUSH           {D8-D13}
4BCE6A:  SUB             SP, SP, #0x40
4BCE6C:  MOV             R4, R0
4BCE6E:  MOV             R6, R3
4BCE70:  LDRB            R0, [R4,#8]
4BCE72:  MOV             R5, R2
4BCE74:  MOV             R8, R1
4BCE76:  CBNZ            R0, loc_4BCE8C
4BCE78:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BCE82)
4BCE7A:  MOV.W           R1, #0x1F4
4BCE7E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BCE80:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BCE82:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BCE84:  STRD.W          R0, R1, [R4]
4BCE88:  MOVS            R0, #1
4BCE8A:  STRB            R0, [R4,#8]
4BCE8C:  LDRB            R0, [R4,#9]
4BCE8E:  CBZ             R0, loc_4BCEA0
4BCE90:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BCE98)
4BCE92:  MOVS            R1, #0
4BCE94:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BCE96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BCE98:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BCE9A:  STRB            R1, [R4,#9]
4BCE9C:  STR             R0, [R4]
4BCE9E:  B               loc_4BCEA2
4BCEA0:  LDR             R0, [R4]
4BCEA2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BCEAA)
4BCEA4:  LDR             R2, [R4,#4]
4BCEA6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BCEA8:  ADD             R0, R2
4BCEAA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4BCEAC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4BCEAE:  CMP             R0, R1
4BCEB0:  BHI.W           loc_4BD044
4BCEB4:  MOV.W           R0, #0x1F4
4BCEB8:  STRD.W          R1, R0, [R4]
4BCEBC:  MOVS            R0, #1
4BCEBE:  STRB            R0, [R4,#8]
4BCEC0:  LDRB.W          R0, [R8,#0x448]
4BCEC4:  CMP             R0, #2
4BCEC6:  ITT NE
4BCEC8:  LDRBNE.W        R0, [R8,#0x485]
4BCECC:  MOVSNE.W        R0, R0,LSL#31
4BCED0:  BNE.W           loc_4BD044
4BCED4:  LDR.W           R0, [R8,#0x14]
4BCED8:  ADD.W           R1, R0, #0x30 ; '0'
4BCEDC:  CMP             R0, #0
4BCEDE:  IT EQ
4BCEE0:  ADDEQ.W         R1, R8, #4
4BCEE4:  CMP             R6, #1
4BCEE6:  VLDR            D16, [R1]
4BCEEA:  LDR             R0, [R1,#8]
4BCEEC:  STR             R0, [SP,#0x90+var_58]
4BCEEE:  VSTR            D16, [SP,#0x90+var_60]
4BCEF2:  BLT.W           loc_4BD044
4BCEF6:  LDR             R0, =(g_InterestingEvents_ptr - 0x4BCF04)
4BCEF8:  MOV.W           R9, #0
4BCEFC:  VLDR            S16, =1.0e10
4BCF00:  ADD             R0, PC; g_InterestingEvents_ptr
4BCF02:  VLDR            S18, =10000.0
4BCF06:  LDR.W           R10, [R0]; g_InterestingEvents
4BCF0A:  LDR.W           R11, [R5]
4BCF0E:  CMP.W           R11, #0
4BCF12:  BEQ             loc_4BD002
4BCF14:  LDR.W           R0, [R11,#0x59C]
4BCF18:  CMP             R0, #5
4BCF1A:  BNE             loc_4BD002
4BCF1C:  LDR.W           R0, [R8,#0x5A0]
4BCF20:  LDR.W           R1, [R11,#0x5A0]
4BCF24:  LDRSB.W         R0, [R0,#0x27]
4BCF28:  LDRSB.W         R1, [R1,#0x27]
4BCF2C:  CMP             R1, R0
4BCF2E:  BLE             loc_4BD002
4BCF30:  LDRB.W          R0, [R11,#0x485]
4BCF34:  LSLS            R0, R0, #0x1F
4BCF36:  BNE             loc_4BD002
4BCF38:  LDR.W           R0, [R11,#0x14]
4BCF3C:  ADD.W           R1, R0, #0x30 ; '0'
4BCF40:  CMP             R0, #0
4BCF42:  IT EQ
4BCF44:  ADDEQ.W         R1, R11, #4
4BCF48:  VLDR            S0, [SP,#0x90+var_60]
4BCF4C:  VLDR            D16, [R1]
4BCF50:  VLDR            S2, [SP,#0x90+var_60+4]
4BCF54:  VSTR            D16, [SP,#0x90+var_78]
4BCF58:  VLDR            S4, [SP,#0x90+var_78]
4BCF5C:  VLDR            S6, [SP,#0x90+var_78+4]
4BCF60:  VSUB.F32        S24, S4, S0
4BCF64:  LDR             R0, [R1,#8]
4BCF66:  VSUB.F32        S22, S6, S2
4BCF6A:  STR             R0, [SP,#0x90+var_70]
4BCF6C:  VLDR            S0, [SP,#0x90+var_58]
4BCF70:  VLDR            S2, [SP,#0x90+var_70]
4BCF74:  VSUB.F32        S26, S2, S0
4BCF78:  VMUL.F32        S2, S24, S24
4BCF7C:  VMUL.F32        S0, S22, S22
4BCF80:  VMUL.F32        S4, S26, S26
4BCF84:  VADD.F32        S0, S2, S0
4BCF88:  VADD.F32        S20, S0, S4
4BCF8C:  VCMPE.F32       S20, S18
4BCF90:  VMRS            APSR_nzcv, FPSCR
4BCF94:  BGE             loc_4BD002
4BCF96:  LDR.W           R0, [R8,#0x444]
4BCF9A:  CBZ             R0, loc_4BCFA6
4BCF9C:  MOV             R0, R10
4BCF9E:  MOVS            R1, #9
4BCFA0:  MOV             R2, R11
4BCFA2:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
4BCFA6:  VCMPE.F32       S20, S16
4BCFAA:  VMRS            APSR_nzcv, FPSCR
4BCFAE:  BGE             loc_4BD002
4BCFB0:  LDR.W           R0, [R8,#0x14]
4BCFB4:  VLDR            S0, [R0,#0x10]
4BCFB8:  VLDR            S2, [R0,#0x14]
4BCFBC:  VMUL.F32        S0, S24, S0
4BCFC0:  VLDR            S4, [R0,#0x18]
4BCFC4:  VMUL.F32        S2, S22, S2
4BCFC8:  VMUL.F32        S4, S26, S4
4BCFCC:  VADD.F32        S0, S0, S2
4BCFD0:  VADD.F32        S0, S0, S4
4BCFD4:  VCMPE.F32       S0, #0.0
4BCFD8:  VMRS            APSR_nzcv, FPSCR
4BCFDC:  BLE             loc_4BD002
4BCFDE:  MOVS            R0, #0
4BCFE0:  MOVS            R1, #1
4BCFE2:  STR             R0, [SP,#0x90+var_90]; bool
4BCFE4:  MOVS            R2, #(stderr+1); CVector *
4BCFE6:  STRD.W          R1, R0, [SP,#0x90+var_8C]; bool
4BCFEA:  ADD             R1, SP, #0x90+var_78; CVector *
4BCFEC:  STRD.W          R0, R0, [SP,#0x90+var_84]; CColLine *
4BCFF0:  ADD             R0, SP, #0x90+var_60; this
4BCFF2:  MOVS            R3, #0; bool
4BCFF4:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4BCFF8:  CMP             R0, #0
4BCFFA:  ITT NE
4BCFFC:  VMOVNE.F32      S16, S20
4BD000:  MOVNE           R9, R11
4BD002:  SUBS            R6, #1
4BD004:  ADD.W           R5, R5, #4
4BD008:  BNE.W           loc_4BCF0A
4BD00C:  CMP.W           R9, #0
4BD010:  BEQ             loc_4BD044
4BD012:  ADD             R5, SP, #0x90+var_78
4BD014:  MOV             R1, R9; CPed *
4BD016:  MOV             R0, R5; this
4BD018:  BLX             j__ZN13CEventSexyPedC2EP4CPed; CEventSexyPed::CEventSexyPed(CPed *)
4BD01C:  LDR.W           R0, [R8,#0x440]
4BD020:  MOV             R1, R5; CEvent *
4BD022:  MOVS            R2, #0; bool
4BD024:  ADDS            R0, #0x68 ; 'h'; this
4BD026:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BD02A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BD034)
4BD02C:  MOVW            R1, #0xBB8
4BD030:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BD032:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BD034:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4BD036:  STRD.W          R0, R1, [R4]
4BD03A:  MOVS            R0, #1
4BD03C:  STRB            R0, [R4,#8]
4BD03E:  MOV             R0, R5; this
4BD040:  BLX             j__ZN13CEventSexyPedD2Ev; CEventSexyPed::~CEventSexyPed()
4BD044:  ADD             SP, SP, #0x40 ; '@'
4BD046:  VPOP            {D8-D13}
4BD04A:  ADD             SP, SP, #4
4BD04C:  POP.W           {R8-R11}
4BD050:  POP             {R4-R7,PC}
