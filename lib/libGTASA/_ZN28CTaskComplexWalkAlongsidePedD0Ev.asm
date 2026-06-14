; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePedD0Ev
; Address            : 0x535C40 - 0x535C6C
; =========================================================

535C40:  PUSH            {R4,R6,R7,LR}
535C42:  ADD             R7, SP, #8
535C44:  MOV             R4, R0
535C46:  LDR             R0, =(_ZTV28CTaskComplexWalkAlongsidePed_ptr - 0x535C4E)
535C48:  MOV             R1, R4
535C4A:  ADD             R0, PC; _ZTV28CTaskComplexWalkAlongsidePed_ptr
535C4C:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkAlongsidePed ...
535C4E:  LDR.W           R0, [R1,#0xC]!; CEntity **
535C52:  ADDS            R2, #8
535C54:  STR             R2, [R4]
535C56:  CMP             R0, #0
535C58:  IT NE
535C5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
535C5E:  MOV             R0, R4; this
535C60:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
535C64:  POP.W           {R4,R6,R7,LR}
535C68:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
