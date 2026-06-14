; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowNodeRouteShooting17CreateNextSubTaskEP4CPed
; Address            : 0x5268A0 - 0x5268EE
; =========================================================

5268A0:  PUSH            {R4-R7,LR}
5268A2:  ADD             R7, SP, #0xC
5268A4:  PUSH.W          {R11}
5268A8:  MOV             R4, R1
5268AA:  BLX             j__ZN27CTaskComplexFollowNodeRoute17CreateNextSubTaskEP4CPed; CTaskComplexFollowNodeRoute::CreateNextSubTask(CPed *)
5268AE:  MOV             R5, R0
5268B0:  CBZ             R5, loc_5268BA
5268B2:  MOV             R0, R5
5268B4:  POP.W           {R11}
5268B8:  POP             {R4-R7,PC}
5268BA:  LDR.W           R0, [R4,#0x440]
5268BE:  MOVS            R1, #0; int
5268C0:  ADDS            R0, #4; this
5268C2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5268C6:  MOV             R6, R0
5268C8:  CMP             R6, #0
5268CA:  BEQ             loc_5268B2
5268CC:  LDR             R0, [R6]
5268CE:  LDR             R1, [R0,#0x14]
5268D0:  MOV             R0, R6
5268D2:  BLX             R1
5268D4:  MOVW            R1, #0x3F9
5268D8:  CMP             R0, R1
5268DA:  BNE             loc_5268B2
5268DC:  LDR             R0, [R6]
5268DE:  MOV             R1, R4
5268E0:  MOVS            R2, #1
5268E2:  MOVS            R3, #0
5268E4:  LDR.W           R12, [R0,#0x1C]
5268E8:  MOV             R0, R6
5268EA:  BLX             R12
5268EC:  B               loc_5268B2
