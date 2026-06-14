; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminalD0Ev
; Address            : 0x53DFCC - 0x53DFDC
; =========================================================

53DFCC:  PUSH            {R7,LR}
53DFCE:  MOV             R7, SP
53DFD0:  BLX             j__ZN24CTaskComplexKillCriminalD2Ev; CTaskComplexKillCriminal::~CTaskComplexKillCriminal()
53DFD4:  POP.W           {R7,LR}
53DFD8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
