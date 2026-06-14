; =========================================================
; Game Engine Function: _ZN16CTaskComplexJumpD0Ev
; Address            : 0x52DFA8 - 0x52DFB8
; =========================================================

52DFA8:  PUSH            {R7,LR}
52DFAA:  MOV             R7, SP
52DFAC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52DFB0:  POP.W           {R7,LR}
52DFB4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
