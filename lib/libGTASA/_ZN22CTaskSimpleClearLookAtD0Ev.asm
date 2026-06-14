; =========================================================
; Game Engine Function: _ZN22CTaskSimpleClearLookAtD0Ev
; Address            : 0x4F09B4 - 0x4F09C4
; =========================================================

4F09B4:  PUSH            {R7,LR}
4F09B6:  MOV             R7, SP
4F09B8:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F09BC:  POP.W           {R7,LR}
4F09C0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
