; =========================================================
; Game Engine Function: _ZNK21CTaskComplexArrestPed5CloneEv
; Address            : 0x540958 - 0x540990
; =========================================================

540958:  PUSH            {R4,R5,R7,LR}
54095A:  ADD             R7, SP, #8
54095C:  MOV             R5, R0
54095E:  MOVS            R0, #dword_24; this
540960:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540964:  MOV             R4, R0
540966:  LDR             R5, [R5,#0x10]
540968:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54096C:  LDR             R0, =(_ZTV21CTaskComplexArrestPed_ptr - 0x540978)
54096E:  MOVS            R1, #0
540970:  STR             R1, [R4,#0x20]
540972:  MOV             R1, R4
540974:  ADD             R0, PC; _ZTV21CTaskComplexArrestPed_ptr
540976:  CMP             R5, #0
540978:  LDR             R0, [R0]; `vtable for'CTaskComplexArrestPed ...
54097A:  ADD.W           R0, R0, #8
54097E:  STR             R0, [R4]
540980:  STR.W           R5, [R1,#0x10]!; CEntity **
540984:  ITT NE
540986:  MOVNE           R0, R5; this
540988:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54098C:  MOV             R0, R4
54098E:  POP             {R4,R5,R7,PC}
