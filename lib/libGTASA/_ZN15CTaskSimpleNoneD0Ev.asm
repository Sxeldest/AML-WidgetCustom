; =========================================================
; Game Engine Function: _ZN15CTaskSimpleNoneD0Ev
; Address            : 0x4B8CCC - 0x4B8CDC
; =========================================================

4B8CCC:  PUSH            {R7,LR}
4B8CCE:  MOV             R7, SP
4B8CD0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B8CD4:  POP.W           {R7,LR}
4B8CD8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
