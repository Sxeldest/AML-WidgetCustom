; =========================================================
; Game Engine Function: _ZN23CTaskSimpleThrowControl10ProcessPedEP4CPed
; Address            : 0x4DEF20 - 0x4DF0D8
; =========================================================

4DEF20:  PUSH            {R4-R7,LR}
4DEF22:  ADD             R7, SP, #0xC
4DEF24:  PUSH.W          {R8-R11}
4DEF28:  SUB             SP, SP, #0xC
4DEF2A:  MOV             R5, R0
4DEF2C:  MOV             R4, R1
4DEF2E:  LDRB            R0, [R5,#8]
4DEF30:  CBZ             R0, loc_4DEF3E
4DEF32:  MOVS            R5, #1
4DEF34:  MOV             R0, R5
4DEF36:  ADD             SP, SP, #0xC
4DEF38:  POP.W           {R8-R11}
4DEF3C:  POP             {R4-R7,PC}
4DEF3E:  MOV             R0, R4
4DEF40:  MOVS            R1, #1
4DEF42:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DEF46:  LDR.W           R0, [R4,#0x440]
4DEF4A:  MOVS            R1, #0; int
4DEF4C:  ADDS            R0, #4; this
4DEF4E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DEF52:  CBZ             R0, loc_4DEF74
4DEF54:  LDR.W           R0, [R4,#0x440]
4DEF58:  MOVS            R1, #0; int
4DEF5A:  ADDS            R0, #4; this
4DEF5C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DEF60:  LDR             R1, [R0]
4DEF62:  LDR             R1, [R1,#0x14]
4DEF64:  BLX             R1
4DEF66:  MOVW            R1, #0x3FA
4DEF6A:  CMP             R0, R1
4DEF6C:  BNE             loc_4DF042
4DEF6E:  ADD.W           R9, R5, #0x10
4DEF72:  B               loc_4DEFEA
4DEF74:  LDRB            R0, [R5,#9]
4DEF76:  CMP             R0, #0
4DEF78:  BNE             loc_4DEF32
4DEF7A:  LDR.W           R0, [R4,#0x440]
4DEF7E:  STR             R0, [SP,#0x28+var_20]
4DEF80:  MOVS            R0, #dword_24; this
4DEF82:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DEF86:  MOV             R9, R5
4DEF88:  MOV             R6, R0
4DEF8A:  LDR.W           R0, [R9,#0x10]!
4DEF8E:  STR             R0, [SP,#0x28+var_24]
4DEF90:  MOV             R0, R6; this
4DEF92:  LDR.W           R8, [R9,#-4]
4DEF96:  LDRD.W          R10, R11, [R9,#4]
4DEF9A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DEF9E:  LDR             R0, =(_ZTV26CTaskSimpleThrowProjectile_ptr - 0x4DEFAC)
4DEFA0:  ADD.W           R1, R6, #0x14
4DEFA4:  CMP.W           R8, #0
4DEFA8:  ADD             R0, PC; _ZTV26CTaskSimpleThrowProjectile_ptr
4DEFAA:  LDR             R0, [R0]; `vtable for'CTaskSimpleThrowProjectile ...
4DEFAC:  ADD.W           R0, R0, #8
4DEFB0:  STR             R0, [R6]
4DEFB2:  MOV.W           R0, #0
4DEFB6:  STRH            R0, [R6,#8]
4DEFB8:  STRB            R0, [R6,#0xA]
4DEFBA:  STR             R0, [R6,#0xC]
4DEFBC:  LDR             R0, [SP,#0x28+var_24]
4DEFBE:  STM.W           R1, {R0,R10,R11}
4DEFC2:  MOV             R1, R6
4DEFC4:  STR.W           R8, [R1,#0x10]!; CEntity **
4DEFC8:  ITT NE
4DEFCA:  MOVNE           R0, R8; this
4DEFCC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DEFD0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DEFDA)
4DEFD2:  MOV             R1, R6; CTask *
4DEFD4:  MOVS            R2, #0; int
4DEFD6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DEFD8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DEFDA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DEFDC:  STR             R0, [R6,#0x20]
4DEFDE:  LDR             R0, [SP,#0x28+var_20]
4DEFE0:  ADDS            R0, #4; this
4DEFE2:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4DEFE6:  MOVS            R0, #1
4DEFE8:  STRB            R0, [R5,#9]
4DEFEA:  LDR.W           R0, [R4,#0x440]; this
4DEFEE:  BLX             j__ZNK16CPedIntelligence12GetTaskThrowEv; CPedIntelligence::GetTaskThrow(void)
4DEFF2:  VLDR            S0, [R5,#0x10]
4DEFF6:  MOV             R6, R0
4DEFF8:  VCMP.F32        S0, #0.0
4DEFFC:  VMRS            APSR_nzcv, FPSCR
4DF000:  ITTT EQ
4DF002:  VLDREQ          S2, [R5,#0x14]
4DF006:  VCMPEQ.F32      S2, #0.0
4DF00A:  VMRSEQ          APSR_nzcv, FPSCR
4DF00E:  BEQ             loc_4DF05E
4DF010:  MOV             R0, R5
4DF012:  LDR.W           R1, [R0,#0xC]!
4DF016:  CBZ             R1, loc_4DF07C
4DF018:  LDR             R0, [R0]
4DF01A:  LDR             R2, [R4,#0x14]
4DF01C:  LDR             R3, [R0,#0x14]
4DF01E:  ADD.W           R1, R2, #0x30 ; '0'
4DF022:  CMP             R2, #0
4DF024:  IT EQ
4DF026:  ADDEQ           R1, R4, #4
4DF028:  ADD.W           R2, R3, #0x30 ; '0'
4DF02C:  CMP             R3, #0
4DF02E:  VLDR            S0, [R1]
4DF032:  IT EQ
4DF034:  ADDEQ           R2, R0, #4
4DF036:  VLDR            S2, [R2]
4DF03A:  ADDS            R0, R2, #4
4DF03C:  VSUB.F32        S0, S2, S0
4DF040:  B               loc_4DF094
4DF042:  LDR.W           R0, [R4,#0x440]
4DF046:  MOVS            R1, #0; int
4DF048:  MOVS            R5, #0
4DF04A:  ADDS            R0, #4; this
4DF04C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DF050:  LDR             R1, [R0]
4DF052:  MOVS            R2, #1
4DF054:  MOVS            R3, #0
4DF056:  LDR             R6, [R1,#0x1C]
4DF058:  MOV             R1, R4
4DF05A:  BLX             R6
4DF05C:  B               loc_4DEF34
4DF05E:  MOV             R0, R5
4DF060:  LDR.W           R1, [R0,#0xC]!
4DF064:  VLDR            S2, [R0,#0xC]
4DF068:  VCMP.F32        S2, #0.0
4DF06C:  VMRS            APSR_nzcv, FPSCR
4DF070:  IT EQ
4DF072:  MOVEQ.W         R9, #0
4DF076:  BNE             loc_4DF016
4DF078:  CBZ             R1, loc_4DF0B4
4DF07A:  B               loc_4DF016
4DF07C:  LDR             R2, [R4,#0x14]
4DF07E:  ADD.W           R0, R5, #0x14
4DF082:  ADD.W           R1, R2, #0x30 ; '0'
4DF086:  CMP             R2, #0
4DF088:  IT EQ
4DF08A:  ADDEQ           R1, R4, #4
4DF08C:  VLDR            S2, [R1]
4DF090:  VSUB.F32        S0, S0, S2
4DF094:  VLDR            S4, [R0]
4DF098:  VMOV            R0, S0
4DF09C:  VLDR            S2, [R1,#4]
4DF0A0:  VSUB.F32        S2, S4, S2
4DF0A4:  VMOV            R1, S2; x
4DF0A8:  EOR.W           R0, R0, #0x80000000; y
4DF0AC:  BLX             atan2f
4DF0B0:  STR.W           R0, [R4,#0x560]
4DF0B4:  LDRB            R0, [R5,#9]
4DF0B6:  CBZ             R0, loc_4DF0D4
4DF0B8:  LDRB            R0, [R6,#8]
4DF0BA:  CMP             R0, #0
4DF0BC:  BNE.W           loc_4DEF32
4DF0C0:  CMP.W           R9, #0
4DF0C4:  ITTTT NE
4DF0C6:  VLDRNE          D16, [R9]
4DF0CA:  LDRNE.W         R0, [R9,#8]
4DF0CE:  STRNE           R0, [R6,#0x1C]
4DF0D0:  VSTRNE          D16, [R6,#0x14]
4DF0D4:  MOVS            R5, #0
4DF0D6:  B               loc_4DEF34
