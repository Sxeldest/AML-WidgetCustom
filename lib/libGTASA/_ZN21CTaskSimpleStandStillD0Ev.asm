; =========================================================
; Game Engine Function: _ZN21CTaskSimpleStandStillD0Ev
; Address            : 0x4EA7FC - 0x4EA80C
; =========================================================

4EA7FC:  PUSH            {R7,LR}
4EA7FE:  MOV             R7, SP
4EA800:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EA804:  POP.W           {R7,LR}
4EA808:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
