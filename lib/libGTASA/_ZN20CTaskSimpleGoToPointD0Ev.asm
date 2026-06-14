; =========================================================
; Game Engine Function: _ZN20CTaskSimpleGoToPointD0Ev
; Address            : 0x51CAF0 - 0x51CB00
; =========================================================

51CAF0:  PUSH            {R7,LR}
51CAF2:  MOV             R7, SP
51CAF4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
51CAF8:  POP.W           {R7,LR}
51CAFC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
