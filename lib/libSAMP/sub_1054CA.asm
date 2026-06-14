; =========================================================
; Game Engine Function: sub_1054CA
; Address            : 0x1054CA - 0x105540
; =========================================================

1054CA:  LDR             R0, [R0,#0x5C]
1054CC:  LDR.W           R1, [R0,#0x44C]
1054D0:  CMP             R1, #0x32 ; '2'
1054D2:  BNE             loc_10553A
1054D4:  LDR.W           R1, [R0,#0x590]
1054D8:  CBZ             R1, loc_10553A
1054DA:  LDR.W           R2, [R1,#0x464]
1054DE:  CMP             R2, R0
1054E0:  ITT EQ
1054E2:  MOVEQ           R0, #0
1054E4:  BXEQ            LR
1054E6:  LDR.W           R2, [R1,#0x468]
1054EA:  CMP             R2, R0
1054EC:  ITT EQ
1054EE:  MOVEQ           R0, #1
1054F0:  BXEQ            LR
1054F2:  LDR.W           R2, [R1,#0x46C]
1054F6:  CMP             R2, R0
1054F8:  ITT EQ
1054FA:  MOVEQ           R0, #2
1054FC:  BXEQ            LR
1054FE:  LDR.W           R2, [R1,#0x470]
105502:  CMP             R2, R0
105504:  ITT EQ
105506:  MOVEQ           R0, #3
105508:  BXEQ            LR
10550A:  LDR.W           R2, [R1,#0x474]
10550E:  CMP             R2, R0
105510:  ITT EQ
105512:  MOVEQ           R0, #4
105514:  BXEQ            LR
105516:  LDR.W           R2, [R1,#0x478]
10551A:  CMP             R2, R0
10551C:  ITT EQ
10551E:  MOVEQ           R0, #5
105520:  BXEQ            LR
105522:  LDR.W           R2, [R1,#0x47C]
105526:  CMP             R2, R0
105528:  ITT EQ
10552A:  MOVEQ           R0, #6
10552C:  BXEQ            LR
10552E:  LDR.W           R1, [R1,#0x480]
105532:  CMP             R1, R0
105534:  ITT EQ
105536:  MOVEQ           R0, #7
105538:  BXEQ            LR
10553A:  MOV.W           R0, #0xFFFFFFFF
10553E:  BX              LR
