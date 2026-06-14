; =========================================================
; Game Engine Function: sub_102BC4
; Address            : 0x102BC4 - 0x102C00
; =========================================================

102BC4:  PUSH            {R7,LR}
102BC6:  MOV             R7, SP
102BC8:  LDR             R1, =(off_234A74 - 0x102BCE)
102BCA:  ADD             R1, PC; off_234A74
102BCC:  LDR             R1, [R1]; dword_2402E4
102BCE:  LDR             R1, [R1]
102BD0:  LDR             R1, [R1]
102BD2:  CBZ             R1, loc_102BEA
102BD4:  LDR             R0, =(unk_25B22C - 0x102BDE)
102BD6:  RSB.W           R1, R1, R1,LSL#3
102BDA:  ADD             R0, PC; unk_25B22C
102BDC:  ADD.W           R0, R0, R1,LSL#2
102BE0:  LDRB            R0, [R0,#9]
102BE2:  CMP             R0, #0
102BE4:  IT NE
102BE6:  MOVNE           R0, #1
102BE8:  POP             {R7,PC}
102BEA:  LDR             R1, =(off_25C944 - 0x102BF0)
102BEC:  ADD             R1, PC; off_25C944
102BEE:  LDR             R1, [R1]
102BF0:  BLX             R1
102BF2:  LDR             R1, =(word_25B210 - 0x102BFE)
102BF4:  CMP             R0, #0
102BF6:  IT NE
102BF8:  MOVNE           R0, #1
102BFA:  ADD             R1, PC; word_25B210
102BFC:  STRB            R0, [R1,#(byte_25B219 - 0x25B210)]
102BFE:  POP             {R7,PC}
