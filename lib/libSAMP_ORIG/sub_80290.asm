; =========================================================
; Game Engine Function: sub_80290
; Address            : 0x80290 - 0x802E0
; =========================================================

80290:  PUSH            {R7,LR}
80292:  MOV             R7, SP
80294:  LDR             R0, =(byte_1A49B4 - 0x8029A)
80296:  ADD             R0, PC; byte_1A49B4
80298:  LDRB            R0, [R0]
8029A:  CMP             R0, #0
8029C:  IT EQ
8029E:  POPEQ           {R7,PC}
802A0:  LDR             R0, =(off_114AA8 - 0x802A8)
802A2:  LDR             R1, =(off_114CF8 - 0x802AA)
802A4:  ADD             R0, PC; off_114AA8
802A6:  ADD             R1, PC; off_114CF8
802A8:  LDR             R0, [R0]; dword_1A4404
802AA:  LDR             R1, [R1]; off_1ABF14
802AC:  LDR             R3, [R0]
802AE:  MOVW            R0, #0x28D4
802B2:  LDR.W           R12, [R1]
802B6:  MOVW            R1, #0x28C4
802BA:  MOVT            R0, #0x95
802BE:  MOVT            R1, #0x95
802C2:  ADDS            R2, R3, R1
802C4:  MOVW            R1, #0x28B4
802C8:  ADD             R0, R3
802CA:  MOVT            R1, #0x95
802CE:  ADD             R3, R1
802D0:  MOVS            R1, #0
802D2:  BLX             R12
802D4:  LDR             R0, =(off_114CFC - 0x802DA)
802D6:  ADD             R0, PC; off_114CFC
802D8:  LDR             R0, [R0]; off_1ABF18
802DA:  LDR             R0, [R0]
802DC:  BLX             R0
802DE:  POP             {R7,PC}
