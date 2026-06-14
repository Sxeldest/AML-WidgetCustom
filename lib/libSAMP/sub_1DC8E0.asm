; =========================================================
; Game Engine Function: sub_1DC8E0
; Address            : 0x1DC8E0 - 0x1DCA10
; =========================================================

1DC8E0:  SUB             R12, R2, #1
1DC8E4:  CMP             R12, #2
1DC8E8:  BCS             loc_1DC8FC
1DC8EC:  VMOV            S0, R3
1DC8F0:  VCVT.F32.S32    S0, S0
1DC8F4:  VMOV            R3, S0
1DC8F8:  B               loc_1DC9A0
1DC8FC:  CMP             R2, #3
1DC900:  BNE             loc_1DC91C
1DC904:  CMP             R3, #3
1DC908:  STRCC           R3, [R0,#0x8C]
1DC90C:  BXCC            LR
1DC910:  MOV             R0, R1
1DC914:  MOVW            R1, #0xA003
1DC918:  B               j_alSetError
1DC91C:  MOV             R0, R1
1DC920:  MOVW            R1, #0xA002
1DC924:  B               j_alSetError
1DC928:  LDR             R12, [R3]
1DC92C:  SUB             R3, R2, #1
1DC930:  CMP             R3, #2
1DC934:  BCS             loc_1DC960
1DC938:  VMOV            S0, R12
1DC93C:  CMP             R2, #2
1DC940:  VCVT.F32.S32    S0, S0
1DC944:  BEQ             loc_1DC984
1DC948:  CMP             R2, #1
1DC94C:  BNE             loc_1DC978
1DC950:  CMP             R12, #0x1F40
1DC954:  VSTRLS          S0, [R0,#0x84]
1DC958:  BXLS            LR
1DC95C:  B               loc_1DC994
1DC960:  CMP             R2, #3
1DC964:  BNE             loc_1DC978
1DC968:  CMP             R12, #2
1DC96C:  STRLS           R12, [R0,#0x8C]
1DC970:  BXLS            LR
1DC974:  B               loc_1DC994
1DC978:  MOV             R0, R1
1DC97C:  MOVW            R1, #0xA002
1DC980:  B               j_alSetError
1DC984:  MOVW            R2, #0x5DC0
1DC988:  CMP             R12, R2
1DC98C:  VSTRLS          S0, [R0,#0x88]
1DC990:  BXLS            LR
1DC994:  MOV             R0, R1
1DC998:  MOVW            R1, #0xA003
1DC99C:  B               j_alSetError
1DC9A0:  VMOV            S0, R3
1DC9A4:  CMP             R2, #2
1DC9A8:  BEQ             loc_1DC9D8
1DC9AC:  CMP             R2, #1
1DC9B0:  BNE             loc_1DCA04
1DC9B4:  VCMPE.F32       S0, #0.0
1DC9B8:  VMRS            APSR_nzcv, FPSCR
1DC9BC:  BLT             loc_1DC9F8
1DC9C0:  VLDR            S2, =8000.0
1DC9C4:  VCMPE.F32       S0, S2
1DC9C8:  VMRS            APSR_nzcv, FPSCR
1DC9CC:  VSTRLE          S0, [R0,#0x84]
1DC9D0:  BXLE            LR
1DC9D4:  B               loc_1DC9F8
1DC9D8:  VCMPE.F32       S0, #0.0
1DC9DC:  VMRS            APSR_nzcv, FPSCR
1DC9E0:  BLT             loc_1DC9F8
1DC9E4:  VLDR            S2, =24000.0
1DC9E8:  VCMPE.F32       S0, S2
1DC9EC:  VMRS            APSR_nzcv, FPSCR
1DC9F0:  VSTRLE          S0, [R0,#0x88]
1DC9F4:  BXLE            LR
1DC9F8:  MOV             R0, R1
1DC9FC:  MOVW            R1, #0xA003
1DCA00:  B               j_alSetError
1DCA04:  MOV             R0, R1
1DCA08:  MOVW            R1, #0xA002
1DCA0C:  B               j_alSetError
