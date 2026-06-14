; =========================================================
; Game Engine Function: _ZN29CTaskComplexOpenPassengerDoorD0Ev
; Address            : 0x4F7190 - 0x4F71A0
; =========================================================

4F7190:  PUSH            {R7,LR}
4F7192:  MOV             R7, SP
4F7194:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerD2Ev; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
4F7198:  POP.W           {R7,LR}
4F719C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
