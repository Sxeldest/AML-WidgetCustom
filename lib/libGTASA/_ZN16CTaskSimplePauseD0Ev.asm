; =========================================================
; Game Engine Function: _ZN16CTaskSimplePauseD0Ev
; Address            : 0x357370 - 0x357380
; =========================================================

357370:  PUSH            {R7,LR}
357372:  MOV             R7, SP
357374:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
357378:  POP.W           {R7,LR}
35737C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
