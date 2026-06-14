; =========================================================
; Game Engine Function: _ZNK33CTaskSimpleCarCloseDoorFromInside5CloneEv
; Address            : 0x506C28 - 0x506C72
; =========================================================

506C28:  PUSH            {R4-R7,LR}
506C2A:  ADD             R7, SP, #0xC
506C2C:  PUSH.W          {R8}
506C30:  MOV             R6, R0
506C32:  MOVS            R0, #dword_1C; this
506C34:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506C38:  LDRD.W          R5, R8, [R6,#0x10]
506C3C:  MOV             R4, R0
506C3E:  LDR             R6, [R6,#0x18]
506C40:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506C44:  LDR             R0, =(_ZTV33CTaskSimpleCarCloseDoorFromInside_ptr - 0x506C50)
506C46:  MOVS            R1, #0
506C48:  STRB            R1, [R4,#8]
506C4A:  CMP             R5, #0
506C4C:  ADD             R0, PC; _ZTV33CTaskSimpleCarCloseDoorFromInside_ptr
506C4E:  STR             R1, [R4,#0xC]
506C50:  MOV             R1, R4
506C52:  STRD.W          R8, R6, [R4,#0x14]
506C56:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromInside ...
506C58:  ADD.W           R0, R0, #8
506C5C:  STR             R0, [R4]
506C5E:  STR.W           R5, [R1,#0x10]!; CEntity **
506C62:  ITT NE
506C64:  MOVNE           R0, R5; this
506C66:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506C6A:  MOV             R0, R4
506C6C:  POP.W           {R8}
506C70:  POP             {R4-R7,PC}
