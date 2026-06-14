; =========================================================
; Game Engine Function: _ZN15CTaskComplexDieD0Ev
; Address            : 0x4EB5D8 - 0x4EB5E8
; =========================================================

4EB5D8:  PUSH            {R7,LR}
4EB5DA:  MOV             R7, SP
4EB5DC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EB5E0:  POP.W           {R7,LR}
4EB5E4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
