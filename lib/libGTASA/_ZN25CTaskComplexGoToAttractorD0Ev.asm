; =========================================================
; Game Engine Function: _ZN25CTaskComplexGoToAttractorD0Ev
; Address            : 0x524590 - 0x5245A0
; =========================================================

524590:  PUSH            {R7,LR}
524592:  MOV             R7, SP
524594:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
524598:  POP.W           {R7,LR}
52459C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
