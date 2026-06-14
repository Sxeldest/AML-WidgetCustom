; =========================================================
; Game Engine Function: _ZN43CTaskComplexUseClosestFreeScriptedAttractorD0Ev
; Address            : 0x4F0A18 - 0x4F0A28
; =========================================================

4F0A18:  PUSH            {R7,LR}
4F0A1A:  MOV             R7, SP
4F0A1C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F0A20:  POP.W           {R7,LR}
4F0A24:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
