; =========================================================
; Game Engine Function: _ZN17CTaskComplexClimbD0Ev
; Address            : 0x333D84 - 0x333D94
; =========================================================

333D84:  PUSH            {R7,LR}
333D86:  MOV             R7, SP
333D88:  BLX             j__ZN16CTaskComplexJumpD2Ev; CTaskComplexJump::~CTaskComplexJump()
333D8C:  POP.W           {R7,LR}
333D90:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
