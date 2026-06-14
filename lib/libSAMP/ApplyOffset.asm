; =========================================================
; Game Engine Function: ApplyOffset
; Address            : 0x1CB770 - 0x1CB8E4
; =========================================================

1CB770:  PUSH            {R4-R8,R10,R11,LR}
1CB774:  ADD             R11, SP, #0x18
1CB778:  MOV             R4, R0
1CB77C:  LDR             R0, [R4,#0x6C]
1CB780:  CMP             R0, #0
1CB784:  BNE             loc_1CB798
1CB788:  B               loc_1CB808
1CB78C:  LDR             R0, [R0,#4]
1CB790:  CMP             R0, #0
1CB794:  BEQ             loc_1CB808
1CB798:  LDR             R1, [R0]
1CB79C:  CMP             R1, #0
1CB7A0:  BEQ             loc_1CB78C
1CB7A4:  LDR             R0, [R4,#0xC8]
1CB7A8:  MOVW            R2, #0x1024
1CB7AC:  CMP             R0, R2
1CB7B0:  BEQ             loc_1CB81C
1CB7B4:  MOVW            R2, #0x1025
1CB7B8:  CMP             R0, R2
1CB7BC:  BEQ             loc_1CB84C
1CB7C0:  MOVW            R2, #0x1026
1CB7C4:  CMP             R0, R2
1CB7C8:  BNE             loc_1CB808
1CB7CC:  LDR             R0, [R1,#0x18]
1CB7D0:  MOV             R5, R4
1CB7D4:  LDR             R6, [R1,#0x1C]
1CB7D8:  LDR             R8, [R5,#0xC4]!
1CB7DC:  BL              j_ChannelsFromUserFmt
1CB7E0:  MOV             R7, R0
1CB7E4:  MOVW            R0, #0x140C
1CB7E8:  CMP             R6, R0
1CB7EC:  BNE             loc_1CB858
1CB7F0:  ADD             R0, R7, R7,LSL#3
1CB7F4:  MOV             R1, R0,LSL#2
1CB7F8:  MOV             R0, R8
1CB7FC:  BL              sub_220A6C
1CB800:  ADD             R0, R0, R0,LSL#6
1CB804:  B               loc_1CB86C
1CB808:  MOV             R0, #0xFFFFFFFF
1CB80C:  STR             R0, [R4,#0xC4]
1CB810:  MOV             R1, #0
1CB814:  MOV             R0, R1
1CB818:  POP             {R4-R8,R10,R11,PC}
1CB81C:  MOV             R5, R4
1CB820:  VLDR            D1, =0.001
1CB824:  LDR             R0, [R5,#0xC4]!
1CB828:  VMOV            S0, R0
1CB82C:  VCVT.F64.S32    D0, S0
1CB830:  VMUL.F64        D0, D0, D1
1CB834:  VLDR            S2, [R1,#4]
1CB838:  VCVT.F64.S32    D1, S2
1CB83C:  VMUL.F64        D0, D0, D1
1CB840:  VCVT.S32.F64    S0, D0
1CB844:  VMOV            R0, S0
1CB848:  B               loc_1CB86C
1CB84C:  MOV             R5, R4
1CB850:  LDR             R0, [R5,#0xC4]!
1CB854:  B               loc_1CB86C
1CB858:  MOV             R0, R6
1CB85C:  BL              j_BytesFromUserFmt
1CB860:  MUL             R1, R0, R7
1CB864:  MOV             R0, R8
1CB868:  BL              sub_220A6C
1CB86C:  MOV             R1, #0xFFFFFFFF
1CB870:  CMN             R0, #1
1CB874:  STR             R1, [R5]
1CB878:  MOV             R1, #0
1CB87C:  LDRNE           R2, [R4,#0x6C]
1CB880:  CMPNE           R2, #0
1CB884:  BEQ             loc_1CB8DC
1CB888:  MOV             R1, #0
1CB88C:  MOV             R3, #0
1CB890:  LDR             R6, [R2]
1CB894:  MOV             R7, #0
1CB898:  CMP             R6, #0
1CB89C:  LDRNE           R7, [R6,#0xC]
1CB8A0:  SUB             R6, R0, R3
1CB8A4:  CMP             R7, R6
1CB8A8:  BLE             loc_1CB8B8
1CB8AC:  CMP             R0, R3
1CB8B0:  BLT             loc_1CB8BC
1CB8B4:  B               loc_1CB8D0
1CB8B8:  ADD             R1, R1, #1
1CB8BC:  LDR             R2, [R2,#4]
1CB8C0:  ADD             R3, R7, R3
1CB8C4:  CMP             R2, #0
1CB8C8:  BNE             loc_1CB890
1CB8CC:  B               loc_1CB810
1CB8D0:  STR             R6, [R4,#0x64]
1CB8D4:  STR             R1, [R4,#0x74]
1CB8D8:  MOV             R1, #1
1CB8DC:  MOV             R0, R1
1CB8E0:  POP             {R4-R8,R10,R11,PC}
