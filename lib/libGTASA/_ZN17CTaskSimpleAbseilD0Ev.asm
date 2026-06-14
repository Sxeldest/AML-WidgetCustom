; =========================================================
; Game Engine Function: _ZN17CTaskSimpleAbseilD0Ev
; Address            : 0x498268 - 0x498278
; =========================================================

498268:  PUSH            {R7,LR}
49826A:  MOV             R7, SP
49826C:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
498270:  POP.W           {R7,LR}
498274:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
