; =========================================================
; Game Engine Function: _ZN23CTaskSimpleHitFromFrontD0Ev
; Address            : 0x4973C8 - 0x4973D8
; =========================================================

4973C8:  PUSH            {R7,LR}
4973CA:  MOV             R7, SP
4973CC:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
4973D0:  POP.W           {R7,LR}
4973D4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
