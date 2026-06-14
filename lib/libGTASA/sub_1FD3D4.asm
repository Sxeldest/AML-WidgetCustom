; =========================================================
; Game Engine Function: sub_1FD3D4
; Address            : 0x1FD3D4 - 0x1FD540
; =========================================================

1FD3D4:  LDRB            R2, [R0,#9]
1FD3D6:  CMP             R2, #8
1FD3D8:  BCC.W           locret_1FD53E
1FD3DC:  LDRB            R3, [R0,#8]
1FD3DE:  TST.W           R3, #2
1FD3E2:  IT NE
1FD3E4:  BXNE            LR
1FD3E6:  PUSH            {R4,R5,R7,LR}
1FD3E8:  ADD             R7, SP, #0x10+var_8
1FD3EA:  LDR.W           R12, [R0]
1FD3EE:  CMP             R3, #4
1FD3F0:  BEQ             loc_1FD42E
1FD3F2:  CMP             R3, #0
1FD3F4:  BNE.W           loc_1FD50A
1FD3F8:  CMP             R2, #8
1FD3FA:  BNE             loc_1FD468
1FD3FC:  CMP.W           R12, #0
1FD400:  BEQ.W           loc_1FD50A
1FD404:  MOV             R2, R12
1FD406:  ADDS            R3, R1, R2
1FD408:  ADD.W           LR, R2, R2,LSL#1
1FD40C:  ADD.W           R4, R1, LR
1FD410:  SUBS            R2, #1
1FD412:  LDRB.W          R5, [R3,#-1]
1FD416:  STRB.W          R5, [R4,#-1]
1FD41A:  LDRB.W          R5, [R3,#-1]
1FD41E:  STRB.W          R5, [R4,#-2]
1FD422:  LDRB.W          R3, [R3,#-1]
1FD426:  STRB.W          R3, [R4,#-3]
1FD42A:  BNE             loc_1FD406
1FD42C:  B               loc_1FD50A
1FD42E:  CMP             R2, #8
1FD430:  BNE             loc_1FD4B6
1FD432:  CMP.W           R12, #0
1FD436:  BEQ             loc_1FD50A
1FD438:  MOV             R2, R12
1FD43A:  ADD.W           R3, R1, R2,LSL#1
1FD43E:  ADD.W           R4, R1, R2,LSL#2
1FD442:  SUBS            R2, #1
1FD444:  LDRB.W          R5, [R3,#-1]
1FD448:  STRB.W          R5, [R4,#-1]
1FD44C:  LDRB.W          R5, [R3,#-2]
1FD450:  STRB.W          R5, [R4,#-2]
1FD454:  LDRB.W          R5, [R3,#-2]
1FD458:  STRB.W          R5, [R4,#-3]
1FD45C:  LDRB.W          R3, [R3,#-2]
1FD460:  STRB.W          R3, [R4,#-4]
1FD464:  BNE             loc_1FD43A
1FD466:  B               loc_1FD50A
1FD468:  CMP.W           R12, #0
1FD46C:  BEQ             loc_1FD50A
1FD46E:  ADD.W           R2, R1, R12,LSL#1
1FD472:  SUBS            R2, #1
1FD474:  ADD.W           R3, R2, R12,LSL#2
1FD478:  MOV             R2, R12
1FD47A:  ADD.W           R5, R1, R2,LSL#1
1FD47E:  SUBS            R2, #1
1FD480:  LDRB.W          R4, [R5,#-1]
1FD484:  STRB            R4, [R3]
1FD486:  LDRB.W          R4, [R5,#-2]
1FD48A:  STRB.W          R4, [R3,#-1]
1FD48E:  LDRB.W          R4, [R5,#-1]
1FD492:  STRB.W          R4, [R3,#-2]
1FD496:  LDRB.W          R4, [R5,#-2]
1FD49A:  STRB.W          R4, [R3,#-3]
1FD49E:  LDRB.W          R4, [R5,#-1]
1FD4A2:  STRB.W          R4, [R3,#-4]
1FD4A6:  LDRB.W          R5, [R5,#-2]
1FD4AA:  STRB.W          R5, [R3,#-5]
1FD4AE:  SUB.W           R3, R3, #6
1FD4B2:  BNE             loc_1FD47A
1FD4B4:  B               loc_1FD50A
1FD4B6:  CMP.W           R12, #0
1FD4BA:  BEQ             loc_1FD50A
1FD4BC:  MOV             R2, R12
1FD4BE:  ADD.W           R3, R1, R2,LSL#2
1FD4C2:  ADD.W           R4, R1, R2,LSL#3
1FD4C6:  SUBS            R2, #1
1FD4C8:  LDRB.W          R5, [R3,#-1]
1FD4CC:  STRB.W          R5, [R4,#-1]
1FD4D0:  LDRB.W          R5, [R3,#-2]
1FD4D4:  STRB.W          R5, [R4,#-2]
1FD4D8:  LDRB.W          R5, [R3,#-3]
1FD4DC:  STRB.W          R5, [R4,#-3]
1FD4E0:  LDRB.W          R5, [R3,#-4]
1FD4E4:  STRB.W          R5, [R4,#-4]
1FD4E8:  LDRB.W          R5, [R3,#-3]
1FD4EC:  STRB.W          R5, [R4,#-5]
1FD4F0:  LDRB.W          R5, [R3,#-4]
1FD4F4:  STRB.W          R5, [R4,#-6]
1FD4F8:  LDRB.W          R5, [R3,#-3]
1FD4FC:  STRB.W          R5, [R4,#-7]
1FD500:  LDRB.W          R3, [R3,#-4]
1FD504:  STRB.W          R3, [R4,#-8]
1FD508:  BNE             loc_1FD4BE
1FD50A:  LDRB            R3, [R0,#0xA]
1FD50C:  LDRB            R2, [R0,#9]
1FD50E:  ADDS            R3, #2
1FD510:  LDRB            R1, [R0,#8]
1FD512:  STRB            R3, [R0,#0xA]
1FD514:  UXTB            R5, R3
1FD516:  ORR.W           R1, R1, #2
1FD51A:  SMULBB.W        R2, R2, R5
1FD51E:  STRB            R1, [R0,#8]
1FD520:  STRB            R2, [R0,#0xB]
1FD522:  UXTB            R1, R2
1FD524:  CMP             R1, #8
1FD526:  POP.W           {R4,R5,R7,LR}
1FD52A:  BCC             loc_1FD534
1FD52C:  LSRS            R1, R1, #3
1FD52E:  MUL.W           R1, R1, R12
1FD532:  B               loc_1FD53C
1FD534:  MUL.W           R1, R1, R12
1FD538:  ADDS            R1, #7
1FD53A:  LSRS            R1, R1, #3
1FD53C:  STR             R1, [R0,#4]
1FD53E:  BX              LR
