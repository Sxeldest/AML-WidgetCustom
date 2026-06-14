; =========================================================
; Game Engine Function: _Z10TestMatrixP11RwMatrixTag
; Address            : 0x36CE10 - 0x36D004
; =========================================================

36CE10:  CMP             R0, #0
36CE12:  IT EQ
36CE14:  BXEQ            LR
36CE16:  VLDR            S4, =-70000.0
36CE1A:  VLDR            S0, [R0]
36CE1E:  VCMPE.F32       S0, S4
36CE22:  VMRS            APSR_nzcv, FPSCR
36CE26:  BLT.W           loc_36CFD8
36CE2A:  VLDR            S6, =70000.0
36CE2E:  VCMPE.F32       S0, S6
36CE32:  VMRS            APSR_nzcv, FPSCR
36CE36:  BGT.W           loc_36CFD8
36CE3A:  VLDR            S2, [R0,#4]
36CE3E:  VCMPE.F32       S2, S4
36CE42:  VMRS            APSR_nzcv, FPSCR
36CE46:  BLT.W           loc_36CFD8
36CE4A:  VCMPE.F32       S2, S6
36CE4E:  VMRS            APSR_nzcv, FPSCR
36CE52:  BGT.W           loc_36CFD8
36CE56:  VLDR            S8, [R0,#8]
36CE5A:  VCMPE.F32       S8, S4
36CE5E:  VMRS            APSR_nzcv, FPSCR
36CE62:  BLT.W           loc_36CFD8
36CE66:  VCMPE.F32       S8, S6
36CE6A:  VMRS            APSR_nzcv, FPSCR
36CE6E:  BGT.W           loc_36CFD8
36CE72:  VLDR            S10, [R0,#0x10]
36CE76:  VCMPE.F32       S10, S4
36CE7A:  VMRS            APSR_nzcv, FPSCR
36CE7E:  BLT.W           loc_36CFD8
36CE82:  VCMPE.F32       S10, S6
36CE86:  VMRS            APSR_nzcv, FPSCR
36CE8A:  BGT.W           loc_36CFD8
36CE8E:  VLDR            S12, [R0,#0x14]
36CE92:  VCMPE.F32       S12, S4
36CE96:  VMRS            APSR_nzcv, FPSCR
36CE9A:  BLT.W           loc_36CFD8
36CE9E:  VCMPE.F32       S12, S6
36CEA2:  VMRS            APSR_nzcv, FPSCR
36CEA6:  BGT.W           loc_36CFD8
36CEAA:  VLDR            S14, [R0,#0x18]
36CEAE:  VCMPE.F32       S14, S4
36CEB2:  VMRS            APSR_nzcv, FPSCR
36CEB6:  BLT.W           loc_36CFD8
36CEBA:  VCMPE.F32       S14, S6
36CEBE:  VMRS            APSR_nzcv, FPSCR
36CEC2:  BGT.W           loc_36CFD8
36CEC6:  VLDR            S1, [R0,#0x20]
36CECA:  VCMPE.F32       S1, S4
36CECE:  VMRS            APSR_nzcv, FPSCR
36CED2:  BLT.W           loc_36CFD8
36CED6:  VCMPE.F32       S1, S6
36CEDA:  VMRS            APSR_nzcv, FPSCR
36CEDE:  BGT             loc_36CFD8
36CEE0:  VLDR            S3, [R0,#0x24]
36CEE4:  VCMPE.F32       S3, S4
36CEE8:  VMRS            APSR_nzcv, FPSCR
36CEEC:  BLT             loc_36CFD8
36CEEE:  VCMPE.F32       S3, S6
36CEF2:  VMRS            APSR_nzcv, FPSCR
36CEF6:  BGT             loc_36CFD8
36CEF8:  VLDR            S5, [R0,#0x28]
36CEFC:  VCMPE.F32       S5, S4
36CF00:  VMRS            APSR_nzcv, FPSCR
36CF04:  BLT             loc_36CFD8
36CF06:  VCMPE.F32       S5, S6
36CF0A:  VMRS            APSR_nzcv, FPSCR
36CF0E:  BGT             loc_36CFD8
36CF10:  VLDR            S7, [R0,#0x30]
36CF14:  VCMPE.F32       S7, S4
36CF18:  VMRS            APSR_nzcv, FPSCR
36CF1C:  BLT             loc_36CFD8
36CF1E:  VCMPE.F32       S7, S6
36CF22:  VMRS            APSR_nzcv, FPSCR
36CF26:  BGT             loc_36CFD8
36CF28:  VLDR            S7, [R0,#0x34]
36CF2C:  VCMPE.F32       S7, S4
36CF30:  VMRS            APSR_nzcv, FPSCR
36CF34:  BLT             loc_36CFD8
36CF36:  VCMPE.F32       S7, S6
36CF3A:  VMRS            APSR_nzcv, FPSCR
36CF3E:  BGT             loc_36CFD8
36CF40:  VLDR            S7, [R0,#0x38]
36CF44:  VCMPE.F32       S7, S4
36CF48:  VMRS            APSR_nzcv, FPSCR
36CF4C:  BLT             loc_36CFD8
36CF4E:  VCMPE.F32       S7, S6
36CF52:  VMRS            APSR_nzcv, FPSCR
36CF56:  BGT             loc_36CFD8
36CF58:  VCMP.F32        S0, #0.0
36CF5C:  VMRS            APSR_nzcv, FPSCR
36CF60:  ITT EQ
36CF62:  VCMPEQ.F32      S2, #0.0
36CF66:  VMRSEQ          APSR_nzcv, FPSCR
36CF6A:  BNE             loc_36CF82
36CF6C:  VCMP.F32        S8, #0.0
36CF70:  VMRS            APSR_nzcv, FPSCR
36CF74:  ITTTT EQ
36CF76:  MOVEQ           R1, #0
36CF78:  MOVEQ.W         R2, #0x3F800000
36CF7C:  STRDEQ.W        R2, R1, [R0]
36CF80:  STREQ           R1, [R0,#8]
36CF82:  VCMP.F32        S10, #0.0
36CF86:  VMRS            APSR_nzcv, FPSCR
36CF8A:  ITT EQ
36CF8C:  VCMPEQ.F32      S12, #0.0
36CF90:  VMRSEQ          APSR_nzcv, FPSCR
36CF94:  BNE             loc_36CFAC
36CF96:  VCMP.F32        S14, #0.0
36CF9A:  VMRS            APSR_nzcv, FPSCR
36CF9E:  ITTTT EQ
36CFA0:  MOVEQ           R1, #0
36CFA2:  MOVEQ.W         R2, #0x3F800000
36CFA6:  STRDEQ.W        R1, R2, [R0,#0x10]
36CFAA:  STREQ           R1, [R0,#0x18]
36CFAC:  VCMP.F32        S1, #0.0
36CFB0:  VMRS            APSR_nzcv, FPSCR
36CFB4:  ITT EQ
36CFB6:  VCMPEQ.F32      S3, #0.0
36CFBA:  VMRSEQ          APSR_nzcv, FPSCR
36CFBE:  BNE             locret_36CFD6
36CFC0:  VCMP.F32        S5, #0.0
36CFC4:  VMRS            APSR_nzcv, FPSCR
36CFC8:  ITTTT EQ
36CFCA:  MOVEQ.W         R1, #0x3F800000
36CFCE:  MOVEQ           R2, #0
36CFD0:  STRDEQ.W        R2, R2, [R0,#0x20]
36CFD4:  STREQ           R1, [R0,#0x28]
36CFD6:  BX              LR
36CFD8:  MOV.W           R1, #0x3F800000
36CFDC:  MOVS            R2, #0
36CFDE:  STR             R1, [R0,#0x14]
36CFE0:  STR             R2, [R0,#0x10]
36CFE2:  STR             R2, [R0,#8]
36CFE4:  STRD.W          R1, R2, [R0]
36CFE8:  STR             R2, [R0,#0x18]
36CFEA:  STRD.W          R2, R2, [R0,#0x20]
36CFEE:  STR             R1, [R0,#0x28]
36CFF0:  STRD.W          R2, R2, [R0,#0x30]
36CFF4:  STR             R2, [R0,#0x38]
36CFF6:  LDR             R1, [R0,#0xC]
36CFF8:  ORR.W           R1, R1, #0x20000
36CFFC:  ORR.W           R1, R1, #3
36D000:  STR             R1, [R0,#0xC]
36D002:  BX              LR
