; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFiresD0Ev
; Address            : 0x547828 - 0x547838
; =========================================================

547828:  PUSH            {R7,LR}
54782A:  MOV             R7, SP
54782C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
547830:  POP.W           {R7,LR}
547834:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
