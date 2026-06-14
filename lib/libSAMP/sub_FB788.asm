; =========================================================
; Game Engine Function: sub_FB788
; Address            : 0xFB788 - 0xFB7CA
; =========================================================

FB788:  PUSH            {R4,R6,R7,LR}
FB78A:  ADD             R7, SP, #8
FB78C:  LDR             R0, =(off_2473F4 - 0xFB794)
FB78E:  MOV             R4, LR
FB790:  ADD             R0, PC; off_2473F4
FB792:  LDR             R0, [R0]
FB794:  BLX             R0
FB796:  LDR             R0, =(off_23496C - 0xFB79C)
FB798:  ADD             R0, PC; off_23496C
FB79A:  LDR             R0, [R0]; dword_23DEF4
FB79C:  LDR             R0, [R0]
FB79E:  CBZ             R0, locret_FB7C8
FB7A0:  LDR             R1, =(off_23494C - 0xFB7AE)
FB7A2:  MOV             R3, #0x29E415
FB7AA:  ADD             R1, PC; off_23494C
FB7AC:  LDR             R1, [R1]; dword_23DF24
FB7AE:  LDR             R1, [R1]
FB7B0:  SUBS            R2, R4, R1
FB7B2:  CMP             R2, R3
FB7B4:  BNE             locret_FB7C8
FB7B6:  MOV             R2, #0x6E045C
FB7BE:  LDRB            R1, [R1,R2]
FB7C0:  POP.W           {R4,R6,R7,LR}
FB7C4:  B.W             sub_144AF8
FB7C8:  POP             {R4,R6,R7,PC}
