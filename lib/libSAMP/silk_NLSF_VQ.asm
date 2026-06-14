; =========================================================
; Game Engine Function: silk_NLSF_VQ
; Address            : 0x1B18D4 - 0x1B199C
; =========================================================

1B18D4:  PUSH            {R4-R7,LR}
1B18D6:  ADD             R7, SP, #0xC
1B18D8:  PUSH.W          {R8-R11}
1B18DC:  SUB             SP, SP, #0x1C
1B18DE:  STR             R0, [SP,#0x38+var_28]
1B18E0:  LDR             R0, [R7,#arg_0]
1B18E2:  STR             R2, [SP,#0x38+var_20]
1B18E4:  CMP             R0, #1
1B18E6:  BLT             loc_1B1994
1B18E8:  LDR             R2, [R7,#arg_4]
1B18EA:  CMP             R2, #2
1B18EC:  BLT             loc_1B198A
1B18EE:  MOV             R0, #0xFFFFFFFC
1B18F2:  MOVS            R6, #0
1B18F4:  ADD.W           R0, R0, R2,LSL#1
1B18F8:  STR             R0, [SP,#0x38+var_2C]
1B18FA:  ADDS            R0, R2, #2
1B18FC:  STR             R0, [SP,#0x38+var_30]
1B18FE:  LSLS            R0, R2, #1
1B1900:  STR             R0, [SP,#0x38+var_34]
1B1902:  STR             R6, [SP,#0x38+var_24]
1B1904:  MOV.W           R12, #0
1B1908:  LDRD.W          R5, R6, [SP,#0x38+var_30]
1B190C:  MOVS            R2, #0
1B190E:  LDR             R0, [SP,#0x38+var_20]
1B1910:  ADD.W           R11, R1, R6
1B1914:  LDRH.W          R10, [R1,R6]
1B1918:  ADD             R0, R5
1B191A:  LDRH.W          R11, [R11,#2]
1B191E:  SUBS            R5, #2
1B1920:  LDRB.W          R8, [R0,#-3]
1B1924:  LDRB.W          R4, [R0,#-4]
1B1928:  ADDS            R0, R3, R6
1B192A:  LDRSH.W         LR, [R3,R6]
1B192E:  SUBS            R6, #4
1B1930:  LDRSH.W         R9, [R0,#2]
1B1934:  SUB.W           R0, R11, R8,LSL#7
1B1938:  SUB.W           R4, R10, R4,LSL#7
1B193C:  SXTH            R0, R0
1B193E:  SXTH            R4, R4
1B1940:  SMULBB.W        R0, R0, R9
1B1944:  SMULBB.W        LR, R4, LR
1B1948:  SUB.W           R8, LR, R0,ASR#1
1B194C:  SUB.W           R0, R0, R12,ASR#1
1B1950:  CMP.W           R8, #0
1B1954:  MOV             R12, LR
1B1956:  IT MI
1B1958:  RSBMI.W         R8, R8, #0
1B195C:  CMP             R0, #0
1B195E:  IT MI
1B1960:  NEGMI           R0, R0
1B1962:  CMP             R5, #3
1B1964:  ADD             R0, R2
1B1966:  ADD.W           R2, R0, R8
1B196A:  BGT             loc_1B190E
1B196C:  LDRD.W          R0, R6, [SP,#0x38+var_28]
1B1970:  STR.W           R2, [R0,R6,LSL#2]
1B1974:  ADDS            R6, #1
1B1976:  LDR             R0, [SP,#0x38+var_34]
1B1978:  LDR             R2, [R7,#arg_4]
1B197A:  ADD             R3, R0
1B197C:  LDR             R0, [SP,#0x38+var_20]
1B197E:  ADD             R0, R2
1B1980:  STR             R0, [SP,#0x38+var_20]
1B1982:  LDR             R0, [R7,#arg_0]
1B1984:  CMP             R6, R0
1B1986:  BNE             loc_1B1902
1B1988:  B               loc_1B1994
1B198A:  LDR             R0, [R7,#arg_0]
1B198C:  LSLS            R1, R0, #2; n
1B198E:  LDR             R0, [SP,#0x38+var_28]; int
1B1990:  BLX             sub_22178C
1B1994:  ADD             SP, SP, #0x1C
1B1996:  POP.W           {R8-R11}
1B199A:  POP             {R4-R7,PC}
