; =========================================================
; Game Engine Function: _ZN22CTaskSimpleHitFromBackD0Ev
; Address            : 0x497290 - 0x4972A0
; =========================================================

497290:  PUSH            {R7,LR}
497292:  MOV             R7, SP
497294:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497298:  POP.W           {R7,LR}
49729C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
