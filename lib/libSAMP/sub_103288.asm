; =========================================================
; Game Engine Function: sub_103288
; Address            : 0x103288 - 0x1032E6
; =========================================================

103288:  PUSH            {R7,LR}
10328A:  MOV             R7, SP
10328C:  LDR             R3, =(off_234A74 - 0x103292)
10328E:  ADD             R3, PC; off_234A74
103290:  LDR             R3, [R3]; dword_2402E4
103292:  LDR             R3, [R3]
103294:  LDR             R3, [R3]
103296:  CBZ             R3, loc_1032AE
103298:  LDR             R0, =(unk_25B22C - 0x1032A2)
10329A:  RSB.W           R1, R3, R3,LSL#3
10329E:  ADD             R0, PC; unk_25B22C
1032A0:  ADD.W           R0, R0, R1,LSL#2
1032A4:  LDRB            R1, [R0,#0x11]
1032A6:  CBNZ            R1, loc_1032C8
1032A8:  LDRB            R0, [R0,#0x12]
1032AA:  LSLS            R0, R0, #7
1032AC:  POP             {R7,PC}
1032AE:  LDR             R3, =(off_25C9B0 - 0x1032B4)
1032B0:  ADD             R3, PC; off_25C9B0
1032B2:  LDR             R3, [R3]
1032B4:  BLX             R3
1032B6:  CMP             R0, #0x80
1032B8:  BEQ             loc_1032CE
1032BA:  ADDS.W          R1, R0, #0x80
1032BE:  BNE             loc_1032DA
1032C0:  LDR             R0, =(word_25B210 - 0x1032C8)
1032C2:  MOVS            R1, #1
1032C4:  ADD             R0, PC; word_25B210
1032C6:  STRB            R1, [R0,#(word_25B221 - 0x25B210)]
1032C8:  MOV             R0, #0xFFFFFF80
1032CC:  POP             {R7,PC}
1032CE:  LDR             R0, =(word_25B210 - 0x1032D6)
1032D0:  MOVS            R1, #1
1032D2:  ADD             R0, PC; word_25B210
1032D4:  STRB            R1, [R0,#(word_25B221+1 - 0x25B210)]
1032D6:  MOVS            R0, #0x80
1032D8:  POP             {R7,PC}
1032DA:  LDR             R1, =(word_25B210 - 0x1032E2)
1032DC:  MOVS            R2, #0
1032DE:  ADD             R1, PC; word_25B210
1032E0:  STRH.W          R2, [R1,#(word_25B221 - 0x25B210)]
1032E4:  POP             {R7,PC}
