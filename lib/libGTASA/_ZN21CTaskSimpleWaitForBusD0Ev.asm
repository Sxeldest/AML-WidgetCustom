; =========================================================
; Game Engine Function: _ZN21CTaskSimpleWaitForBusD0Ev
; Address            : 0x4EE5B4 - 0x4EE5C4
; =========================================================

4EE5B4:  PUSH            {R7,LR}
4EE5B6:  MOV             R7, SP
4EE5B8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EE5BC:  POP.W           {R7,LR}
4EE5C0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
