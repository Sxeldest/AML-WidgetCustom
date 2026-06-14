; =========================================================
; Game Engine Function: sub_175354
; Address            : 0x175354 - 0x17542C
; =========================================================

175354:  PUSH            {R4-R7,LR}
175356:  ADD             R7, SP, #0xC
175358:  PUSH.W          {R8-R11}
17535C:  SUB             SP, SP, #0xC
17535E:  MOV             R10, R0
175360:  MOV             R0, R1; s
175362:  MOV             R9, R3
175364:  STR             R2, [SP,#0x28+var_20]
175366:  MOV             R5, R1
175368:  BLX             strlen
17536C:  MOVW            R1, #0x6667
175370:  ADDS            R0, #4
175372:  MOVT            R1, #0x6666
175376:  SMMUL.W         R0, R0, R1
17537A:  LSRS            R1, R0, #1
17537C:  ADD.W           R0, R1, R0,LSR#31
175380:  LSLS            R0, R0, #2
175382:  BL              sub_1654B0
175386:  LDRB            R1, [R5]
175388:  MOV             R11, R0
17538A:  CBZ             R1, loc_175408
17538C:  ADDS            R2, R5, #2
17538E:  MOV.W           LR, #0x55 ; 'U'
175392:  MOV             R4, R11
175394:  LDRB.W          R8, [R2,#-1]
175398:  MOV             R12, #0xFFFFFFDD
17539C:  LDRB.W          R0, [R2],#5; int
1753A0:  MOV             R5, #0xFFFFFFDD
1753A4:  LDRB.W          R3, [R2,#-3]
1753A8:  LDRB.W          R6, [R2,#-4]
1753AC:  CMP             R3, #0x5B ; '['
1753AE:  IT HI
1753B0:  MOVHI           R12, #0xFFFFFFDC
1753B4:  ADD             R3, R12
1753B6:  CMP             R6, #0x5B ; '['
1753B8:  IT HI
1753BA:  MOVHI           R5, #0xFFFFFFDC
1753BE:  ADD             R6, R5
1753C0:  SMLABB.W        R3, R3, LR, R6
1753C4:  MOV             R6, #0xFFFFFFDD
1753C8:  CMP             R0, #0x5B ; '['
1753CA:  IT HI
1753CC:  MOVHI           R6, #0xFFFFFFDC
1753D0:  ADD             R0, R6
1753D2:  CMP.W           R8, #0x5B ; '['
1753D6:  MLA.W           R0, R3, LR, R0
1753DA:  MOV             R3, #0xFFFFFFDD
1753DE:  IT HI
1753E0:  MOVHI           R3, #0xFFFFFFDC
1753E4:  CMP             R1, #0x5B ; '['
1753E6:  ADD             R3, R8
1753E8:  MLA.W           R0, R0, LR, R3
1753EC:  MOV             R3, #0xFFFFFFDD
1753F0:  IT HI
1753F2:  MOVHI           R3, #0xFFFFFFDC
1753F6:  ADD             R1, R3
1753F8:  MLA.W           R0, R0, LR, R1
1753FC:  STR.W           R0, [R4],#4
175400:  LDRB.W          R1, [R2,#-2]
175404:  CMP             R1, #0
175406:  BNE             loc_175394
175408:  LDR             R3, [SP,#0x28+var_20]; int
17540A:  MOV             R1, R11; int
17540C:  LDR             R0, [R7,#arg_0]
17540E:  STR             R0, [SP,#0x28+var_24]; int
175410:  MOV             R0, R10; int
175412:  STR.W           R9, [SP,#0x28+src]; src
175416:  BL              sub_1754E4
17541A:  MOV             R5, R0
17541C:  MOV             R0, R11
17541E:  BL              sub_165578
175422:  MOV             R0, R5
175424:  ADD             SP, SP, #0xC
175426:  POP.W           {R8-R11}
17542A:  POP             {R4-R7,PC}
