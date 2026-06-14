; =========================================================
; Game Engine Function: sub_1616F8
; Address            : 0x1616F8 - 0x161780
; =========================================================

1616F8:  PUSH            {R4-R7,LR}
1616FA:  ADD             R7, SP, #0xC
1616FC:  PUSH.W          {R8,R9,R11}
161700:  SUB             SP, SP, #0x30
161702:  MOV             R8, R0
161704:  ADD             R0, SP, #0x48+var_24
161706:  MOV             R6, R3
161708:  MOV             R5, R2
16170A:  MOV             R9, R1
16170C:  BL              sub_F06B2
161710:  BL              sub_F0734
161714:  MOV             R4, R0
161716:  LDRB            R0, [R0]
161718:  LSLS            R0, R0, #0x1F
16171A:  BNE             loc_161722
16171C:  MOVS            R0, #0
16171E:  STRH            R0, [R4]
161720:  B               loc_161732
161722:  LDR             R0, [R4,#8]
161724:  MOVS            R1, #0
161726:  STRB            R1, [R0]
161728:  LDRB            R2, [R4]
16172A:  LDR             R0, [R4]
16172C:  STR             R1, [R4,#4]
16172E:  LSLS            R1, R2, #0x1F
161730:  BNE             loc_161736
161732:  MOVS            R2, #9
161734:  B               loc_16173C
161736:  SUBS            R0, #2
161738:  BIC.W           R2, R0, #1
16173C:  LDR             R0, [R6]
16173E:  MOVS            R1, #0
161740:  STRD.W          R0, R1, [SP,#0x48+var_20]
161744:  ADD             R0, SP, #0x48+var_20
161746:  MOVS            R3, #2
161748:  STRD.W          R0, R1, [SP,#0x48+var_38]
16174C:  ADD             R0, SP, #0x48+var_2C
16174E:  STRD.W          R3, R1, [SP,#0x48+var_40]
161752:  MOV             R1, R4
161754:  MOV             R3, R9
161756:  STR             R5, [SP,#0x48+var_48]
161758:  BL              sub_DCA40
16175C:  LDRB            R0, [R4]
16175E:  LDRD.W          R2, R1, [R4,#4]
161762:  ANDS.W          R3, R0, #1
161766:  ITT EQ
161768:  ADDEQ           R1, R4, #1; text
16176A:  LSREQ           R2, R0, #1
16176C:  MOV             R0, R8; int
16176E:  BL              sub_ED4F8
161772:  ADD             R0, SP, #0x48+var_24
161774:  BL              sub_F0720
161778:  ADD             SP, SP, #0x30 ; '0'
16177A:  POP.W           {R8,R9,R11}
16177E:  POP             {R4-R7,PC}
