; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderGangD0Ev
; Address            : 0x528B98 - 0x528BA8
; =========================================================

528B98:  PUSH            {R7,LR}
528B9A:  MOV             R7, SP
528B9C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
528BA0:  POP.W           {R7,LR}
528BA4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
