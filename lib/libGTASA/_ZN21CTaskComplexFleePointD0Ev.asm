; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePointD0Ev
; Address            : 0x512938 - 0x512948
; =========================================================

512938:  PUSH            {R7,LR}
51293A:  MOV             R7, SP
51293C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
512940:  POP.W           {R7,LR}
512944:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
