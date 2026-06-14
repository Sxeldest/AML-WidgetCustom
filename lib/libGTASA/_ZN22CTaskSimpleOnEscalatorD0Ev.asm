; =========================================================
; Game Engine Function: _ZN22CTaskSimpleOnEscalatorD0Ev
; Address            : 0x4F1D50 - 0x4F1D60
; =========================================================

4F1D50:  PUSH            {R7,LR}
4F1D52:  MOV             R7, SP
4F1D54:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F1D58:  POP.W           {R7,LR}
4F1D5C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
