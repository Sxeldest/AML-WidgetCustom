; =========================================================
; Game Engine Function: _ZN20CTaskComplexDieInCarD0Ev
; Address            : 0x4EB04C - 0x4EB05C
; =========================================================

4EB04C:  PUSH            {R7,LR}
4EB04E:  MOV             R7, SP
4EB050:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EB054:  POP.W           {R7,LR}
4EB058:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
