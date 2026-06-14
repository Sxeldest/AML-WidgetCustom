; =========================================================
; Game Engine Function: _ZN23CTaskComplexHitResponseD0Ev
; Address            : 0x4ECEE0 - 0x4ECEF0
; =========================================================

4ECEE0:  PUSH            {R7,LR}
4ECEE2:  MOV             R7, SP
4ECEE4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4ECEE8:  POP.W           {R7,LR}
4ECEEC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
