; =========================================================
; Game Engine Function: _ZN9CPathFind9CheckGridEv
; Address            : 0x31647E - 0x3164B2
; =========================================================

31647E:  PUSH            {R7,LR}
316480:  MOV             R7, SP
316482:  MOVS            R1, #0
316484:  MOVW            R12, #0x1104
316488:  MOVW            LR, #0x1224
31648C:  B               loc_316496
31648E:  ADDS            R1, #1
316490:  CMP             R1, #0x40 ; '@'
316492:  IT EQ
316494:  POPEQ           {R7,PC}
316496:  ADD.W           R2, R0, R1,LSL#2
31649A:  LDR.W           R3, [R2,R12]
31649E:  LDR.W           R2, [R2,LR]
3164A2:  ADD             R2, R3
3164A4:  CMP             R2, #1
3164A6:  BLT             loc_31648E
3164A8:  MOVS            R3, #0
3164AA:  ADDS            R3, #1
3164AC:  CMP             R3, R2
3164AE:  BLT             loc_3164AA
3164B0:  B               loc_31648E
