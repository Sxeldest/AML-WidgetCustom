; =========================================================
; Game Engine Function: _ZN23CTaskComplexWanderMedicD0Ev
; Address            : 0x512828 - 0x512838
; =========================================================

512828:  PUSH            {R7,LR}
51282A:  MOV             R7, SP
51282C:  BLX             j__ZN18CTaskComplexWanderD2Ev; CTaskComplexWander::~CTaskComplexWander()
512830:  POP.W           {R7,LR}
512834:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
