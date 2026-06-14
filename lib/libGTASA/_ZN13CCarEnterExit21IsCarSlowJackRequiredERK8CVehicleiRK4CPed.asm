; =========================================================
; Game Engine Function: _ZN13CCarEnterExit21IsCarSlowJackRequiredERK8CVehicleiRK4CPed
; Address            : 0x508800 - 0x508880
; =========================================================

508800:  MOV             R2, R0
508802:  LDR.W           R0, [R2,#0x5A0]
508806:  CMP             R0, #9
508808:  BEQ             loc_50882A
50880A:  LDR.W           R0, [R2,#0x388]
50880E:  LDRB.W          R3, [R0,#0xCD]
508812:  LSLS            R3, R3, #0x1E
508814:  BMI             loc_50882A
508816:  LDRB.W          R0, [R0,#0xDE]
50881A:  SUBS            R0, #0xF
50881C:  CMP             R0, #1
50881E:  BHI             loc_508854
508820:  CMP             R1, #0xA
508822:  ITT NE
508824:  MOVNE           R0, #0
508826:  BXNE            LR
508828:  B               loc_508868; jumptable 00508860 case 2
50882A:  MOVS            R0, #0
50882C:  CMP             R1, #0x12
50882E:  BHI             locret_508852
508830:  MOVS            R3, #1
508832:  LSL.W           R1, R3, R1
508836:  MOV             R3, #0x40500
50883E:  TST             R1, R3
508840:  BNE             loc_508868; jumptable 00508860 case 2
508842:  TST.W           R1, #0xA00
508846:  IT EQ
508848:  BXEQ            LR
50884A:  B               loc_50886E; jumptable 00508860 case 0
50884C:  CMP             R0, #0
50884E:  IT NE
508850:  MOVNE           R0, #1
508852:  BX              LR
508854:  SUB.W           R0, R1, #8
508858:  CMP             R0, #3
50885A:  ITT HI
50885C:  MOVHI           R0, #0
50885E:  BXHI            LR
508860:  TBB.W           [PC,R0]; switch 4 cases
508864:  DCB 5; jump table for switch statement
508865:  DCB 8
508866:  DCB 2
508867:  DCB 0xB
508868:  LDR.W           R0, [R2,#0x464]; jumptable 00508860 case 2
50886C:  B               loc_50884C
50886E:  LDR.W           R0, [R2,#0x468]; jumptable 00508860 case 0
508872:  B               loc_50884C
508874:  LDR.W           R0, [R2,#0x470]; jumptable 00508860 case 1
508878:  B               loc_50884C
50887A:  LDR.W           R0, [R2,#0x46C]; jumptable 00508860 case 3
50887E:  B               loc_50884C
