; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRouteD0Ev
; Address            : 0x51E4D4 - 0x51E4FC
; =========================================================

51E4D4:  PUSH            {R4,R6,R7,LR}
51E4D6:  ADD             R7, SP, #8
51E4D8:  MOV             R4, R0
51E4DA:  LDR             R0, =(_ZTV28CTaskComplexFollowPointRoute_ptr - 0x51E4E0)
51E4DC:  ADD             R0, PC; _ZTV28CTaskComplexFollowPointRoute_ptr
51E4DE:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowPointRoute ...
51E4E0:  LDR             R0, [R4,#0x20]; void *
51E4E2:  ADDS            R1, #8
51E4E4:  STR             R1, [R4]
51E4E6:  CMP             R0, #0
51E4E8:  IT NE
51E4EA:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
51E4EE:  MOV             R0, R4; this
51E4F0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51E4F4:  POP.W           {R4,R6,R7,LR}
51E4F8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
