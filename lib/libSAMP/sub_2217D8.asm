; =========================================================
; Game Engine Function: sub_2217D8
; Address            : 0x2217D8 - 0x221858
; =========================================================

2217D8:  PUSH            {R11,LR}
2217DC:  MOV             R11, SP
2217E0:  LDR             R12, [R0]
2217E4:  CMP             R12, #0
2217E8:  BMI             loc_22180C
2217EC:  MOV             R3, #1
2217F0:  STR             R3, [R1]
2217F4:  MOV             R3, #4
2217F8:  LDR             R1, [R0,#4]!
2217FC:  MOV             R1, R1,LSR#24
221800:  ADD             R1, R3, R1,LSL#2
221804:  STR             R1, [R2]
221808:  B               loc_22184C
22180C:  UBFX            LR, R12, #0x18, #4
221810:  CMP             LR, #0
221814:  BEQ             loc_22183C
221818:  CMP             LR, #3
22181C:  MOVNE           R3, #0
221820:  CMPNE           LR, #1
221824:  BNE             loc_221850
221828:  UBFX            R12, R12, #0x10, #8
22182C:  MOV             R3, #4
221830:  ADD             R3, R3, R12,LSL#2
221834:  MOV             R12, #2
221838:  B               loc_221844
22183C:  MOV             R12, #1
221840:  MOV             R3, #4
221844:  STR             R3, [R2]
221848:  STR             R12, [R1]
22184C:  MOV             R3, R0
221850:  MOV             R0, R3
221854:  POP             {R11,PC}
