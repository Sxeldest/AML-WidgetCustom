; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDetonateD0Ev
; Address            : 0x498088 - 0x498098
; =========================================================

498088:  PUSH            {R7,LR}
49808A:  MOV             R7, SP
49808C:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
498090:  POP.W           {R7,LR}
498094:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
