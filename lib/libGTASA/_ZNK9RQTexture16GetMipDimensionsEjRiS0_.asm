; =========================================================
; Game Engine Function: _ZNK9RQTexture16GetMipDimensionsEjRiS0_
; Address            : 0x1D37F8 - 0x1D3892
; =========================================================

1D37F8:  PUSH            {R4-R7,LR}
1D37FA:  ADD             R7, SP, #0xC
1D37FC:  PUSH.W          {R11}
1D3800:  LDRD.W          R6, R5, [R0,#4]
1D3804:  MOV.W           LR, #1
1D3808:  LSR.W           R12, R5, R1
1D380C:  LDR             R4, [R0,#0x10]
1D380E:  CMP.W           R12, #1
1D3812:  MOV.W           R0, #1
1D3816:  IT GT
1D3818:  MOVGT           LR, R12
1D381A:  LSR.W           R1, R6, R1
1D381E:  CMP             R1, #1
1D3820:  MOV.W           R5, #1
1D3824:  IT GT
1D3826:  MOVGT           R0, R1
1D3828:  CMP             R4, #0x12
1D382A:  BHI             loc_1D388E
1D382C:  MOVW            R6, #:lower16:stru_43F78.st_size
1D3830:  LSLS            R5, R4
1D3832:  MOVT            R6, #:upper16:stru_43F78.st_size
1D3836:  TST             R5, R6
1D3838:  BEQ             loc_1D3848
1D383A:  MOVS            R4, #4
1D383C:  CMP             R0, #4
1D383E:  IT LE
1D3840:  MOVLE           R1, R4
1D3842:  CMP.W           LR, #4
1D3846:  B               loc_1D3866
1D3848:  MOVS            R5, #1
1D384A:  LSL.W           R4, R5, R4
1D384E:  TST.W           R4, #0xC000
1D3852:  BNE             loc_1D3878
1D3854:  TST.W           R4, #0x30000
1D3858:  BEQ             loc_1D388E
1D385A:  MOVS            R4, #8
1D385C:  CMP             R0, #8
1D385E:  IT LE
1D3860:  MOVLE           R1, R4
1D3862:  CMP.W           LR, #8
1D3866:  STR             R1, [R2]
1D3868:  IT LE
1D386A:  MOVLE           R12, R4
1D386C:  MOV             LR, R12
1D386E:  STR.W           LR, [R3]
1D3872:  POP.W           {R11}
1D3876:  POP             {R4-R7,PC}
1D3878:  CMP             R0, #0x10
1D387A:  IT LE
1D387C:  MOVLE           R1, #0x10
1D387E:  CMP.W           LR, #8
1D3882:  STR             R1, [R2]
1D3884:  IT LE
1D3886:  MOVLE.W         R12, #8
1D388A:  MOV             LR, R12
1D388C:  B               loc_1D386E
1D388E:  STR             R0, [R2]
1D3890:  B               loc_1D386E
