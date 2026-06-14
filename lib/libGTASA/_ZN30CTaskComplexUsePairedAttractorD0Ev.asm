; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractorD0Ev
; Address            : 0x4EEED0 - 0x4EEEE0
; =========================================================

4EEED0:  PUSH            {R7,LR}
4EEED2:  MOV             R7, SP
4EEED4:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EEED8:  POP.W           {R7,LR}
4EEEDC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
