; =========================================================
; Game Engine Function: _ZN26CTaskComplexOpenDriverDoorD0Ev
; Address            : 0x4F7100 - 0x4F7110
; =========================================================

4F7100:  PUSH            {R7,LR}
4F7102:  MOV             R7, SP
4F7104:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerD2Ev; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
4F7108:  POP.W           {R7,LR}
4F710C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
