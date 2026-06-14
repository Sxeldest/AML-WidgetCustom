; =========================================================
; Game Engine Function: sub_21D784
; Address            : 0x21D784 - 0x21D7CA
; =========================================================

21D784:  PUSH            {R4,R5,R7,LR}
21D786:  ADD             R7, SP, #8
21D788:  MOV             R5, R0
21D78A:  LDR             R0, [R0,#8]
21D78C:  MOV             R4, R1
21D78E:  LDRB            R1, [R0,#4]
21D790:  CMP             R1, #0xA
21D792:  BNE             loc_21D79E
21D794:  BL              sub_21D7D4
21D798:  CBZ             R0, loc_21D79C
21D79A:  POP             {R4,R5,R7,PC}
21D79C:  LDR             R0, [R5,#8]
21D79E:  MOV             R1, R4
21D7A0:  BL              sub_217AF6
21D7A4:  CBNZ            R0, loc_21D7B0
21D7A6:  LDR             R0, [R5,#8]
21D7A8:  MOV             R1, R4
21D7AA:  BL              sub_217B0A
21D7AE:  CBZ             R0, loc_21D7BC
21D7B0:  LDR             R1, =(unk_901C1 - 0x21D7B8)
21D7B2:  MOV             R0, R4
21D7B4:  ADD             R1, PC; unk_901C1
21D7B6:  ADDS            R2, R1, #1
21D7B8:  BL              sub_216F98
21D7BC:  LDR             R0, [R5,#8]
21D7BE:  LDR             R1, [R0]
21D7C0:  LDR             R2, [R1,#0x14]
21D7C2:  MOV             R1, R4
21D7C4:  POP.W           {R4,R5,R7,LR}
21D7C8:  BX              R2
