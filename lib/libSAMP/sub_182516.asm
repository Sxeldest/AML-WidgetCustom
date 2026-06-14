; =========================================================
; Game Engine Function: sub_182516
; Address            : 0x182516 - 0x1825E6
; =========================================================

182516:  PUSH            {R4-R7,LR}
182518:  ADD             R7, SP, #0xC
18251A:  PUSH.W          {R8,R9,R11}
18251E:  SUB             SP, SP, #0x28
182520:  MOV             R9, R3
182522:  MOV             R4, R2
182524:  MOV             R8, R1
182526:  MOV             R5, R0
182528:  BL              sub_182A56
18252C:  MOV             R6, R0
18252E:  LDR             R0, [R5]
182530:  LDR             R1, [R0,#0x18]
182532:  MOV             R0, R5
182534:  BLX             R1
182536:  CMP             R6, R0
182538:  BCS             loc_182578
18253A:  LDR             R0, [R7,#arg_4]
18253C:  LDRB.W          R1, [R5,#0x33C]
182540:  SUBS            R2, R0, #1; n
182542:  CMP             R2, R1
182544:  BNE             loc_182554
182546:  LDR             R0, [R7,#arg_0]
182548:  ADD.W           R1, R5, #0x23C; s2
18254C:  ADDS            R0, #1; s1
18254E:  BLX             memcmp
182552:  CBZ             R0, loc_1825B2
182554:  MOVS            R0, #0x25 ; '%'
182556:  STRB.W          R0, [R7,#var_1A]
18255A:  BL              sub_17E2E4
18255E:  MOVS            R1, #0
182560:  MOVS            R2, #8
182562:  STRD.W          R2, R1, [SP,#0x40+var_40]
182566:  STRD.W          R1, R1, [SP,#0x40+var_30]
18256A:  STRD.W          R0, R1, [SP,#0x40+var_28]
18256E:  SUB.W           R1, R7, #-var_1A
182572:  STRD.W          R4, R9, [SP,#0x40+var_38]
182576:  B               loc_18259A
182578:  MOVS            R0, #0x1F
18257A:  STRB.W          R0, [R7,#var_19]
18257E:  BL              sub_17E2E4
182582:  MOVS            R1, #0
182584:  MOVS            R2, #8
182586:  STRD.W          R2, R1, [SP,#0x40+var_40]
18258A:  STRD.W          R4, R9, [SP,#0x40+var_38]
18258E:  STRD.W          R1, R1, [SP,#0x40+var_30]
182592:  STRD.W          R0, R1, [SP,#0x40+var_28]
182596:  SUB.W           R1, R7, #-var_19
18259A:  MOV             R0, R5
18259C:  MOVS            R2, #8
18259E:  MOVS            R3, #0
1825A0:  BL              sub_1825E8
1825A4:  MOVS            R0, #2
1825A6:  STR.W           R0, [R8,#0x83C]
1825AA:  ADD             SP, SP, #0x28 ; '('
1825AC:  POP.W           {R8,R9,R11}
1825B0:  POP             {R4-R7,PC}
1825B2:  LDRB.W          R1, [R5,#0x96D]
1825B6:  MOVS            R0, #5
1825B8:  STR.W           R0, [R8,#0x83C]
1825BC:  MOV             R0, R5
1825BE:  CBZ             R1, loc_1825D2
1825C0:  MOV             R1, R4
1825C2:  MOV             R2, R9
1825C4:  ADD             SP, SP, #0x28 ; '('
1825C6:  POP.W           {R8,R9,R11}
1825CA:  POP.W           {R4-R7,LR}
1825CE:  B.W             sub_182980
1825D2:  MOV             R1, R8
1825D4:  MOVS            R2, #0
1825D6:  MOVS            R3, #0
1825D8:  ADD             SP, SP, #0x28 ; '('
1825DA:  POP.W           {R8,R9,R11}
1825DE:  POP.W           {R4-R7,LR}
1825E2:  B.W             sub_1828B4
