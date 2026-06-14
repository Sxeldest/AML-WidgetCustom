; =========================================================
; Game Engine Function: sub_9565C
; Address            : 0x9565C - 0x95700
; =========================================================

9565C:  PUSH            {R4-R7,LR}
9565E:  ADD             R7, SP, #0xC
95660:  PUSH.W          {R8-R10}
95664:  SUB             SP, SP, #8
95666:  MOV             LR, R1
95668:  LDR             R1, =(dword_1ACF68 - 0x95674)
9566A:  MOV             R12, R2
9566C:  MOVW            R2, #0x19AC
95670:  ADD             R1, PC; dword_1ACF68
95672:  LDR             R1, [R1]
95674:  ADD.W           R8, R1, R2
95678:  LDR             R4, [R1,R2]
9567A:  LDR.W           R5, [R4,#0x1C4]
9567E:  LDR.W           R6, [R4,#0x1CC]
95682:  ADD.W           R5, R6, R5,LSL#2
95686:  LDR.W           R6, [R5,#-4]
9568A:  MOVS            R5, #1
9568C:  STRB.W          R5, [R4,#0x7C]
95690:  LDRB            R5, [R0]
95692:  MVN.W           R9, R6
95696:  CBZ             R5, loc_956D0
95698:  ADDS            R6, R0, #1
9569A:  MOV             R4, R9
9569C:  B               loc_956B4
9569E:  LDR             R1, =(unk_52D88 - 0x956AC)
956A0:  UXTB            R2, R4
956A2:  EOR.W           R2, R2, R10
956A6:  ADDS            R6, #1
956A8:  ADD             R1, PC; unk_52D88
956AA:  LDR.W           R1, [R1,R2,LSL#2]
956AE:  EOR.W           R4, R1, R4,LSR#8
956B2:  CBZ             R5, loc_956D2
956B4:  MOV             R10, R5
956B6:  LDRB            R5, [R6]
956B8:  CMP.W           R10, #0x23 ; '#'
956BC:  IT EQ
956BE:  CMPEQ           R5, #0x23 ; '#'
956C0:  BNE             loc_9569E
956C2:  LDRB            R5, [R6,#1]
956C4:  CMP             R5, #0x23 ; '#'
956C6:  MOV.W           R5, #0x23 ; '#'
956CA:  IT EQ
956CC:  MOVEQ           R4, R9
956CE:  B               loc_9569E
956D0:  MOV             R4, R9
956D2:  LDR.W           R2, [R8,#0x24]
956D6:  MVNS            R1, R4
956D8:  CMP             R2, R1
956DA:  IT EQ
956DC:  STREQ.W         R1, [R8,#0x28]
956E0:  LDR.W           R2, [R8,#0x50]
956E4:  CMP             R2, R1
956E6:  ITT EQ
956E8:  MOVEQ           R2, #1
956EA:  STRBEQ.W        R2, [R8,#0x54]
956EE:  STR             R3, [SP,#0x20+var_20]
956F0:  MOV             R2, LR
956F2:  MOV             R3, R12
956F4:  BL              sub_95710
956F8:  ADD             SP, SP, #8
956FA:  POP.W           {R8-R10}
956FE:  POP             {R4-R7,PC}
