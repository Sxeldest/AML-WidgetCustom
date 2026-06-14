; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDuckToggleD0Ev
; Address            : 0x4EAA78 - 0x4EAA88
; =========================================================

4EAA78:  PUSH            {R7,LR}
4EAA7A:  MOV             R7, SP
4EAA7C:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EAA80:  POP.W           {R7,LR}
4EAA84:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
