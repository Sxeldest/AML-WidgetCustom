; =========================================================
; Game Engine Function: _ZNK35CTaskComplexLeaveCarAsPassengerWait23GetNextPassengerToLeaveEv
; Address            : 0x4F8272 - 0x4F829C
; =========================================================

4F8272:  LDR             R0, [R0,#0xC]
4F8274:  LDRB.W          R1, [R0,#0x48C]
4F8278:  CMP             R1, #0
4F827A:  ITT EQ
4F827C:  MOVEQ           R0, #0
4F827E:  BXEQ            LR
4F8280:  ADD.W           R2, R0, #0x468
4F8284:  MOVS            R3, #0
4F8286:  LDR.W           R0, [R2,R3,LSL#2]
4F828A:  CMP             R0, #0
4F828C:  IT NE
4F828E:  BXNE            LR
4F8290:  ADDS            R3, #1
4F8292:  CMP             R3, R1
4F8294:  ITT GE
4F8296:  MOVGE           R0, #0
4F8298:  BXGE            LR
4F829A:  B               loc_4F8286
