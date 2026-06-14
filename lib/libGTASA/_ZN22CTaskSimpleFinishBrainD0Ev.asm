; =========================================================
; Game Engine Function: _ZN22CTaskSimpleFinishBrainD0Ev
; Address            : 0x32EC02 - 0x32EC12
; =========================================================

32EC02:  PUSH            {R7,LR}
32EC04:  MOV             R7, SP
32EC06:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
32EC0A:  POP.W           {R7,LR}
32EC0E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
