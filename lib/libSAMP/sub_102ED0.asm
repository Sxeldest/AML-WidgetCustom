; =========================================================
; Game Engine Function: sub_102ED0
; Address            : 0x102ED0 - 0x102F0E
; =========================================================

102ED0:  PUSH            {R7,LR}
102ED2:  MOV             R7, SP
102ED4:  LDR             R1, =(off_234A74 - 0x102EDA)
102ED6:  ADD             R1, PC; off_234A74
102ED8:  LDR             R1, [R1]; dword_2402E4
102EDA:  LDR             R1, [R1]
102EDC:  LDR             R1, [R1]
102EDE:  CBZ             R1, loc_102EF6
102EE0:  LDR             R0, =(unk_25B22C - 0x102EEA)
102EE2:  RSB.W           R1, R1, R1,LSL#3
102EE6:  ADD             R0, PC; unk_25B22C
102EE8:  ADD.W           R0, R0, R1,LSL#2
102EEC:  LDRB            R0, [R0,#7]
102EEE:  CMP             R0, #0
102EF0:  IT NE
102EF2:  MOVNE           R0, #0xFF
102EF4:  POP             {R7,PC}
102EF6:  LDR             R1, =(off_25C970 - 0x102EFC)
102EF8:  ADD             R1, PC; off_25C970
102EFA:  LDR             R1, [R1]
102EFC:  BLX             R1
102EFE:  LDR             R1, =(word_25B210 - 0x102F0C)
102F00:  MOV             R2, R0
102F02:  CMP             R0, #0
102F04:  IT NE
102F06:  MOVNE           R2, #1
102F08:  ADD             R1, PC; word_25B210
102F0A:  STRB            R2, [R1,#(byte_25B217 - 0x25B210)]
102F0C:  POP             {R7,PC}
