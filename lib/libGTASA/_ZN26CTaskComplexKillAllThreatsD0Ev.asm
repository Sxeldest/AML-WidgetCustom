; =========================================================
; Game Engine Function: _ZN26CTaskComplexKillAllThreatsD0Ev
; Address            : 0x4E804C - 0x4E805C
; =========================================================

4E804C:  PUSH            {R7,LR}
4E804E:  MOV             R7, SP
4E8050:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E8054:  POP.W           {R7,LR}
4E8058:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
