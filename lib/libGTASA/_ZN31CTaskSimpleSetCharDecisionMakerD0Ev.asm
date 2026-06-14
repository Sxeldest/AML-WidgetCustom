; =========================================================
; Game Engine Function: _ZN31CTaskSimpleSetCharDecisionMakerD0Ev
; Address            : 0x4F2086 - 0x4F2096
; =========================================================

4F2086:  PUSH            {R7,LR}
4F2088:  MOV             R7, SP
4F208A:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F208E:  POP.W           {R7,LR}
4F2092:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
