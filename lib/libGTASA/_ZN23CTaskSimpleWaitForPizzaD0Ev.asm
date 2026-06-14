; =========================================================
; Game Engine Function: _ZN23CTaskSimpleWaitForPizzaD0Ev
; Address            : 0x4EE658 - 0x4EE668
; =========================================================

4EE658:  PUSH            {R7,LR}
4EE65A:  MOV             R7, SP
4EE65C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EE660:  POP.W           {R7,LR}
4EE664:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
