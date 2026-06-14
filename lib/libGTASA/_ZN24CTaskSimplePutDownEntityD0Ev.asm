; =========================================================
; Game Engine Function: _ZN24CTaskSimplePutDownEntityD0Ev
; Address            : 0x5442CA - 0x5442DA
; =========================================================

5442CA:  PUSH            {R7,LR}
5442CC:  MOV             R7, SP
5442CE:  BLX             j__ZN21CTaskSimpleHoldEntityD2Ev; CTaskSimpleHoldEntity::~CTaskSimpleHoldEntity()
5442D2:  POP.W           {R7,LR}
5442D6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
