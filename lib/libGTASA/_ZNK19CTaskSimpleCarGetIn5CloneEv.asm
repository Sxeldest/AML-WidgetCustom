; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleCarGetIn5CloneEv
; Address            : 0x506CD8 - 0x506D22
; =========================================================

506CD8:  PUSH            {R4-R7,LR}
506CDA:  ADD             R7, SP, #0xC
506CDC:  PUSH.W          {R8}
506CE0:  MOV             R6, R0
506CE2:  MOVS            R0, #dword_24; this
506CE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506CE8:  LDRD.W          R5, R8, [R6,#0x18]
506CEC:  MOV             R4, R0
506CEE:  LDR             R6, [R6,#0x20]
506CF0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506CF4:  LDR             R0, =(_ZTV19CTaskSimpleCarGetIn_ptr - 0x506D00)
506CF6:  MOVS            R1, #0
506CF8:  STRB            R1, [R4,#8]
506CFA:  CMP             R5, #0
506CFC:  ADD             R0, PC; _ZTV19CTaskSimpleCarGetIn_ptr
506CFE:  STR             R1, [R4,#0xC]
506D00:  MOV             R1, R4
506D02:  STRD.W          R8, R6, [R4,#0x1C]
506D06:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarGetIn ...
506D08:  ADD.W           R0, R0, #8
506D0C:  STR             R0, [R4]
506D0E:  STR.W           R5, [R1,#0x18]!; CEntity **
506D12:  ITT NE
506D14:  MOVNE           R0, R5; this
506D16:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506D1A:  MOV             R0, R4
506D1C:  POP.W           {R8}
506D20:  POP             {R4-R7,PC}
