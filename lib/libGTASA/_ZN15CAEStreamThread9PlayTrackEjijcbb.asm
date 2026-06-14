; =========================================================
; Game Engine Function: _ZN15CAEStreamThread9PlayTrackEjijcbb
; Address            : 0x3AA696 - 0x3AA702
; =========================================================

3AA696:  PUSH            {R4-R7,LR}
3AA698:  ADD             R7, SP, #0xC
3AA69A:  PUSH.W          {R8-R11}
3AA69E:  SUB             SP, SP, #4
3AA6A0:  MOV             R5, R1
3AA6A2:  MOV             R4, R0
3AA6A4:  MOV             R0, R5; int
3AA6A6:  MOV             R6, R3
3AA6A8:  MOV             R8, R2
3AA6AA:  BLX             j__Z14IsRemovedTracki; IsRemovedTrack(int)
3AA6AE:  CBZ             R0, loc_3AA6B8
3AA6B0:  ADD             SP, SP, #4
3AA6B2:  POP.W           {R8-R11}
3AA6B6:  POP             {R4-R7,PC}
3AA6B8:  LDR.W           R9, [R7,#arg_8]
3AA6BC:  LDRD.W          R11, R10, [R7,#arg_0]
3AA6C0:  LDR             R0, [R4,#4]; mutex
3AA6C2:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3AA6C6:  LDR             R0, [R4,#0x10]
3AA6C8:  LDR             R1, [R0]
3AA6CA:  LDR             R1, [R1,#0x10]
3AA6CC:  BLX             R1
3AA6CE:  ADDS            R0, #2
3AA6D0:  BNE             loc_3AA6DA
3AA6D2:  LDR             R0, [R4,#0x10]
3AA6D4:  LDR             R1, [R0]
3AA6D6:  LDR             R1, [R1,#0x20]
3AA6D8:  BLX             R1
3AA6DA:  ADD.W           R0, R4, #0x20 ; ' '
3AA6DE:  MOVS            R1, #1
3AA6E0:  STM.W           R0, {R5,R6,R8}
3AA6E4:  STRB.W          R11, [R4,#0x2C]
3AA6E8:  STRB.W          R10, [R4,#0x1B]
3AA6EC:  STRB.W          R9, [R4,#0x1C]
3AA6F0:  LDR             R0, [R4,#4]; mutex
3AA6F2:  STRB            R1, [R4,#0x1A]
3AA6F4:  ADD             SP, SP, #4
3AA6F6:  POP.W           {R8-R11}
3AA6FA:  POP.W           {R4-R7,LR}
3AA6FE:  B.W             j_j__Z15OS_MutexReleasePv; j_OS_MutexRelease(void *)
