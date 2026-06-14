; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseAttractorD0Ev
; Address            : 0x4EDF74 - 0x4EDF84
; =========================================================

4EDF74:  PUSH            {R7,LR}
4EDF76:  MOV             R7, SP
4EDF78:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EDF7C:  POP.W           {R7,LR}
4EDF80:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
