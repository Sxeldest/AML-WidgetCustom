; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoordD0Ev
; Address            : 0x524D64 - 0x524D90
; =========================================================

524D64:  PUSH            {R4,R6,R7,LR}
524D66:  ADD             R7, SP, #8
524D68:  MOV             R4, R0
524D6A:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x524D72)
524D6C:  MOV             R1, R4
524D6E:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
524D70:  LDR             R2, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
524D72:  LDR.W           R0, [R1,#0xC]!; CEntity **
524D76:  ADDS            R2, #8
524D78:  STR             R2, [R4]
524D7A:  CMP             R0, #0
524D7C:  IT NE
524D7E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
524D82:  MOV             R0, R4; this
524D84:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
524D88:  POP.W           {R4,R6,R7,LR}
524D8C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
