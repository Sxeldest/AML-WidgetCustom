; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFightD0Ev
; Address            : 0x4D87B0 - 0x4D87C0
; =========================================================

4D87B0:  PUSH            {R7,LR}
4D87B2:  MOV             R7, SP
4D87B4:  BLX             j__ZN16CTaskSimpleFightD2Ev_0; CTaskSimpleFight::~CTaskSimpleFight()
4D87B8:  POP.W           {R7,LR}
4D87BC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
