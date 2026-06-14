; =========================================================
; Game Engine Function: _Z19AssignBlockToPixelsIjEvPKhPT_jS3_
; Address            : 0x1B3680 - 0x1B379C
; =========================================================

1B3680:  PUSH            {R7,LR}
1B3682:  MOV             R7, SP
1B3684:  LDRB.W          R12, [R0,#4]
1B3688:  ADD.W           LR, R1, R2,LSL#2
1B368C:  AND.W           R12, R12, #3
1B3690:  LDR.W           R12, [R3,R12,LSL#2]
1B3694:  STR.W           R12, [R1]
1B3698:  LDRB.W          R12, [R0,#4]
1B369C:  AND.W           R12, R12, #0xC
1B36A0:  LDR.W           R12, [R3,R12]
1B36A4:  STR.W           R12, [R1,#4]
1B36A8:  LDRB.W          R12, [R0,#4]
1B36AC:  AND.W           R12, R12, #0x30 ; '0'
1B36B0:  MOV.W           R12, R12,LSR#2
1B36B4:  LDR.W           R12, [R3,R12]
1B36B8:  STR.W           R12, [R1,#8]
1B36BC:  LDRB.W          R12, [R0,#4]
1B36C0:  UBFX.W          R12, R12, #6, #2
1B36C4:  LDR.W           R12, [R3,R12,LSL#2]
1B36C8:  STR.W           R12, [R1,#0xC]
1B36CC:  LDRB.W          R12, [R0,#5]
1B36D0:  AND.W           R12, R12, #3
1B36D4:  LDR.W           R12, [R3,R12,LSL#2]
1B36D8:  STR.W           R12, [R1,R2,LSL#2]
1B36DC:  LDRB.W          R12, [R0,#5]
1B36E0:  AND.W           R12, R12, #0xC
1B36E4:  LDR.W           R12, [R3,R12]
1B36E8:  STR.W           R12, [LR,#4]
1B36EC:  LDRB.W          R12, [R0,#5]
1B36F0:  AND.W           R12, R12, #0x30 ; '0'
1B36F4:  MOV.W           R12, R12,LSR#2
1B36F8:  LDR.W           R12, [R3,R12]
1B36FC:  STR.W           R12, [LR,#8]
1B3700:  LDRB.W          R12, [R0,#5]
1B3704:  UBFX.W          R12, R12, #6, #2
1B3708:  LDR.W           R12, [R3,R12,LSL#2]
1B370C:  STR.W           R12, [LR,#0xC]
1B3710:  LDRB.W          R12, [R0,#6]
1B3714:  MOV.W           LR, #4
1B3718:  ORR.W           LR, LR, R2,LSL#3
1B371C:  AND.W           R12, R12, #3
1B3720:  LDR.W           R12, [R3,R12,LSL#2]
1B3724:  STR.W           R12, [R1,R2,LSL#3]
1B3728:  LDRB.W          R12, [R0,#6]
1B372C:  AND.W           R12, R12, #0xC
1B3730:  LDR.W           R12, [R3,R12]
1B3734:  STR.W           R12, [R1,LR]
1B3738:  ADD.W           LR, R1, R2,LSL#3
1B373C:  LDRB.W          R12, [R0,#6]
1B3740:  AND.W           R12, R12, #0x30 ; '0'
1B3744:  MOV.W           R12, R12,LSR#2
1B3748:  LDR.W           R12, [R3,R12]
1B374C:  STR.W           R12, [LR,#8]
1B3750:  LDRB.W          R12, [R0,#6]
1B3754:  UBFX.W          R12, R12, #6, #2
1B3758:  LDR.W           R12, [R3,R12,LSL#2]
1B375C:  STR.W           R12, [LR,#0xC]
1B3760:  LDRB.W          R12, [R0,#7]
1B3764:  ADD.W           LR, R2, R2,LSL#1
1B3768:  AND.W           R12, R12, #3
1B376C:  LDR.W           R12, [R3,R12,LSL#2]
1B3770:  STR.W           R12, [R1,LR,LSL#2]
1B3774:  ADD.W           R1, R1, LR,LSL#2
1B3778:  LDRB            R2, [R0,#7]
1B377A:  AND.W           R2, R2, #0xC
1B377E:  LDR             R2, [R3,R2]
1B3780:  STR             R2, [R1,#4]
1B3782:  LDRB            R2, [R0,#7]
1B3784:  AND.W           R2, R2, #0x30 ; '0'
1B3788:  LSRS            R2, R2, #2
1B378A:  LDR             R2, [R3,R2]
1B378C:  STR             R2, [R1,#8]
1B378E:  LDRB            R0, [R0,#7]
1B3790:  UBFX.W          R0, R0, #6, #2
1B3794:  LDR.W           R0, [R3,R0,LSL#2]
1B3798:  STR             R0, [R1,#0xC]
1B379A:  POP             {R7,PC}
