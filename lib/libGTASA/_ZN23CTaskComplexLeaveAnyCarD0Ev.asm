; =========================================================
; Game Engine Function: _ZN23CTaskComplexLeaveAnyCarD0Ev
; Address            : 0x4FD30C - 0x4FD31C
; =========================================================

4FD30C:  PUSH            {R7,LR}
4FD30E:  MOV             R7, SP
4FD310:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FD314:  POP.W           {R7,LR}
4FD318:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
