; =========================================================
; Game Engine Function: _ZN19CTaskComplexInWaterD0Ev
; Address            : 0x4F135C - 0x4F136C
; =========================================================

4F135C:  PUSH            {R7,LR}
4F135E:  MOV             R7, SP
4F1360:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F1364:  POP.W           {R7,LR}
4F1368:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
