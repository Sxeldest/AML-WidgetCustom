; =========================================================
; Game Engine Function: _ZN23CTaskSimpleHitFromRightD0Ev
; Address            : 0x497634 - 0x497644
; =========================================================

497634:  PUSH            {R7,LR}
497636:  MOV             R7, SP
497638:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
49763C:  POP.W           {R7,LR}
497640:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
