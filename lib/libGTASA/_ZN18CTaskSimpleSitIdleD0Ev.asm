; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdleD0Ev
; Address            : 0x4EC104 - 0x4EC114
; =========================================================

4EC104:  PUSH            {R7,LR}
4EC106:  MOV             R7, SP
4EC108:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EC10C:  POP.W           {R7,LR}
4EC110:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
