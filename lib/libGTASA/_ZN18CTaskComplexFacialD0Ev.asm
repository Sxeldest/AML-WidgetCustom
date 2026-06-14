; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacialD0Ev
; Address            : 0x540EC8 - 0x540ED8
; =========================================================

540EC8:  PUSH            {R7,LR}
540ECA:  MOV             R7, SP
540ECC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
540ED0:  POP.W           {R7,LR}
540ED4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
