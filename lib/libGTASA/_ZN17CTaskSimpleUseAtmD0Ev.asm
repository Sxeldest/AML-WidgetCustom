; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseAtmD0Ev
; Address            : 0x357810 - 0x357820
; =========================================================

357810:  PUSH            {R7,LR}
357812:  MOV             R7, SP
357814:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
357818:  POP.W           {R7,LR}
35781C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
