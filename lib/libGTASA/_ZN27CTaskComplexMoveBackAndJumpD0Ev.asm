; =========================================================
; Game Engine Function: _ZN27CTaskComplexMoveBackAndJumpD0Ev
; Address            : 0x50E580 - 0x50E590
; =========================================================

50E580:  PUSH            {R7,LR}
50E582:  MOV             R7, SP
50E584:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50E588:  POP.W           {R7,LR}
50E58C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
