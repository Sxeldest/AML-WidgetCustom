; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStillD0Ev
; Address            : 0x51D3C4 - 0x51D3D4
; =========================================================

51D3C4:  PUSH            {R7,LR}
51D3C6:  MOV             R7, SP
51D3C8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51D3CC:  POP.W           {R7,LR}
51D3D0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
