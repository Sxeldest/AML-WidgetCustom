; =========================================================
; Game Engine Function: _ZNK24CTaskComplexKillCriminal5CloneEv
; Address            : 0x5409D4 - 0x540A54
; =========================================================

5409D4:  PUSH            {R4-R7,LR}
5409D6:  ADD             R7, SP, #0xC
5409D8:  PUSH.W          {R11}
5409DC:  MOV             R5, R0
5409DE:  MOVS            R0, #dword_20; this
5409E0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5409E4:  MOV             R4, R0
5409E6:  LDR             R6, [R5,#0xC]
5409E8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5409EC:  LDR             R0, =(_ZTV24CTaskComplexKillCriminal_ptr - 0x5409FA)
5409EE:  MOVS            R2, #0
5409F0:  MOVS            R1, #0
5409F2:  MOVT            R2, #0x4040
5409F6:  ADD             R0, PC; _ZTV24CTaskComplexKillCriminal_ptr
5409F8:  MOV             R5, R4
5409FA:  STRD.W          R1, R2, [R4,#0x10]
5409FE:  CMP             R6, #0
540A00:  LDR             R0, [R0]; `vtable for'CTaskComplexKillCriminal ...
540A02:  STRH            R1, [R4,#0x18]
540A04:  STRB            R1, [R4,#0x1A]
540A06:  ADD.W           R0, R0, #8
540A0A:  STRB            R1, [R4,#0x1E]
540A0C:  STR             R0, [R4]
540A0E:  STR.W           R6, [R5,#0xC]!
540A12:  BEQ             loc_540A38
540A14:  MOV             R0, R6; this
540A16:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
540A1A:  CBNZ            R0, loc_540A34
540A1C:  LDR             R0, [R5]; this
540A1E:  LDR.W           R1, [R0,#0x59C]
540A22:  CMP             R1, #0x13
540A24:  BHI             loc_540A40
540A26:  MOVS            R2, #1
540A28:  MOVS            R3, #:lower16:(aZn8cvehicle28q+0x2B); "v"
540A2A:  LSLS            R2, R1
540A2C:  MOVT            R3, #:upper16:(aZn8cvehicle28q+0x2B); "v"
540A30:  TST             R2, R3
540A32:  BEQ             loc_540A40
540A34:  MOVS            R0, #0
540A36:  STR             R0, [R5]
540A38:  MOV             R0, R4
540A3A:  POP.W           {R11}
540A3E:  POP             {R4-R7,PC}
540A40:  CMP             R1, #0x17
540A42:  BGT             loc_540A34
540A44:  LDRB.W          R1, [R0,#0x448]
540A48:  CMP             R1, #2
540A4A:  BEQ             loc_540A34
540A4C:  MOV             R1, R5; CEntity **
540A4E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
540A52:  B               loc_540A38
