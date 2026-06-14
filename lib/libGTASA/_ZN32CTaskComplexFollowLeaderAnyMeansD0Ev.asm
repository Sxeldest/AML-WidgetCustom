; =========================================================
; Game Engine Function: _ZN32CTaskComplexFollowLeaderAnyMeansD0Ev
; Address            : 0x5452D8 - 0x545304
; =========================================================

5452D8:  PUSH            {R4,R6,R7,LR}
5452DA:  ADD             R7, SP, #8
5452DC:  MOV             R4, R0
5452DE:  LDR             R0, =(_ZTV32CTaskComplexFollowLeaderAnyMeans_ptr - 0x5452E6)
5452E0:  MOV             R1, R4
5452E2:  ADD             R0, PC; _ZTV32CTaskComplexFollowLeaderAnyMeans_ptr
5452E4:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowLeaderAnyMeans ...
5452E6:  LDR.W           R0, [R1,#0x10]!; CEntity **
5452EA:  ADDS            R2, #8
5452EC:  STR             R2, [R4]
5452EE:  CMP             R0, #0
5452F0:  IT NE
5452F2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5452F6:  MOV             R0, R4; this
5452F8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5452FC:  POP.W           {R4,R6,R7,LR}
545300:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
