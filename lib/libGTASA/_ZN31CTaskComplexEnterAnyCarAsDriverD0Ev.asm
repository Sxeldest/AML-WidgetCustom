; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterAnyCarAsDriverD0Ev
; Address            : 0x4FC970 - 0x4FC980
; =========================================================

4FC970:  PUSH            {R7,LR}
4FC972:  MOV             R7, SP
4FC974:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FC978:  POP.W           {R7,LR}
4FC97C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
