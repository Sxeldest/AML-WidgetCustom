; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRouteD2Ev
; Address            : 0x525254 - 0x525278
; =========================================================

525254:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexFollowPatrolRoute::~CTaskComplexFollowPatrolRoute()'
525256:  ADD             R7, SP, #8
525258:  MOV             R4, R0
52525A:  LDR             R0, =(_ZTV29CTaskComplexFollowPatrolRoute_ptr - 0x525260)
52525C:  ADD             R0, PC; _ZTV29CTaskComplexFollowPatrolRoute_ptr
52525E:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowPatrolRoute ...
525260:  LDR             R0, [R4,#0x1C]; void *
525262:  ADDS            R1, #8
525264:  STR             R1, [R4]
525266:  CMP             R0, #0
525268:  IT NE
52526A:  BLXNE           j__ZN12CPatrolRoutedlEPv; CPatrolRoute::operator delete(void *)
52526E:  MOV             R0, R4; this
525270:  POP.W           {R4,R6,R7,LR}
525274:  B.W             sub_18EDE8
