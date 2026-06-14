; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRouteD0Ev
; Address            : 0x52527C - 0x5252A4
; =========================================================

52527C:  PUSH            {R4,R6,R7,LR}
52527E:  ADD             R7, SP, #8
525280:  MOV             R4, R0
525282:  LDR             R0, =(_ZTV29CTaskComplexFollowPatrolRoute_ptr - 0x525288)
525284:  ADD             R0, PC; _ZTV29CTaskComplexFollowPatrolRoute_ptr
525286:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowPatrolRoute ...
525288:  LDR             R0, [R4,#0x1C]; void *
52528A:  ADDS            R1, #8
52528C:  STR             R1, [R4]
52528E:  CMP             R0, #0
525290:  IT NE
525292:  BLXNE           j__ZN12CPatrolRoutedlEPv; CPatrolRoute::operator delete(void *)
525296:  MOV             R0, R4; this
525298:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52529C:  POP.W           {R4,R6,R7,LR}
5252A0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
