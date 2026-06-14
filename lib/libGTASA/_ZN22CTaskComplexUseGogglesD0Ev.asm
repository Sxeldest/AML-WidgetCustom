; =========================================================
; Game Engine Function: _ZN22CTaskComplexUseGogglesD0Ev
; Address            : 0x4F122C - 0x4F123C
; =========================================================

4F122C:  PUSH            {R7,LR}
4F122E:  MOV             R7, SP
4F1230:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F1234:  POP.W           {R7,LR}
4F1238:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
