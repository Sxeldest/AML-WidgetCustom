; =========================================================
; Game Engine Function: _ZN29CTaskComplexLeaveCarAndWanderD0Ev
; Address            : 0x4F971C - 0x4F9748
; =========================================================

4F971C:  PUSH            {R4,R6,R7,LR}
4F971E:  ADD             R7, SP, #8
4F9720:  MOV             R4, R0
4F9722:  LDR             R0, =(_ZTV29CTaskComplexLeaveCarAndWander_ptr - 0x4F972A)
4F9724:  MOV             R1, R4
4F9726:  ADD             R0, PC; _ZTV29CTaskComplexLeaveCarAndWander_ptr
4F9728:  LDR             R2, [R0]; `vtable for'CTaskComplexLeaveCarAndWander ...
4F972A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F972E:  ADDS            R2, #8
4F9730:  STR             R2, [R4]
4F9732:  CMP             R0, #0
4F9734:  IT NE
4F9736:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F973A:  MOV             R0, R4; this
4F973C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F9740:  POP.W           {R4,R6,R7,LR}
4F9744:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
