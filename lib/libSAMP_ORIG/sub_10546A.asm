; =========================================================
; Game Engine Function: sub_10546A
; Address            : 0x10546A - 0x1054D0
; =========================================================

10546A:  PUSH            {R4,R6,R7,LR}
10546C:  ADD             R7, SP, #8
10546E:  CMP             R0, R1
105470:  BEQ             locret_1054BE
105472:  LDRB            R2, [R0]
105474:  CMP             R2, #0x5F ; '_'
105476:  BNE             loc_1054A4
105478:  ADDS            R2, R0, #1
10547A:  CMP             R2, R1
10547C:  BEQ             locret_1054BE
10547E:  LDRB            R2, [R2]
105480:  SUB.W           R3, R2, #0x3A ; ':'
105484:  CMN.W           R3, #0xA
105488:  BCS             loc_1054C0
10548A:  CMP             R2, #0x5F ; '_'
10548C:  BNE             locret_1054BE
10548E:  ADDS            R2, R0, #2
105490:  CMP             R2, R1
105492:  BEQ             locret_1054BE
105494:  LDRB            R3, [R2]
105496:  SUB.W           R4, R3, #0x3A ; ':'
10549A:  CMN.W           R4, #0xA
10549E:  BCC             loc_1054C8
1054A0:  ADDS            R2, #1
1054A2:  B               loc_105490
1054A4:  SUBS            R2, #0x3A ; ':'
1054A6:  CMN.W           R2, #0xA
1054AA:  BCC             locret_1054BE
1054AC:  ADDS            R2, R0, #1
1054AE:  CMP             R2, R1
1054B0:  BEQ             loc_1054C4
1054B2:  LDRB.W          R3, [R2],#1
1054B6:  SUBS            R3, #0x3A ; ':'
1054B8:  CMN.W           R3, #0xB
1054BC:  BHI             loc_1054AE
1054BE:  POP             {R4,R6,R7,PC}
1054C0:  ADDS            R0, #2
1054C2:  POP             {R4,R6,R7,PC}
1054C4:  MOV             R0, R1
1054C6:  POP             {R4,R6,R7,PC}
1054C8:  CMP             R3, #0x5F ; '_'
1054CA:  IT EQ
1054CC:  ADDEQ           R0, R2, #1
1054CE:  POP             {R4,R6,R7,PC}
