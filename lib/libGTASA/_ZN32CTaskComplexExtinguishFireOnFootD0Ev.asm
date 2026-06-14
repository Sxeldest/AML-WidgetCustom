; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFootD0Ev
; Address            : 0x5120A0 - 0x5120B0
; =========================================================

5120A0:  PUSH            {R7,LR}
5120A2:  MOV             R7, SP
5120A4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5120A8:  POP.W           {R7,LR}
5120AC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
