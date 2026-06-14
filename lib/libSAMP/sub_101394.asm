; =========================================================
; Game Engine Function: sub_101394
; Address            : 0x101394 - 0x10144A
; =========================================================

101394:  PUSH            {R4-R7,LR}
101396:  ADD             R7, SP, #0xC
101398:  PUSH.W          {R11}
10139C:  SUB             SP, SP, #8
10139E:  MOV             R4, R0
1013A0:  LDR             R0, =(off_23494C - 0x1013AA)
1013A2:  MOVW            R6, #:lower16:(loc_1D5AB8+1)
1013A6:  ADD             R0, PC; off_23494C
1013A8:  MOVT            R6, #:upper16:(loc_1D5AB8+1)
1013AC:  LDR             R5, [R0]; dword_23DF24
1013AE:  LDR             R0, [R5]
1013B0:  ADD             R0, R6
1013B2:  ADD.W           R0, R0, #0x4A8
1013B6:  BLX             R0
1013B8:  STR             R0, [R4]
1013BA:  MOVW            R1, #:lower16:(loc_1D822C+1)
1013BE:  LDR             R0, [R5]
1013C0:  MOVT            R1, #:upper16:(loc_1D822C+1)
1013C4:  ADD             R0, R1
1013C6:  BLX             R0
1013C8:  MOV             R1, R0
1013CA:  LDR             R0, [R4]
1013CC:  STR             R1, [R4,#4]
1013CE:  CBZ             R1, loc_101442
1013D0:  CBZ             R0, loc_101442
1013D2:  LDR             R2, [R5]
1013D4:  MOV             R3, #0x1DCFE5
1013DC:  ADD             R2, R3
1013DE:  BLX             R2
1013E0:  LDR             R1, [R5]
1013E2:  LDR             R0, [R4]
1013E4:  ADD             R1, R6
1013E6:  ADD.W           R2, R1, #0x94
1013EA:  MOVS            R1, #0x43960000
1013F0:  BLX             R2
1013F2:  LDR             R1, [R5]
1013F4:  LDR             R0, [R4]
1013F6:  ADDS            R2, R1, R6
1013F8:  MOV             R1, #0x3C23D70A
101400:  BLX             R2
101402:  LDR             R1, [R5]
101404:  MOV.W           R0, #0x3F000000
101408:  STRD.W          R0, R0, [SP,#0x18+var_18]
10140C:  ADD             R1, R6
10140E:  LDR             R0, [R4]
101410:  ADD.W           R2, R1, #0x3CC
101414:  MOV             R1, SP
101416:  BLX             R2
101418:  LDR             R1, [R5]
10141A:  LDR             R0, [R4]
10141C:  ADD             R1, R6
10141E:  ADD.W           R2, R1, #0x2F0
101422:  MOVS            R1, #1
101424:  BLX             R2
101426:  LDR             R2, [R5]
101428:  MOV             R0, #0x9FC938
101430:  LDR             R0, [R2,R0]
101432:  CBZ             R0, loc_101442
101434:  MOVW            R3, #:lower16:(loc_21E004+1)
101438:  LDR             R1, [R4]
10143A:  MOVT            R3, #:upper16:(loc_21E004+1)
10143E:  ADD             R2, R3
101440:  BLX             R2
101442:  ADD             SP, SP, #8
101444:  POP.W           {R11}
101448:  POP             {R4-R7,PC}
