; =========================================================
; Game Engine Function: _ZN35CTaskComplexLeaveCarAsPassengerWait14ControlSubTaskEP4CPed
; Address            : 0x4F829C - 0x4F8310
; =========================================================

4F829C:  PUSH            {R4-R7,LR}
4F829E:  ADD             R7, SP, #0xC
4F82A0:  PUSH.W          {R11}
4F82A4:  MOV             R5, R0
4F82A6:  MOV             R4, R1
4F82A8:  LDR             R6, [R5,#8]
4F82AA:  LDR             R0, [R6]
4F82AC:  LDR             R1, [R0,#0x14]
4F82AE:  MOV             R0, R6
4F82B0:  BLX             R1
4F82B2:  MOVW            R1, #0x2C5
4F82B6:  CMP             R0, R1
4F82B8:  BNE             loc_4F8308
4F82BA:  LDR             R1, [R5,#0xC]
4F82BC:  LDRB.W          R0, [R1,#0x48C]
4F82C0:  CBZ             R0, loc_4F82DC
4F82C2:  ADD.W           R1, R1, #0x468
4F82C6:  MOVS            R2, #0
4F82C8:  LDR.W           R3, [R1,R2,LSL#2]
4F82CC:  CBNZ            R3, loc_4F82D6
4F82CE:  ADDS            R2, #1
4F82D0:  CMP             R2, R0
4F82D2:  BLT             loc_4F82C8
4F82D4:  MOVS            R3, #0
4F82D6:  CMP             R3, R4
4F82D8:  BNE             loc_4F8308
4F82DA:  B               loc_4F82E2
4F82DC:  MOVS            R3, #0
4F82DE:  CMP             R3, R4
4F82E0:  BNE             loc_4F8308
4F82E2:  LDR             R0, [R5,#8]
4F82E4:  MOVS            R2, #1
4F82E6:  MOVS            R3, #0
4F82E8:  LDR             R1, [R0]
4F82EA:  LDR.W           R12, [R1,#0x1C]
4F82EE:  MOV             R1, R4
4F82F0:  BLX             R12
4F82F2:  CMP             R0, #1
4F82F4:  BNE             loc_4F8308
4F82F6:  MOV             R0, R5; this
4F82F8:  MOV.W           R1, #0x2C0; int
4F82FC:  MOV             R2, R4; CPed *
4F82FE:  POP.W           {R11}
4F8302:  POP.W           {R4-R7,LR}
4F8306:  B               _ZNK35CTaskComplexLeaveCarAsPassengerWait13CreateSubTaskEiP4CPed; CTaskComplexLeaveCarAsPassengerWait::CreateSubTask(int,CPed *)
4F8308:  MOV             R0, R6
4F830A:  POP.W           {R11}
4F830E:  POP             {R4-R7,PC}
