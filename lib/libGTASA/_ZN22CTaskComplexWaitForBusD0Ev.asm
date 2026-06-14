; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForBusD0Ev
; Address            : 0x4EE4E0 - 0x4EE4F0
; =========================================================

4EE4E0:  PUSH            {R7,LR}
4EE4E2:  MOV             R7, SP
4EE4E4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EE4E8:  POP.W           {R7,LR}
4EE4EC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
