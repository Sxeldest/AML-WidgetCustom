; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDownD0Ev
; Address            : 0x52BC98 - 0x52BCA8
; =========================================================

52BC98:  PUSH            {R7,LR}
52BC9A:  MOV             R7, SP
52BC9C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
52BCA0:  POP.W           {R7,LR}
52BCA4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
