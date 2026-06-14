; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormationD0Ev
; Address            : 0x5448DC - 0x544908
; =========================================================

5448DC:  PUSH            {R4,R6,R7,LR}
5448DE:  ADD             R7, SP, #8
5448E0:  MOV             R4, R0
5448E2:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x5448EA)
5448E4:  MOV             R1, R4
5448E6:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
5448E8:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
5448EA:  LDR.W           R0, [R1,#0x10]!; CEntity **
5448EE:  ADDS            R2, #8
5448F0:  STR             R2, [R4]
5448F2:  CMP             R0, #0
5448F4:  IT NE
5448F6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5448FA:  MOV             R0, R4; this
5448FC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
544900:  POP.W           {R4,R6,R7,LR}
544904:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
