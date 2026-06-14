; =========================================================
; Game Engine Function: _ZN14CTaskSimpleSayD0Ev
; Address            : 0x3574B4 - 0x3574C4
; =========================================================

3574B4:  PUSH            {R7,LR}
3574B6:  MOV             R7, SP
3574B8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
3574BC:  POP.W           {R7,LR}
3574C0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
