; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeadingD0Ev
; Address            : 0x51D034 - 0x51D044
; =========================================================

51D034:  PUSH            {R7,LR}
51D036:  MOV             R7, SP
51D038:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
51D03C:  POP.W           {R7,LR}
51D040:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
