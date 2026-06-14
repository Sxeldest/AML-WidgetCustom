; =========================================================
; Game Engine Function: _ZN19CTaskSimpleHailTaxiD0Ev
; Address            : 0x496F84 - 0x496F94
; =========================================================

496F84:  PUSH            {R7,LR}
496F86:  MOV             R7, SP
496F88:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
496F8C:  POP.W           {R7,LR}
496F90:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
