; =========================================================
; Game Engine Function: _ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUseD2Ev
; Address            : 0x502490 - 0x5024C2
; =========================================================

502490:  PUSH            {R4,R6,R7,LR}
502492:  ADD             R7, SP, #8
502494:  MOV             R4, R0
502496:  LDR             R0, =(_ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr - 0x50249C)
502498:  ADD             R0, PC; _ZTV48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse_ptr
50249A:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse ...
50249C:  LDR             R0, [R4,#8]
50249E:  ADDS            R1, #8
5024A0:  STR             R1, [R4]
5024A2:  CMP             R0, #0
5024A4:  ITTT NE
5024A6:  LDRNE           R1, [R0]
5024A8:  LDRNE           R1, [R1,#4]
5024AA:  BLXNE           R1
5024AC:  LDR             R0, [R4,#0xC]
5024AE:  CMP             R0, #0
5024B0:  ITTT NE
5024B2:  LDRNE           R1, [R0]
5024B4:  LDRNE           R1, [R1,#4]
5024B6:  BLXNE           R1
5024B8:  MOV             R0, R4; this
5024BA:  POP.W           {R4,R6,R7,LR}
5024BE:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
