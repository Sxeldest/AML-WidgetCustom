; =========================================================
; Game Engine Function: _Z36RxPipelineNodeForAllConnectedOutputsP14RxPipelineNodeP10RxPipelinePFS0_S0_S0_PvES3_
; Address            : 0x1DE7F4 - 0x1DE862
; =========================================================

1DE7F4:  PUSH            {R4-R7,LR}
1DE7F6:  ADD             R7, SP, #0xC
1DE7F8:  PUSH.W          {R8,R9,R11}
1DE7FC:  MOV             R4, R0
1DE7FE:  CMP             R4, #0
1DE800:  MOV             R5, R1
1DE802:  MOV             R8, R3
1DE804:  MOV             R9, R2
1DE806:  MOV.W           R0, #0
1DE80A:  IT NE
1DE80C:  CMPNE           R5, #0
1DE80E:  BEQ             loc_1DE85C
1DE810:  LDR             R2, [R5,#8]
1DE812:  MOVS            R0, #0
1DE814:  CMP             R2, R4
1DE816:  BHI             loc_1DE85C
1DE818:  CMP.W           R9, #0
1DE81C:  ITTTT NE
1DE81E:  LDRNE           R1, [R5,#4]
1DE820:  ADDNE.W         R3, R1, R1,LSL#2
1DE824:  ADDNE.W         R2, R2, R3,LSL#3
1DE828:  CMPNE           R2, R4
1DE82A:  BLS             loc_1DE85C
1DE82C:  LDR             R0, [R4,#4]
1DE82E:  CBZ             R0, loc_1DE85A
1DE830:  MOVS            R6, #0
1DE832:  B               loc_1DE836
1DE834:  LDR             R1, [R5,#4]
1DE836:  LDR             R2, [R4,#8]
1DE838:  LDR.W           R2, [R2,R6,LSL#2]
1DE83C:  CMP             R2, R1
1DE83E:  BCS             loc_1DE854
1DE840:  ADD.W           R1, R2, R2,LSL#2
1DE844:  LDR             R0, [R5,#8]
1DE846:  MOV             R2, R8
1DE848:  ADD.W           R1, R0, R1,LSL#3
1DE84C:  MOV             R0, R4
1DE84E:  BLX             R9
1DE850:  CBZ             R0, loc_1DE85A
1DE852:  LDR             R0, [R4,#4]
1DE854:  ADDS            R6, #1
1DE856:  CMP             R6, R0
1DE858:  BCC             loc_1DE834
1DE85A:  MOV             R0, R4
1DE85C:  POP.W           {R8,R9,R11}
1DE860:  POP             {R4-R7,PC}
