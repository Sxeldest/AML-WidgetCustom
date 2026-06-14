; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFootD0Ev
; Address            : 0x537524 - 0x537534
; =========================================================

537524:  PUSH            {R7,LR}
537526:  MOV             R7, SP
537528:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
53752C:  POP.W           {R7,LR}
537530:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
