; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAirD0Ev
; Address            : 0x5323D0 - 0x5323E0
; =========================================================

5323D0:  PUSH            {R7,LR}
5323D2:  MOV             R7, SP
5323D4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5323D8:  POP.W           {R7,LR}
5323DC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
