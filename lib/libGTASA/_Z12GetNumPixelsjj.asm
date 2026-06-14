; =========================================================
; Game Engine Function: _Z12GetNumPixelsjj
; Address            : 0x1B37E6 - 0x1B3830
; =========================================================

1B37E6:  PUSH            {R7,LR}
1B37E8:  MOV             R7, SP
1B37EA:  MOV             LR, R0
1B37EC:  CMP.W           LR, #1
1B37F0:  MUL.W           R0, R1, LR
1B37F4:  IT EQ
1B37F6:  CMPEQ           R1, #1
1B37F8:  BEQ             locret_1B382E
1B37FA:  MOV.W           R12, #0
1B37FE:  B               loc_1B380A
1B3800:  CMP             R3, #1
1B3802:  MOV             R1, R3
1B3804:  MOV             LR, R2
1B3806:  IT EQ
1B3808:  POPEQ           {R7,PC}
1B380A:  MOV.W           R2, LR,LSR#1
1B380E:  CMP.W           R12, LR,LSR#1
1B3812:  IT EQ
1B3814:  MOVEQ           R2, #1
1B3816:  LSRS            R3, R1, #1
1B3818:  CMP.W           R12, R1,LSR#1
1B381C:  MOV             LR, R2
1B381E:  IT EQ
1B3820:  MOVEQ           R3, #1
1B3822:  CMP             R2, #1
1B3824:  MLA.W           R0, R3, R2, R0
1B3828:  MOV             R1, R3
1B382A:  BEQ             loc_1B3800
1B382C:  B               loc_1B380A
1B382E:  POP             {R7,PC}
