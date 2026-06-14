; =========================================================
; Game Engine Function: _ZNK33CTaskSimpleCarOpenDoorFromOutside5CloneEv
; Address            : 0x506B14 - 0x506B6A
; =========================================================

506B14:  PUSH            {R4-R7,LR}
506B16:  ADD             R7, SP, #0xC
506B18:  PUSH.W          {R8,R9,R11}
506B1C:  MOV             R6, R0
506B1E:  MOVS            R0, #dword_24; this
506B20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506B24:  LDRD.W          R5, R8, [R6,#0x10]
506B28:  MOV             R4, R0
506B2A:  LDR.W           R9, [R6,#0x1C]
506B2E:  LDRB            R6, [R6,#0x18]
506B30:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506B34:  LDR             R0, =(_ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr - 0x506B40)
506B36:  MOVS            R1, #0
506B38:  STRB            R1, [R4,#8]
506B3A:  CMP             R5, #0
506B3C:  ADD             R0, PC; _ZTV33CTaskSimpleCarOpenDoorFromOutside_ptr
506B3E:  STR             R1, [R4,#0xC]
506B40:  STR.W           R8, [R4,#0x14]
506B44:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarOpenDoorFromOutside ...
506B46:  STRB            R6, [R4,#0x18]
506B48:  STRB            R1, [R4,#0x19]
506B4A:  ADD.W           R0, R0, #8
506B4E:  STRD.W          R9, R1, [R4,#0x1C]
506B52:  MOV             R1, R4
506B54:  STR             R0, [R4]
506B56:  STR.W           R5, [R1,#0x10]!; CEntity **
506B5A:  ITT NE
506B5C:  MOVNE           R0, R5; this
506B5E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506B62:  MOV             R0, R4
506B64:  POP.W           {R8,R9,R11}
506B68:  POP             {R4-R7,PC}
