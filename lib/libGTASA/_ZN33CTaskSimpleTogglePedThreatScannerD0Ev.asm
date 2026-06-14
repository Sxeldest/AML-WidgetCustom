; =========================================================
; Game Engine Function: _ZN33CTaskSimpleTogglePedThreatScannerD0Ev
; Address            : 0x4F1ED8 - 0x4F1EE8
; =========================================================

4F1ED8:  PUSH            {R7,LR}
4F1EDA:  MOV             R7, SP
4F1EDC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F1EE0:  POP.W           {R7,LR}
4F1EE4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
