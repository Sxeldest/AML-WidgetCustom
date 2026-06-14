; =========================================================
; Game Engine Function: sub_102DBC
; Address            : 0x102DBC - 0x102E00
; =========================================================

102DBC:  PUSH            {R7,LR}
102DBE:  MOV             R7, SP
102DC0:  LDR             R1, =(off_234A74 - 0x102DC6)
102DC2:  ADD             R1, PC; off_234A74
102DC4:  LDR             R1, [R1]; dword_2402E4
102DC6:  LDR             R1, [R1]
102DC8:  LDR             R1, [R1]
102DCA:  CBZ             R1, loc_102DE4
102DCC:  LDR             R0, =(unk_25B22C - 0x102DD6)
102DCE:  RSB.W           R1, R1, R1,LSL#3
102DD2:  ADD             R0, PC; unk_25B22C
102DD4:  ADD.W           R0, R0, R1,LSL#2
102DD8:  LDRB            R1, [R0,#0xB]
102DDA:  CBZ             R1, loc_102DFC
102DDC:  LDRB            R1, [R0,#8]
102DDE:  CBZ             R1, loc_102DFC
102DE0:  MOVS            R0, #2
102DE2:  POP             {R7,PC}
102DE4:  LDR             R1, =(off_25C960 - 0x102DEA)
102DE6:  ADD             R1, PC; off_25C960
102DE8:  LDR             R1, [R1]
102DEA:  BLX             R1
102DEC:  LDR             R1, =(word_25B210 - 0x102DFA)
102DEE:  MOV             R2, R0
102DF0:  CMP             R0, #0
102DF2:  IT NE
102DF4:  MOVNE           R2, #1
102DF6:  ADD             R1, PC; word_25B210
102DF8:  STRB            R2, [R1,#(byte_25B216 - 0x25B210)]
102DFA:  POP             {R7,PC}
102DFC:  LDRB            R0, [R0,#6]
102DFE:  POP             {R7,PC}
