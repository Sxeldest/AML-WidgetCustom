; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDrownInCarD0Ev
; Address            : 0x4EB4EC - 0x4EB4FC
; =========================================================

4EB4EC:  PUSH            {R7,LR}
4EB4EE:  MOV             R7, SP
4EB4F0:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EB4F4:  POP.W           {R7,LR}
4EB4F8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
