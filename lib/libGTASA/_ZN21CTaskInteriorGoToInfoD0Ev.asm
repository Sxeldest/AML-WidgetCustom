; =========================================================
; Game Engine Function: _ZN21CTaskInteriorGoToInfoD0Ev
; Address            : 0x5294D8 - 0x5294E8
; =========================================================

5294D8:  PUSH            {R7,LR}
5294DA:  MOV             R7, SP
5294DC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5294E0:  POP.W           {R7,LR}
5294E4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
