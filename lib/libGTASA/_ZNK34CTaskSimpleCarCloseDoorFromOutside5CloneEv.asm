; =========================================================
; Game Engine Function: _ZNK34CTaskSimpleCarCloseDoorFromOutside5CloneEv
; Address            : 0x506C80 - 0x506CCA
; =========================================================

506C80:  PUSH            {R4-R7,LR}
506C82:  ADD             R7, SP, #0xC
506C84:  PUSH.W          {R8}
506C88:  MOV             R6, R0
506C8A:  MOVS            R0, #dword_1C; this
506C8C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506C90:  LDRD.W          R5, R8, [R6,#0x10]
506C94:  MOV             R4, R0
506C96:  LDR             R6, [R6,#0x18]
506C98:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506C9C:  LDR             R0, =(_ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr - 0x506CA8)
506C9E:  MOVS            R1, #0
506CA0:  STRB            R1, [R4,#8]
506CA2:  CMP             R5, #0
506CA4:  ADD             R0, PC; _ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr
506CA6:  STR             R1, [R4,#0xC]
506CA8:  MOV             R1, R4
506CAA:  STRD.W          R8, R6, [R4,#0x14]
506CAE:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromOutside ...
506CB0:  ADD.W           R0, R0, #8
506CB4:  STR             R0, [R4]
506CB6:  STR.W           R5, [R1,#0x10]!; CEntity **
506CBA:  ITT NE
506CBC:  MOVNE           R0, R5; this
506CBE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506CC2:  MOV             R0, R4
506CC4:  POP.W           {R8}
506CC8:  POP             {R4-R7,PC}
