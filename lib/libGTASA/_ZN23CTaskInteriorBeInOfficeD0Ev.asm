; =========================================================
; Game Engine Function: _ZN23CTaskInteriorBeInOfficeD0Ev
; Address            : 0x528E88 - 0x528E98
; =========================================================

528E88:  PUSH            {R7,LR}
528E8A:  MOV             R7, SP
528E8C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
528E90:  POP.W           {R7,LR}
528E94:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
