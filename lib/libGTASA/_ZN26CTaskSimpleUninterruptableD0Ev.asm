; =========================================================
; Game Engine Function: _ZN26CTaskSimpleUninterruptableD0Ev
; Address            : 0x3076D0 - 0x3076E0
; =========================================================

3076D0:  PUSH            {R7,LR}
3076D2:  MOV             R7, SP
3076D4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
3076D8:  POP.W           {R7,LR}
3076DC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
