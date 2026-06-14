; =========================================================
; Game Engine Function: sub_102A48
; Address            : 0x102A48 - 0x102A84
; =========================================================

102A48:  PUSH            {R7,LR}
102A4A:  MOV             R7, SP
102A4C:  LDR             R2, =(off_234A74 - 0x102A52)
102A4E:  ADD             R2, PC; off_234A74
102A50:  LDR             R2, [R2]; dword_2402E4
102A52:  LDR             R2, [R2]
102A54:  LDR             R2, [R2]
102A56:  CBZ             R2, loc_102A6E
102A58:  LDR             R0, =(unk_25B22C - 0x102A62)
102A5A:  RSB.W           R1, R2, R2,LSL#3
102A5E:  ADD             R0, PC; unk_25B22C
102A60:  ADD.W           R0, R0, R1,LSL#2
102A64:  LDRB            R0, [R0,#7]
102A66:  CMP             R0, #0
102A68:  IT NE
102A6A:  MOVNE           R0, #1
102A6C:  POP             {R7,PC}
102A6E:  LDR             R2, =(off_25C930 - 0x102A74)
102A70:  ADD             R2, PC; off_25C930
102A72:  LDR             R2, [R2]
102A74:  BLX             R2
102A76:  LDR             R1, =(word_25B210 - 0x102A82)
102A78:  CMP             R0, #0
102A7A:  IT NE
102A7C:  MOVNE           R0, #1
102A7E:  ADD             R1, PC; word_25B210
102A80:  STRB            R0, [R1,#(byte_25B217 - 0x25B210)]
102A82:  POP             {R7,PC}
