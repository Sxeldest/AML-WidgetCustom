; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStillD0Ev
; Address            : 0x52B478 - 0x52B488
; =========================================================

52B478:  PUSH            {R7,LR}
52B47A:  MOV             R7, SP
52B47C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52B480:  POP.W           {R7,LR}
52B484:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
