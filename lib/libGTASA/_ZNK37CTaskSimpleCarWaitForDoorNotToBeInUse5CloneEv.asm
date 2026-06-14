; =========================================================
; Game Engine Function: _ZNK37CTaskSimpleCarWaitForDoorNotToBeInUse5CloneEv
; Address            : 0x506DD4 - 0x506E18
; =========================================================

506DD4:  PUSH            {R4-R7,LR}
506DD6:  ADD             R7, SP, #0xC
506DD8:  PUSH.W          {R8}
506DDC:  MOV             R6, R0
506DDE:  MOVS            R0, #dword_14; this
506DE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506DE4:  LDRD.W          R5, R8, [R6,#8]
506DE8:  MOV             R4, R0
506DEA:  LDR             R6, [R6,#0x10]
506DEC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506DF0:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x506DFE)
506DF2:  MOV             R1, R4
506DF4:  STRD.W          R8, R6, [R4,#0xC]
506DF8:  CMP             R5, #0
506DFA:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
506DFC:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
506DFE:  ADD.W           R0, R0, #8
506E02:  STR             R0, [R4]
506E04:  STR.W           R5, [R1,#8]!; CEntity **
506E08:  ITT NE
506E0A:  MOVNE           R0, R5; this
506E0C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506E10:  MOV             R0, R4
506E12:  POP.W           {R8}
506E16:  POP             {R4-R7,PC}
