; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeadingD0Ev
; Address            : 0x51E130 - 0x51E140
; =========================================================

51E130:  PUSH            {R7,LR}
51E132:  MOV             R7, SP
51E134:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51E138:  POP.W           {R7,LR}
51E13C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
