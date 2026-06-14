; =========================================================
; Game Engine Function: _ZN22CTaskSimpleHitFromLeftD0Ev
; Address            : 0x4974FC - 0x49750C
; =========================================================

4974FC:  PUSH            {R7,LR}
4974FE:  MOV             R7, SP
497500:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497504:  POP.W           {R7,LR}
497508:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
