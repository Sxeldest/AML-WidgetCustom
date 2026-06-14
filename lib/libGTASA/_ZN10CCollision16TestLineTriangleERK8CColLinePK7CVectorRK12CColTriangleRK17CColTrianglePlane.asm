; =========================================================
; Game Engine Function: _ZN10CCollision16TestLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlane
; Address            : 0x2DBC68 - 0x2DBEDE
; =========================================================

2DBC68:  VLDR            S6, [R3]
2DBC6C:  VLDR            S14, [R0,#0x10]
2DBC70:  VLDR            S2, [R0]
2DBC74:  VLDR            S10, [R3,#4]
2DBC78:  VMUL.F32        S11, S6, S14
2DBC7C:  VLDR            S3, [R0,#0x14]
2DBC80:  VMUL.F32        S9, S6, S2
2DBC84:  VLDR            S4, [R0,#4]
2DBC88:  VMUL.F32        S7, S10, S3
2DBC8C:  VLDR            S8, [R3,#8]
2DBC90:  VMUL.F32        S5, S10, S4
2DBC94:  VLDR            S1, [R0,#0x18]
2DBC98:  VLDR            S0, [R0,#8]
2DBC9C:  VMUL.F32        S13, S8, S1
2DBCA0:  VLDR            S12, [R3,#0xC]
2DBCA4:  VADD.F32        S11, S11, S7
2DBCA8:  VMUL.F32        S7, S8, S0
2DBCAC:  VADD.F32        S15, S9, S5
2DBCB0:  VADD.F32        S11, S11, S13
2DBCB4:  VADD.F32        S13, S15, S7
2DBCB8:  VSUB.F32        S11, S11, S12
2DBCBC:  VSUB.F32        S13, S13, S12
2DBCC0:  VMUL.F32        S11, S13, S11
2DBCC4:  VCMPE.F32       S11, #0.0
2DBCC8:  VMRS            APSR_nzcv, FPSCR
2DBCCC:  BGT.W           loc_2DBE8E
2DBCD0:  LDRB            R0, [R3,#0x10]
2DBCD2:  CMP             R0, #5; switch 6 cases
2DBCD4:  BHI             def_2DBD1E; jumptable 002DBD1E default case
2DBCD6:  VSUB.F32        S3, S3, S4
2DBCDA:  VSUB.F32        S14, S14, S2
2DBCDE:  VSUB.F32        S12, S12, S9
2DBCE2:  VSUB.F32        S1, S1, S0
2DBCE6:  VMUL.F32        S10, S10, S3
2DBCEA:  VMUL.F32        S6, S6, S14
2DBCEE:  VSUB.F32        S12, S12, S5
2DBCF2:  VMUL.F32        S8, S8, S1
2DBCF6:  VADD.F32        S6, S6, S10
2DBCFA:  VSUB.F32        S10, S12, S7
2DBCFE:  VADD.F32        S6, S6, S8
2DBD02:  VDIV.F32        S6, S10, S6
2DBD06:  VMUL.F32        S8, S1, S6
2DBD0A:  VMUL.F32        S10, S3, S6
2DBD0E:  VMUL.F32        S6, S14, S6
2DBD12:  VADD.F32        S0, S0, S8
2DBD16:  VADD.F32        S1, S4, S10
2DBD1A:  VADD.F32        S3, S2, S6
2DBD1E:  TBB.W           [PC,R0]; switch jump
2DBD22:  DCB 3; jump table for switch statement
2DBD23:  DCB 0x1A
2DBD24:  DCB 0x38
2DBD25:  DCB 0x4E
2DBD26:  DCB 0x6E
2DBD27:  DCB 0x84
2DBD28:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 0
2DBD2C:  LDR             R2, [R2,#8]
2DBD2E:  ADD.W           R3, R3, R3,LSL#1
2DBD32:  ADD.W           R3, R1, R3,LSL#2
2DBD36:  ADD.W           R0, R0, R0,LSL#1
2DBD3A:  ADD.W           R2, R2, R2,LSL#1
2DBD3E:  VLDR            S6, [R3,#4]
2DBD42:  ADD.W           R2, R1, R2,LSL#2
2DBD46:  VLDR            S8, [R3,#8]
2DBD4A:  VLDR            S2, [R2,#4]
2DBD4E:  VLDR            S4, [R2,#8]
2DBD52:  B               loc_2DBD80
2DBD54:  B               loc_2DBE68; jumptable 002DBD1E default case
2DBD56:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 1
2DBD5A:  LDR             R2, [R2,#8]
2DBD5C:  ADD.W           R3, R3, R3,LSL#1
2DBD60:  ADD.W           R3, R1, R3,LSL#2
2DBD64:  ADD.W           R0, R0, R0,LSL#1
2DBD68:  ADD.W           R2, R2, R2,LSL#1
2DBD6C:  VLDR            S2, [R3,#4]
2DBD70:  ADD.W           R2, R1, R2,LSL#2
2DBD74:  VLDR            S4, [R3,#8]
2DBD78:  VLDR            S6, [R2,#4]
2DBD7C:  VLDR            S8, [R2,#8]
2DBD80:  ADD.W           R0, R1, R0,LSL#2
2DBD84:  VMOV.F32        S10, S1
2DBD88:  VLDR            S12, [R0,#4]
2DBD8C:  VLDR            S14, [R0,#8]
2DBD90:  B               loc_2DBE68
2DBD92:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 2
2DBD96:  LDR             R2, [R2,#8]
2DBD98:  ADD.W           R3, R3, R3,LSL#1
2DBD9C:  ADD.W           R3, R1, R3,LSL#2
2DBDA0:  ADD.W           R0, R0, R0,LSL#1
2DBDA4:  ADD.W           R2, R2, R2,LSL#1
2DBDA8:  VLDR            S8, [R3]
2DBDAC:  ADD.W           R2, R1, R2,LSL#2
2DBDB0:  VLDR            S6, [R3,#8]
2DBDB4:  VLDR            S4, [R2]
2DBDB8:  VLDR            S2, [R2,#8]
2DBDBC:  B               loc_2DBDE8
2DBDBE:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 3
2DBDC2:  LDR             R2, [R2,#8]
2DBDC4:  ADD.W           R3, R3, R3,LSL#1
2DBDC8:  ADD.W           R3, R1, R3,LSL#2
2DBDCC:  ADD.W           R0, R0, R0,LSL#1
2DBDD0:  ADD.W           R2, R2, R2,LSL#1
2DBDD4:  VLDR            S4, [R3]
2DBDD8:  ADD.W           R2, R1, R2,LSL#2
2DBDDC:  VLDR            S2, [R3,#8]
2DBDE0:  VLDR            S8, [R2]
2DBDE4:  VLDR            S6, [R2,#8]
2DBDE8:  ADD.W           R0, R1, R0,LSL#2
2DBDEC:  VMOV.F32        S10, S0
2DBDF0:  VMOV.F32        S0, S3
2DBDF4:  VLDR            S14, [R0]
2DBDF8:  VLDR            S12, [R0,#8]
2DBDFC:  B               loc_2DBE68
2DBDFE:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 4
2DBE02:  LDR             R2, [R2,#8]
2DBE04:  ADD.W           R3, R3, R3,LSL#1
2DBE08:  ADD.W           R3, R1, R3,LSL#2
2DBE0C:  ADD.W           R0, R0, R0,LSL#1
2DBE10:  ADD.W           R2, R2, R2,LSL#1
2DBE14:  VLDR            S6, [R3]
2DBE18:  ADD.W           R2, R1, R2,LSL#2
2DBE1C:  VLDR            S8, [R3,#4]
2DBE20:  VLDR            S2, [R2]
2DBE24:  VLDR            S4, [R2,#4]
2DBE28:  B               loc_2DBE54
2DBE2A:  LDRD.W          R0, R3, [R2]; jumptable 002DBD1E case 5
2DBE2E:  LDR             R2, [R2,#8]
2DBE30:  ADD.W           R3, R3, R3,LSL#1
2DBE34:  ADD.W           R3, R1, R3,LSL#2
2DBE38:  ADD.W           R0, R0, R0,LSL#1
2DBE3C:  ADD.W           R2, R2, R2,LSL#1
2DBE40:  VLDR            S2, [R3]
2DBE44:  ADD.W           R2, R1, R2,LSL#2
2DBE48:  VLDR            S4, [R3,#4]
2DBE4C:  VLDR            S6, [R2]
2DBE50:  VLDR            S8, [R2,#4]
2DBE54:  VMOV.F32        S10, S3
2DBE58:  ADD.W           R0, R1, R0,LSL#2
2DBE5C:  VMOV.F32        S0, S1
2DBE60:  VLDR            S12, [R0]
2DBE64:  VLDR            S14, [R0,#4]
2DBE68:  VSUB.F32        S5, S4, S14
2DBE6C:  VSUB.F32        S1, S10, S12
2DBE70:  VSUB.F32        S7, S2, S12
2DBE74:  VSUB.F32        S3, S0, S14
2DBE78:  VMUL.F32        S5, S1, S5
2DBE7C:  VMUL.F32        S7, S3, S7
2DBE80:  VSUB.F32        S5, S7, S5
2DBE84:  VCMPE.F32       S5, #0.0
2DBE88:  VMRS            APSR_nzcv, FPSCR
2DBE8C:  BGE             loc_2DBE92
2DBE8E:  MOVS            R0, #0
2DBE90:  BX              LR
2DBE92:  VSUB.F32        S14, S8, S14
2DBE96:  MOVS            R0, #0
2DBE98:  VSUB.F32        S12, S6, S12
2DBE9C:  VMUL.F32        S14, S1, S14
2DBEA0:  VMUL.F32        S12, S3, S12
2DBEA4:  VSUB.F32        S12, S12, S14
2DBEA8:  VCMPE.F32       S12, #0.0
2DBEAC:  VMRS            APSR_nzcv, FPSCR
2DBEB0:  IT GT
2DBEB2:  BXGT            LR
2DBEB4:  VSUB.F32        S10, S10, S2
2DBEB8:  VSUB.F32        S8, S8, S4
2DBEBC:  VSUB.F32        S0, S0, S4
2DBEC0:  VSUB.F32        S2, S6, S2
2DBEC4:  VMUL.F32        S4, S10, S8
2DBEC8:  VMUL.F32        S0, S0, S2
2DBECC:  VSUB.F32        S0, S0, S4
2DBED0:  VCMPE.F32       S0, #0.0
2DBED4:  VMRS            APSR_nzcv, FPSCR
2DBED8:  IT GE
2DBEDA:  MOVGE           R0, #1
2DBEDC:  BX              LR
