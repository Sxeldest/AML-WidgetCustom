; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUpD0Ev
; Address            : 0x52BAB4 - 0x52BAC4
; =========================================================

52BAB4:  PUSH            {R7,LR}
52BAB6:  MOV             R7, SP
52BAB8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52BABC:  POP.W           {R7,LR}
52BAC0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
