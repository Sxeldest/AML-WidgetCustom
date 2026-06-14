; =========================================================
; Game Engine Function: _ZN10CCollision19ProcessLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRfP15CStoredCollPoly
; Address            : 0x2DBEE0 - 0x2DC20A
; =========================================================

2DBEE0:  PUSH            {R4,R6,R7,LR}
2DBEE2:  ADD             R7, SP, #8
2DBEE4:  VPUSH           {D8-D10}
2DBEE8:  VLDR            S2, [R3]
2DBEEC:  VLDR            S14, [R0,#0x10]
2DBEF0:  VLDR            S12, [R0]
2DBEF4:  VLDR            S4, [R3,#4]
2DBEF8:  VMUL.F32        S11, S2, S14
2DBEFC:  VLDR            S3, [R0,#0x14]
2DBF00:  VMUL.F32        S9, S2, S12
2DBF04:  VLDR            S10, [R0,#4]
2DBF08:  VMUL.F32        S7, S4, S3
2DBF0C:  VLDR            S6, [R3,#8]
2DBF10:  VMUL.F32        S5, S4, S10
2DBF14:  VLDR            S1, [R0,#0x18]
2DBF18:  VLDR            S8, [R0,#8]
2DBF1C:  VMUL.F32        S13, S6, S1
2DBF20:  VLDR            S0, [R3,#0xC]
2DBF24:  VADD.F32        S11, S11, S7
2DBF28:  VMUL.F32        S7, S6, S8
2DBF2C:  VADD.F32        S15, S9, S5
2DBF30:  VADD.F32        S11, S11, S13
2DBF34:  VADD.F32        S13, S15, S7
2DBF38:  VSUB.F32        S11, S11, S0
2DBF3C:  VSUB.F32        S13, S13, S0
2DBF40:  VMUL.F32        S11, S13, S11
2DBF44:  VCMPE.F32       S11, #0.0
2DBF48:  VMRS            APSR_nzcv, FPSCR
2DBF4C:  BGT.W           loc_2DC130
2DBF50:  VSUB.F32        S14, S14, S12
2DBF54:  LDRB            R0, [R3,#0x10]
2DBF56:  VSUB.F32        S3, S3, S10
2DBF5A:  VSUB.F32        S0, S0, S9
2DBF5E:  CMP             R0, #5; switch 6 cases
2DBF60:  VSUB.F32        S1, S1, S8
2DBF64:  VMUL.F32        S11, S2, S14
2DBF68:  VMUL.F32        S9, S4, S3
2DBF6C:  VSUB.F32        S0, S0, S5
2DBF70:  VMUL.F32        S5, S6, S1
2DBF74:  VADD.F32        S9, S11, S9
2DBF78:  VSUB.F32        S0, S0, S7
2DBF7C:  VADD.F32        S5, S9, S5
2DBF80:  VDIV.F32        S0, S0, S5
2DBF84:  VMUL.F32        S1, S1, S0
2DBF88:  VMUL.F32        S3, S3, S0
2DBF8C:  VMUL.F32        S14, S14, S0
2DBF90:  VADD.F32        S8, S8, S1
2DBF94:  VADD.F32        S10, S10, S3
2DBF98:  VADD.F32        S12, S12, S14
2DBF9C:  BHI             def_2DBF9E; jumptable 002DBF9E default case
2DBF9E:  TBB.W           [PC,R0]; switch jump
2DBFA2:  DCB 3; jump table for switch statement
2DBFA3:  DCB 0x1A
2DBFA4:  DCB 0x3A
2DBFA5:  DCB 0x50
2DBFA6:  DCB 0x70
2DBFA7:  DCB 0x86
2DBFA8:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 0
2DBFAC:  LDR             R0, [R2,#8]
2DBFAE:  ADD.W           R3, R3, R3,LSL#1
2DBFB2:  ADD.W           R3, R1, R3,LSL#2
2DBFB6:  ADD.W           R12, R12, R12,LSL#1
2DBFBA:  ADD.W           R0, R0, R0,LSL#1
2DBFBE:  VLDR            S3, [R3,#4]
2DBFC2:  ADD.W           R0, R1, R0,LSL#2
2DBFC6:  VLDR            S5, [R3,#8]
2DBFCA:  VLDR            S14, [R0,#4]
2DBFCE:  VLDR            S1, [R0,#8]
2DBFD2:  B               loc_2DC000
2DBFD4:  B               loc_2DC0EC; jumptable 002DBF9E default case
2DBFD6:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 1
2DBFDA:  LDR             R0, [R2,#8]
2DBFDC:  ADD.W           R3, R3, R3,LSL#1
2DBFE0:  ADD.W           R3, R1, R3,LSL#2
2DBFE4:  ADD.W           R12, R12, R12,LSL#1
2DBFE8:  ADD.W           R0, R0, R0,LSL#1
2DBFEC:  VLDR            S14, [R3,#4]
2DBFF0:  ADD.W           R0, R1, R0,LSL#2
2DBFF4:  VLDR            S1, [R3,#8]
2DBFF8:  VLDR            S3, [R0,#4]
2DBFFC:  VLDR            S5, [R0,#8]
2DC000:  ADD.W           R0, R1, R12,LSL#2
2DC004:  VMOV.F32        S7, S10
2DC008:  VMOV.F32        S11, S8
2DC00C:  VLDR            S9, [R0,#4]
2DC010:  VLDR            S13, [R0,#8]
2DC014:  B               loc_2DC0EC
2DC016:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 2
2DC01A:  LDR             R0, [R2,#8]
2DC01C:  ADD.W           R3, R3, R3,LSL#1
2DC020:  ADD.W           R3, R1, R3,LSL#2
2DC024:  ADD.W           R12, R12, R12,LSL#1
2DC028:  ADD.W           R0, R0, R0,LSL#1
2DC02C:  VLDR            S5, [R3]
2DC030:  ADD.W           R0, R1, R0,LSL#2
2DC034:  VLDR            S3, [R3,#8]
2DC038:  VLDR            S1, [R0]
2DC03C:  VLDR            S14, [R0,#8]
2DC040:  B               loc_2DC06C
2DC042:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 3
2DC046:  LDR             R0, [R2,#8]
2DC048:  ADD.W           R3, R3, R3,LSL#1
2DC04C:  ADD.W           R3, R1, R3,LSL#2
2DC050:  ADD.W           R12, R12, R12,LSL#1
2DC054:  ADD.W           R0, R0, R0,LSL#1
2DC058:  VLDR            S1, [R3]
2DC05C:  ADD.W           R0, R1, R0,LSL#2
2DC060:  VLDR            S14, [R3,#8]
2DC064:  VLDR            S5, [R0]
2DC068:  VLDR            S3, [R0,#8]
2DC06C:  ADD.W           R0, R1, R12,LSL#2
2DC070:  VMOV.F32        S7, S8
2DC074:  VMOV.F32        S11, S12
2DC078:  VLDR            S13, [R0]
2DC07C:  VLDR            S9, [R0,#8]
2DC080:  B               loc_2DC0EC
2DC082:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 4
2DC086:  LDR             R0, [R2,#8]
2DC088:  ADD.W           R3, R3, R3,LSL#1
2DC08C:  ADD.W           R3, R1, R3,LSL#2
2DC090:  ADD.W           R12, R12, R12,LSL#1
2DC094:  ADD.W           R0, R0, R0,LSL#1
2DC098:  VLDR            S3, [R3]
2DC09C:  ADD.W           R0, R1, R0,LSL#2
2DC0A0:  VLDR            S5, [R3,#4]
2DC0A4:  VLDR            S14, [R0]
2DC0A8:  VLDR            S1, [R0,#4]
2DC0AC:  B               loc_2DC0D8
2DC0AE:  LDRD.W          R12, R3, [R2]; jumptable 002DBF9E case 5
2DC0B2:  LDR             R0, [R2,#8]
2DC0B4:  ADD.W           R3, R3, R3,LSL#1
2DC0B8:  ADD.W           R3, R1, R3,LSL#2
2DC0BC:  ADD.W           R12, R12, R12,LSL#1
2DC0C0:  ADD.W           R0, R0, R0,LSL#1
2DC0C4:  VLDR            S14, [R3]
2DC0C8:  ADD.W           R0, R1, R0,LSL#2
2DC0CC:  VLDR            S1, [R3,#4]
2DC0D0:  VLDR            S3, [R0]
2DC0D4:  VLDR            S5, [R0,#4]
2DC0D8:  VMOV.F32        S7, S12
2DC0DC:  ADD.W           R0, R1, R12,LSL#2
2DC0E0:  VMOV.F32        S11, S10
2DC0E4:  VLDR            S9, [R0]
2DC0E8:  VLDR            S13, [R0,#4]
2DC0EC:  VSUB.F32        S18, S1, S13
2DC0F0:  VSUB.F32        S15, S7, S9
2DC0F4:  VSUB.F32        S20, S14, S9
2DC0F8:  VSUB.F32        S16, S11, S13
2DC0FC:  VMUL.F32        S18, S15, S18
2DC100:  VMUL.F32        S20, S16, S20
2DC104:  VSUB.F32        S18, S20, S18
2DC108:  VCMPE.F32       S18, #0.0
2DC10C:  VMRS            APSR_nzcv, FPSCR
2DC110:  BLT             loc_2DC130
2DC112:  VSUB.F32        S13, S5, S13
2DC116:  VSUB.F32        S9, S3, S9
2DC11A:  VMUL.F32        S13, S15, S13
2DC11E:  VMUL.F32        S9, S16, S9
2DC122:  VSUB.F32        S9, S9, S13
2DC126:  VCMPE.F32       S9, #0.0
2DC12A:  VMRS            APSR_nzcv, FPSCR
2DC12E:  BLE             loc_2DC138
2DC130:  MOVS            R0, #0
2DC132:  VPOP            {D8-D10}
2DC136:  POP             {R4,R6,R7,PC}
2DC138:  VSUB.F32        S5, S5, S1
2DC13C:  MOVS            R0, #0
2DC13E:  VSUB.F32        S7, S7, S14
2DC142:  VSUB.F32        S14, S3, S14
2DC146:  VSUB.F32        S1, S11, S1
2DC14A:  VMUL.F32        S3, S7, S5
2DC14E:  VMUL.F32        S14, S1, S14
2DC152:  VSUB.F32        S14, S14, S3
2DC156:  VCMPE.F32       S14, #0.0
2DC15A:  VMRS            APSR_nzcv, FPSCR
2DC15E:  BLT             loc_2DC204
2DC160:  LDR.W           R12, [R7,#arg_4]
2DC164:  VLDR            S14, [R12]
2DC168:  VCMPE.F32       S0, S14
2DC16C:  VMRS            APSR_nzcv, FPSCR
2DC170:  BGE             loc_2DC204
2DC172:  LDR             R3, [R7,#arg_0]
2DC174:  MOVS            R4, #0
2DC176:  LDR.W           LR, [R7,#arg_8]
2DC17A:  VSTR            S12, [R3]
2DC17E:  CMP.W           LR, #0
2DC182:  VSTR            S10, [R3,#4]
2DC186:  VSTR            S8, [R3,#8]
2DC18A:  VSTR            S2, [R3,#0x10]
2DC18E:  VSTR            S4, [R3,#0x14]
2DC192:  VSTR            S6, [R3,#0x18]
2DC196:  LDRB            R0, [R2,#0xC]
2DC198:  STRB.W          R4, [R3,#0x24]
2DC19C:  STRB.W          R0, [R3,#0x23]
2DC1A0:  LDRB            R0, [R2,#0xD]
2DC1A2:  STRH            R4, [R3,#0x20]
2DC1A4:  STRB.W          R0, [R3,#0x25]
2DC1A8:  BEQ             loc_2DC1FE
2DC1AA:  LDR             R0, [R2]
2DC1AC:  ADD.W           R0, R0, R0,LSL#1
2DC1B0:  ADD.W           R0, R1, R0,LSL#2
2DC1B4:  VLDR            D16, [R0]
2DC1B8:  LDR             R0, [R0,#8]
2DC1BA:  STR.W           R0, [LR,#8]
2DC1BE:  VSTR            D16, [LR]
2DC1C2:  LDR             R0, [R2,#4]
2DC1C4:  ADD.W           R0, R0, R0,LSL#1
2DC1C8:  ADD.W           R0, R1, R0,LSL#2
2DC1CC:  VLDR            D16, [R0]
2DC1D0:  LDR             R0, [R0,#8]
2DC1D2:  STR.W           R0, [LR,#0x14]
2DC1D6:  VSTR            D16, [LR,#0xC]
2DC1DA:  LDR             R0, [R2,#8]
2DC1DC:  ADD.W           R0, R0, R0,LSL#1
2DC1E0:  ADD.W           R0, R1, R0,LSL#2
2DC1E4:  VLDR            D16, [R0]
2DC1E8:  LDR             R0, [R0,#8]
2DC1EA:  STR.W           R0, [LR,#0x20]
2DC1EE:  MOVS            R0, #1
2DC1F0:  STRB.W          R0, [LR,#0x24]
2DC1F4:  VSTR            D16, [LR,#0x18]
2DC1F8:  LDRB            R0, [R2,#0xD]
2DC1FA:  STR.W           R0, [LR,#0x28]
2DC1FE:  MOVS            R0, #1
2DC200:  VSTR            S0, [R12]
2DC204:  VPOP            {D8-D10}
2DC208:  POP             {R4,R6,R7,PC}
