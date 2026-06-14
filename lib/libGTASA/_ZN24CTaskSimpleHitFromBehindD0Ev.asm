; =========================================================
; Game Engine Function: _ZN24CTaskSimpleHitFromBehindD0Ev
; Address            : 0x497D78 - 0x497D88
; =========================================================

497D78:  PUSH            {R7,LR}
497D7A:  MOV             R7, SP
497D7C:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497D80:  POP.W           {R7,LR}
497D84:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
