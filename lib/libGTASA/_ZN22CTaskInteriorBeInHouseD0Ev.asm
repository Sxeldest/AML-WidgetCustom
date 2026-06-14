; =========================================================
; Game Engine Function: _ZN22CTaskInteriorBeInHouseD0Ev
; Address            : 0x528C50 - 0x528C60
; =========================================================

528C50:  PUSH            {R7,LR}
528C52:  MOV             R7, SP
528C54:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
528C58:  POP.W           {R7,LR}
528C5C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
