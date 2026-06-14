; =========================================================
; Game Engine Function: sub_103464
; Address            : 0x103464 - 0x1034A2
; =========================================================

103464:  PUSH            {R7,LR}
103466:  MOV             R7, SP
103468:  LDR             R1, =(off_234A74 - 0x10346E)
10346A:  ADD             R1, PC; off_234A74
10346C:  LDR             R1, [R1]; dword_2402E4
10346E:  LDR             R1, [R1]
103470:  LDR             R1, [R1]
103472:  CBZ             R1, loc_103488
103474:  LDR             R0, =(unk_25B22C - 0x10347E)
103476:  RSB.W           R1, R1, R1,LSL#3
10347A:  ADD             R0, PC; unk_25B22C
10347C:  ADD.W           R0, R0, R1,LSL#2
103480:  LDRB            R1, [R0,#0xC]
103482:  CBZ             R1, loc_10349E
103484:  LDRB            R0, [R0,#0xA]
103486:  POP             {R7,PC}
103488:  LDR             R1, =(off_25C9C4 - 0x10348E)
10348A:  ADD             R1, PC; off_25C9C4
10348C:  LDR             R1, [R1]
10348E:  BLX             R1
103490:  CBZ             R0, loc_10349E
103492:  LDR             R1, =(word_25B210 - 0x10349A)
103494:  MOVS            R2, #1
103496:  ADD             R1, PC; word_25B210
103498:  STRB            R2, [R1,#(byte_25B21A - 0x25B210)]
10349A:  STRB            R2, [R1,#(byte_25B21C - 0x25B210)]
10349C:  POP             {R7,PC}
10349E:  MOVS            R0, #0
1034A0:  POP             {R7,PC}
