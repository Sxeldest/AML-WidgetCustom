; =========================================================
; Game Engine Function: _ZNK35CTaskComplexEnterCarAsPassengerWait5CloneEv
; Address            : 0x4FDE00 - 0x4FDE68
; =========================================================

4FDE00:  PUSH            {R4-R7,LR}
4FDE02:  ADD             R7, SP, #0xC
4FDE04:  PUSH.W          {R8,R9,R11}
4FDE08:  MOV             R6, R0
4FDE0A:  MOVS            R0, #dword_24; this
4FDE0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FDE10:  LDRD.W          R8, R5, [R6,#0xC]
4FDE14:  MOV             R4, R0
4FDE16:  LDR.W           R9, [R6,#0x1C]
4FDE1A:  LDRB            R6, [R6,#0x18]
4FDE1C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FDE20:  LDR             R0, =(_ZTV35CTaskComplexEnterCarAsPassengerWait_ptr - 0x4FDE2E)
4FDE22:  MOVS            R1, #0
4FDE24:  STR             R1, [R4,#0x14]
4FDE26:  CMP.W           R8, #0
4FDE2A:  ADD             R0, PC; _ZTV35CTaskComplexEnterCarAsPassengerWait_ptr
4FDE2C:  STRB            R6, [R4,#0x18]
4FDE2E:  STR.W           R9, [R4,#0x1C]
4FDE32:  MOV             R6, R4
4FDE34:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerWait ...
4FDE36:  STRB.W          R1, [R4,#0x20]
4FDE3A:  MOV             R1, R4
4FDE3C:  ADD.W           R0, R0, #8
4FDE40:  STR             R0, [R4]
4FDE42:  STR.W           R5, [R6,#0x10]!
4FDE46:  STR.W           R8, [R1,#0xC]!; CEntity **
4FDE4A:  BEQ             loc_4FDE54
4FDE4C:  MOV             R0, R8; this
4FDE4E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FDE52:  LDR             R5, [R6]
4FDE54:  CMP             R5, #0
4FDE56:  ITTT NE
4FDE58:  MOVNE           R0, R5; this
4FDE5A:  MOVNE           R1, R6; CEntity **
4FDE5C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FDE60:  MOV             R0, R4
4FDE62:  POP.W           {R8,R9,R11}
4FDE66:  POP             {R4-R7,PC}
