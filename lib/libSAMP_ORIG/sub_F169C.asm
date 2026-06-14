; =========================================================
; Game Engine Function: sub_F169C
; Address            : 0xF169C - 0xF1762
; =========================================================

F169C:  PUSH            {R4-R7,LR}
F169E:  ADD             R7, SP, #0xC
F16A0:  PUSH.W          {R8-R11}
F16A4:  STR             R0, [R2]
F16A6:  LDRB            R0, [R7,#arg_C]
F16A8:  LDR.W           R9, [R7,#arg_4]
F16AC:  LSLS            R0, R0, #0x1D
F16AE:  STR.W           R3, [R9]
F16B2:  BPL             loc_F16CA
F16B4:  LDR             R0, [R2]
F16B6:  SUBS            R3, R1, R0
F16B8:  CMP             R3, #2
F16BA:  BLT             loc_F16CA
F16BC:  LDRB            R3, [R0]
F16BE:  CMP             R3, #0xFF
F16C0:  ITTTT EQ
F16C2:  LDRBEQ          R3, [R0,#1]
F16C4:  CMPEQ           R3, #0xFE
F16C6:  ADDEQ           R0, #2
F16C8:  STREQ           R0, [R2]
F16CA:  LDR.W           R12, [R7,#arg_8]
F16CE:  SUB.W           R10, R1, #1
F16D2:  LDR.W           R8, [R7,#arg_0]
F16D6:  MOV.W           LR, #0xFC00
F16DA:  B               loc_F173E
F16DC:  LDRB            R4, [R3,#1]
F16DE:  LDRB.W          R11, [R3]
F16E2:  AND.W           R6, LR, R4,LSL#8
F16E6:  ORR.W           R4, R11, R4,LSL#8
F16EA:  CMP.W           R6, #0xD800
F16EE:  BEQ             loc_F16FE
F16F0:  CMP.W           R6, #0xDC00
F16F4:  BEQ             loc_F175A
F16F6:  MOVS            R0, #2
F16F8:  CMP             R4, R12
F16FA:  BLS             loc_F172E
F16FC:  B               loc_F1754
F16FE:  SUBS            R6, R1, R3
F1700:  CMP             R6, #4
F1702:  BLT             loc_F175E
F1704:  LDRB            R6, [R3,#3]
F1706:  AND.W           R0, R6, #0xFC
F170A:  CMP             R0, #0xDC
F170C:  BNE             loc_F175A
F170E:  LDRB            R0, [R3,#2]
F1710:  AND.W           R4, R4, #0x3C0
F1714:  BFI.W           R0, R6, #8, #2
F1718:  MOV.W           R6, R11,LSL#10
F171C:  UXTH            R6, R6
F171E:  ORR.W           R4, R6, R4,LSL#10
F1722:  ADD             R0, R4
F1724:  ADD.W           R4, R0, #0x10000
F1728:  CMP             R4, R12
F172A:  BHI             loc_F175A
F172C:  MOVS            R0, #4
F172E:  ADD             R0, R3
F1730:  STR             R0, [R2]
F1732:  LDR.W           R0, [R9]
F1736:  STR             R4, [R5]
F1738:  ADDS            R0, #4
F173A:  STR.W           R0, [R9]
F173E:  LDR             R3, [R2]
F1740:  CMP             R3, R10
F1742:  ITT CC
F1744:  LDRCC.W         R5, [R9]
F1748:  CMPCC           R5, R8
F174A:  BCC             loc_F16DC
F174C:  MOVS            R0, #0
F174E:  CMP             R3, R1
F1750:  IT CC
F1752:  MOVCC           R0, #1
F1754:  POP.W           {R8-R11}
F1758:  POP             {R4-R7,PC}
F175A:  MOVS            R0, #2
F175C:  B               loc_F1754
F175E:  MOVS            R0, #1
F1760:  B               loc_F1754
