; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntityD0Ev
; Address            : 0x522A90 - 0x522ABC
; =========================================================

522A90:  PUSH            {R4,R6,R7,LR}
522A92:  ADD             R7, SP, #8
522A94:  MOV             R4, R0
522A96:  LDR             R0, =(_ZTV23CTaskComplexAvoidEntity_ptr - 0x522A9E)
522A98:  MOV             R1, R4
522A9A:  ADD             R0, PC; _ZTV23CTaskComplexAvoidEntity_ptr
522A9C:  LDR             R2, [R0]; `vtable for'CTaskComplexAvoidEntity ...
522A9E:  LDR.W           R0, [R1,#0xC]!; CEntity **
522AA2:  ADDS            R2, #8
522AA4:  STR             R2, [R4]
522AA6:  CMP             R0, #0
522AA8:  IT NE
522AAA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
522AAE:  MOV             R0, R4; this
522AB0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
522AB4:  POP.W           {R4,R6,R7,LR}
522AB8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
