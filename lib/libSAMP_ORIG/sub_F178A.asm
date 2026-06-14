; =========================================================
; Game Engine Function: sub_F178A
; Address            : 0xF178A - 0xF182A
; =========================================================

F178A:  PUSH            {R4-R7,LR}
F178C:  ADD             R7, SP, #0xC
F178E:  PUSH.W          {R8-R10}
F1792:  SUBS            R4, R1, R0
F1794:  CMP             R4, #2
F1796:  MOV             R4, R0
F1798:  BLT             loc_F17B6
F179A:  LDR             R4, [R7,#arg_0]
F179C:  ANDS.W          R4, R4, #4
F17A0:  MOV             R4, R0
F17A2:  BEQ             loc_F17B6
F17A4:  LDRB            R4, [R0]
F17A6:  CMP             R4, #0xFF
F17A8:  MOV             R4, R0
F17AA:  BNE             loc_F17B6
F17AC:  LDRB            R4, [R0,#1]
F17AE:  CMP             R4, #0xFE
F17B0:  MOV             R4, R0
F17B2:  IT EQ
F17B4:  ADDEQ           R4, #2
F17B6:  SUB.W           LR, R1, #1
F17BA:  MOV.W           R8, #0
F17BE:  MOV.W           R12, #0xFC00
F17C2:  B               loc_F181A
F17C4:  LDRB            R6, [R4,#1]
F17C6:  LDRB.W          R10, [R4]
F17CA:  AND.W           R5, R12, R6,LSL#8
F17CE:  ORR.W           R9, R10, R6,LSL#8
F17D2:  CMP.W           R5, #0xD800
F17D6:  BEQ             loc_F17E6
F17D8:  CMP.W           R5, #0xDC00
F17DC:  BEQ             loc_F1822
F17DE:  CMP             R9, R3
F17E0:  BHI             loc_F1822
F17E2:  ADDS            R4, #2
F17E4:  B               loc_F1816
F17E6:  SUBS            R5, R1, R4
F17E8:  CMP             R5, #4
F17EA:  BLT             loc_F1822
F17EC:  LDRB            R5, [R4,#3]
F17EE:  AND.W           R6, R5, #0xFC
F17F2:  CMP             R6, #0xDC
F17F4:  BNE             loc_F1822
F17F6:  LDRB            R6, [R4,#2]
F17F8:  AND.W           R9, R9, #0x3C0
F17FC:  BFI.W           R6, R5, #8, #2
F1800:  MOV.W           R5, R10,LSL#10
F1804:  UXTH            R5, R5
F1806:  ORR.W           R5, R5, R9,LSL#10
F180A:  ADD             R5, R6
F180C:  ADD.W           R5, R5, #0x10000
F1810:  CMP             R5, R3
F1812:  BHI             loc_F1822
F1814:  ADDS            R4, #4
F1816:  ADD.W           R8, R8, #1
F181A:  CMP             R4, LR
F181C:  IT CC
F181E:  CMPCC           R8, R2
F1820:  BCC             loc_F17C4
F1822:  SUBS            R0, R4, R0
F1824:  POP.W           {R8-R10}
F1828:  POP             {R4-R7,PC}
