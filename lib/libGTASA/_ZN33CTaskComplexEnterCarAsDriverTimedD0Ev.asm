; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimedD0Ev
; Address            : 0x4F7410 - 0x4F743C
; =========================================================

4F7410:  PUSH            {R4,R6,R7,LR}
4F7412:  ADD             R7, SP, #8
4F7414:  MOV             R4, R0
4F7416:  LDR             R0, =(_ZTV33CTaskComplexEnterCarAsDriverTimed_ptr - 0x4F741E)
4F7418:  MOV             R1, R4
4F741A:  ADD             R0, PC; _ZTV33CTaskComplexEnterCarAsDriverTimed_ptr
4F741C:  LDR             R2, [R0]; `vtable for'CTaskComplexEnterCarAsDriverTimed ...
4F741E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F7422:  ADDS            R2, #8
4F7424:  STR             R2, [R4]
4F7426:  CMP             R0, #0
4F7428:  IT NE
4F742A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F742E:  MOV             R0, R4; this
4F7430:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F7434:  POP.W           {R4,R6,R7,LR}
4F7438:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
