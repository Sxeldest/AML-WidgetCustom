; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroupD0Ev
; Address            : 0x4EEBAC - 0x4EEBBC
; =========================================================

4EEBAC:  PUSH            {R7,LR}
4EEBAE:  MOV             R7, SP
4EEBB0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EEBB4:  POP.W           {R7,LR}
4EEBB8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
