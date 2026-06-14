; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeathD0Ev
; Address            : 0x52CF08 - 0x52CF18
; =========================================================

52CF08:  PUSH            {R7,LR}
52CF0A:  MOV             R7, SP
52CF0C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52CF10:  POP.W           {R7,LR}
52CF14:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
