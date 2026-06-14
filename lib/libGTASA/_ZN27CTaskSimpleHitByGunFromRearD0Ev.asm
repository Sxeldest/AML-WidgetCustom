; =========================================================
; Game Engine Function: _ZN27CTaskSimpleHitByGunFromRearD0Ev
; Address            : 0x497768 - 0x497778
; =========================================================

497768:  PUSH            {R7,LR}
49776A:  MOV             R7, SP
49776C:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497770:  POP.W           {R7,LR}
497774:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
