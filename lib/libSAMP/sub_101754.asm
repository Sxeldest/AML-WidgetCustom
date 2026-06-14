; =========================================================
; Game Engine Function: sub_101754
; Address            : 0x101754 - 0x101802
; =========================================================

101754:  MOVS            R0, #0
101756:  CMP             R1, #0x4F ; 'O'
101758:  BGT             loc_10176E
10175A:  CMP             R1, #0x27 ; '''
10175C:  BLE             loc_101782
10175E:  CMP             R1, #0x3B ; ';'
101760:  BGT             loc_1017AA
101762:  CMP             R1, #0x28 ; '('
101764:  BEQ             loc_1017CA
101766:  CMP             R1, #0x32 ; '2'
101768:  BNE             locret_101800
10176A:  MOVS            R0, #0x40 ; '@'
10176C:  B               loc_1017CC
10176E:  CMP             R1, #0x6D ; 'm'
101770:  BLE             loc_101794
101772:  CMP             R1, #0x81
101774:  BGT             loc_1017B6
101776:  CMP             R1, #0x6E ; 'n'
101778:  BEQ             loc_1017D0
10177A:  CMP             R1, #0x78 ; 'x'
10177C:  BNE             locret_101800
10177E:  MOVS            R0, #0x80
101780:  B               loc_1017F6
101782:  CMP             R1, #0xA
101784:  BEQ             loc_1017D4
101786:  CMP             R1, #0x14
101788:  BEQ             loc_1017DA
10178A:  CMP             R1, #0x1E
10178C:  BNE             locret_101800
10178E:  MOVS            R1, #0x40 ; '@'
101790:  MOVS            R0, #0x40 ; '@'
101792:  B               loc_1017FA
101794:  CMP             R1, #0x50 ; 'P'
101796:  BEQ             loc_1017E0
101798:  CMP             R1, #0x5A ; 'Z'
10179A:  BEQ             loc_1017E4
10179C:  CMP             R1, #0x64 ; 'd'
10179E:  BNE             locret_101800
1017A0:  MOV.W           R1, #0x100
1017A4:  MOV.W           R0, #0x100
1017A8:  B               loc_1017FA
1017AA:  CMP             R1, #0x3C ; '<'
1017AC:  BEQ             loc_1017EC
1017AE:  CMP             R1, #0x46 ; 'F'
1017B0:  BNE             locret_101800
1017B2:  MOVS            R0, #0x20 ; ' '
1017B4:  B               loc_1017E6
1017B6:  CMP             R1, #0x82
1017B8:  BEQ             loc_1017F2
1017BA:  CMP             R1, #0x8C
1017BC:  IT NE
1017BE:  BXNE            LR
1017C0:  MOV.W           R1, #0x200
1017C4:  MOV.W           R0, #0x200
1017C8:  B               loc_1017FA
1017CA:  MOVS            R0, #0x20 ; ' '
1017CC:  MOVS            R1, #0x80
1017CE:  B               loc_1017FA
1017D0:  MOVS            R0, #0x40 ; '@'
1017D2:  B               loc_1017F6
1017D4:  MOVS            R1, #0x20 ; ' '
1017D6:  MOVS            R0, #0x20 ; ' '
1017D8:  B               loc_1017FA
1017DA:  MOVS            R0, #0x20 ; ' '
1017DC:  MOVS            R1, #0x40 ; '@'
1017DE:  B               loc_1017FA
1017E0:  MOVS            R0, #0x40 ; '@'
1017E2:  B               loc_1017E6
1017E4:  MOVS            R0, #0x80
1017E6:  MOV.W           R1, #0x100
1017EA:  B               loc_1017FA
1017EC:  MOVS            R1, #0x80
1017EE:  MOVS            R0, #0x80
1017F0:  B               loc_1017FA
1017F2:  MOV.W           R0, #0x100
1017F6:  MOV.W           R1, #0x200
1017FA:  STR             R1, [R2]
1017FC:  STR             R0, [R3]
1017FE:  MOVS            R0, #1
101800:  BX              LR
