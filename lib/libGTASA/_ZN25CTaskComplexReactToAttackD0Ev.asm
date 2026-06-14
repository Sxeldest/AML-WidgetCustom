; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttackD0Ev
; Address            : 0x4DFE88 - 0x4DFEB4
; =========================================================

4DFE88:  PUSH            {R4,R6,R7,LR}
4DFE8A:  ADD             R7, SP, #8
4DFE8C:  MOV             R4, R0
4DFE8E:  LDR             R0, =(_ZTV25CTaskComplexReactToAttack_ptr - 0x4DFE96)
4DFE90:  MOV             R1, R4
4DFE92:  ADD             R0, PC; _ZTV25CTaskComplexReactToAttack_ptr
4DFE94:  LDR             R2, [R0]; `vtable for'CTaskComplexReactToAttack ...
4DFE96:  LDR.W           R0, [R1,#0x14]!; CEntity **
4DFE9A:  ADDS            R2, #8
4DFE9C:  STR             R2, [R4]
4DFE9E:  CMP             R0, #0
4DFEA0:  IT NE
4DFEA2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DFEA6:  MOV             R0, R4; this
4DFEA8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4DFEAC:  POP.W           {R4,R6,R7,LR}
4DFEB0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
