; =========================================================
; Game Engine Function: sub_102FBC
; Address            : 0x102FBC - 0x102FFA
; =========================================================

102FBC:  PUSH            {R7,LR}
102FBE:  MOV             R7, SP
102FC0:  LDR             R1, =(off_234A74 - 0x102FC6)
102FC2:  ADD             R1, PC; off_234A74
102FC4:  LDR             R1, [R1]; dword_2402E4
102FC6:  LDR             R1, [R1]
102FC8:  LDR             R1, [R1]
102FCA:  CBZ             R1, loc_102FE2
102FCC:  LDR             R0, =(unk_25B22C - 0x102FD6)
102FCE:  RSB.W           R1, R1, R1,LSL#3
102FD2:  ADD             R0, PC; unk_25B22C
102FD4:  ADD.W           R0, R0, R1,LSL#2
102FD8:  LDRB            R0, [R0,#0xB]
102FDA:  CMP             R0, #0
102FDC:  IT NE
102FDE:  MOVNE           R0, #0xFF
102FE0:  POP             {R7,PC}
102FE2:  LDR             R1, =(off_25C97C - 0x102FE8)
102FE4:  ADD             R1, PC; off_25C97C
102FE6:  LDR             R1, [R1]
102FE8:  BLX             R1
102FEA:  LDR             R1, =(word_25B210 - 0x102FF8)
102FEC:  MOV             R2, R0
102FEE:  CMP             R0, #0
102FF0:  IT NE
102FF2:  MOVNE           R2, #1
102FF4:  ADD             R1, PC; word_25B210
102FF6:  STRB            R2, [R1,#(byte_25B21B - 0x25B210)]
102FF8:  POP             {R7,PC}
