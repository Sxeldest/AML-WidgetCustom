; =========================================================
; Game Engine Function: _ZN27CTaskComplexDrivePointRouteD0Ev
; Address            : 0x4FC7D4 - 0x4FC7FC
; =========================================================

4FC7D4:  PUSH            {R4,R6,R7,LR}
4FC7D6:  ADD             R7, SP, #8
4FC7D8:  MOV             R4, R0
4FC7DA:  LDR             R0, =(_ZTV27CTaskComplexDrivePointRoute_ptr - 0x4FC7E0)
4FC7DC:  ADD             R0, PC; _ZTV27CTaskComplexDrivePointRoute_ptr
4FC7DE:  LDR             R1, [R0]; `vtable for'CTaskComplexDrivePointRoute ...
4FC7E0:  LDR             R0, [R4,#0x10]; void *
4FC7E2:  ADDS            R1, #8
4FC7E4:  STR             R1, [R4]
4FC7E6:  CMP             R0, #0
4FC7E8:  IT NE
4FC7EA:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
4FC7EE:  MOV             R0, R4; this
4FC7F0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4FC7F4:  POP.W           {R4,R6,R7,LR}
4FC7F8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
