; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseEntryExitD0Ev
; Address            : 0x526FD8 - 0x526FE8
; =========================================================

526FD8:  PUSH            {R7,LR}
526FDA:  MOV             R7, SP
526FDC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526FE0:  POP.W           {R7,LR}
526FE4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
