; =========================================================
; Game Engine Function: sub_1F67FC
; Address            : 0x1F67FC - 0x1F68B2
; =========================================================

1F67FC:  PUSH            {R4-R7,LR}
1F67FE:  ADD             R7, SP, #0xC
1F6800:  PUSH.W          {R11}
1F6804:  MOV             R4, R0
1F6806:  MOVS            R1, #1
1F6808:  LDR             R0, [R4]
1F680A:  LDRD.W          R5, R6, [R0]
1F680E:  MOV             R0, R5
1F6810:  BLX             j_png_set_benign_errors
1F6814:  MOV             R0, R5
1F6816:  MOV             R1, R6
1F6818:  BLX             j_png_read_info
1F681C:  LDR.W           R0, [R5,#0x1C0]
1F6820:  STR             R0, [R4,#8]
1F6822:  LDR.W           R0, [R5,#0x1C4]
1F6826:  STR             R0, [R4,#0xC]
1F6828:  LDRB.W          R1, [R5,#0x20F]
1F682C:  AND.W           R0, R1, #2
1F6830:  TST.W           R1, #4
1F6834:  BNE             loc_1F6844
1F6836:  LDRH.W          R2, [R5,#0x208]
1F683A:  CMP             R2, #0
1F683C:  IT NE
1F683E:  ORRNE.W         R0, R0, #1
1F6842:  B               loc_1F6848
1F6844:  ORR.W           R0, R0, #1
1F6848:  LDRB.W          R2, [R5,#0x210]
1F684C:  CMP             R2, #0x10
1F684E:  MOV.W           R2, #8
1F6852:  IT EQ
1F6854:  ORREQ.W         R0, R0, #4
1F6858:  AND.W           R1, R2, R1,LSL#3
1F685C:  TST.W           R0, #2
1F6860:  ORR.W           R1, R1, R0
1F6864:  STR             R1, [R4,#0x10]
1F6866:  BEQ             loc_1F687E
1F6868:  LDRH.W          R0, [R5,#0x3CA]
1F686C:  MOVW            R1, #0x8042
1F6870:  ANDS            R0, R1
1F6872:  CMP             R0, #2
1F6874:  ITTT EQ
1F6876:  LDREQ           R0, [R4,#0x14]
1F6878:  ORREQ.W         R0, R0, #1
1F687C:  STREQ           R0, [R4,#0x14]
1F687E:  LDRB.W          R0, [R5,#0x20F]
1F6882:  CMP             R0, #3
1F6884:  BEQ             loc_1F6894
1F6886:  CBNZ            R0, loc_1F689A
1F6888:  LDRB.W          R0, [R5,#0x210]
1F688C:  MOVS            R1, #1
1F688E:  LSL.W           R0, R1, R0
1F6892:  B               loc_1F689E
1F6894:  LDRH.W          R0, [R5,#0x200]
1F6898:  B               loc_1F689E
1F689A:  MOV.W           R0, #0x100
1F689E:  CMP.W           R0, #0x100
1F68A2:  IT CS
1F68A4:  MOVCS.W         R0, #0x100
1F68A8:  STR             R0, [R4,#0x18]
1F68AA:  MOVS            R0, #1
1F68AC:  POP.W           {R11}
1F68B0:  POP             {R4-R7,PC}
