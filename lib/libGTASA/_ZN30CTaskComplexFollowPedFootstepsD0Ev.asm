; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootstepsD0Ev
; Address            : 0x5459CC - 0x545A04
; =========================================================

5459CC:  PUSH            {R4,R6,R7,LR}
5459CE:  ADD             R7, SP, #8
5459D0:  MOV             R4, R0
5459D2:  LDR             R0, =(_ZTV30CTaskComplexFollowPedFootsteps_ptr - 0x5459DA)
5459D4:  MOV             R1, R4
5459D6:  ADD             R0, PC; _ZTV30CTaskComplexFollowPedFootsteps_ptr
5459D8:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowPedFootsteps ...
5459DA:  LDR.W           R0, [R1,#0xC]!; CEntity **
5459DE:  ADDS            R2, #8
5459E0:  STR             R2, [R4]
5459E2:  CMP             R0, #0
5459E4:  IT NE
5459E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5459EA:  LDR             R0, [R4,#0x18]; void *
5459EC:  CBZ             R0, loc_5459F6
5459EE:  BLX             j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
5459F2:  MOVS            R0, #0
5459F4:  STR             R0, [R4,#0x18]
5459F6:  MOV             R0, R4; this
5459F8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5459FC:  POP.W           {R4,R6,R7,LR}
545A00:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
