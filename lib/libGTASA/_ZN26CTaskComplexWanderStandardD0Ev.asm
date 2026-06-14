; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandardD0Ev
; Address            : 0x526DDC - 0x526DEC
; =========================================================

526DDC:  PUSH            {R7,LR}
526DDE:  MOV             R7, SP
526DE0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526DE4:  POP.W           {R7,LR}
526DE8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
