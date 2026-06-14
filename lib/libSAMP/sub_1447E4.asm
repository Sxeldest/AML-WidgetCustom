; =========================================================
; Game Engine Function: sub_1447E4
; Address            : 0x1447E4 - 0x14486C
; =========================================================

1447E4:  PUSH            {R4-R7,LR}
1447E6:  ADD             R7, SP, #0xC
1447E8:  PUSH.W          {R11}
1447EC:  SUB             SP, SP, #0x120
1447EE:  MOV             R4, R0
1447F0:  LDR.W           R0, [R0,#0x218]
1447F4:  CMP             R0, #5
1447F6:  BNE             loc_144864
1447F8:  ADD             R0, SP, #0x130+var_128
1447FA:  MOV             R5, R2
1447FC:  MOV             R6, R1
1447FE:  BL              sub_17D4A8
144802:  MOVS            R1, #0xDC
144804:  STRB.W          R1, [R7,#var_11]
144808:  SUB.W           R1, R7, #-var_11
14480C:  MOVS            R2, #8
14480E:  MOVS            R3, #1
144810:  BL              sub_17D628
144814:  MOVS            R0, #0x42 ; 'B'
144816:  STRB.W          R0, [R7,#var_11]
14481A:  ADD             R0, SP, #0x130+var_128
14481C:  SUB.W           R1, R7, #-var_11
144820:  MOVS            R2, #8
144822:  MOVS            R3, #1
144824:  BL              sub_17D628
144828:  STRB.W          R6, [R7,#var_11]
14482C:  ADD             R0, SP, #0x130+var_128
14482E:  SUB.W           R1, R7, #-var_11
144832:  MOVS            R2, #8
144834:  MOVS            R3, #1
144836:  BL              sub_17D628
14483A:  CBZ             R5, loc_144844
14483C:  ADD             R0, SP, #0x130+var_128
14483E:  BL              sub_17D84A
144842:  B               loc_14484A
144844:  ADD             R0, SP, #0x130+var_128
144846:  BL              sub_17D828
14484A:  LDR.W           R0, [R4,#0x210]
14484E:  LDR             R1, [R0]
144850:  LDR             R6, [R1,#0x20]
144852:  MOVS            R1, #6
144854:  MOVS            R2, #2
144856:  STR             R1, [SP,#0x130+var_130]
144858:  ADD             R1, SP, #0x130+var_128
14485A:  MOVS            R3, #9
14485C:  BLX             R6
14485E:  ADD             R0, SP, #0x130+var_128
144860:  BL              sub_17D542
144864:  ADD             SP, SP, #0x120
144866:  POP.W           {R11}
14486A:  POP             {R4-R7,PC}
