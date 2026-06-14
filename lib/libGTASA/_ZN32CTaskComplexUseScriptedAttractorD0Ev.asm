; =========================================================
; Game Engine Function: _ZN32CTaskComplexUseScriptedAttractorD0Ev
; Address            : 0x4EF4FC - 0x4EF50C
; =========================================================

4EF4FC:  PUSH            {R7,LR}
4EF4FE:  MOV             R7, SP
4EF500:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EF504:  POP.W           {R7,LR}
4EF508:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
