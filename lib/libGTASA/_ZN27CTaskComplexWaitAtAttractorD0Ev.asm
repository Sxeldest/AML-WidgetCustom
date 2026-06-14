; =========================================================
; Game Engine Function: _ZN27CTaskComplexWaitAtAttractorD0Ev
; Address            : 0x4EDF08 - 0x4EDF18
; =========================================================

4EDF08:  PUSH            {R7,LR}
4EDF0A:  MOV             R7, SP
4EDF0C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EDF10:  POP.W           {R7,LR}
4EDF14:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
