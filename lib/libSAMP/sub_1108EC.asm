; =========================================================
; Game Engine Function: sub_1108EC
; Address            : 0x1108EC - 0x1109A8
; =========================================================

1108EC:  PUSH            {R4-R7,LR}
1108EE:  ADD             R7, SP, #0xC
1108F0:  PUSH.W          {R8-R11}
1108F4:  SUB             SP, SP, #0x4C
1108F6:  MOV             R5, R0
1108F8:  LDR             R0, =(off_23494C - 0x110902)
1108FA:  MOV             R9, SP
1108FC:  MOVS            R2, #0
1108FE:  ADD             R0, PC; off_23494C
110900:  MOV             R3, R5
110902:  LDR             R0, [R0]; dword_23DF24
110904:  LDR.W           R10, [R0]
110908:  MOV             R0, R9
11090A:  LDR             R1, =(sub_1109F4+1 - 0x110910)
11090C:  ADD             R1, PC; sub_1109F4
11090E:  BL              sub_110A14
110912:  ADD.W           R11, SP, #0x68+var_50
110916:  MOV             R1, R9
110918:  MOV             R0, R11
11091A:  BL              sub_110B9C
11091E:  BL              sub_110B44
110922:  LDR             R0, =(unk_2633D8 - 0x110928)
110924:  ADD             R0, PC; unk_2633D8
110926:  LDR             R6, [R0,#(dword_2633E8 - 0x2633D8)]
110928:  CBNZ            R6, loc_11095C
11092A:  ADD.W           R8, SP, #0x68+var_50
11092E:  ADD             R0, SP, #0x68+var_38
110930:  MOV             R1, R8
110932:  BL              sub_110B9C
110936:  BL              sub_110B44
11093A:  LDR             R0, =(unk_2633D8 - 0x110940)
11093C:  ADD             R0, PC; unk_2633D8
11093E:  ADD             R4, SP, #0x68+var_38
110940:  MOV             R1, R4
110942:  BL              sub_110BC8
110946:  LDR             R0, [SP,#0x68+var_28]
110948:  CMP             R4, R0
11094A:  BEQ             loc_110952
11094C:  CBZ             R0, loc_11095C
11094E:  MOVS            R1, #5
110950:  B               loc_110954
110952:  MOVS            R1, #4
110954:  LDR             R2, [R0]
110956:  LDR.W           R1, [R2,R1,LSL#2]
11095A:  BLX             R1
11095C:  LDR             R0, [SP,#0x68+var_40]
11095E:  CMP             R11, R0
110960:  BEQ             loc_110968
110962:  CBZ             R0, loc_110972
110964:  MOVS            R1, #5
110966:  B               loc_11096A
110968:  MOVS            R1, #4
11096A:  LDR             R2, [R0]
11096C:  LDR.W           R1, [R2,R1,LSL#2]
110970:  BLX             R1
110972:  CBNZ            R6, loc_110988
110974:  MOVW            R0, #0x5A10
110978:  LDR             R1, =(sub_110B24+1 - 0x110984)
11097A:  MOVT            R0, #0x67 ; 'g'
11097E:  ADD             R0, R10
110980:  ADD             R1, PC; sub_110B24
110982:  MOV             R2, R5
110984:  BL              sub_164196
110988:  LDR             R0, [SP,#0x68+var_58]
11098A:  CMP             R9, R0
11098C:  BEQ             loc_110994
11098E:  CBZ             R0, loc_11099E
110990:  MOVS            R1, #5
110992:  B               loc_110996
110994:  MOVS            R1, #4
110996:  LDR             R2, [R0]
110998:  LDR.W           R1, [R2,R1,LSL#2]
11099C:  BLX             R1
11099E:  MOV             R0, R5
1109A0:  ADD             SP, SP, #0x4C ; 'L'
1109A2:  POP.W           {R8-R11}
1109A6:  POP             {R4-R7,PC}
