; =========================================================
; Game Engine Function: sub_21F806
; Address            : 0x21F806 - 0x21F8C6
; =========================================================

21F806:  PUSH            {R4-R7,LR}
21F808:  ADD             R7, SP, #0xC
21F80A:  PUSH.W          {R6-R9,R11}
21F80E:  LDR.W           R8, [R7,#arg_0]
21F812:  MOV             R4, R1
21F814:  LDR             R1, [R1,#8]
21F816:  MOV             R5, R2
21F818:  MOV             R9, R3
21F81A:  MOV             R6, R0
21F81C:  MOV             R2, R8
21F81E:  BL              sub_21EEBC
21F822:  CBZ             R0, loc_21F836
21F824:  LDR             R0, [R4,#4]
21F826:  CMP             R0, R5
21F828:  BNE             loc_21F86C
21F82A:  LDR             R0, [R4,#0x1C]
21F82C:  CMP             R0, #1
21F82E:  IT NE
21F830:  STRNE.W         R9, [R4,#0x1C]
21F834:  B               loc_21F86C
21F836:  LDR             R1, [R4]
21F838:  MOV             R0, R6
21F83A:  MOV             R2, R8
21F83C:  BL              sub_21EEBC
21F840:  CBZ             R0, loc_21F85A
21F842:  LDR             R0, [R4,#0x10]
21F844:  CMP             R0, R5
21F846:  ITT NE
21F848:  LDRNE           R0, [R4,#0x14]
21F84A:  CMPNE           R0, R5
21F84C:  BNE             loc_21F872
21F84E:  CMP.W           R9, #1
21F852:  ITT EQ
21F854:  MOVEQ           R0, #1
21F856:  STREQ           R0, [R4,#0x20]
21F858:  B               loc_21F86C
21F85A:  LDR             R0, [R6,#8]
21F85C:  MOV             R2, R5
21F85E:  MOV             R3, R9
21F860:  LDR             R1, [R0]
21F862:  LDR             R6, [R1,#0x18]
21F864:  MOV             R1, R4
21F866:  STR.W           R8, [SP,#0x20+var_20]
21F86A:  BLX             R6
21F86C:  POP.W           {R2,R3,R8,R9,R11}
21F870:  POP             {R4-R7,PC}
21F872:  LDR             R0, [R4,#0x2C]
21F874:  STR.W           R9, [R4,#0x20]
21F878:  CMP             R0, #4
21F87A:  BEQ             loc_21F8AA
21F87C:  MOVS            R0, #0
21F87E:  MOV             R2, R5
21F880:  STRH            R0, [R4,#0x34]
21F882:  MOV             R3, R5
21F884:  LDR             R0, [R6,#8]
21F886:  LDR             R1, [R0]
21F888:  LDR             R6, [R1,#0x14]
21F88A:  MOVS            R1, #1
21F88C:  STRD.W          R1, R8, [SP,#0x20+var_20]
21F890:  MOV             R1, R4
21F892:  BLX             R6
21F894:  LDRB.W          R0, [R4,#0x35]
21F898:  CBZ             R0, loc_21F8A6
21F89A:  LDRB.W          R1, [R4,#0x34]
21F89E:  MOVS            R0, #3
21F8A0:  CBZ             R1, loc_21F8A8
21F8A2:  STR             R0, [R4,#0x2C]
21F8A4:  B               loc_21F86C
21F8A6:  MOVS            R0, #4
21F8A8:  STR             R0, [R4,#0x2C]
21F8AA:  LDRD.W          R0, R1, [R4,#0x24]
21F8AE:  STR             R5, [R4,#0x14]
21F8B0:  ADDS            R1, #1
21F8B2:  STR             R1, [R4,#0x28]
21F8B4:  CMP             R0, #1
21F8B6:  BNE             loc_21F86C
21F8B8:  LDR             R0, [R4,#0x18]
21F8BA:  CMP             R0, #2
21F8BC:  ITT EQ
21F8BE:  MOVEQ           R0, #1
21F8C0:  STRBEQ.W        R0, [R4,#0x36]
21F8C4:  B               loc_21F86C
