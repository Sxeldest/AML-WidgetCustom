; =========================================================
; Game Engine Function: sub_1DBB08
; Address            : 0x1DBB08 - 0x1DBE84
; =========================================================

1DBB08:  SUB             R2, R2, #1; switch 22 cases
1DBB0C:  CMP             R2, #0x15
1DBB10:  BHI             def_1DBB24; jumptable 001DBB24 default case, cases 11,14
1DBB14:  VMOV            S0, R3
1DBB18:  ADR             R3, jpt_1DBB24
1DBB1C:  MOV             R2, R2,LSL#2
1DBB20:  LDR             R2, [R2,R3]
1DBB24:  ADD             PC, R2, R3; switch jump
1DBB28:  DCD loc_1DBB80 - 0x1DBB28; jump table for switch statement
1DBB2C:  DCD loc_1DBBA4 - 0x1DBB28; jumptable 001DBB24 case 2
1DBB30:  DCD loc_1DBBC8 - 0x1DBB28; jumptable 001DBB24 case 3
1DBB34:  DCD loc_1DBBEC - 0x1DBB28; jumptable 001DBB24 case 4
1DBB38:  DCD loc_1DBC10 - 0x1DBB28; jumptable 001DBB24 case 5
1DBB3C:  DCD loc_1DBC34 - 0x1DBB28; jumptable 001DBB24 case 6
1DBB40:  DCD loc_1DBC5C - 0x1DBB28; jumptable 001DBB24 case 7
1DBB44:  DCD loc_1DBC84 - 0x1DBB28; jumptable 001DBB24 case 8
1DBB48:  DCD loc_1DBCAC - 0x1DBB28; jumptable 001DBB24 case 9
1DBB4C:  DCD loc_1DBCD0 - 0x1DBB28; jumptable 001DBB24 case 10
1DBB50:  DCD def_1DBB24 - 0x1DBB28; jumptable 001DBB24 default case, cases 11,14
1DBB54:  DCD loc_1DBD00 - 0x1DBB28; jumptable 001DBB24 case 12
1DBB58:  DCD loc_1DBD24 - 0x1DBB28; jumptable 001DBB24 case 13
1DBB5C:  DCD def_1DBB24 - 0x1DBB28; jumptable 001DBB24 default case, cases 11,14
1DBB60:  DCD loc_1DBD48 - 0x1DBB28; jumptable 001DBB24 case 15
1DBB64:  DCD loc_1DBD70 - 0x1DBB28; jumptable 001DBB24 case 16
1DBB68:  DCD loc_1DBD94 - 0x1DBB28; jumptable 001DBB24 case 17
1DBB6C:  DCD loc_1DBDBC - 0x1DBB28; jumptable 001DBB24 case 18
1DBB70:  DCD loc_1DBDE0 - 0x1DBB28; jumptable 001DBB24 case 19
1DBB74:  DCD loc_1DBE08 - 0x1DBB28; jumptable 001DBB24 case 20
1DBB78:  DCD loc_1DBE30 - 0x1DBB28; jumptable 001DBB24 case 21
1DBB7C:  DCD loc_1DBE58 - 0x1DBB28; jumptable 001DBB24 case 22
1DBB80:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 1
1DBB84:  VMRS            APSR_nzcv, FPSCR
1DBB88:  BLT             loc_1DBE78
1DBB8C:  VMOV.F32        S2, #1.0
1DBB90:  VCMPE.F32       S0, S2
1DBB94:  VMRS            APSR_nzcv, FPSCR
1DBB98:  VSTRLE          S0, [R0,#4]
1DBB9C:  BXLE            LR
1DBBA0:  B               loc_1DBE78
1DBBA4:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 2
1DBBA8:  VMRS            APSR_nzcv, FPSCR
1DBBAC:  BLT             loc_1DBE78
1DBBB0:  VMOV.F32        S2, #1.0
1DBBB4:  VCMPE.F32       S0, S2
1DBBB8:  VMRS            APSR_nzcv, FPSCR
1DBBBC:  VSTRLE          S0, [R0,#8]
1DBBC0:  BXLE            LR
1DBBC4:  B               loc_1DBE78
1DBBC8:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 3
1DBBCC:  VMRS            APSR_nzcv, FPSCR
1DBBD0:  BLT             loc_1DBE78
1DBBD4:  VMOV.F32        S2, #1.0
1DBBD8:  VCMPE.F32       S0, S2
1DBBDC:  VMRS            APSR_nzcv, FPSCR
1DBBE0:  VSTRLE          S0, [R0,#0xC]
1DBBE4:  BXLE            LR
1DBBE8:  B               loc_1DBE78
1DBBEC:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 4
1DBBF0:  VMRS            APSR_nzcv, FPSCR
1DBBF4:  BLT             loc_1DBE78
1DBBF8:  VMOV.F32        S2, #1.0
1DBBFC:  VCMPE.F32       S0, S2
1DBC00:  VMRS            APSR_nzcv, FPSCR
1DBC04:  VSTRLE          S0, [R0,#0x10]
1DBC08:  BXLE            LR
1DBC0C:  B               loc_1DBE78
1DBC10:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 5
1DBC14:  VMRS            APSR_nzcv, FPSCR
1DBC18:  BLT             loc_1DBE78
1DBC1C:  VMOV.F32        S2, #1.0
1DBC20:  VCMPE.F32       S0, S2
1DBC24:  VMRS            APSR_nzcv, FPSCR
1DBC28:  VSTRLE          S0, [R0,#0x38]
1DBC2C:  BXLE            LR
1DBC30:  B               loc_1DBE78
1DBC34:  VLDR            S2, =0.1; jumptable 001DBB24 case 6
1DBC38:  VCMPE.F32       S0, S2
1DBC3C:  VMRS            APSR_nzcv, FPSCR
1DBC40:  BLT             loc_1DBE78
1DBC44:  VMOV.F32        S2, #20.0
1DBC48:  VCMPE.F32       S0, S2
1DBC4C:  VMRS            APSR_nzcv, FPSCR
1DBC50:  VSTRLE          S0, [R0,#0x14]
1DBC54:  BXLE            LR
1DBC58:  B               loc_1DBE78
1DBC5C:  VLDR            S2, =0.1; jumptable 001DBB24 case 7
1DBC60:  VCMPE.F32       S0, S2
1DBC64:  VMRS            APSR_nzcv, FPSCR
1DBC68:  BLT             loc_1DBE78
1DBC6C:  VMOV.F32        S2, #2.0
1DBC70:  VCMPE.F32       S0, S2
1DBC74:  VMRS            APSR_nzcv, FPSCR
1DBC78:  VSTRLE          S0, [R0,#0x18]
1DBC7C:  BXLE            LR
1DBC80:  B               loc_1DBE78
1DBC84:  VLDR            S2, =0.1; jumptable 001DBB24 case 8
1DBC88:  VCMPE.F32       S0, S2
1DBC8C:  VMRS            APSR_nzcv, FPSCR
1DBC90:  BLT             loc_1DBE78
1DBC94:  VMOV.F32        S2, #2.0
1DBC98:  VCMPE.F32       S0, S2
1DBC9C:  VMRS            APSR_nzcv, FPSCR
1DBCA0:  VSTRLE          S0, [R0,#0x3C]
1DBCA4:  BXLE            LR
1DBCA8:  B               loc_1DBE78
1DBCAC:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 9
1DBCB0:  VMRS            APSR_nzcv, FPSCR
1DBCB4:  BLT             loc_1DBE78
1DBCB8:  VLDR            S2, =3.16
1DBCBC:  VCMPE.F32       S0, S2
1DBCC0:  VMRS            APSR_nzcv, FPSCR
1DBCC4:  VSTRLE          S0, [R0,#0x1C]
1DBCC8:  BXLE            LR
1DBCCC:  B               loc_1DBE78
1DBCD0:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 10
1DBCD4:  VMRS            APSR_nzcv, FPSCR
1DBCD8:  BLT             loc_1DBE78
1DBCDC:  VLDR            S2, =0.3
1DBCE0:  VCMPE.F32       S0, S2
1DBCE4:  VMRS            APSR_nzcv, FPSCR
1DBCE8:  VSTRLE          S0, [R0,#0x20]
1DBCEC:  BXLE            LR
1DBCF0:  B               loc_1DBE78
1DBCF4:  MOV             R0, R1; jumptable 001DBB24 default case, cases 11,14
1DBCF8:  MOVW            R1, #0xA002
1DBCFC:  B               j_alSetError
1DBD00:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 12
1DBD04:  VMRS            APSR_nzcv, FPSCR
1DBD08:  BLT             loc_1DBE78
1DBD0C:  VMOV.F32        S2, #10.0
1DBD10:  VCMPE.F32       S0, S2
1DBD14:  VMRS            APSR_nzcv, FPSCR
1DBD18:  VSTRLE          S0, [R0,#0x24]
1DBD1C:  BXLE            LR
1DBD20:  B               loc_1DBE78
1DBD24:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 13
1DBD28:  VMRS            APSR_nzcv, FPSCR
1DBD2C:  BLT             loc_1DBE78
1DBD30:  VLDR            S2, =0.1
1DBD34:  VCMPE.F32       S0, S2
1DBD38:  VMRS            APSR_nzcv, FPSCR
1DBD3C:  VSTRLE          S0, [R0,#0x28]
1DBD40:  BXLE            LR
1DBD44:  B               loc_1DBE78
1DBD48:  VLDR            S2, =0.075; jumptable 001DBB24 case 15
1DBD4C:  VCMPE.F32       S0, S2
1DBD50:  VMRS            APSR_nzcv, FPSCR
1DBD54:  BLT             loc_1DBE78
1DBD58:  VMOV.F32        S2, #0.25
1DBD5C:  VCMPE.F32       S0, S2
1DBD60:  VMRS            APSR_nzcv, FPSCR
1DBD64:  VSTRLE          S0, [R0,#0x58]
1DBD68:  BXLE            LR
1DBD6C:  B               loc_1DBE78
1DBD70:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 16
1DBD74:  VMRS            APSR_nzcv, FPSCR
1DBD78:  BLT             loc_1DBE78
1DBD7C:  VMOV.F32        S2, #1.0
1DBD80:  VCMPE.F32       S0, S2
1DBD84:  VMRS            APSR_nzcv, FPSCR
1DBD88:  VSTRLE          S0, [R0,#0x5C]
1DBD8C:  BXLE            LR
1DBD90:  B               loc_1DBE78
1DBD94:  VLDR            S2, =0.04; jumptable 001DBB24 case 17
1DBD98:  VCMPE.F32       S0, S2
1DBD9C:  VMRS            APSR_nzcv, FPSCR
1DBDA0:  BLT             loc_1DBE78
1DBDA4:  VMOV.F32        S2, #4.0
1DBDA8:  VCMPE.F32       S0, S2
1DBDAC:  VMRS            APSR_nzcv, FPSCR
1DBDB0:  VSTRLE          S0, [R0,#0x60]
1DBDB4:  BXLE            LR
1DBDB8:  B               loc_1DBE78
1DBDBC:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 18
1DBDC0:  VMRS            APSR_nzcv, FPSCR
1DBDC4:  BLT             loc_1DBE78
1DBDC8:  VMOV.F32        S2, #1.0
1DBDCC:  VCMPE.F32       S0, S2
1DBDD0:  VMRS            APSR_nzcv, FPSCR
1DBDD4:  VSTRLE          S0, [R0,#0x64]
1DBDD8:  BXLE            LR
1DBDDC:  B               loc_1DBE78
1DBDE0:  VLDR            S2, =0.892; jumptable 001DBB24 case 19
1DBDE4:  VCMPE.F32       S0, S2
1DBDE8:  VMRS            APSR_nzcv, FPSCR
1DBDEC:  BLT             loc_1DBE78
1DBDF0:  VMOV.F32        S2, #1.0
1DBDF4:  VCMPE.F32       S0, S2
1DBDF8:  VMRS            APSR_nzcv, FPSCR
1DBDFC:  VSTRLE          S0, [R0,#0x2C]
1DBE00:  BXLE            LR
1DBE04:  B               loc_1DBE78
1DBE08:  VLDR            S2, =1000.0; jumptable 001DBB24 case 20
1DBE0C:  VCMPE.F32       S0, S2
1DBE10:  VMRS            APSR_nzcv, FPSCR
1DBE14:  BLT             loc_1DBE78
1DBE18:  VLDR            S2, =20000.0
1DBE1C:  VCMPE.F32       S0, S2
1DBE20:  VMRS            APSR_nzcv, FPSCR
1DBE24:  VSTRLE          S0, [R0,#0x68]
1DBE28:  BXLE            LR
1DBE2C:  B               loc_1DBE78
1DBE30:  VMOV.F32        S2, #20.0; jumptable 001DBB24 case 21
1DBE34:  VCMPE.F32       S0, S2
1DBE38:  VMRS            APSR_nzcv, FPSCR
1DBE3C:  BLT             loc_1DBE78
1DBE40:  VLDR            S2, =1000.0
1DBE44:  VCMPE.F32       S0, S2
1DBE48:  VMRS            APSR_nzcv, FPSCR
1DBE4C:  VSTRLE          S0, [R0,#0x6C]
1DBE50:  BXLE            LR
1DBE54:  B               loc_1DBE78
1DBE58:  VCMPE.F32       S0, #0.0; jumptable 001DBB24 case 22
1DBE5C:  VMRS            APSR_nzcv, FPSCR
1DBE60:  BLT             loc_1DBE78
1DBE64:  VMOV.F32        S2, #10.0
1DBE68:  VCMPE.F32       S0, S2
1DBE6C:  VMRS            APSR_nzcv, FPSCR
1DBE70:  VSTRLE          S0, [R0,#0x30]
1DBE74:  BXLE            LR
1DBE78:  MOV             R0, R1
1DBE7C:  MOVW            R1, #0xA003
1DBE80:  B               j_alSetError
