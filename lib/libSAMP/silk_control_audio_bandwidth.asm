; =========================================================
; Game Engine Function: silk_control_audio_bandwidth
; Address            : 0x1A8938 - 0x1A8A6C
; =========================================================

1A8938:  PUSH            {R4-R7,LR}
1A893A:  ADD             R7, SP, #0xC
1A893C:  PUSH.W          {R11}
1A8940:  MOV             R6, R1
1A8942:  MOV.W           R1, #0x11E0
1A8946:  LDR             R5, [R0,R1]
1A8948:  MOVW            R1, #0xFFFF
1A894C:  CMP             R5, #0
1A894E:  IT EQ
1A8950:  LDREQ           R5, [R0,#0x20]
1A8952:  TST             R5, R1
1A8954:  BEQ             loc_1A8992
1A8956:  SXTH            R1, R5
1A8958:  MOV.W           R2, #0x3E8
1A895C:  SMULBB.W        R2, R1, R2
1A8960:  MOVW            R1, #0x11D4
1A8964:  MOVW            R3, #0x11CC
1A8968:  LDR             R1, [R0,R1]
1A896A:  LDR             R3, [R0,R3]
1A896C:  CMP             R2, R3
1A896E:  IT LE
1A8970:  CMPLE           R2, R1
1A8972:  BGT             loc_1A897E
1A8974:  MOVW            R4, #0x11D8
1A8978:  LDR             R4, [R0,R4]
1A897A:  CMP             R2, R4
1A897C:  BGE             loc_1A89BC
1A897E:  MOVW            R2, #0x11D8
1A8982:  CMP             R3, R1
1A8984:  LDR             R0, [R0,R2]
1A8986:  IT LT
1A8988:  MOVLT           R1, R3
1A898A:  CMP             R1, R0
1A898C:  IT LE
1A898E:  MOVLE           R1, R0
1A8990:  B               loc_1A89A4
1A8992:  MOVW            R1, #0x11CC
1A8996:  MOVW            R2, #0x11DC
1A899A:  LDR             R1, [R0,R1]
1A899C:  LDR             R0, [R0,R2]
1A899E:  CMP             R0, R1
1A89A0:  IT LT
1A89A2:  MOVLT           R1, R0
1A89A4:  MOV             R0, #0x10624DD3
1A89AC:  SMMUL.W         R0, R1, R0
1A89B0:  ASRS            R1, R0, #6
1A89B2:  ADD.W           R0, R1, R0,LSR#31
1A89B6:  POP.W           {R11}
1A89BA:  POP             {R4-R7,PC}
1A89BC:  LDR             R1, [R0,#0x18]
1A89BE:  CMP.W           R1, #0x100
1A89C2:  ITT GE
1A89C4:  MOVGE           R3, #0
1A89C6:  STRGE           R3, [R0,#0x1C]
1A89C8:  MOVW            R3, #0x11B8
1A89CC:  LDR             R3, [R0,R3]
1A89CE:  CMP             R3, #0
1A89D0:  ITT EQ
1A89D2:  LDREQ           R3, [R6,#0x40]
1A89D4:  CMPEQ           R3, #0
1A89D6:  BEQ             loc_1A8A64
1A89D8:  MOVW            R4, #0x11DC
1A89DC:  ADD.W           R3, R0, #0x10
1A89E0:  LDR             R4, [R0,R4]
1A89E2:  CMP             R2, R4
1A89E4:  BLE             loc_1A8A0E
1A89E6:  LDR             R2, [R0,#0x1C]
1A89E8:  CBNZ            R2, loc_1A89F6
1A89EA:  MOV.W           R1, #0x100
1A89EE:  MOVS            R2, #0
1A89F0:  STR             R1, [R0,#0x18]
1A89F2:  STRD.W          R2, R2, [R3]
1A89F6:  LDR             R2, [R6,#0x40]
1A89F8:  CBZ             R2, loc_1A8A3A
1A89FA:  MOVS            R1, #0
1A89FC:  CMP             R5, #0x10
1A89FE:  STR             R1, [R0,#0x1C]
1A8A00:  MOV.W           R0, #8
1A8A04:  IT EQ
1A8A06:  MOVEQ           R0, #0xC
1A8A08:  POP.W           {R11}
1A8A0C:  POP             {R4-R7,PC}
1A8A0E:  BGE             loc_1A8A30
1A8A10:  LDR             R1, [R6,#0x40]
1A8A12:  CBZ             R1, loc_1A8A44
1A8A14:  MOVS            R1, #0
1A8A16:  MOVS            R2, #1
1A8A18:  STRD.W          R1, R1, [R3]
1A8A1C:  CMP             R5, #8
1A8A1E:  STRD.W          R1, R2, [R0,#0x18]
1A8A22:  MOV.W           R0, #0x10
1A8A26:  IT EQ
1A8A28:  MOVEQ           R0, #0xC
1A8A2A:  POP.W           {R11}
1A8A2E:  POP             {R4-R7,PC}
1A8A30:  LDR             R1, [R0,#0x1C]
1A8A32:  CMP.W           R1, #0xFFFFFFFF
1A8A36:  BGT             loc_1A8A64
1A8A38:  B               loc_1A8A48
1A8A3A:  CMP             R1, #0
1A8A3C:  BLE             loc_1A8A4E
1A8A3E:  MOV             R1, #0xFFFFFFFE
1A8A42:  B               loc_1A8A4A
1A8A44:  LDR             R1, [R0,#0x1C]
1A8A46:  CBZ             R1, loc_1A8A4E
1A8A48:  MOVS            R1, #1
1A8A4A:  STR             R1, [R0,#0x1C]
1A8A4C:  B               loc_1A8A64
1A8A4E:  LDR             R4, [R6,#0x38]
1A8A50:  MOVS            R1, #1
1A8A52:  LDR             R0, [R6,#0x18]
1A8A54:  STR             R1, [R6,#0x58]
1A8A56:  ADDS            R1, R0, #5
1A8A58:  ADD.W           R0, R4, R4,LSL#2
1A8A5C:  BLX             sub_220A40
1A8A60:  SUBS            R0, R4, R0
1A8A62:  STR             R0, [R6,#0x38]
1A8A64:  MOV             R0, R5
1A8A66:  POP.W           {R11}
1A8A6A:  POP             {R4-R7,PC}
