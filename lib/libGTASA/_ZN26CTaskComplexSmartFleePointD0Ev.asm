; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePointD0Ev
; Address            : 0x513660 - 0x513670
; =========================================================

513660:  PUSH            {R7,LR}
513662:  MOV             R7, SP
513664:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
513668:  POP.W           {R7,LR}
51366C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
