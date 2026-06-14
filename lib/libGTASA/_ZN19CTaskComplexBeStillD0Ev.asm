; =========================================================
; Game Engine Function: _ZN19CTaskComplexBeStillD0Ev
; Address            : 0x4F1E34 - 0x4F1E44
; =========================================================

4F1E34:  PUSH            {R7,LR}
4F1E36:  MOV             R7, SP
4F1E38:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F1E3C:  POP.W           {R7,LR}
4F1E40:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
