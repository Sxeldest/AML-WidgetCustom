; =========================================================
; Game Engine Function: sub_15D7E2
; Address            : 0x15D7E2 - 0x15D888
; =========================================================

15D7E2:  PUSH            {R4-R7,LR}
15D7E4:  ADD             R7, SP, #0xC
15D7E6:  PUSH.W          {R8-R10}
15D7EA:  LDR             R4, [R0,#4]
15D7EC:  CMP             R4, #0
15D7EE:  BEQ             loc_15D87E
15D7F0:  MOV             R6, R0
15D7F2:  MOV.W           R0, #0x55555555
15D7F6:  AND.W           R0, R0, R4,LSR#1
15D7FA:  LDRH            R5, [R1]
15D7FC:  SUBS            R0, R4, R0
15D7FE:  MOV.W           R1, #0x33333333
15D802:  AND.W           R1, R1, R0,LSR#2
15D806:  BIC.W           R0, R0, #0xCCCCCCCC
15D80A:  ADD             R0, R1
15D80C:  MOV.W           R1, #0x1010101
15D810:  ADD.W           R0, R0, R0,LSR#4
15D814:  BIC.W           R0, R0, #0xF0F0F0F0
15D818:  MULS            R0, R1
15D81A:  MOV.W           R9, R0,LSR#24
15D81E:  CMP.W           R9, #1
15D822:  BHI             loc_15D82C
15D824:  SUBS            R0, R4, #1
15D826:  AND.W           R8, R0, R5
15D82A:  B               loc_15D83E
15D82C:  CMP             R4, R5
15D82E:  BLS             loc_15D834
15D830:  MOV             R8, R5
15D832:  B               loc_15D83E
15D834:  MOV             R0, R5
15D836:  MOV             R1, R4
15D838:  BLX             sub_221798
15D83C:  MOV             R8, R1
15D83E:  LDR             R0, [R6]
15D840:  LDR.W           R0, [R0,R8,LSL#2]
15D844:  CBZ             R0, loc_15D87E
15D846:  LDR             R6, [R0]
15D848:  CBZ             R6, loc_15D87E
15D84A:  SUB.W           R10, R4, #1
15D84E:  LDR             R0, [R6,#4]
15D850:  CMP             R0, R5
15D852:  BNE             loc_15D85C
15D854:  LDRH            R0, [R6,#8]
15D856:  CMP             R0, R5
15D858:  BNE             loc_15D878
15D85A:  B               loc_15D880
15D85C:  CMP.W           R9, #1
15D860:  BHI             loc_15D868
15D862:  AND.W           R0, R0, R10
15D866:  B               loc_15D874
15D868:  CMP             R0, R4
15D86A:  BCC             loc_15D874
15D86C:  MOV             R1, R4
15D86E:  BLX             sub_221798
15D872:  MOV             R0, R1
15D874:  CMP             R0, R8
15D876:  BNE             loc_15D87E
15D878:  LDR             R6, [R6]
15D87A:  CMP             R6, #0
15D87C:  BNE             loc_15D84E
15D87E:  MOVS            R6, #0
15D880:  MOV             R0, R6
15D882:  POP.W           {R8-R10}
15D886:  POP             {R4-R7,PC}
