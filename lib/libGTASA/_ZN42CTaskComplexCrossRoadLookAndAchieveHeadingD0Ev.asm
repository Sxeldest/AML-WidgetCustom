; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeadingD0Ev
; Address            : 0x4ECCCC - 0x4ECCDC
; =========================================================

4ECCCC:  PUSH            {R7,LR}
4ECCCE:  MOV             R7, SP
4ECCD0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4ECCD4:  POP.W           {R7,LR}
4ECCD8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
