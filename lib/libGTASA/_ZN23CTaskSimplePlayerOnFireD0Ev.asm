; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFireD0Ev
; Address            : 0x4EF8C8 - 0x4EF8D8
; =========================================================

4EF8C8:  PUSH            {R7,LR}
4EF8CA:  MOV             R7, SP
4EF8CC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EF8D0:  POP.W           {R7,LR}
4EF8D4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
