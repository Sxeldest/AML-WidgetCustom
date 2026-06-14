; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeave13CreateSubTaskEiP4CPed
; Address            : 0x4F9C94 - 0x4F9E0C
; =========================================================

4F9C94:  PUSH            {R4-R7,LR}
4F9C96:  ADD             R7, SP, #0xC
4F9C98:  PUSH.W          {R8}
4F9C9C:  MOV             R5, R0
4F9C9E:  MOVW            R0, #(elf_hash_bucket+0x1C6); this
4F9CA2:  CMP             R1, R0
4F9CA4:  BEQ             loc_4F9D3A
4F9CA6:  MOVW            R0, #0x516
4F9CAA:  CMP             R1, R0
4F9CAC:  BEQ             loc_4F9D86
4F9CAE:  MOVW            R0, #0x2C5
4F9CB2:  CMP             R1, R0
4F9CB4:  BNE             loc_4F9DA0
4F9CB6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F9CBE)
4F9CB8:  MOVS            R1, #1
4F9CBA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F9CBC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F9CBE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F9CC0:  STRB            R1, [R5,#0x1C]
4F9CC2:  MOVW            R1, #0x1388; unsigned int
4F9CC6:  STRD.W          R0, R1, [R5,#0x14]
4F9CCA:  MOVS            R0, #dword_60; this
4F9CCC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9CD0:  MOV             R4, R0
4F9CD2:  LDR             R5, [R5,#0xC]
4F9CD4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F9CD8:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4F9CE8)
4F9CDA:  VMOV.I32        Q8, #0
4F9CDE:  ADD.W           R1, R4, #0xC
4F9CE2:  MOVS            R6, #0
4F9CE4:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4F9CE6:  CMP             R5, #0
4F9CE8:  VST1.32         {D16-D17}, [R1]
4F9CEC:  MOV.W           R1, #2
4F9CF0:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDrive ...
4F9CF2:  ADD.W           R0, R0, #8
4F9CF6:  STR             R0, [R4]
4F9CF8:  STRH            R6, [R4,#0x1C]
4F9CFA:  STR.W           R6, [R4,#0x56]
4F9CFE:  STR.W           R6, [R4,#0x52]
4F9D02:  LDRB.W          R0, [R4,#0x5C]
4F9D06:  STRD.W          R6, R6, [R4,#0x4C]
4F9D0A:  BFI.W           R0, R1, #2, #4
4F9D0E:  MOV             R1, R4
4F9D10:  STRB.W          R0, [R4,#0x5C]
4F9D14:  STR.W           R5, [R1,#8]!; CEntity **
4F9D18:  BEQ             loc_4F9D24
4F9D1A:  MOV             R0, R5; this
4F9D1C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9D20:  LDRB.W          R0, [R4,#0x5C]
4F9D24:  MOV.W           R1, #0xFFFFFFFF
4F9D28:  AND.W           R0, R0, #0xFC
4F9D2C:  STR             R1, [R4,#0x20]
4F9D2E:  STRB.W          R0, [R4,#0x5C]
4F9D32:  STRD.W          R6, R6, [R4,#0x3C]
4F9D36:  STR             R6, [R4,#0x44]
4F9D38:  B               loc_4F9E04
4F9D3A:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
4F9D3E:  CBZ             R0, loc_4F9DA4
4F9D40:  MOVS            R0, #word_28; this
4F9D42:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9D46:  LDR             R5, [R5,#0xC]
4F9D48:  MOV             R4, R0
4F9D4A:  LDR             R6, [R5,#0x14]
4F9D4C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9D50:  LDR             R0, =(_ZTV27CTaskComplexLeaveCarAndFlee_ptr - 0x4F9D5E)
4F9D52:  ADD.W           R2, R6, #0x30 ; '0'
4F9D56:  CMP             R6, #0
4F9D58:  MOV             R1, R4
4F9D5A:  ADD             R0, PC; _ZTV27CTaskComplexLeaveCarAndFlee_ptr
4F9D5C:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndFlee ...
4F9D5E:  ADD.W           R0, R0, #8
4F9D62:  STR             R0, [R4]
4F9D64:  MOV.W           R0, #0
4F9D68:  STR             R0, [R4,#0x10]
4F9D6A:  IT EQ
4F9D6C:  ADDEQ           R2, R5, #4
4F9D6E:  STR.W           R5, [R1,#0xC]!; CPed *
4F9D72:  VLDR            D16, [R2]
4F9D76:  LDR             R3, [R2,#8]
4F9D78:  STRD.W          R3, R0, [R4,#0x1C]
4F9D7C:  STRB.W          R0, [R4,#0x24]
4F9D80:  VSTR            D16, [R4,#0x14]
4F9D84:  B               loc_4F9DFA
4F9D86:  MOV             R0, R2; this
4F9D88:  LDR.W           R4, [R2,#0x440]
4F9D8C:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4F9D90:  MOV             R1, R0; CTask *
4F9D92:  ADDS            R0, R4, #4; this
4F9D94:  MOVS            R2, #4; int
4F9D96:  MOVS            R3, #0; bool
4F9D98:  MOVS            R4, #0
4F9D9A:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4F9D9E:  B               loc_4F9E04
4F9DA0:  MOVS            R4, #0
4F9DA2:  B               loc_4F9E04
4F9DA4:  BLX             rand
4F9DA8:  MOV             R8, R0
4F9DAA:  MOVS            R0, #word_28; this
4F9DAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9DB0:  LDR             R5, [R5,#0xC]
4F9DB2:  MOV             R4, R0
4F9DB4:  LDR             R6, [R5,#0x14]
4F9DB6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9DBA:  LDR             R0, =(_ZTV27CTaskComplexLeaveCarAndFlee_ptr - 0x4F9DCA)
4F9DBC:  ADD.W           R2, R6, #0x30 ; '0'
4F9DC0:  CMP             R6, #0
4F9DC2:  BFC.W           R8, #0xA, #0x16
4F9DC6:  ADD             R0, PC; _ZTV27CTaskComplexLeaveCarAndFlee_ptr
4F9DC8:  LDR             R1, [R0]; `vtable for'CTaskComplexLeaveCarAndFlee ...
4F9DCA:  MOV.W           R0, #0
4F9DCE:  STR             R0, [R4,#0x10]
4F9DD0:  ADD.W           R1, R1, #8
4F9DD4:  STR             R1, [R4]
4F9DD6:  MOV             R1, R4
4F9DD8:  IT EQ
4F9DDA:  ADDEQ           R2, R5, #4
4F9DDC:  STR.W           R5, [R1,#0xC]!; CEntity **
4F9DE0:  CMP.W           R8, #0x200
4F9DE4:  VLDR            D16, [R2]
4F9DE8:  LDR             R3, [R2,#8]
4F9DEA:  STRD.W          R3, R0, [R4,#0x1C]
4F9DEE:  VSTR            D16, [R4,#0x14]
4F9DF2:  IT LS
4F9DF4:  MOVLS           R0, #1
4F9DF6:  STRB.W          R0, [R4,#0x24]
4F9DFA:  CMP             R5, #0
4F9DFC:  ITT NE
4F9DFE:  MOVNE           R0, R5; this
4F9E00:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9E04:  MOV             R0, R4
4F9E06:  POP.W           {R8}
4F9E0A:  POP             {R4-R7,PC}
