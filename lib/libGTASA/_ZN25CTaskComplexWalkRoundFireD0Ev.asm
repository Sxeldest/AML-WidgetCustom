; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFireD0Ev
; Address            : 0x50EA64 - 0x50EA74
; =========================================================

50EA64:  PUSH            {R7,LR}
50EA66:  MOV             R7, SP
50EA68:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50EA6C:  POP.W           {R7,LR}
50EA70:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
