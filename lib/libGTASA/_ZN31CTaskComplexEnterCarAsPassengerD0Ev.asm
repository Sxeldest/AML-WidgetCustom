; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterCarAsPassengerD0Ev
; Address            : 0x4F7078 - 0x4F7088
; =========================================================

4F7078:  PUSH            {R7,LR}
4F707A:  MOV             R7, SP
4F707C:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerD2Ev; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
4F7080:  POP.W           {R7,LR}
4F7084:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
