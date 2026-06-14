; =========================================================
; Game Engine Function: _ZN28CTaskSimpleHitByGunFromFrontD0Ev
; Address            : 0x4978A0 - 0x4978B0
; =========================================================

4978A0:  PUSH            {R7,LR}
4978A2:  MOV             R7, SP
4978A4:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
4978A8:  POP.W           {R7,LR}
4978AC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
