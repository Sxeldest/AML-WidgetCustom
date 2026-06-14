; =========================================================
; Game Engine Function: _ZN31CTaskComplexUseAttractorPartnerD0Ev
; Address            : 0x4EF470 - 0x4EF480
; =========================================================

4EF470:  PUSH            {R7,LR}
4EF472:  MOV             R7, SP
4EF474:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EF478:  POP.W           {R7,LR}
4EF47C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
