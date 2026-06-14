; =========================================================
; Game Engine Function: _ZNK39CTaskSimpleCarOpenLockedDoorFromOutside5CloneEv
; Address            : 0x506B78 - 0x506BC2
; =========================================================

506B78:  PUSH            {R4-R7,LR}
506B7A:  ADD             R7, SP, #0xC
506B7C:  PUSH.W          {R8}
506B80:  MOV             R6, R0
506B82:  MOVS            R0, #dword_1C; this
506B84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506B88:  LDRD.W          R5, R8, [R6,#0x10]
506B8C:  MOV             R4, R0
506B8E:  LDR             R6, [R6,#0x18]
506B90:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506B94:  LDR             R0, =(_ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr - 0x506BA0)
506B96:  MOVS            R1, #0
506B98:  STRB            R1, [R4,#8]
506B9A:  CMP             R5, #0
506B9C:  ADD             R0, PC; _ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr
506B9E:  STR             R1, [R4,#0xC]
506BA0:  MOV             R1, R4
506BA2:  STRD.W          R8, R6, [R4,#0x14]
506BA6:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarOpenLockedDoorFromOutside ...
506BA8:  ADD.W           R0, R0, #8
506BAC:  STR             R0, [R4]
506BAE:  STR.W           R5, [R1,#0x10]!; CEntity **
506BB2:  ITT NE
506BB4:  MOVNE           R0, R5; this
506BB6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506BBA:  MOV             R0, R4
506BBC:  POP.W           {R8}
506BC0:  POP             {R4-R7,PC}
