; =========================================================
; Game Engine Function: sub_1037E0
; Address            : 0x1037E0 - 0x103840
; =========================================================

1037E0:  PUSH            {R4-R7,LR}
1037E2:  ADD             R7, SP, #0xC
1037E4:  PUSH.W          {R7-R11}
1037E8:  MOV             R9, R0
1037EA:  LDR             R0, =(asc_4FD69 - 0x1037F6); ", " ...
1037EC:  MOV             R4, R1
1037EE:  MOV.W           R8, #1
1037F2:  ADD             R0, PC; ", "
1037F4:  MOVS            R6, #0
1037F6:  MOV             R11, R0
1037F8:  LDR.W           R0, [R9,#4]
1037FC:  CMP             R6, R0
1037FE:  BEQ             loc_10383A
103800:  LDR.W           R10, [R4,#4]
103804:  MOVS.W          R0, R8,LSL#31
103808:  MOV             R5, R10
10380A:  BNE             loc_10381A
10380C:  ADD.W           R2, R11, #2
103810:  MOV             R1, R11
103812:  MOV             R0, R4
103814:  BL              sub_FFB40
103818:  LDR             R5, [R4,#4]
10381A:  LDR.W           R0, [R9]
10381E:  MOV             R1, R4
103820:  LDR.W           R0, [R0,R6,LSL#2]
103824:  BL              sub_FE074
103828:  LDR             R0, [R4,#4]
10382A:  CMP             R5, R0
10382C:  ITE EQ
10382E:  STREQ.W         R10, [R4,#4]
103832:  MOVNE.W         R8, #0
103836:  ADDS            R6, #1
103838:  B               loc_1037F8
10383A:  POP.W           {R3,R8-R11}
10383E:  POP             {R4-R7,PC}
