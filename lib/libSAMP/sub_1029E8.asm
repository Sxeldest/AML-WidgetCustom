; =========================================================
; Game Engine Function: sub_1029E8
; Address            : 0x1029E8 - 0x102A36
; =========================================================

1029E8:  PUSH            {R4,R6,R7,LR}
1029EA:  ADD             R7, SP, #8
1029EC:  LDR             R1, =(off_234A74 - 0x1029F2)
1029EE:  ADD             R1, PC; off_234A74
1029F0:  LDR             R1, [R1]; dword_2402E4
1029F2:  LDR             R1, [R1]
1029F4:  LDR             R1, [R1]
1029F6:  CBZ             R1, loc_102A1C
1029F8:  LDR             R0, =(unk_25B22C - 0x102A06)
1029FA:  RSB.W           R1, R1, R1,LSL#3
1029FE:  MOVW            R2, #0xFF80
102A02:  ADD             R0, PC; unk_25B22C
102A04:  ADD.W           R0, R0, R1,LSL#2
102A08:  LDRH            R1, [R0,#2]
102A0A:  CMP             R1, R2
102A0C:  IT NE
102A0E:  CMPNE           R1, #0x80
102A10:  BNE             loc_102A32
102A12:  LDRB            R0, [R0,#0xE]
102A14:  CMP             R0, #0
102A16:  IT NE
102A18:  MOVNE           R1, #0x40 ; '@'
102A1A:  B               loc_102A32
102A1C:  LDR             R1, =(off_25C92C - 0x102A22)
102A1E:  ADD             R1, PC; off_25C92C
102A20:  LDR             R1, [R1]
102A22:  BLX             R1
102A24:  LDR             R4, =(word_25B210 - 0x102A2A)
102A26:  ADD             R4, PC; word_25B210
102A28:  STRH            R0, [R4,#(word_25B212 - 0x25B210)]
102A2A:  BL              sub_102918
102A2E:  LDRH            R1, [R4,#(word_25B212 - 0x25B210)]
102A30:  STRB            R0, [R4,#(byte_25B21E - 0x25B210)]
102A32:  SXTH            R0, R1
102A34:  POP             {R4,R6,R7,PC}
