; =========================================================
; Game Engine Function: _ZN27CTaskSimpleHailTaxiAndPauseD0Ev
; Address            : 0x4970B0 - 0x4970C0
; =========================================================

4970B0:  PUSH            {R7,LR}
4970B2:  MOV             R7, SP
4970B4:  BLX             j__ZN15CTaskSimpleAnimD2Ev; CTaskSimpleAnim::~CTaskSimpleAnim()
4970B8:  POP.W           {R7,LR}
4970BC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
