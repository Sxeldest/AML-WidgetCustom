; =========================================================
; Game Engine Function: _ZN28CTaskComplexEnterCarAsDriverD0Ev
; Address            : 0x4F6FE4 - 0x4F6FF4
; =========================================================

4F6FE4:  PUSH            {R7,LR}
4F6FE6:  MOV             R7, SP
4F6FE8:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerD2Ev; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
4F6FEC:  POP.W           {R7,LR}
4F6FF0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
