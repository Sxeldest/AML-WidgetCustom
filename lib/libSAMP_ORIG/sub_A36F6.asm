; =========================================================
; Game Engine Function: sub_A36F6
; Address            : 0xA36F6 - 0xA37CC
; =========================================================

A36F6:  PUSH            {R4-R7,LR}
A36F8:  ADD             R7, SP, #0xC
A36FA:  PUSH.W          {R8}
A36FE:  SUB             SP, SP, #8
A3700:  MOV             R5, R0
A3702:  LDR             R0, [R0,#0x14]
A3704:  CMP             R0, R1
A3706:  BGE             loc_A37C4
A3708:  LDR             R0, [R5,#4]
A370A:  MOV             R4, R1
A370C:  MOVS            R1, #0xBF800000
A3712:  CMP             R0, R4
A3714:  STR             R1, [SP,#0x18+var_14]
A3716:  BGE             loc_A3750
A3718:  CMP             R0, #0
A371A:  ITTE NE
A371C:  ADDNE.W         R1, R0, R0,LSR#31
A3720:  ADDNE.W         R6, R0, R1,ASR#1
A3724:  MOVEQ           R6, #8
A3726:  CMP             R6, R4
A3728:  IT LE
A372A:  MOVLE           R6, R4
A372C:  CMP             R0, R6
A372E:  BGE             loc_A3750
A3730:  LSLS            R0, R6, #2
A3732:  BL              sub_885E4
A3736:  LDR             R1, [R5,#8]; src
A3738:  MOV             R8, R0
A373A:  CBZ             R1, loc_A374C
A373C:  LDR             R0, [R5]
A373E:  LSLS            R2, R0, #2; n
A3740:  MOV             R0, R8; dest
A3742:  BLX             j_memcpy
A3746:  LDR             R0, [R5,#8]
A3748:  BL              sub_88614
A374C:  STRD.W          R6, R8, [R5,#4]
A3750:  LDR             R0, [R5]
A3752:  CMP             R0, R4
A3754:  BGE             loc_A3764
A3756:  LDR             R1, [SP,#0x18+var_14]
A3758:  LDR             R2, [R5,#8]
A375A:  STR.W           R1, [R2,R0,LSL#2]
A375E:  ADDS            R0, #1
A3760:  CMP             R4, R0
A3762:  BNE             loc_A3758
A3764:  LDR             R0, [R5,#0x18]
A3766:  MOVW            R1, #0xFFFF
A376A:  STR             R4, [R5]
A376C:  CMP             R0, R4
A376E:  STRH.W          R1, [R7,#var_16]
A3772:  BGE             loc_A37AC
A3774:  CMP             R0, #0
A3776:  ITTE NE
A3778:  ADDNE.W         R1, R0, R0,LSR#31
A377C:  ADDNE.W         R6, R0, R1,ASR#1
A3780:  MOVEQ           R6, #8
A3782:  CMP             R6, R4
A3784:  IT LE
A3786:  MOVLE           R6, R4
A3788:  CMP             R0, R6
A378A:  BGE             loc_A37AC
A378C:  LSLS            R0, R6, #1
A378E:  BL              sub_885E4
A3792:  LDR             R1, [R5,#0x1C]; src
A3794:  MOV             R8, R0
A3796:  CBZ             R1, loc_A37A8
A3798:  LDR             R0, [R5,#0x14]
A379A:  LSLS            R2, R0, #1; n
A379C:  MOV             R0, R8; dest
A379E:  BLX             j_memcpy
A37A2:  LDR             R0, [R5,#0x1C]
A37A4:  BL              sub_88614
A37A8:  STRD.W          R6, R8, [R5,#0x18]
A37AC:  LDR             R0, [R5,#0x14]
A37AE:  CMP             R0, R4
A37B0:  BGE             loc_A37C2
A37B2:  LDRH.W          R1, [R7,#var_16]
A37B6:  LDR             R2, [R5,#0x1C]
A37B8:  STRH.W          R1, [R2,R0,LSL#1]
A37BC:  ADDS            R0, #1
A37BE:  CMP             R4, R0
A37C0:  BNE             loc_A37B6
A37C2:  STR             R4, [R5,#0x14]
A37C4:  ADD             SP, SP, #8
A37C6:  POP.W           {R8}
A37CA:  POP             {R4-R7,PC}
