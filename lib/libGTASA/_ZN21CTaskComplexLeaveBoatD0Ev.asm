; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoatD0Ev
; Address            : 0x4F956C - 0x4F9598
; =========================================================

4F956C:  PUSH            {R4,R6,R7,LR}
4F956E:  ADD             R7, SP, #8
4F9570:  MOV             R4, R0
4F9572:  LDR             R0, =(_ZTV21CTaskComplexLeaveBoat_ptr - 0x4F957A)
4F9574:  MOV             R1, R4
4F9576:  ADD             R0, PC; _ZTV21CTaskComplexLeaveBoat_ptr
4F9578:  LDR             R2, [R0]; `vtable for'CTaskComplexLeaveBoat ...
4F957A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F957E:  ADDS            R2, #8
4F9580:  STR             R2, [R4]
4F9582:  CMP             R0, #0
4F9584:  IT NE
4F9586:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F958A:  MOV             R0, R4; this
4F958C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F9590:  POP.W           {R4,R6,R7,LR}
4F9594:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
