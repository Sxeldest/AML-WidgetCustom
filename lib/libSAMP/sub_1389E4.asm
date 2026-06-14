; =========================================================
; Game Engine Function: sub_1389E4
; Address            : 0x1389E4 - 0x138A64
; =========================================================

1389E4:  PUSH            {R4,R6,R7,LR}
1389E6:  ADD             R7, SP, #8
1389E8:  MOV             R4, R0
1389EA:  BL              sub_F0B30
1389EE:  LDR             R1, =(dword_3141F8 - 0x1389F4)
1389F0:  ADD             R1, PC; dword_3141F8
1389F2:  LDR             R1, [R1]
1389F4:  SUBS            R0, R0, R1
1389F6:  CMP.W           R0, #0x1F4
1389FA:  BHI             locret_138A16
1389FC:  LDR             R0, =(dword_239028 - 0x138A04)
1389FE:  LDR             R1, [R4,#0x74]
138A00:  ADD             R0, PC; dword_239028
138A02:  LDR             R0, [R0]
138A04:  CMP             R0, R1
138A06:  BNE             loc_138A18
138A08:  LDR             R0, =(off_2349A8 - 0x138A0E)
138A0A:  ADD             R0, PC; off_2349A8
138A0C:  LDR             R0, [R0]; dword_381BF4
138A0E:  LDR             R0, [R0]
138A10:  LDRB.W          R1, [R0,#0x6B]
138A14:  CBZ             R1, loc_138A2C
138A16:  POP             {R4,R6,R7,PC}
138A18:  LDR             R0, =(word_3141DC - 0x138A1E)
138A1A:  ADD             R0, PC; word_3141DC
138A1C:  LDRB            R2, [R0,#(word_3141DC+1 - 0x3141DC)]
138A1E:  CBZ             R2, loc_138A4E
138A20:  STR             R1, [R0,#(dword_3141E0 - 0x3141DC)]
138A22:  MOVS            R0, #0
138A24:  POP.W           {R4,R6,R7,LR}
138A28:  B.W             sub_138038
138A2C:  LDRB.W          R0, [R0,#0x6A]
138A30:  CMP             R0, #0
138A32:  IT NE
138A34:  POPNE           {R4,R6,R7,PC}
138A36:  LDR             R0, =(off_234A24 - 0x138A3E)
138A38:  MOVS            R2, #8; n
138A3A:  ADD             R0, PC; off_234A24
138A3C:  LDR             R0, [R0]; dword_23DEEC
138A3E:  LDR             R0, [R0]
138A40:  LDR             R1, =(aAzvoice_1 - 0x138A46); "/azvoice" ...
138A42:  ADD             R1, PC; "/azvoice"
138A44:  LDR             R0, [R0,#0x60]; int
138A46:  POP.W           {R4,R6,R7,LR}
138A4A:  B.W             sub_12DBAC
138A4E:  LDRB            R1, [R0,#(byte_3141E4 - 0x3141DC)]
138A50:  EOR.W           R2, R1, #1
138A54:  STRB            R2, [R0,#(byte_3141E4 - 0x3141DC)]
138A56:  CMP             R1, #0
138A58:  ITE NE
138A5A:  MOVNE           R1, #0
138A5C:  LDRBEQ.W        R1, [R4,#0x70]
138A60:  STRB            R1, [R0]
138A62:  POP             {R4,R6,R7,PC}
