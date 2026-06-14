; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRouteD0Ev
; Address            : 0x51F454 - 0x51F486
; =========================================================

51F454:  PUSH            {R4,R6,R7,LR}
51F456:  ADD             R7, SP, #8
51F458:  MOV             R4, R0
51F45A:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x51F460)
51F45C:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
51F45E:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
51F460:  LDR             R0, [R4,#0x30]; void *
51F462:  ADDS            R1, #8
51F464:  STR             R1, [R4]
51F466:  CMP             R0, #0
51F468:  IT NE
51F46A:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
51F46E:  LDR             R0, [R4,#0x2C]; void *
51F470:  CMP             R0, #0
51F472:  IT NE
51F474:  BLXNE           j__ZN10CNodeRoutedlEPv; CNodeRoute::operator delete(void *)
51F478:  MOV             R0, R4; this
51F47A:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51F47E:  POP.W           {R4,R6,R7,LR}
51F482:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
