; =========================================================
; Game Engine Function: sub_103384
; Address            : 0x103384 - 0x1033C0
; =========================================================

103384:  PUSH            {R7,LR}
103386:  MOV             R7, SP
103388:  LDR             R2, =(off_234A74 - 0x10338E)
10338A:  ADD             R2, PC; off_234A74
10338C:  LDR             R2, [R2]; dword_2402E4
10338E:  LDR             R2, [R2]
103390:  LDR             R2, [R2]
103392:  CBZ             R2, loc_1033AA
103394:  LDR             R0, =(unk_25B22C - 0x10339E)
103396:  RSB.W           R1, R2, R2,LSL#3
10339A:  ADD             R0, PC; unk_25B22C
10339C:  ADD.W           R0, R0, R1,LSL#2
1033A0:  LDRB            R0, [R0,#0xC]
1033A2:  CMP             R0, #0
1033A4:  IT NE
1033A6:  MOVNE           R0, #1
1033A8:  POP             {R7,PC}
1033AA:  LDR             R2, =(off_25C9B8 - 0x1033B0)
1033AC:  ADD             R2, PC; off_25C9B8
1033AE:  LDR             R2, [R2]
1033B0:  BLX             R2
1033B2:  LDR             R1, =(word_25B210 - 0x1033BE)
1033B4:  CMP             R0, #0
1033B6:  IT NE
1033B8:  MOVNE           R0, #1
1033BA:  ADD             R1, PC; word_25B210
1033BC:  STRB            R0, [R1,#(byte_25B21C - 0x25B210)]
1033BE:  POP             {R7,PC}
