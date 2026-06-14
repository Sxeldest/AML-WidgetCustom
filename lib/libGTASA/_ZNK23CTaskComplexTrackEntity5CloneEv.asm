; =========================================================
; Game Engine Function: _ZNK23CTaskComplexTrackEntity5CloneEv
; Address            : 0x517DDC - 0x517E7A
; =========================================================

517DDC:  PUSH            {R4-R7,LR}
517DDE:  ADD             R7, SP, #0xC
517DE0:  PUSH.W          {R8-R11}
517DE4:  SUB             SP, SP, #0x14
517DE6:  MOV             R4, R0
517DE8:  LDRB.W          R0, [R4,#0x38]
517DEC:  CBZ             R0, loc_517E00
517DEE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x517DF8)
517DF0:  LDRD.W          R1, R2, [R4,#0x30]
517DF4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
517DF6:  ADD             R1, R2; unsigned int
517DF8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
517DFA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
517DFC:  SUBS            R0, R1, R0
517DFE:  B               loc_517E02
517E00:  LDR             R0, [R4,#0x20]
517E02:  STR             R0, [SP,#0x30+var_20]
517E04:  MOVS            R0, #dword_58; this
517E06:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
517E0A:  LDRD.W          R9, R6, [R4,#0xC]
517E0E:  MOV             R5, R0
517E10:  LDRD.W          R10, R11, [R4,#0x14]
517E14:  LDRB.W          R0, [R4,#0x2C]
517E18:  STR             R0, [SP,#0x30+var_24]
517E1A:  LDRB            R0, [R4,#0x1C]
517E1C:  STR             R0, [SP,#0x30+var_28]
517E1E:  LDRD.W          R8, R0, [R4,#0x24]
517E22:  STR             R0, [SP,#0x30+var_2C]
517E24:  MOV             R0, R5; this
517E26:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
517E2A:  ADD.W           R0, R5, #0x10
517E2E:  STM.W           R0, {R6,R10,R11}
517E32:  LDR             R0, [SP,#0x30+var_20]
517E34:  STRD.W          R0, R8, [R5,#0x20]
517E38:  LDR             R1, [SP,#0x30+var_2C]
517E3A:  LDR             R0, =(_ZTV23CTaskComplexTrackEntity_ptr - 0x517E46)
517E3C:  STR             R1, [R5,#0x28]
517E3E:  MOVS            R1, #0
517E40:  STRH            R1, [R5,#0x38]
517E42:  ADD             R0, PC; _ZTV23CTaskComplexTrackEntity_ptr
517E44:  LDR             R2, [SP,#0x30+var_28]
517E46:  STRB            R2, [R5,#0x1C]
517E48:  LDR             R0, [R0]; `vtable for'CTaskComplexTrackEntity ...
517E4A:  LDR             R2, [SP,#0x30+var_24]
517E4C:  STRB.W          R2, [R5,#0x2C]
517E50:  ADDS            R0, #8
517E52:  STRD.W          R1, R1, [R5,#0x30]
517E56:  MOV             R1, R5
517E58:  STR             R0, [R5]
517E5A:  MOV             R0, R9; this
517E5C:  STR.W           R9, [R1,#0xC]!; CEntity **
517E60:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
517E64:  MOVS            R0, #0xBF800000
517E6A:  STR             R0, [R5,#0x3C]
517E6C:  LDR             R0, [R4,#0x3C]
517E6E:  STR             R0, [R5,#0x3C]
517E70:  MOV             R0, R5
517E72:  ADD             SP, SP, #0x14
517E74:  POP.W           {R8-R11}
517E78:  POP             {R4-R7,PC}
