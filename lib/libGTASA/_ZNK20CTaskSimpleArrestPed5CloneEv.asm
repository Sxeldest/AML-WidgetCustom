; =========================================================
; Game Engine Function: _ZNK20CTaskSimpleArrestPed5CloneEv
; Address            : 0x540910 - 0x54094A
; =========================================================

540910:  PUSH            {R4,R5,R7,LR}
540912:  ADD             R7, SP, #8
540914:  MOV             R5, R0
540916:  MOVS            R0, #dword_14; this
540918:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54091C:  MOV             R4, R0
54091E:  LDR             R5, [R5,#8]
540920:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540924:  LDR             R0, =(_ZTV20CTaskSimpleArrestPed_ptr - 0x540930)
540926:  MOVS            R1, #0
540928:  STRB            R1, [R4,#0xC]
54092A:  CMP             R5, #0
54092C:  ADD             R0, PC; _ZTV20CTaskSimpleArrestPed_ptr
54092E:  STR             R1, [R4,#0x10]
540930:  MOV             R1, R4
540932:  LDR             R0, [R0]; `vtable for'CTaskSimpleArrestPed ...
540934:  ADD.W           R0, R0, #8
540938:  STR             R0, [R4]
54093A:  STR.W           R5, [R1,#8]!; CEntity **
54093E:  ITT NE
540940:  MOVNE           R0, R5; this
540942:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
540946:  MOV             R0, R4
540948:  POP             {R4,R5,R7,PC}
