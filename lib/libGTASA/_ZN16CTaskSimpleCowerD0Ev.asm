; =========================================================
; Game Engine Function: _ZN16CTaskSimpleCowerD0Ev
; Address            : 0x357644 - 0x357654
; =========================================================

357644:  PUSH            {R7,LR}
357646:  MOV             R7, SP
357648:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
35764C:  POP.W           {R7,LR}
357650:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
