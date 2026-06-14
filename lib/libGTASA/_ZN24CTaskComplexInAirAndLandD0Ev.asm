; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLandD0Ev
; Address            : 0x52BDD0 - 0x52BDE0
; =========================================================

52BDD0:  PUSH            {R7,LR}
52BDD2:  MOV             R7, SP
52BDD4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52BDD8:  POP.W           {R7,LR}
52BDDC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
