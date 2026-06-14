; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannonD0Ev
; Address            : 0x511F98 - 0x511FA8
; =========================================================

511F98:  PUSH            {R7,LR}
511F9A:  MOV             R7, SP
511F9C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
511FA0:  POP.W           {R7,LR}
511FA4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
