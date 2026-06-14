; =========================================================
; Game Engine Function: sub_1583E0
; Address            : 0x1583E0 - 0x158400
; =========================================================

1583E0:  PUSH            {R4,R6,R7,LR}
1583E2:  ADD             R7, SP, #8
1583E4:  MOV             R4, R0
1583E6:  LDRB            R0, [R0,#0x14]
1583E8:  LSLS            R0, R0, #0x1F
1583EA:  ITT NE
1583EC:  ADDNE.W         R0, R4, #0x18
1583F0:  BLNE            sub_151E72
1583F4:  LDR             R0, [R4]
1583F6:  LDR             R1, [R0,#4]
1583F8:  MOV             R0, R4
1583FA:  POP.W           {R4,R6,R7,LR}
1583FE:  BX              R1
