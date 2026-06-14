; =========================================================
; Game Engine Function: _ZN23CTaskSimpleDoHandSignalD0Ev
; Address            : 0x519DA8 - 0x519DB8
; =========================================================

519DA8:  PUSH            {R7,LR}
519DAA:  MOV             R7, SP
519DAC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
519DB0:  POP.W           {R7,LR}
519DB4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
