; =========================================================
; Game Engine Function: _ZNK36CTaskComplexEnterCarAsPassengerTimed5CloneEv
; Address            : 0x4FDCF4 - 0x4FDD54
; =========================================================

4FDCF4:  PUSH            {R4-R7,LR}
4FDCF6:  ADD             R7, SP, #0xC
4FDCF8:  PUSH.W          {R8-R10}
4FDCFC:  MOV             R4, R0
4FDCFE:  MOVS            R0, #word_2C; this
4FDD00:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FDD04:  ADD.W           R9, R4, #0xC
4FDD08:  MOV             R5, R0
4FDD0A:  LDM.W           R9, {R6,R8,R9}
4FDD0E:  LDRB.W          R10, [R4,#0x18]
4FDD12:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FDD16:  LDR             R0, =(_ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr - 0x4FDD24)
4FDD18:  MOVS            R1, #6
4FDD1A:  STRD.W          R8, R9, [R5,#0x10]
4FDD1E:  CMP             R6, #0
4FDD20:  ADD             R0, PC; _ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr
4FDD22:  STRB.W          R10, [R5,#0x18]
4FDD26:  STR             R1, [R5,#0x1C]
4FDD28:  MOV.W           R1, #0
4FDD2C:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerTimed ...
4FDD2E:  STRH            R1, [R5,#0x28]
4FDD30:  STRD.W          R1, R1, [R5,#0x20]
4FDD34:  MOV             R1, R5
4FDD36:  ADD.W           R0, R0, #8
4FDD3A:  STR             R0, [R5]
4FDD3C:  STR.W           R6, [R1,#0xC]!; CEntity **
4FDD40:  ITT NE
4FDD42:  MOVNE           R0, R6; this
4FDD44:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FDD48:  LDR             R0, [R4,#0x1C]
4FDD4A:  STR             R0, [R5,#0x1C]
4FDD4C:  MOV             R0, R5
4FDD4E:  POP.W           {R8-R10}
4FDD52:  POP             {R4-R7,PC}
