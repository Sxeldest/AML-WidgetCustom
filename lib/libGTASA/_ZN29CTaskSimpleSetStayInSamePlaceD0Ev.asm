; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetStayInSamePlaceD0Ev
; Address            : 0x4EA9B0 - 0x4EA9C0
; =========================================================

4EA9B0:  PUSH            {R7,LR}
4EA9B2:  MOV             R7, SP
4EA9B4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EA9B8:  POP.W           {R7,LR}
4EA9BC:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
