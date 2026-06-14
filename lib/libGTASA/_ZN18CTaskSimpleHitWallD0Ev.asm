; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitWallD0Ev
; Address            : 0x497C40 - 0x497C50
; =========================================================

497C40:  PUSH            {R7,LR}
497C42:  MOV             R7, SP
497C44:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497C48:  POP.W           {R7,LR}
497C4C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
