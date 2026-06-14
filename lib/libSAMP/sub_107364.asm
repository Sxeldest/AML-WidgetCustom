; =========================================================
; Game Engine Function: sub_107364
; Address            : 0x107364 - 0x107492
; =========================================================

107364:  PUSH            {R4-R7,LR}
107366:  ADD             R7, SP, #0xC
107368:  PUSH.W          {R11}
10736C:  SUB             SP, SP, #0x28
10736E:  MOV             R4, R0
107370:  LDR             R0, =(off_23494C - 0x10737A)
107372:  MOVW            R1, #:lower16:(loc_216E30+1)
107376:  ADD             R0, PC; off_23494C
107378:  MOVT            R1, #:upper16:(loc_216E30+1)
10737C:  LDR             R5, [R0]; dword_23DF24
10737E:  LDR             R0, [R5]
107380:  ADD             R1, R0
107382:  MOVS            R0, #2
107384:  BLX             R1
107386:  CMP             R0, #0
107388:  STR             R0, [R4,#4]
10738A:  BEQ             loc_10748A
10738C:  LDR             R1, =(unk_91DA0 - 0x10739C)
10738E:  MOVW            R3, #:lower16:(loc_2167C4+3)
107392:  LDR             R2, [R5]
107394:  MOVT            R3, #:upper16:(loc_2167C4+3)
107398:  ADD             R1, PC; unk_91DA0
10739A:  VLD1.64         {D16-D17}, [R1]
10739E:  ADD             R1, SP, #0x38+var_20
1073A0:  ADD             R2, R3
1073A2:  VST1.64         {D16-D17}, [R1]
1073A6:  BLX             R2
1073A8:  LDR             R0, =(off_234AE8 - 0x1073B6)
1073AA:  MOV.W           R1, #0x100
1073AE:  MOVS            R2, #0
1073B0:  MOVS            R3, #1
1073B2:  ADD             R0, PC; off_234AE8
1073B4:  LDR             R0, [R0]; off_2636C4
1073B6:  LDR             R6, [R0]
1073B8:  MOV.W           R0, #0x100
1073BC:  BLX             R6
1073BE:  LDR             R1, [R5]
1073C0:  MOVW            R6, #:lower16:(loc_1D5AB8+1)
1073C4:  STR             R0, [R4,#0xC]
1073C6:  MOVT            R6, #:upper16:(loc_1D5AB8+1)
1073CA:  ADDS            R0, R1, R6
1073CC:  ADD.W           R0, R0, #0x4A8
1073D0:  BLX             R0
1073D2:  STR             R0, [R4]
1073D4:  MOVW            R1, #:lower16:(loc_1D822C+1)
1073D8:  LDR             R0, [R5]
1073DA:  MOVT            R1, #:upper16:(loc_1D822C+1)
1073DE:  ADD             R0, R1
1073E0:  BLX             R0
1073E2:  LDR             R1, =(unk_B3BD8 - 0x1073EC)
1073E4:  MOVS            R2, #1
1073E6:  STR             R0, [R4,#8]
1073E8:  ADD             R1, PC; unk_B3BD8
1073EA:  VLDR            D16, [R1]
1073EE:  LDR             R1, [R1,#(dword_B3BE0 - 0xB3BD8)]
1073F0:  STR             R1, [SP,#0x38+var_28]
1073F2:  ADD             R1, SP, #0x38+var_30
1073F4:  VSTR            D16, [SP,#0x38+var_30]
1073F8:  BL              sub_1090FC
1073FC:  LDR             R0, [R4,#8]
1073FE:  MOVS            R2, #0x42B40000
107404:  MOVS            R1, #0
107406:  BL              sub_109118
10740A:  LDR             R0, [R4]
10740C:  CBZ             R0, loc_10748A
10740E:  LDR             R1, [R4,#8]
107410:  CBZ             R1, loc_10748A
107412:  LDR             R1, [R4,#0xC]
107414:  MOVW            R3, #:lower16:(loc_1DCFE4+1)
107418:  STR             R1, [R0,#0x64]
10741A:  MOVT            R3, #:upper16:(loc_1DCFE4+1)
10741E:  LDR             R2, [R5]
107420:  LDR             R0, [R4]
107422:  LDR             R1, [R4,#8]
107424:  ADD             R2, R3
107426:  BLX             R2
107428:  LDR             R1, [R5]
10742A:  LDR             R0, [R4]
10742C:  ADD             R1, R6
10742E:  ADD.W           R2, R1, #0x94
107432:  MOVS            R1, #0x43960000
107438:  BLX             R2
10743A:  LDR             R1, [R5]
10743C:  LDR             R0, [R4]
10743E:  ADDS            R2, R1, R6
107440:  MOV             R1, #0x3C23D70A
107448:  BLX             R2
10744A:  LDR             R1, [R5]
10744C:  MOV.W           R0, #0x3F000000
107450:  STRD.W          R0, R0, [SP,#0x38+var_38]
107454:  ADD             R1, R6
107456:  LDR             R0, [R4]
107458:  ADD.W           R2, R1, #0x3CC
10745C:  MOV             R1, SP
10745E:  BLX             R2
107460:  LDR             R1, [R5]
107462:  LDR             R0, [R4]
107464:  ADD             R1, R6
107466:  ADD.W           R2, R1, #0x2F0
10746A:  MOVS            R1, #1
10746C:  BLX             R2
10746E:  LDR             R2, [R5]
107470:  MOV             R0, #0x9FC938
107478:  LDR             R0, [R2,R0]
10747A:  CBZ             R0, loc_10748A
10747C:  MOVW            R3, #:lower16:(loc_21E004+1)
107480:  LDR             R1, [R4]
107482:  MOVT            R3, #:upper16:(loc_21E004+1)
107486:  ADD             R2, R3
107488:  BLX             R2
10748A:  ADD             SP, SP, #0x28 ; '('
10748C:  POP.W           {R11}
107490:  POP             {R4-R7,PC}
