; =========================================================
; Game Engine Function: sub_1345CC
; Address            : 0x1345CC - 0x134600
; =========================================================

1345CC:  PUSH            {R4,R6,R7,LR}
1345CE:  ADD             R7, SP, #8
1345D0:  LDR             R4, [R0,#4]
1345D2:  LDRB.W          R0, [R4,#0x50]
1345D6:  CBZ             R0, loc_1345E2
1345D8:  LDR             R0, [R4]
1345DA:  MOVS            R1, #0
1345DC:  LDR             R2, [R0,#0x24]
1345DE:  MOV             R0, R4
1345E0:  BLX             R2
1345E2:  LDR             R0, =(off_23496C - 0x1345EE)
1345E4:  MOVS            R1, #0
1345E6:  STRB.W          R1, [R4,#0x50]
1345EA:  ADD             R0, PC; off_23496C
1345EC:  LDR             R0, [R0]; dword_23DEF4
1345EE:  LDR             R0, [R0]
1345F0:  CBZ             R0, locret_1345FE
1345F2:  LDR             R1, =(aGps - 0x1345F8); "/gps" ...
1345F4:  ADD             R1, PC; "/gps"
1345F6:  POP.W           {R4,R6,R7,LR}
1345FA:  B.W             sub_144460
1345FE:  POP             {R4,R6,R7,PC}
