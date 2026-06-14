; =========================================================
; Game Engine Function: _ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUseD0Ev
; Address            : 0x5024C8 - 0x5024FE
; =========================================================

5024C8:  PUSH            {R4,R6,R7,LR}
5024CA:  ADD             R7, SP, #8
5024CC:  MOV             R4, R0
5024CE:  LDR             R0, =(_ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr - 0x5024D4)
5024D0:  ADD             R0, PC; _ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr
5024D2:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse ...
5024D4:  LDR             R0, [R4,#8]
5024D6:  ADDS            R1, #8
5024D8:  STR             R1, [R4]
5024DA:  CMP             R0, #0
5024DC:  ITTT NE
5024DE:  LDRNE           R1, [R0]
5024E0:  LDRNE           R1, [R1,#4]
5024E2:  BLXNE           R1
5024E4:  LDR             R0, [R4,#0xC]
5024E6:  CMP             R0, #0
5024E8:  ITTT NE
5024EA:  LDRNE           R1, [R0]
5024EC:  LDRNE           R1, [R1,#4]
5024EE:  BLXNE           R1
5024F0:  MOV             R0, R4; this
5024F2:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5024F6:  POP.W           {R4,R6,R7,LR}
5024FA:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
