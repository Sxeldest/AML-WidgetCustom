; =========================================================
; Game Engine Function: _ZN20CTaskSimpleLookAboutD0Ev
; Address            : 0x357994 - 0x3579A4
; =========================================================

357994:  PUSH            {R7,LR}
357996:  MOV             R7, SP
357998:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
35799C:  POP.W           {R7,LR}
3579A0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
