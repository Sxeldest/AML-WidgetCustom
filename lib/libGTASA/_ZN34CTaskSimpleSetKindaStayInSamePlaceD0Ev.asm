; =========================================================
; Game Engine Function: _ZN34CTaskSimpleSetKindaStayInSamePlaceD0Ev
; Address            : 0x4EAA14 - 0x4EAA24
; =========================================================

4EAA14:  PUSH            {R7,LR}
4EAA16:  MOV             R7, SP
4EAA18:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4EAA1C:  POP.W           {R7,LR}
4EAA20:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
