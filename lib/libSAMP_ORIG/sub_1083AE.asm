; =========================================================
; Game Engine Function: sub_1083AE
; Address            : 0x1083AE - 0x10846E
; =========================================================

1083AE:  PUSH            {R4-R7,LR}
1083B0:  ADD             R7, SP, #0xC
1083B2:  PUSH.W          {R6-R9,R11}
1083B6:  LDR.W           R8, [R7,#arg_0]
1083BA:  MOV             R4, R1
1083BC:  LDR             R1, [R1,#8]
1083BE:  MOV             R5, R2
1083C0:  MOV             R9, R3
1083C2:  MOV             R6, R0
1083C4:  MOV             R2, R8
1083C6:  BL              sub_107A64
1083CA:  CBZ             R0, loc_1083DE
1083CC:  LDR             R0, [R4,#4]
1083CE:  CMP             R0, R5
1083D0:  BNE             loc_108414
1083D2:  LDR             R0, [R4,#0x1C]
1083D4:  CMP             R0, #1
1083D6:  IT NE
1083D8:  STRNE.W         R9, [R4,#0x1C]
1083DC:  B               loc_108414
1083DE:  LDR             R1, [R4]
1083E0:  MOV             R0, R6
1083E2:  MOV             R2, R8
1083E4:  BL              sub_107A64
1083E8:  CBZ             R0, loc_108402
1083EA:  LDR             R0, [R4,#0x10]
1083EC:  CMP             R0, R5
1083EE:  ITT NE
1083F0:  LDRNE           R0, [R4,#0x14]
1083F2:  CMPNE           R0, R5
1083F4:  BNE             loc_10841A
1083F6:  CMP.W           R9, #1
1083FA:  ITT EQ
1083FC:  MOVEQ           R0, #1
1083FE:  STREQ           R0, [R4,#0x20]
108400:  B               loc_108414
108402:  LDR             R0, [R6,#8]
108404:  MOV             R2, R5
108406:  MOV             R3, R9
108408:  LDR             R1, [R0]
10840A:  LDR             R6, [R1,#0x18]
10840C:  MOV             R1, R4
10840E:  STR.W           R8, [SP,#0x20+var_20]
108412:  BLX             R6
108414:  POP.W           {R2,R3,R8,R9,R11}
108418:  POP             {R4-R7,PC}
10841A:  LDR             R0, [R4,#0x2C]
10841C:  STR.W           R9, [R4,#0x20]
108420:  CMP             R0, #4
108422:  BEQ             loc_108452
108424:  MOVS            R0, #0
108426:  MOV             R2, R5
108428:  STRH            R0, [R4,#0x34]
10842A:  MOV             R3, R5
10842C:  LDR             R0, [R6,#8]
10842E:  LDR             R1, [R0]
108430:  LDR             R6, [R1,#0x14]
108432:  MOVS            R1, #1
108434:  STRD.W          R1, R8, [SP,#0x20+var_20]
108438:  MOV             R1, R4
10843A:  BLX             R6
10843C:  LDRB.W          R0, [R4,#0x35]
108440:  CBZ             R0, loc_10844E
108442:  LDRB.W          R1, [R4,#0x34]
108446:  MOVS            R0, #3
108448:  CBZ             R1, loc_108450
10844A:  STR             R0, [R4,#0x2C]
10844C:  B               loc_108414
10844E:  MOVS            R0, #4
108450:  STR             R0, [R4,#0x2C]
108452:  LDRD.W          R0, R1, [R4,#0x24]
108456:  STR             R5, [R4,#0x14]
108458:  ADDS            R1, #1
10845A:  STR             R1, [R4,#0x28]
10845C:  CMP             R0, #1
10845E:  BNE             loc_108414
108460:  LDR             R0, [R4,#0x18]
108462:  CMP             R0, #2
108464:  ITT EQ
108466:  MOVEQ           R0, #1
108468:  STRBEQ.W        R0, [R4,#0x36]
10846C:  B               loc_108414
