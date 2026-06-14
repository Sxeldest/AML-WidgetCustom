; =========================================================
; Game Engine Function: _ZN15CTaskSimpleChatD0Ev
; Address            : 0x497EAC - 0x497EBC
; =========================================================

497EAC:  PUSH            {R7,LR}
497EAE:  MOV             R7, SP
497EB0:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
497EB4:  POP.W           {R7,LR}
497EB8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
