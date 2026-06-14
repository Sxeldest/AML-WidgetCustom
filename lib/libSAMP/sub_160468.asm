; =========================================================
; Game Engine Function: sub_160468
; Address            : 0x160468 - 0x1604D2
; =========================================================

160468:  MOV             R2, R0
16046A:  LDR             R0, =(byte_8F794 - 0x160472)
16046C:  SUBS            R2, #4; switch 8 cases
16046E:  ADD             R0, PC; byte_8F794
160470:  CMP             R2, #7
160472:  IT HI
160474:  BXHI            LR
160476:  TBB.W           [PC,R2]; switch jump
16047A:  DCB 4; jump table for switch statement
16047B:  DCB 0xA
16047C:  DCB 0x28
16047D:  DCB 0x15
16047E:  DCB 0x1B
16047F:  DCB 0x28
160480:  DCB 0x28
160481:  DCB 0x21
160482:  SUBS            R0, R1, #1; jumptable 00160476 case 4
160484:  CMP             R0, #8
160486:  BCS             loc_1604CC
160488:  LDR             R1, =(off_22F9C8 - 0x16048E); "Illegal opcode" ...
16048A:  ADD             R1, PC; off_22F9C8
16048C:  B               loc_1604C6
16048E:  LDR             R2, =(aProcessTraceTr - 0x160498); jumptable 00160476 case 5
160490:  CMP             R1, #2
160492:  LDR             R3, =(aProcessBreakpo - 0x16049E); "Process breakpoint" ...
160494:  ADD             R2, PC; "Process trace trap"
160496:  IT EQ
160498:  MOVEQ           R0, R2
16049A:  ADD             R3, PC; "Process breakpoint"
16049C:  CMP             R1, #1
16049E:  IT EQ
1604A0:  MOVEQ           R0, R3
1604A2:  BX              LR
1604A4:  SUBS            R0, R1, #1; jumptable 00160476 case 7
1604A6:  CMP             R0, #5
1604A8:  BCS             loc_1604CC
1604AA:  LDR             R1, =(off_22F9B4 - 0x1604B0); "Invalid address alignment" ...
1604AC:  ADD             R1, PC; off_22F9B4
1604AE:  B               loc_1604C6
1604B0:  SUBS            R0, R1, #1; jumptable 00160476 case 8
1604B2:  CMP             R0, #8
1604B4:  BCS             loc_1604CC
1604B6:  LDR             R1, =(off_22F994 - 0x1604BC); "Integer divide by zero" ...
1604B8:  ADD             R1, PC; off_22F994
1604BA:  B               loc_1604C6
1604BC:  SUBS            R0, R1, #1; jumptable 00160476 case 11
1604BE:  CMP             R0, #4
1604C0:  BCS             loc_1604CC
1604C2:  LDR             R1, =(off_22F984 - 0x1604C8); "Address not mapped to object" ...
1604C4:  ADD             R1, PC; off_22F984
1604C6:  LDR.W           R0, [R1,R0,LSL#2]
1604CA:  BX              LR; jumptable 00160476 cases 6,9,10
1604CC:  LDR             R0, =(byte_8F794 - 0x1604D2)
1604CE:  ADD             R0, PC; byte_8F794
1604D0:  BX              LR
