; =========================================================
; Game Engine Function: sub_138770
; Address            : 0x138770 - 0x1387AC
; =========================================================

138770:  PUSH            {R4,R5,R7,LR}
138772:  ADD             R7, SP, #8
138774:  MOV             R5, R0
138776:  LDR             R0, =(byte_3141F4 - 0x13877E)
138778:  MOV             R4, R1
13877A:  ADD             R0, PC; byte_3141F4
13877C:  LDRB            R0, [R0]
13877E:  CBZ             R0, loc_1387A0
138780:  LDR             R0, =(word_3141DC - 0x138786)
138782:  ADD             R0, PC; word_3141DC
138784:  LDRB            R0, [R0,#(word_3141DC+1 - 0x3141DC)]
138786:  CBNZ            R0, loc_1387A0
138788:  BL              sub_F0B30
13878C:  LDR             R1, =(dword_3141F8 - 0x138792)
13878E:  ADD             R1, PC; dword_3141F8
138790:  LDR             R1, [R1]
138792:  SUBS            R0, R0, R1
138794:  CMP.W           R0, #0x1F4
138798:  ITT HI
13879A:  MOVHI           R0, #1
13879C:  BLHI            sub_138038
1387A0:  MOV             R0, R5
1387A2:  MOV             R1, R4
1387A4:  POP.W           {R4,R5,R7,LR}
1387A8:  B.W             sub_12C0B6
