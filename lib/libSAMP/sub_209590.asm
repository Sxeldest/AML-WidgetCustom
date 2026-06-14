; =========================================================
; Game Engine Function: sub_209590
; Address            : 0x209590 - 0x209656
; =========================================================

209590:  PUSH            {R4-R7,LR}
209592:  ADD             R7, SP, #0xC
209594:  PUSH.W          {R8-R11}
209598:  STR             R0, [R2]
20959A:  LDRB            R0, [R7,#arg_C]
20959C:  LDR.W           R9, [R7,#arg_4]
2095A0:  LSLS            R0, R0, #0x1D
2095A2:  STR.W           R3, [R9]
2095A6:  BPL             loc_2095BE
2095A8:  LDR             R0, [R2]
2095AA:  SUBS            R3, R1, R0
2095AC:  CMP             R3, #2
2095AE:  BLT             loc_2095BE
2095B0:  LDRB            R3, [R0]
2095B2:  CMP             R3, #0xFF
2095B4:  ITTTT EQ
2095B6:  LDRBEQ          R3, [R0,#1]
2095B8:  CMPEQ           R3, #0xFE
2095BA:  ADDEQ           R0, #2
2095BC:  STREQ           R0, [R2]
2095BE:  LDR.W           R12, [R7,#arg_8]
2095C2:  SUB.W           R10, R1, #1
2095C6:  LDR.W           R8, [R7,#arg_0]
2095CA:  MOV.W           LR, #0xFC00
2095CE:  B               loc_209632
2095D0:  LDRB            R4, [R3,#1]
2095D2:  LDRB.W          R11, [R3]
2095D6:  AND.W           R6, LR, R4,LSL#8
2095DA:  ORR.W           R4, R11, R4,LSL#8
2095DE:  CMP.W           R6, #0xD800
2095E2:  BEQ             loc_2095F2
2095E4:  CMP.W           R6, #0xDC00
2095E8:  BEQ             loc_20964E
2095EA:  MOVS            R0, #2
2095EC:  CMP             R4, R12
2095EE:  BLS             loc_209622
2095F0:  B               loc_209648
2095F2:  SUBS            R6, R1, R3
2095F4:  CMP             R6, #4
2095F6:  BLT             loc_209652
2095F8:  LDRB            R6, [R3,#3]
2095FA:  AND.W           R0, R6, #0xFC
2095FE:  CMP             R0, #0xDC
209600:  BNE             loc_20964E
209602:  LDRB            R0, [R3,#2]
209604:  AND.W           R4, R4, #0x3C0
209608:  BFI.W           R0, R6, #8, #2
20960C:  MOV.W           R6, R11,LSL#10
209610:  UXTH            R6, R6
209612:  ORR.W           R4, R6, R4,LSL#10
209616:  ADD             R0, R4
209618:  ADD.W           R4, R0, #0x10000
20961C:  CMP             R4, R12
20961E:  BHI             loc_20964E
209620:  MOVS            R0, #4
209622:  ADD             R0, R3
209624:  STR             R0, [R2]
209626:  LDR.W           R0, [R9]
20962A:  STR             R4, [R5]
20962C:  ADDS            R0, #4
20962E:  STR.W           R0, [R9]
209632:  LDR             R3, [R2]
209634:  CMP             R3, R10
209636:  ITT CC
209638:  LDRCC.W         R5, [R9]
20963C:  CMPCC           R5, R8
20963E:  BCC             loc_2095D0
209640:  MOVS            R0, #0
209642:  CMP             R3, R1
209644:  IT CC
209646:  MOVCC           R0, #1
209648:  POP.W           {R8-R11}
20964C:  POP             {R4-R7,PC}
20964E:  MOVS            R0, #2
209650:  B               loc_209648
209652:  MOVS            R0, #1
209654:  B               loc_209648
