; =========================================================
; Game Engine Function: _ZNK32CTaskComplexKillPedOnFootStealth5CloneEv
; Address            : 0x4E9EA0 - 0x4E9F54
; =========================================================

4E9EA0:  PUSH            {R4-R7,LR}
4E9EA2:  ADD             R7, SP, #0xC
4E9EA4:  PUSH.W          {R8}
4E9EA8:  MOV             R5, R0
4E9EAA:  MOVS            R0, #dword_48; this
4E9EAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9EB0:  MOV             R4, R0
4E9EB2:  LDR             R5, [R5,#0x10]
4E9EB4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E9EB8:  LDR             R0, =(_ZTV25CTaskComplexKillPedOnFoot_ptr - 0x4E9EC6)
4E9EBA:  MOVS            R6, #0
4E9EBC:  MOVS            R1, #1
4E9EBE:  MOV.W           R8, #0xFFFFFFFF
4E9EC2:  ADD             R0, PC; _ZTV25CTaskComplexKillPedOnFoot_ptr
4E9EC4:  STRD.W          R6, R6, [R4,#0x14]
4E9EC8:  STR             R6, [R4,#0x1C]
4E9ECA:  CMP             R5, #0
4E9ECC:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFoot ...
4E9ECE:  STRB.W          R1, [R4,#0x20]
4E9ED2:  STR.W           R8, [R4,#0x28]
4E9ED6:  ADD.W           R0, R0, #8
4E9EDA:  STRH            R6, [R4,#0x34]
4E9EDC:  STR             R6, [R4,#0x30]
4E9EDE:  LDRB            R1, [R4,#0xC]
4E9EE0:  STR             R6, [R4,#0x2C]
4E9EE2:  STR             R0, [R4]
4E9EE4:  BIC.W           R0, R1, #0x74 ; 't'
4E9EE8:  MOV             R1, R4
4E9EEA:  ORR.W           R0, R0, #4
4E9EEE:  STRB            R0, [R4,#0xC]
4E9EF0:  STR.W           R5, [R1,#0x10]!; CEntity **
4E9EF4:  BEQ             loc_4E9EFE
4E9EF6:  MOV             R0, R5; this
4E9EF8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E9EFC:  LDRB            R0, [R4,#0xC]
4E9EFE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E9F0C)
4E9F00:  AND.W           R0, R0, #0xF7
4E9F04:  LDR             R2, =(_ZTV32CTaskComplexKillPedOnFootStealth_ptr - 0x4E9F0E)
4E9F06:  CMP             R5, #0
4E9F08:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E9F0A:  ADD             R2, PC; _ZTV32CTaskComplexKillPedOnFootStealth_ptr
4E9F0C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4E9F0E:  LDR             R2, [R2]; `vtable for'CTaskComplexKillPedOnFootStealth ...
4E9F10:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4E9F12:  STRB            R0, [R4,#0xC]
4E9F14:  ADD.W           R0, R2, #8
4E9F18:  STR             R1, [R4,#0x24]
4E9F1A:  STR             R0, [R4]
4E9F1C:  MOV             R0, #0xC61C3F9A
4E9F24:  STRD.W          R6, R0, [R4,#0x3C]
4E9F28:  MOV             R0, R4
4E9F2A:  STR.W           R8, [R4,#0x44]
4E9F2E:  STR.W           R6, [R0,#0x38]!
4E9F32:  BEQ             loc_4E9F4C
4E9F34:  LDR             R1, [R5,#0x14]
4E9F36:  ADD.W           R2, R1, #0x30 ; '0'
4E9F3A:  CMP             R1, #0
4E9F3C:  IT EQ
4E9F3E:  ADDEQ           R2, R5, #4
4E9F40:  VLDR            D16, [R2]
4E9F44:  LDR             R1, [R2,#8]
4E9F46:  STR             R1, [R0,#8]
4E9F48:  VSTR            D16, [R0]
4E9F4C:  MOV             R0, R4
4E9F4E:  POP.W           {R8}
4E9F52:  POP             {R4-R7,PC}
