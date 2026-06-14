; =========================================================
; Game Engine Function: _ZN26CTaskComplexLeaveCarAndDieD0Ev
; Address            : 0x4FD140 - 0x4FD150
; =========================================================

4FD140:  PUSH            {R7,LR}
4FD142:  MOV             R7, SP
4FD144:  BLX             j__ZN20CTaskComplexLeaveCarD2Ev_0; CTaskComplexLeaveCar::~CTaskComplexLeaveCar()
4FD148:  POP.W           {R7,LR}
4FD14C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
