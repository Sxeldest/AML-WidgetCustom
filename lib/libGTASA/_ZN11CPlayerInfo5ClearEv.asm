; =========================================================
; Game Engine Function: _ZN11CPlayerInfo5ClearEv
; Address            : 0x408E50 - 0x408F50
; =========================================================

408E50:  PUSH            {R4,R6,R7,LR}
408E52:  ADD             R7, SP, #8
408E54:  MOV             R4, R0
408E56:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x408E66)
408E58:  LDR.W           R1, [R4,#0xB4]
408E5C:  MOVS            R0, #0; this
408E5E:  STR.W           R0, [R4,#0xB0]
408E62:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
408E64:  STR             R0, [R4]
408E66:  CMP             R1, #0
408E68:  ITTTT NE
408E6A:  LDRNE           R2, [R1,#0x44]
408E6C:  BICNE.W         R2, R2, #0x4000000
408E70:  STRNE           R2, [R1,#0x44]
408E72:  STRNE.W         R0, [R4,#0xB4]
408E76:  ADR             R1, dword_408F50
408E78:  VLD1.64         {D16-D17}, [R1@128]
408E7C:  VMOV.I32        Q9, #0
408E80:  MOV.W           LR, #1
408E84:  LDR             R1, [R3]; CTimer::m_snTimeInMilliseconds ...
408E86:  MOV.W           R3, #0x3F800000
408E8A:  STRH.W          R0, [R4,#0x130]
408E8E:  STR.W           R3, [R4,#0x134]
408E92:  ADD.W           R3, R4, #0xB8
408E96:  STR.W           R0, [R4,#0xDC]
408E9A:  STRH.W          R0, [R4,#0xD4]
408E9E:  STR.W           R0, [R4,#0xCC]
408EA2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
408EA4:  VST1.32         {D16-D17}, [R3]
408EA8:  ADD.W           R3, R4, #0x120
408EAC:  VST1.32         {D18-D19}, [R3]
408EB0:  ADD.W           R3, R4, #0x114
408EB4:  VST1.32         {D18-D19}, [R3]
408EB8:  ADD.W           R3, R4, #0x104
408EBC:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x408ECA)
408EBE:  VST1.32         {D18-D19}, [R3]
408EC2:  ADD.W           R3, R4, #0xF4
408EC6:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
408EC8:  VST1.32         {D18-D19}, [R3]
408ECC:  ADD.W           R3, R4, #0xE4
408ED0:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x408EE2)
408ED4:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
408ED6:  VST1.32         {D18-D19}, [R3]
408EDA:  MOVW            R3, #0x6464
408EDE:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
408EE0:  STR.W           R1, [R4,#0xD0]
408EE4:  MOV.W           R1, #0x194
408EE8:  STRH.W          R0, [R4,#0x14C]
408EEC:  STRB.W          R0, [R4,#0x14E]
408EF0:  STR.W           R0, [R4,#0x140]
408EF4:  STRB.W          LR, [R4,#0x153]
408EF8:  STR.W           R3, [R4,#0x14F]
408EFC:  STRD.W          R0, R0, [R4,#0x138]
408F00:  LDR             R2, [R2]; CWorld::PlayerInFocus
408F02:  LDR.W           R3, [R12]; CWorld::Players ...
408F06:  SMLABB.W        R1, R2, R1, R3
408F0A:  STRH.W          R0, [R1,#0x144]
408F0E:  LDRB.W          R1, [R4,#0x18C]
408F12:  STRH.W          LR, [R4,#0x156]
408F16:  CMP             R1, #0
408F18:  STR.W           R0, [R4,#0x148]
408F1C:  STRB.W          R0, [R4,#0x154]
408F20:  STRB.W          R0, [R4,#0x164]
408F24:  STRB.W          R0, [R4,#0x158]
408F28:  STR.W           R0, [R4,#0x190]
408F2C:  BEQ             locret_408F4E
408F2E:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
408F32:  LDRB.W          R0, [R4,#0x18C]
408F36:  CMP             R0, #0
408F38:  IT EQ
408F3A:  POPEQ           {R4,R6,R7,PC}
408F3C:  MOVW            R0, #(elf_hash_bucket+0x77); this
408F40:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
408F44:  MOVS            R0, #0
408F46:  STR.W           R0, [R4,#0x190]
408F4A:  STRB.W          R0, [R4,#0x18C]
408F4E:  POP             {R4,R6,R7,PC}
