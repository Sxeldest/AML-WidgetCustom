; =========================================================
; Game Engine Function: _ZN28CTaskSimpleHitByGunFromRightD0Ev
; Address            : 0x497B0C - 0x497B1C
; =========================================================

497B0C:  PUSH            {R7,LR}
497B0E:  MOV             R7, SP
497B10:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497B14:  POP.W           {R7,LR}
497B18:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
