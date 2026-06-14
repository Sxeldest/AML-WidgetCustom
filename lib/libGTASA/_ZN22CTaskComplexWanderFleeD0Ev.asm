; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderFleeD0Ev
; Address            : 0x5128BC - 0x5128CC
; =========================================================

5128BC:  PUSH            {R7,LR}
5128BE:  MOV             R7, SP
5128C0:  BLX             j__ZN18CTaskComplexWanderD2Ev; CTaskComplexWander::~CTaskComplexWander()
5128C4:  POP.W           {R7,LR}
5128C8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
