; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccidentD0Ev
; Address            : 0x5104EC - 0x5104FC
; =========================================================

5104EC:  PUSH            {R7,LR}
5104EE:  MOV             R7, SP
5104F0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5104F4:  POP.W           {R7,LR}
5104F8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
