; =========================================================
; Game Engine Function: _ZN16CTaskSimpleTiredD0Ev
; Address            : 0x4EBE0C - 0x4EBE1C
; =========================================================

4EBE0C:  PUSH            {R7,LR}
4EBE0E:  MOV             R7, SP
4EBE10:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EBE14:  POP.W           {R7,LR}
4EBE18:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
