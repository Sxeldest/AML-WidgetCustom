; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacialD0Ev
; Address            : 0x540CB4 - 0x540CC4
; =========================================================

540CB4:  PUSH            {R7,LR}
540CB6:  MOV             R7, SP
540CB8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
540CBC:  POP.W           {R7,LR}
540CC0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
