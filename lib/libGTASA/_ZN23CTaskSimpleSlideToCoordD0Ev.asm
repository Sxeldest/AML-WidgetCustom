; =========================================================
; Game Engine Function: _ZN23CTaskSimpleSlideToCoordD0Ev
; Address            : 0x5261B0 - 0x5261C0
; =========================================================

5261B0:  PUSH            {R7,LR}
5261B2:  MOV             R7, SP
5261B4:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
5261B8:  POP.W           {R7,LR}
5261BC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
