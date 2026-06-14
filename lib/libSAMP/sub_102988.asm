; =========================================================
; Game Engine Function: sub_102988
; Address            : 0x102988 - 0x1029D8
; =========================================================

102988:  PUSH            {R4,R6,R7,LR}
10298A:  ADD             R7, SP, #8
10298C:  LDR             R1, =(off_234A74 - 0x102992)
10298E:  ADD             R1, PC; off_234A74
102990:  LDR             R1, [R1]; dword_2402E4
102992:  LDR             R1, [R1]
102994:  LDR             R1, [R1]
102996:  CBZ             R1, loc_1029BE
102998:  LDR             R0, =(unk_25B22C - 0x1029A6)
10299A:  RSB.W           R2, R1, R1,LSL#3
10299E:  MOVW            R3, #0xFF80
1029A2:  ADD             R0, PC; unk_25B22C
1029A4:  LDRH.W          R1, [R0,R2,LSL#2]
1029A8:  CMP             R1, R3
1029AA:  IT NE
1029AC:  CMPNE           R1, #0x80
1029AE:  BNE             loc_1029D4
1029B0:  ADD.W           R0, R0, R2,LSL#2
1029B4:  LDRB            R0, [R0,#0xE]
1029B6:  CMP             R0, #0
1029B8:  IT NE
1029BA:  MOVNE           R1, #0x40 ; '@'
1029BC:  B               loc_1029D4
1029BE:  LDR             R1, =(off_25C928 - 0x1029C4)
1029C0:  ADD             R1, PC; off_25C928
1029C2:  LDR             R1, [R1]
1029C4:  BLX             R1
1029C6:  LDR             R4, =(word_25B210 - 0x1029CC)
1029C8:  ADD             R4, PC; word_25B210
1029CA:  STRH            R0, [R4]
1029CC:  BL              sub_102918
1029D0:  LDRH            R1, [R4]
1029D2:  STRB            R0, [R4,#(byte_25B21E - 0x25B210)]
1029D4:  SXTH            R0, R1
1029D6:  POP             {R4,R6,R7,PC}
