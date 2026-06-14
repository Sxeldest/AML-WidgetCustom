; =========================================================
; Game Engine Function: _ZN32CTaskComplexObserveTrafficLightsD0Ev
; Address            : 0x4ECAA4 - 0x4ECAB4
; =========================================================

4ECAA4:  PUSH            {R7,LR}
4ECAA6:  MOV             R7, SP
4ECAA8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4ECAAC:  POP.W           {R7,LR}
4ECAB0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
