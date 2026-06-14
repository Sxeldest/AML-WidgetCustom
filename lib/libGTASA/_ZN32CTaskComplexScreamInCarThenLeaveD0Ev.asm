; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeaveD0Ev
; Address            : 0x4F9C18 - 0x4F9C44
; =========================================================

4F9C18:  PUSH            {R4,R6,R7,LR}
4F9C1A:  ADD             R7, SP, #8
4F9C1C:  MOV             R4, R0
4F9C1E:  LDR             R0, =(_ZTV32CTaskComplexScreamInCarThenLeave_ptr - 0x4F9C26)
4F9C20:  MOV             R1, R4
4F9C22:  ADD             R0, PC; _ZTV32CTaskComplexScreamInCarThenLeave_ptr
4F9C24:  LDR             R2, [R0]; `vtable for'CTaskComplexScreamInCarThenLeave ...
4F9C26:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F9C2A:  ADDS            R2, #8
4F9C2C:  STR             R2, [R4]
4F9C2E:  CMP             R0, #0
4F9C30:  IT NE
4F9C32:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F9C36:  MOV             R0, R4; this
4F9C38:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F9C3C:  POP.W           {R4,R6,R7,LR}
4F9C40:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
