; =========================================================
; Game Engine Function: sub_102CA8
; Address            : 0x102CA8 - 0x102CE4
; =========================================================

102CA8:  PUSH            {R7,LR}
102CAA:  MOV             R7, SP
102CAC:  LDR             R1, =(off_234A74 - 0x102CB2)
102CAE:  ADD             R1, PC; off_234A74
102CB0:  LDR             R1, [R1]; dword_2402E4
102CB2:  LDR             R1, [R1]
102CB4:  LDR             R1, [R1]
102CB6:  CBZ             R1, loc_102CCE
102CB8:  LDR             R0, =(unk_25B22C - 0x102CC2)
102CBA:  RSB.W           R1, R1, R1,LSL#3
102CBE:  ADD             R0, PC; unk_25B22C
102CC0:  ADD.W           R0, R0, R1,LSL#2
102CC4:  LDRB            R0, [R0,#9]
102CC6:  CMP             R0, #0
102CC8:  IT NE
102CCA:  MOVNE           R0, #1
102CCC:  POP             {R7,PC}
102CCE:  LDR             R1, =(off_25C950 - 0x102CD4)
102CD0:  ADD             R1, PC; off_25C950
102CD2:  LDR             R1, [R1]
102CD4:  BLX             R1
102CD6:  LDR             R1, =(word_25B210 - 0x102CE2)
102CD8:  CMP             R0, #0
102CDA:  IT NE
102CDC:  MOVNE           R0, #1
102CDE:  ADD             R1, PC; word_25B210
102CE0:  STRB            R0, [R1,#(byte_25B219 - 0x25B210)]
102CE2:  POP             {R7,PC}
