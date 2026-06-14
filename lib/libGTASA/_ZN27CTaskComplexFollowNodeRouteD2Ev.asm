; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRouteD2Ev
; Address            : 0x51F420 - 0x51F44E
; =========================================================

51F420:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexFollowNodeRoute::~CTaskComplexFollowNodeRoute()'
51F422:  ADD             R7, SP, #8
51F424:  MOV             R4, R0
51F426:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x51F42C)
51F428:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
51F42A:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
51F42C:  LDR             R0, [R4,#0x30]; void *
51F42E:  ADDS            R1, #8
51F430:  STR             R1, [R4]
51F432:  CMP             R0, #0
51F434:  IT NE
51F436:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
51F43A:  LDR             R0, [R4,#0x2C]; void *
51F43C:  CMP             R0, #0
51F43E:  IT NE
51F440:  BLXNE           j__ZN10CNodeRoutedlEPv; CNodeRoute::operator delete(void *)
51F444:  MOV             R0, R4; this
51F446:  POP.W           {R4,R6,R7,LR}
51F44A:  B.W             sub_18EDE8
