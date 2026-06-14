; =========================================================
; Game Engine Function: _ZN28CTaskComplexWanderProstituteD0Ev
; Address            : 0x526F60 - 0x526F70
; =========================================================

526F60:  PUSH            {R7,LR}
526F62:  MOV             R7, SP
526F64:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526F68:  POP.W           {R7,LR}
526F6C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
