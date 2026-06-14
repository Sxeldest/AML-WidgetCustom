; =========================================================
; Game Engine Function: sub_1CC7D8
; Address            : 0x1CC7D8 - 0x1CCA60
; =========================================================

1CC7D8:  PUSH            {R4-R11,LR}
1CC7DC:  ADD             R11, SP, #0x1C
1CC7E0:  SUB             SP, SP, #4
1CC7E4:  MOV             R5, R0
1CC7E8:  MOV             R8, R1
1CC7EC:  LDR             R1, [R5,#0x6C]
1CC7F0:  MOV             R9, R2
1CC7F4:  VLDR            D1, =0.0
1CC7F8:  CMP             R1, #0
1CC7FC:  BEQ             loc_1CC81C
1CC800:  MOV             R0, R1
1CC804:  LDR             R4, [R0]
1CC808:  CMP             R4, #0
1CC80C:  BNE             loc_1CC824
1CC810:  LDR             R0, [R0,#4]
1CC814:  CMP             R0, #0
1CC818:  BNE             loc_1CC804
1CC81C:  MOV             R4, #0
1CC820:  B               loc_1CC82C
1CC824:  VLDR            S2, [R4,#4]
1CC828:  VCVT.F64.U32    D1, S2
1CC82C:  LDR             R0, [R5,#0x5C]
1CC830:  MOVW            R2, #0x1012
1CC834:  CMP             R0, R2
1CC838:  BNE             loc_1CC848
1CC83C:  CMP             R4, #0
1CC840:  BNE             loc_1CC860
1CC844:  B               loc_1CC8A8
1CC848:  LDR             R0, [R5,#0x5C]
1CC84C:  CMP             R4, #0
1CC850:  BEQ             loc_1CC8A8
1CC854:  MOVW            R2, #0x1013
1CC858:  CMP             R0, R2
1CC85C:  BNE             loc_1CC8A8
1CC860:  LDR             R0, [R5,#0x64]
1CC864:  CMP             R1, #0
1CC868:  BEQ             loc_1CC8BC
1CC86C:  MOV             R2, #0
1CC870:  MOV             R6, #0
1CC874:  LDR             R3, [R1]
1CC878:  CMP             R3, #0
1CC87C:  BEQ             loc_1CC894
1CC880:  LDR             R7, [R5,#0x74]
1CC884:  LDR             R3, [R3,#0xC]
1CC888:  CMP             R2, R7
1CC88C:  ADDCC           R0, R0, R3
1CC890:  ADD             R6, R3, R6
1CC894:  LDR             R1, [R1,#4]
1CC898:  ADD             R2, R2, #1
1CC89C:  CMP             R1, #0
1CC8A0:  BNE             loc_1CC874
1CC8A4:  B               loc_1CC8C0
1CC8A8:  MOV             R0, #0
1CC8AC:  VLDR            D0, =0.0
1CC8B0:  STR             R0, [R9]
1CC8B4:  STR             R0, [R9,#4]
1CC8B8:  B               loc_1CCA54
1CC8BC:  MOV             R6, #0
1CC8C0:  LDR             R1, [R5,#0x5C]
1CC8C4:  MOVW            R2, #0x1012
1CC8C8:  MOV             R7, R0
1CC8CC:  CMP             R1, R2
1CC8D0:  BNE             loc_1CC8E4
1CC8D4:  VMUL.F64        D0, D1, D0
1CC8D8:  VCVT.U32.F64    S0, D0
1CC8DC:  VMOV            R1, S0
1CC8E0:  ADD             R7, R0, R1
1CC8E4:  LDRB            R1, [R5,#0x4D]
1CC8E8:  CMP             R1, #0
1CC8EC:  BEQ             loc_1CC910
1CC8F0:  MOV             R1, R6
1CC8F4:  BL              sub_221798
1CC8F8:  MOV             R10, R1
1CC8FC:  MOV             R0, R7
1CC900:  MOV             R1, R6
1CC904:  BL              sub_221798
1CC908:  MOV             R7, R1
1CC90C:  B               loc_1CC924
1CC910:  MOV             R10, #0
1CC914:  CMP             R7, R6
1CC918:  MOVCS           R7, R10
1CC91C:  CMP             R0, R6
1CC920:  MOVCC           R10, R0
1CC924:  MOVW            R0, #0x1024
1CC928:  SUB             R0, R8, R0
1CC92C:  CMP             R0, #0xE; switch 15 cases
1CC930:  BHI             def_1CC940; jumptable 001CC940 default case, cases 3-12
1CC934:  ADR             R1, jpt_1CC940
1CC938:  MOV             R0, R0,LSL#2
1CC93C:  LDR             R0, [R0,R1]
1CC940:  ADD             PC, R0, R1; switch jump
1CC944:  DCD loc_1CC9FC - 0x1CC944; jump table for switch statement
1CC948:  DCD loc_1CC980 - 0x1CC944; jumptable 001CC940 cases 1,14
1CC94C:  DCD loc_1CC990 - 0x1CC944; jumptable 001CC940 cases 2,13
1CC950:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC954:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC958:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC95C:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC960:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC964:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC968:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC96C:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC970:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC974:  DCD def_1CC940 - 0x1CC944; jumptable 001CC940 default case, cases 3-12
1CC978:  DCD loc_1CC990 - 0x1CC944; jumptable 001CC940 cases 2,13
1CC97C:  DCD loc_1CC980 - 0x1CC944; jumptable 001CC940 cases 1,14
1CC980:  VMOV            S0, R10; jumptable 001CC940 cases 1,14
1CC984:  VCVT.F64.U32    D1, S0
1CC988:  VMOV            S0, R7
1CC98C:  B               loc_1CCA4C
1CC990:  LDR             R6, [R4,#0x1C]; jumptable 001CC940 cases 2,13
1CC994:  MOVW            R0, #0x140C
1CC998:  CMP             R6, R0
1CC99C:  BNE             loc_1CCA20
1CC9A0:  MOV             R6, #0xFC0FC0FD
1CC9A8:  UMULL           R0, R1, R10, R6
1CC9AC:  LDR             R0, [R4,#0x10]
1CC9B0:  MOV             R4, R1,LSR#6
1CC9B4:  BL              j_ChannelsFromFmt
1CC9B8:  ADD             R0, R0, R0,LSL#3
1CC9BC:  MOVW            R2, #0x1012
1CC9C0:  MOV             R0, R0,LSL#2
1CC9C4:  MUL             R1, R0, R4
1CC9C8:  VMOV            S0, R1
1CC9CC:  VCVT.F64.U32    D0, S0
1CC9D0:  VSTR            D0, [R9]
1CC9D4:  LDR             R1, [R5,#0x5C]
1CC9D8:  CMP             R1, R2
1CC9DC:  BNE             loc_1CCA54
1CC9E0:  ADD             R1, R7, #0x40 ; '@'
1CC9E4:  UMULL           R1, R2, R1, R6
1CC9E8:  MOV             R1, R2,LSR#6
1CC9EC:  MUL             R0, R0, R1
1CC9F0:  VMOV            S0, R0
1CC9F4:  VCVT.F64.U32    D0, S0
1CC9F8:  B               loc_1CCA54
1CC9FC:  VLDR            S0, [R4,#4]; jumptable 001CC940 case 0
1CCA00:  VMOV            S2, R10
1CCA04:  VMOV            S4, R7
1CCA08:  VCVT.F64.U32    D1, S2
1CCA0C:  VCVT.F64.S32    D0, S0
1CCA10:  VCVT.F64.U32    D2, S4
1CCA14:  VDIV.F64        D1, D1, D0
1CCA18:  VDIV.F64        D0, D2, D0
1CCA1C:  B               loc_1CCA50
1CCA20:  LDR             R0, [R4,#0x18]
1CCA24:  BL              j_ChannelsFromUserFmt
1CCA28:  MOV             R5, R0
1CCA2C:  MOV             R0, R6
1CCA30:  BL              j_BytesFromUserFmt
1CCA34:  MUL             R0, R0, R5
1CCA38:  MUL             R1, R0, R10
1CCA3C:  MUL             R0, R0, R7
1CCA40:  VMOV            S0, R1
1CCA44:  VCVT.F64.U32    D1, S0
1CCA48:  VMOV            S0, R0
1CCA4C:  VCVT.F64.U32    D0, S0
1CCA50:  VSTR            D1, [R9]
1CCA54:  VSTR            D0, [R9,#8]
1CCA58:  SUB             SP, R11, #0x1C; jumptable 001CC940 default case, cases 3-12
1CCA5C:  POP             {R4-R11,PC}
