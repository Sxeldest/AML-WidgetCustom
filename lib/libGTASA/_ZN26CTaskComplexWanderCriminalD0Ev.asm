; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderCriminalD0Ev
; Address            : 0x526EEC - 0x526EFC
; =========================================================

526EEC:  PUSH            {R7,LR}
526EEE:  MOV             R7, SP
526EF0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526EF4:  POP.W           {R7,LR}
526EF8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
