; =========================================================
; Game Engine Function: png_do_packswap
; Address            : 0x20348C - 0x2034C6
; =========================================================

20348C:  LDRB            R2, [R0,#9]
20348E:  CMP             R2, #7
203490:  BHI             locret_2034C4
203492:  LDR             R0, [R0,#4]
203494:  CMP             R2, #1
203496:  BEQ             loc_2034A6
203498:  CMP             R2, #4
20349A:  BEQ             loc_2034AC
20349C:  CMP             R2, #2
20349E:  BNE             locret_2034C4
2034A0:  LDR             R2, =(unk_5EF164 - 0x2034A6)
2034A2:  ADD             R2, PC; unk_5EF164
2034A4:  B               loc_2034B0
2034A6:  LDR             R2, =(unk_5EF064 - 0x2034AC)
2034A8:  ADD             R2, PC; unk_5EF064
2034AA:  B               loc_2034B0
2034AC:  LDR             R2, =(unk_5EF264 - 0x2034B2)
2034AE:  ADD             R2, PC; unk_5EF264
2034B0:  CMP             R0, #1
2034B2:  IT LT
2034B4:  BXLT            LR
2034B6:  ADD             R0, R1
2034B8:  LDRB            R3, [R1]
2034BA:  LDRB            R3, [R2,R3]
2034BC:  STRB.W          R3, [R1],#1
2034C0:  CMP             R1, R0
2034C2:  BCC             loc_2034B8
2034C4:  BX              LR
