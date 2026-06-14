; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHandsUpD0Ev
; Address            : 0x357708 - 0x357718
; =========================================================

357708:  PUSH            {R7,LR}
35770A:  MOV             R7, SP
35770C:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
357710:  POP.W           {R7,LR}
357714:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
