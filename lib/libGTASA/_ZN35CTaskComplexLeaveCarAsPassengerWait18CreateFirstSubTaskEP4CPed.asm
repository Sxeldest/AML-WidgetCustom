; =========================================================
; Game Engine Function: _ZN35CTaskComplexLeaveCarAsPassengerWait18CreateFirstSubTaskEP4CPed
; Address            : 0x4F8234 - 0x4F8272
; =========================================================

4F8234:  PUSH            {R7,LR}
4F8236:  MOV             R7, SP
4F8238:  LDR             R2, [R0,#0xC]
4F823A:  MOV             R12, R1
4F823C:  CMP             R2, #0
4F823E:  ITT EQ
4F8240:  MOVEQ           R0, #0; this
4F8242:  POPEQ           {R7,PC}
4F8244:  LDRB.W          R1, [R2,#0x48C]
4F8248:  CBZ             R1, loc_4F825C
4F824A:  ADD.W           LR, R2, #0x468
4F824E:  MOVS            R2, #0
4F8250:  LDR.W           R3, [LR,R2,LSL#2]
4F8254:  CBNZ            R3, loc_4F825E
4F8256:  ADDS            R2, #1
4F8258:  CMP             R2, R1
4F825A:  BLT             loc_4F8250
4F825C:  MOVS            R3, #0
4F825E:  MOVW            R1, #0x2C5
4F8262:  CMP             R3, R12
4F8264:  IT EQ
4F8266:  MOVEQ.W         R1, #0x2C0; int
4F826A:  MOV             R2, R12; CPed *
4F826C:  POP.W           {R7,LR}
4F8270:  B               _ZNK35CTaskComplexLeaveCarAsPassengerWait13CreateSubTaskEiP4CPed; CTaskComplexLeaveCarAsPassengerWait::CreateSubTask(int,CPed *)
