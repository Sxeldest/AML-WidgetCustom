; =========================================================
; Game Engine Function: _ZN10CWorldScan9ScanWorldEP5RwV2diPFviiE
; Address            : 0x5CED84 - 0x5CF6BA
; =========================================================

5CED84:  PUSH            {R4-R7,LR}
5CED86:  ADD             R7, SP, #0xC
5CED88:  PUSH.W          {R8-R11}
5CED8C:  SUB             SP, SP, #4
5CED8E:  VPUSH           {D8-D15}
5CED92:  SUB             SP, SP, #0x70
5CED94:  MOV             R5, R1
5CED96:  MOVS            R6, #0
5CED98:  MOV             R11, R0
5CED9A:  CMP             R5, #2
5CED9C:  STRB.W          R6, [SP,#0xD0+var_64]
5CEDA0:  STR             R2, [SP,#0xD0+var_A0]
5CEDA2:  STR             R6, [SP,#0xD0+var_68]
5CEDA4:  BLT             loc_5CEE88
5CEDA6:  ADD.W           R12, R11, #8
5CEDAA:  MOV.W           LR, #0
5CEDAE:  MOV             R0, LR
5CEDB0:  ADD.W           LR, R0, #1
5CEDB4:  CMP             LR, R5
5CEDB6:  BGE             loc_5CEE4E
5CEDB8:  ADD.W           R10, R11, R0,LSL#3
5CEDBC:  MOV             R6, LR
5CEDBE:  ADD.W           R8, R10, #4
5CEDC2:  ADD.W           R4, R11, R6,LSL#3
5CEDC6:  VLDR            S0, [R10]
5CEDCA:  VLDR            S2, [R4]
5CEDCE:  VCMP.F32        S0, S2
5CEDD2:  VMRS            APSR_nzcv, FPSCR
5CEDD6:  BNE             loc_5CEE48
5CEDD8:  VLDR            S0, [R8]
5CEDDC:  VLDR            S2, [R4,#4]
5CEDE0:  VCMP.F32        S0, S2
5CEDE4:  VMRS            APSR_nzcv, FPSCR
5CEDE8:  BNE             loc_5CEE48
5CEDEA:  SUBS            R5, #1
5CEDEC:  CMP             R6, R5
5CEDEE:  BGE             loc_5CEE46
5CEDF0:  SUBS            R1, R5, R6
5CEDF2:  MOV             R0, R6
5CEDF4:  CMP             R1, #4
5CEDF6:  BCC             loc_5CEE30
5CEDF8:  BIC.W           R9, R1, #3
5CEDFC:  MOV             R0, R6
5CEDFE:  CMP.W           R9, #0
5CEE02:  BEQ             loc_5CEE30
5CEE04:  ADD.W           R0, R6, R9
5CEE08:  MOV             R3, R9
5CEE0A:  ADD.W           R2, R4, #8
5CEE0E:  SUBS            R3, #4
5CEE10:  VLD1.32         {D16-D17}, [R2]
5CEE14:  ADD.W           R2, R4, #0x18
5CEE18:  VLD1.32         {D18-D19}, [R2]
5CEE1C:  ADD.W           R2, R4, #0x20 ; ' '
5CEE20:  VST1.32         {D16-D17}, [R4]!
5CEE24:  VST1.32         {D18-D19}, [R4]
5CEE28:  MOV             R4, R2
5CEE2A:  BNE             loc_5CEE0A
5CEE2C:  CMP             R1, R9
5CEE2E:  BEQ             loc_5CEE46
5CEE30:  ADD.W           R1, R12, R0,LSL#3
5CEE34:  SUBS            R0, R5, R0
5CEE36:  LDRD.W          R2, R3, [R1]
5CEE3A:  SUBS            R0, #1
5CEE3C:  STRD.W          R2, R3, [R1,#-8]
5CEE40:  ADD.W           R1, R1, #8
5CEE44:  BNE             loc_5CEE36
5CEE46:  SUBS            R6, #1
5CEE48:  ADDS            R6, #1
5CEE4A:  CMP             R6, R5
5CEE4C:  BLT             loc_5CEDC2
5CEE4E:  SUBS            R0, R5, #1
5CEE50:  CMP             LR, R0
5CEE52:  BLT             loc_5CEDAE
5CEE54:  CMP             R5, #2
5CEE56:  BLT             loc_5CEE86
5CEE58:  ADD.W           R0, R11, #0xC
5CEE5C:  VLDR            S0, [R11,#4]
5CEE60:  MOVS            R1, #1
5CEE62:  MOVS            R6, #0
5CEE64:  VLDR            S2, [R0]
5CEE68:  ADDS            R0, #8
5CEE6A:  VCMPE.F32       S2, S0
5CEE6E:  VMRS            APSR_nzcv, FPSCR
5CEE72:  VMIN.F32        D2, D1, D0
5CEE76:  VMOV            D0, D2
5CEE7A:  IT LT
5CEE7C:  MOVLT           R6, R1
5CEE7E:  ADDS            R1, #1
5CEE80:  CMP             R5, R1
5CEE82:  BNE             loc_5CEE64
5CEE84:  B               loc_5CEE88
5CEE86:  MOVS            R6, #0
5CEE88:  LDR.W           R0, [R11,R6,LSL#3]
5CEE8C:  MOVS            R1, #1
5CEE8E:  VLDR            S16, =0.0
5CEE92:  STR             R0, [SP,#0xD0+var_90]
5CEE94:  ADD.W           R0, R11, R6,LSL#3
5CEE98:  VLDR            S18, =100000.0
5CEE9C:  LDR             R0, [R0,#4]
5CEE9E:  STR             R0, [SP,#0xD0+var_8C]
5CEEA0:  ADD             R0, SP, #0xD0+var_68
5CEEA2:  VLDR            S20, =6.2832
5CEEA6:  STRB            R1, [R0,R6]
5CEEA8:  MOVS            R0, #0
5CEEAA:  VLDR            S22, =-6.2832
5CEEAE:  STR             R0, [SP,#0xD0+var_94]
5CEEB0:  MOVS            R0, #1
5CEEB2:  STR             R0, [SP,#0xD0+var_9C]
5CEEB4:  CMP             R5, #1
5CEEB6:  BGE             loc_5CEEEA
5CEEB8:  B               loc_5CEF6C
5CEEBA:  LDR             R2, [SP,#0xD0+var_9C]
5CEEBC:  ADD             R1, SP, #0xD0+var_90
5CEEBE:  LDR.W           R0, [R11,R4,LSL#3]
5CEEC2:  VADD.F32        S16, S16, S24
5CEEC6:  MOV             R6, R4
5CEEC8:  STR.W           R0, [R1,R2,LSL#3]
5CEECC:  ADD.W           R0, R1, R2,LSL#3
5CEED0:  ADD.W           R1, R11, R4,LSL#3
5CEED4:  ADDS            R2, #1; float
5CEED6:  LDR             R1, [R1,#4]
5CEED8:  STR             R1, [R0,#4]
5CEEDA:  MOVS            R0, #1
5CEEDC:  STRB            R0, [R3,R4]
5CEEDE:  LDR             R0, [SP,#0xD0+var_94]
5CEEE0:  STR             R2, [SP,#0xD0+var_9C]
5CEEE2:  ADDS            R0, #1
5CEEE4:  STR             R0, [SP,#0xD0+var_94]
5CEEE6:  CMP             R5, #1
5CEEE8:  BLT             loc_5CEF6C
5CEEEA:  ADD.W           R10, R11, R6,LSL#3
5CEEEE:  VMOV            D12, D9
5CEEF2:  ADD.W           R9, R10, #4
5CEEF6:  MOV.W           R8, #0
5CEEFA:  CMP             R8, R6
5CEEFC:  BEQ             loc_5CEF62
5CEEFE:  ADD.W           R0, R11, R8,LSL#3
5CEF02:  VLDR            S0, [R10]
5CEF06:  VLDR            S6, [R9]
5CEF0A:  VLDR            S2, [R0]
5CEF0E:  VLDR            S4, [R0,#4]
5CEF12:  VSUB.F32        S0, S2, S0
5CEF16:  VSUB.F32        S2, S4, S6
5CEF1A:  VMOV            R0, S0; this
5CEF1E:  VMOV            R1, S2; float
5CEF22:  BLX.W           j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
5CEF26:  VMOV            S0, R0
5CEF2A:  VSUB.F32        S0, S0, S16
5CEF2E:  B               loc_5CEF34
5CEF30:  VADD.F32        S0, S0, S20
5CEF34:  VCMPE.F32       S0, #0.0
5CEF38:  VMRS            APSR_nzcv, FPSCR
5CEF3C:  BLT             loc_5CEF30
5CEF3E:  B               loc_5CEF44
5CEF40:  VADD.F32        S0, S0, S22
5CEF44:  VCMPE.F32       S0, S20
5CEF48:  VMRS            APSR_nzcv, FPSCR
5CEF4C:  BGE             loc_5CEF40
5CEF4E:  VCMPE.F32       S0, S24
5CEF52:  VMRS            APSR_nzcv, FPSCR
5CEF56:  VMIN.F32        D1, D0, D12
5CEF5A:  VMOV            D12, D1
5CEF5E:  IT LT
5CEF60:  MOVLT           R4, R8
5CEF62:  ADD.W           R8, R8, #1
5CEF66:  CMP             R8, R5
5CEF68:  BNE             loc_5CEEFA
5CEF6A:  B               loc_5CEF70
5CEF6C:  VMOV            D12, D9
5CEF70:  ADD             R3, SP, #0xD0+var_68
5CEF72:  LDRB            R0, [R3,R4]
5CEF74:  CMP             R0, #0
5CEF76:  BEQ             loc_5CEEBA
5CEF78:  LDR.W           R11, [SP,#0xD0+var_9C]
5CEF7C:  ADD.W           R8, SP, #0xD0+var_90
5CEF80:  CMP.W           R11, #3
5CEF84:  BLT.W           loc_5CF6AC
5CEF88:  VLDR            S16, [SP,#0xD0+var_8C]
5CEF8C:  ADD.W           R0, R8, #0xC
5CEF90:  LDR             R2, [SP,#0xD0+var_94]
5CEF92:  MOV.W           R9, #0
5CEF96:  VMOV.F32        S0, S16
5CEF9A:  MOVS            R1, #1
5CEF9C:  VLDR            S2, [R0]
5CEFA0:  VCMPE.F32       S2, S0
5CEFA4:  VMRS            APSR_nzcv, FPSCR
5CEFA8:  BGE             loc_5CEFB2
5CEFAA:  MOV             R9, R1
5CEFAC:  VMOV.F32        S0, S2
5CEFB0:  B               loc_5CEFC0
5CEFB2:  VCMPE.F32       S2, S16
5CEFB6:  VMRS            APSR_nzcv, FPSCR
5CEFBA:  IT GT
5CEFBC:  VMOVGT.F32      S16, S2
5CEFC0:  ADDS            R0, #8
5CEFC2:  SUBS            R2, #1
5CEFC4:  ADD.W           R1, R1, #1
5CEFC8:  BNE             loc_5CEF9C
5CEFCA:  VMOV            R0, S0; x
5CEFCE:  BLX.W           floorf
5CEFD2:  MOV             R4, R0
5CEFD4:  VMOV            R0, S16; x
5CEFD8:  BLX.W           floorf
5CEFDC:  VMOV            S22, R0
5CEFE0:  MOVW            R10, #0x270F
5CEFE4:  VMOV            S18, R4
5CEFE8:  MOVS            R6, #1
5CEFEA:  STR.W           R9, [SP,#0xD0+var_BC]
5CEFEE:  VMOV            S0, R10
5CEFF2:  ADD.W           R8, SP, #0xD0+var_90
5CEFF6:  VCVT.F32.S32    S0, S0
5CEFFA:  LDR             R5, [SP,#0xD0+var_BC]
5CEFFC:  CMP             R5, #1
5CEFFE:  ADD.W           R4, R8, R5,LSL#3
5CF002:  IT LT
5CF004:  MOVLT           R5, R11
5CF006:  SUBS            R5, #1
5CF008:  VLDR            S24, [R4]
5CF00C:  VCMPE.F32       S24, S0
5CF010:  VMRS            APSR_nzcv, FPSCR
5CF014:  BGE             loc_5CF02A
5CF016:  VMOV            R0, S24; x
5CF01A:  BLX.W           floorf
5CF01E:  VMOV            S0, R0
5CF022:  VCVT.S32.F32    S0, S0
5CF026:  VMOV            R10, S0
5CF02A:  VLDR            S20, [R4,#4]
5CF02E:  VMOV            R0, S20; x
5CF032:  STR             R0, [SP,#0xD0+x]
5CF034:  BLX.W           floorf
5CF038:  ADD.W           R8, R8, R5,LSL#3
5CF03C:  MOV             R4, R0
5CF03E:  STR             R5, [SP,#0xD0+var_BC]
5CF040:  VLDR            S16, [R8,#4]
5CF044:  VMOV            R0, S16; x
5CF048:  BLX.W           floorf
5CF04C:  VMOV            S0, R0
5CF050:  CMP             R6, R11
5CF052:  VMOV            S2, R4
5CF056:  VCVT.S32.F32    S0, S0
5CF05A:  VCVT.S32.F32    S2, S2
5CF05E:  BGE             loc_5CF06E
5CF060:  VMOV            R0, S0
5CF064:  ADDS            R6, #1
5CF066:  VMOV            R1, S2
5CF06A:  CMP             R1, R0
5CF06C:  BEQ             loc_5CEFEE
5CF06E:  STR.W           R9, [SP,#0xD0+var_C0]
5CF072:  VCVT.S32.F32    S0, S22
5CF076:  VCVT.S32.F32    S2, S18
5CF07A:  MOVS            R6, #1
5CF07C:  VMOV            R0, S0
5CF080:  STR             R0, [SP,#0xD0+var_C4]
5CF082:  VMOV            R0, S2
5CF086:  STR             R0, [SP,#0xD0+var_B8]
5CF088:  MOV             R0, #0xFFFFD8F1
5CF090:  STR             R0, [SP,#0xD0+var_94]
5CF092:  LDR             R0, [SP,#0xD0+var_94]
5CF094:  ADD             R1, SP, #0xD0+var_90
5CF096:  VMOV            S0, R0
5CF09A:  VCVT.F32.S32    S0, S0
5CF09E:  LDR             R5, [SP,#0xD0+var_C0]
5CF0A0:  ADD.W           R4, R1, R5,LSL#3
5CF0A4:  ADDS            R5, #1
5CF0A6:  CMP             R5, R11
5CF0A8:  VLDR            S26, [R4]
5CF0AC:  IT EQ
5CF0AE:  MOVEQ           R5, #0
5CF0B0:  VCMPE.F32       S26, S0
5CF0B4:  VMRS            APSR_nzcv, FPSCR
5CF0B8:  BLE             loc_5CF0CE
5CF0BA:  VMOV            R0, S26; x
5CF0BE:  BLX.W           floorf
5CF0C2:  VMOV            S0, R0
5CF0C6:  VCVT.S32.F32    S0, S0
5CF0CA:  VMOV            R0, S0
5CF0CE:  VLDR            S22, [R4,#4]
5CF0D2:  STR             R0, [SP,#0xD0+var_94]
5CF0D4:  VMOV            R4, S22
5CF0D8:  MOV             R0, R4; x
5CF0DA:  BLX.W           floorf
5CF0DE:  MOV             R11, R0
5CF0E0:  ADD             R0, SP, #0xD0+var_90
5CF0E2:  ADD.W           R9, R0, R5,LSL#3
5CF0E6:  STR             R5, [SP,#0xD0+var_C0]
5CF0E8:  VLDR            S18, [R9,#4]
5CF0EC:  VMOV            R0, S18; x
5CF0F0:  BLX.W           floorf
5CF0F4:  VMOV            S0, R0
5CF0F8:  VMOV            S2, R11
5CF0FC:  VCVT.S32.F32    S0, S0
5CF100:  VCVT.S32.F32    S2, S2
5CF104:  LDR.W           R11, [SP,#0xD0+var_9C]
5CF108:  CMP             R6, R11
5CF10A:  BGE             loc_5CF11A
5CF10C:  VMOV            R0, S0
5CF110:  ADDS            R6, #1
5CF112:  VMOV            R1, S2
5CF116:  CMP             R1, R0
5CF118:  BEQ             loc_5CF092
5CF11A:  VLDR            S0, [R9]
5CF11E:  VSUB.F32        S2, S18, S22
5CF122:  VLDR            S4, [R8]
5CF126:  VSUB.F32        S6, S16, S20
5CF12A:  VSUB.F32        S0, S0, S26
5CF12E:  MOV             R0, R4; x
5CF130:  VSUB.F32        S4, S4, S24
5CF134:  VDIV.F32        S28, S0, S2
5CF138:  VDIV.F32        S30, S4, S6
5CF13C:  VABS.F32        S17, S28
5CF140:  VABS.F32        S19, S30
5CF144:  BLX.W           ceilf
5CF148:  MOV             R4, R0
5CF14A:  LDR             R0, [SP,#0xD0+x]; x
5CF14C:  BLX.W           ceilf
5CF150:  VLDR            S16, =+Inf
5CF154:  VMOV            S0, R0
5CF158:  VLDR            S18, =0.0
5CF15C:  VMOV            S2, R4
5CF160:  VCMP.F32        S19, S16
5CF164:  VMRS            APSR_nzcv, FPSCR
5CF168:  VSUB.F32        S0, S0, S20
5CF16C:  VMOV.F32        S20, S18
5CF170:  VCMP.F32        S17, S16
5CF174:  VSUB.F32        S2, S2, S22
5CF178:  VMOV.F32        S22, S18
5CF17C:  IT NE
5CF17E:  VMOVNE.F32      S20, S30
5CF182:  VMRS            APSR_nzcv, FPSCR
5CF186:  VMUL.F32        S0, S0, S20
5CF18A:  VADD.F32        S24, S24, S0
5CF18E:  IT NE
5CF190:  VMOVNE.F32      S22, S28
5CF194:  LDR             R6, [SP,#0xD0+var_B8]
5CF196:  VMUL.F32        S2, S2, S22
5CF19A:  LDR             R0, [SP,#0xD0+var_C4]
5CF19C:  CMP             R6, R0
5CF19E:  VADD.F32        S26, S26, S2
5CF1A2:  BEQ             loc_5CF1D2
5CF1A4:  VCMPE.F32       S20, #0.0
5CF1A8:  VMRS            APSR_nzcv, FPSCR
5CF1AC:  BGE             loc_5CF1C8
5CF1AE:  VMOV            R0, S24; x
5CF1B2:  BLX.W           floorf
5CF1B6:  VMOV            S0, R0
5CF1BA:  VCVT.S32.F32    S0, S0
5CF1BE:  VMOV            R0, S0
5CF1C2:  CMP             R10, R0
5CF1C4:  IT GT
5CF1C6:  MOVGT           R10, R0
5CF1C8:  VCMPE.F32       S22, #0.0
5CF1CC:  VMRS            APSR_nzcv, FPSCR
5CF1D0:  BGE             loc_5CF1EC
5CF1D2:  LDR.W           R11, [SP,#0xD0+var_94]
5CF1D6:  B               loc_5CF20A
5CF1D8:  DCFS 0.0
5CF1DC:  DCFS 100000.0
5CF1E0:  DCFS 6.2832
5CF1E4:  DCFS -6.2832
5CF1E8:  DCFS +Inf
5CF1EC:  VMOV            R0, S26; x
5CF1F0:  BLX.W           floorf
5CF1F4:  VMOV            S0, R0
5CF1F8:  VCVT.S32.F32    S0, S0
5CF1FC:  LDR.W           R11, [SP,#0xD0+var_94]
5CF200:  VMOV            R0, S0
5CF204:  CMP             R11, R0
5CF206:  IT LT
5CF208:  MOVLT           R11, R0
5CF20A:  LDR             R0, [SP,#0xD0+var_C4]
5CF20C:  CMP             R6, R0
5CF20E:  BGT.W           loc_5CF66A
5CF212:  LDR.W           R0, =(NumExtraBlocks_ptr - 0x5CF21E)
5CF216:  LDR.W           R1, =(ExtraBlocksY_ptr - 0x5CF220)
5CF21A:  ADD             R0, PC; NumExtraBlocks_ptr
5CF21C:  ADD             R1, PC; ExtraBlocksY_ptr
5CF21E:  LDR             R0, [R0]; NumExtraBlocks
5CF220:  STR             R0, [SP,#0xD0+var_A4]
5CF222:  LDR.W           R0, =(ExtraBlocksX_ptr - 0x5CF22A)
5CF226:  ADD             R0, PC; ExtraBlocksX_ptr
5CF228:  LDR.W           R9, [R0]; ExtraBlocksX
5CF22C:  LDR.W           R0, =(ExtraBlocksY_ptr - 0x5CF234)
5CF230:  ADD             R0, PC; ExtraBlocksY_ptr
5CF232:  LDR             R5, [R0]; ExtraBlocksY
5CF234:  LDR.W           R0, =(ExtraBlocksX_ptr - 0x5CF23E)
5CF238:  STR             R5, [SP,#0xD0+var_AC]
5CF23A:  ADD             R0, PC; ExtraBlocksX_ptr
5CF23C:  LDR             R0, [R0]; ExtraBlocksX
5CF23E:  STR             R0, [SP,#0xD0+x]
5CF240:  LDR             R0, [R1]; ExtraBlocksY
5CF242:  STR             R0, [SP,#0xD0+var_A8]
5CF244:  LDR.W           R0, =(ExtraBlocksX_ptr - 0x5CF250)
5CF248:  LDR.W           R1, =(ExtraBlocksY_ptr - 0x5CF252)
5CF24C:  ADD             R0, PC; ExtraBlocksX_ptr
5CF24E:  ADD             R1, PC; ExtraBlocksY_ptr
5CF250:  LDR             R0, [R0]; ExtraBlocksX
5CF252:  STR             R0, [SP,#0xD0+var_B0]
5CF254:  LDR             R0, [R1]; ExtraBlocksY
5CF256:  STR             R0, [SP,#0xD0+var_B4]
5CF258:  LDR.W           R0, =(NumExtraBlocks_ptr - 0x5CF260)
5CF25C:  ADD             R0, PC; NumExtraBlocks_ptr
5CF25E:  LDR             R0, [R0]; NumExtraBlocks
5CF260:  STR             R0, [SP,#0xD0+var_94]
5CF262:  LDR             R1, [SP,#0xD0+var_C0]
5CF264:  ADD             R0, SP, #0xD0+var_90
5CF266:  ADD.W           R0, R0, R1,LSL#3
5CF26A:  STR             R0, [SP,#0xD0+var_CC]
5CF26C:  ADDS            R0, #4
5CF26E:  STR             R0, [SP,#0xD0+var_C8]
5CF270:  MOV             R8, R6
5CF272:  CMP             R10, R11
5CF274:  BGT             loc_5CF32C
5CF276:  LDR             R2, [SP,#0xD0+var_A0]
5CF278:  MOV             R0, R10
5CF27A:  MOV             R1, R8
5CF27C:  BLX             R2
5CF27E:  LDR             R0, [SP,#0xD0+var_A4]
5CF280:  LDR.W           LR, [SP,#0xD0+var_A8]
5CF284:  LDR             R4, [SP,#0xD0+var_94]
5CF286:  LDR             R0, [R0]
5CF288:  CMP             R0, #1
5CF28A:  BLT             loc_5CF322
5CF28C:  MOVS            R2, #0
5CF28E:  LDR.W           R1, [R9,R2,LSL#2]
5CF292:  CMP             R10, R1
5CF294:  ITT EQ
5CF296:  LDREQ.W         R1, [R5,R2,LSL#2]
5CF29A:  CMPEQ           R8, R1
5CF29C:  BNE             loc_5CF31C
5CF29E:  SUBS            R0, #1
5CF2A0:  CMP             R2, R0
5CF2A2:  BGE             loc_5CF318
5CF2A4:  SUBS            R3, R0, R2
5CF2A6:  CMP             R3, #3
5CF2A8:  BHI             loc_5CF2AE
5CF2AA:  MOV             R1, R2
5CF2AC:  B               loc_5CF2F2
5CF2AE:  BIC.W           R12, R3, #3
5CF2B2:  CMP.W           R12, #0
5CF2B6:  BEQ             loc_5CF2EE
5CF2B8:  LDR             R4, [SP,#0xD0+var_B0]
5CF2BA:  ADD.W           R1, R2, R12
5CF2BE:  ADD.W           R6, R4, R2,LSL#2
5CF2C2:  LDR             R4, [SP,#0xD0+var_B4]
5CF2C4:  ADD.W           R2, R4, R2,LSL#2
5CF2C8:  MOV             R4, R12
5CF2CA:  ADDS            R5, R6, #4
5CF2CC:  SUBS            R4, #4
5CF2CE:  VLD1.32         {D16-D17}, [R5]
5CF2D2:  ADD.W           R5, R2, #4
5CF2D6:  VST1.32         {D16-D17}, [R6]!
5CF2DA:  VLD1.32         {D16-D17}, [R5]
5CF2DE:  VST1.32         {D16-D17}, [R2]!
5CF2E2:  BNE             loc_5CF2CA
5CF2E4:  LDR             R5, [SP,#0xD0+var_AC]
5CF2E6:  CMP             R3, R12
5CF2E8:  LDR             R4, [SP,#0xD0+var_94]
5CF2EA:  BNE             loc_5CF2F2
5CF2EC:  B               loc_5CF318
5CF2EE:  MOV             R1, R2
5CF2F0:  LDR             R4, [SP,#0xD0+var_94]
5CF2F2:  LDR             R2, [SP,#0xD0+x]
5CF2F4:  ADD.W           R3, LR, R1,LSL#2
5CF2F8:  ADDS            R3, #4
5CF2FA:  ADD.W           R2, R2, R1,LSL#2
5CF2FE:  ADDS            R2, #4
5CF300:  LDR             R6, [R2]
5CF302:  ADDS            R1, #1
5CF304:  STR.W           R6, [R2,#-4]
5CF308:  ADDS            R2, #4
5CF30A:  LDR             R6, [R3]
5CF30C:  CMP             R1, R0
5CF30E:  STR.W           R6, [R3,#-4]
5CF312:  ADD.W           R3, R3, #4
5CF316:  BLT             loc_5CF300
5CF318:  MOVS            R2, #4
5CF31A:  STR             R0, [R4]
5CF31C:  ADDS            R2, #1
5CF31E:  CMP             R2, R0
5CF320:  BLT             loc_5CF28E
5CF322:  ADD.W           R0, R10, #1
5CF326:  CMP             R10, R11
5CF328:  MOV             R10, R0
5CF32A:  BLT             loc_5CF276
5CF32C:  LDR             R1, [SP,#0xD0+var_BC]
5CF32E:  ADD             R0, SP, #0xD0+var_90
5CF330:  ADD.W           R4, R0, R1,LSL#3
5CF334:  LDR             R0, [R4,#4]; x
5CF336:  BLX.W           floorf
5CF33A:  VMOV            S0, R0
5CF33E:  ADD.W           R6, R8, #1
5CF342:  VADD.F32        S24, S20, S24
5CF346:  VCVT.S32.F32    S0, S0
5CF34A:  VMOV            R0, S0
5CF34E:  CMP             R6, R0
5CF350:  BNE             loc_5CF3BC
5CF352:  LDR             R0, [SP,#0xD0+var_C4]
5CF354:  VCMPE.F32       S20, #0.0
5CF358:  CMP             R6, R0
5CF35A:  BNE             loc_5CF3E6
5CF35C:  VMRS            APSR_nzcv, FPSCR
5CF360:  BGE             loc_5CF3CC
5CF362:  STR             R6, [SP,#0xD0+var_B8]
5CF364:  ADD             R5, SP, #0xD0+var_90
5CF366:  LDR             R6, [SP,#0xD0+var_9C]
5CF368:  LDR.W           R11, [SP,#0xD0+var_BC]
5CF36C:  VLDR            S28, [R4]
5CF370:  CMP.W           R11, #1
5CF374:  IT LT
5CF376:  MOVLT           R11, R6
5CF378:  SUB.W           R11, R11, #1
5CF37C:  ADD.W           R0, R5, R11,LSL#3
5CF380:  VLDR            S30, [R0]
5CF384:  VMOV            R0, S30; x
5CF388:  BLX.W           floorf
5CF38C:  MOV             R4, R0
5CF38E:  VMOV            R0, S28; x
5CF392:  BLX.W           floorf
5CF396:  VMOV            S0, R0
5CF39A:  VMOV            S2, R4
5CF39E:  VCVT.S32.F32    S0, S0
5CF3A2:  VCVT.S32.F32    S2, S2
5CF3A6:  VMOV.F32        S28, S30
5CF3AA:  VMOV            R10, S0
5CF3AE:  VMOV            R0, S2
5CF3B2:  CMP             R10, R0
5CF3B4:  BGT             loc_5CF370
5CF3B6:  STR.W           R11, [SP,#0xD0+var_BC]
5CF3BA:  B               loc_5CF4C6
5CF3BC:  VCMPE.F32       S20, #0.0
5CF3C0:  VMRS            APSR_nzcv, FPSCR
5CF3C4:  BGE             loc_5CF3CC
5CF3C6:  VMOV            R0, S24
5CF3CA:  B               loc_5CF3D4
5CF3CC:  VSUB.F32        S0, S24, S20
5CF3D0:  VMOV            R0, S0; x
5CF3D4:  BLX.W           floorf
5CF3D8:  VMOV            S0, R0
5CF3DC:  VCVT.S32.F32    S0, S0
5CF3E0:  VMOV            R10, S0
5CF3E4:  B               loc_5CF4CA
5CF3E6:  VMRS            APSR_nzcv, FPSCR
5CF3EA:  ITE GE
5CF3EC:  VSUBGE.F32      S0, S24, S20
5CF3F0:  VLDRLT          S0, [R4]
5CF3F4:  STR             R6, [SP,#0xD0+var_B8]
5CF3F6:  VMOV            R0, S0; x
5CF3FA:  BLX.W           floorf
5CF3FE:  VMOV            S0, R0
5CF402:  ADD             R5, SP, #0xD0+var_90
5CF404:  VCVT.S32.F32    S0, S0
5CF408:  LDR             R6, [SP,#0xD0+var_BC]
5CF40A:  VMOV            R10, S0
5CF40E:  ADD.W           R4, R5, R6,LSL#3
5CF412:  LDR             R1, [SP,#0xD0+var_9C]
5CF414:  CMP             R6, #1
5CF416:  VLDR            S24, [R4]
5CF41A:  IT LT
5CF41C:  MOVLT           R6, R1
5CF41E:  VMOV            R0, S24; x
5CF422:  SUBS            R6, #1
5CF424:  BLX.W           floorf
5CF428:  ADD.W           R11, R5, R6,LSL#3
5CF42C:  VMOV            S0, R0
5CF430:  VLDR            S20, [R11,#4]
5CF434:  VCVT.S32.F32    S28, S0
5CF438:  VMOV            R1, S20
5CF43C:  MOV             R0, R1; x
5CF43E:  BLX.W           floorf
5CF442:  VMOV            S0, R0
5CF446:  VMOV            R0, S28
5CF44A:  VCVT.S32.F32    S0, S0
5CF44E:  CMP             R10, R0
5CF450:  IT GT
5CF452:  MOVGT           R10, R0
5CF454:  VMOV            R0, S0
5CF458:  LDR             R1, [SP,#0xD0+var_B8]
5CF45A:  CMP             R1, R0
5CF45C:  BEQ             loc_5CF40E
5CF45E:  VLDR            S28, [R4,#4]
5CF462:  VLDR            S0, [R11]
5CF466:  VSUB.F32        S2, S20, S28
5CF46A:  STR             R6, [SP,#0xD0+var_BC]
5CF46C:  VSUB.F32        S0, S0, S24
5CF470:  VMOV            R0, S28; x
5CF474:  VDIV.F32        S30, S0, S2
5CF478:  VABS.F32        S20, S30
5CF47C:  BLX.W           ceilf
5CF480:  VCMP.F32        S20, S16
5CF484:  VMRS            APSR_nzcv, FPSCR
5CF488:  VMOV            S0, R0
5CF48C:  VMOV.F32        S20, S18
5CF490:  VSUB.F32        S0, S0, S28
5CF494:  IT NE
5CF496:  VMOVNE.F32      S20, S30
5CF49A:  VMUL.F32        S0, S0, S20
5CF49E:  VCMPE.F32       S20, #0.0
5CF4A2:  VMRS            APSR_nzcv, FPSCR
5CF4A6:  VADD.F32        S24, S24, S0
5CF4AA:  BGE             loc_5CF4C6
5CF4AC:  VMOV            R0, S24; x
5CF4B0:  BLX.W           floorf
5CF4B4:  VMOV            S0, R0
5CF4B8:  VCVT.S32.F32    S0, S0
5CF4BC:  VMOV            R0, S0
5CF4C0:  CMP             R10, R0
5CF4C2:  IT GT
5CF4C4:  MOVGT           R10, R0
5CF4C6:  LDR             R5, [SP,#0xD0+var_AC]
5CF4C8:  LDR             R6, [SP,#0xD0+var_B8]
5CF4CA:  LDR             R0, [SP,#0xD0+var_C8]
5CF4CC:  VADD.F32        S26, S22, S26
5CF4D0:  LDR             R0, [R0]; x
5CF4D2:  BLX.W           floorf
5CF4D6:  VMOV            S0, R0
5CF4DA:  VCVT.S32.F32    S0, S0
5CF4DE:  VMOV            R0, S0
5CF4E2:  CMP             R6, R0
5CF4E4:  BNE             loc_5CF4FE
5CF4E6:  LDR             R0, [SP,#0xD0+var_C4]
5CF4E8:  VCMPE.F32       S22, #0.0
5CF4EC:  CMP             R6, R0
5CF4EE:  BNE             loc_5CF52E
5CF4F0:  VMRS            APSR_nzcv, FPSCR
5CF4F4:  BGE.W           loc_5CF620
5CF4F8:  VSUB.F32        S0, S26, S22
5CF4FC:  B               loc_5CF510
5CF4FE:  VCMPE.F32       S22, #0.0
5CF502:  VMRS            APSR_nzcv, FPSCR
5CF506:  VMOV.F32        S0, S26
5CF50A:  IT LT
5CF50C:  VSUBLT.F32      S0, S26, S22
5CF510:  VMOV            R0, S0; x
5CF514:  BLX.W           floorf
5CF518:  VMOV            S0, R0
5CF51C:  VCVT.S32.F32    S0, S0
5CF520:  LDR             R0, [SP,#0xD0+var_C4]
5CF522:  CMP             R8, R0
5CF524:  VMOV            R11, S0
5CF528:  BLT.W           loc_5CF270
5CF52C:  B               loc_5CF66A
5CF52E:  VMRS            APSR_nzcv, FPSCR
5CF532:  ITEE LT
5CF534:  VSUBLT.F32      S0, S26, S22
5CF538:  LDRGE           R0, [SP,#0xD0+var_CC]
5CF53A:  VLDRGE          S0, [R0]
5CF53E:  STR             R6, [SP,#0xD0+var_B8]
5CF540:  VMOV            R0, S0; x
5CF544:  BLX.W           floorf
5CF548:  VMOV            S0, R0
5CF54C:  VCVT.S32.F32    S0, S0
5CF550:  LDR             R6, [SP,#0xD0+var_C0]
5CF552:  VMOV            R11, S0
5CF556:  ADD             R0, SP, #0xD0+var_90
5CF558:  LDR             R1, [SP,#0xD0+var_9C]
5CF55A:  MOV             R4, R0
5CF55C:  ADD.W           R5, R4, R6,LSL#3
5CF560:  ADDS            R6, #1
5CF562:  VLDR            S26, [R5]
5CF566:  CMP             R6, R1
5CF568:  IT EQ
5CF56A:  MOVEQ           R6, #0
5CF56C:  VMOV            R0, S26; x
5CF570:  BLX.W           floorf
5CF574:  ADD.W           R4, R4, R6,LSL#3
5CF578:  VMOV            S0, R0
5CF57C:  VLDR            S22, [R4,#4]
5CF580:  VCVT.S32.F32    S28, S0
5CF584:  VMOV            R1, S22
5CF588:  MOV             R0, R1; x
5CF58A:  BLX.W           floorf
5CF58E:  VMOV            S0, R0
5CF592:  VMOV            R0, S28
5CF596:  VCVT.S32.F32    S0, S0
5CF59A:  CMP             R11, R0
5CF59C:  IT LT
5CF59E:  MOVLT           R11, R0
5CF5A0:  VMOV            R0, S0
5CF5A4:  LDR             R1, [SP,#0xD0+var_B8]
5CF5A6:  CMP             R1, R0
5CF5A8:  BEQ             loc_5CF556
5CF5AA:  VLDR            S28, [R5,#4]
5CF5AE:  VLDR            S0, [R4]
5CF5B2:  VSUB.F32        S2, S22, S28
5CF5B6:  STR             R6, [SP,#0xD0+var_C0]
5CF5B8:  VSUB.F32        S0, S0, S26
5CF5BC:  VMOV            R0, S28; x
5CF5C0:  VDIV.F32        S30, S0, S2
5CF5C4:  VABS.F32        S22, S30
5CF5C8:  BLX.W           ceilf
5CF5CC:  VCMP.F32        S22, S16
5CF5D0:  VMRS            APSR_nzcv, FPSCR
5CF5D4:  VMOV            S0, R0
5CF5D8:  VMOV.F32        S22, S18
5CF5DC:  VSUB.F32        S0, S0, S28
5CF5E0:  IT NE
5CF5E2:  VMOVNE.F32      S22, S30
5CF5E6:  VMUL.F32        S0, S0, S22
5CF5EA:  VCMPE.F32       S22, #0.0
5CF5EE:  VMRS            APSR_nzcv, FPSCR
5CF5F2:  VADD.F32        S26, S26, S0
5CF5F6:  BLT             loc_5CF612
5CF5F8:  VMOV            R0, S26; x
5CF5FC:  BLX.W           floorf
5CF600:  VMOV            S0, R0
5CF604:  VCVT.S32.F32    S0, S0
5CF608:  VMOV            R0, S0
5CF60C:  CMP             R11, R0
5CF60E:  IT LT
5CF610:  MOVLT           R11, R0
5CF612:  LDR             R0, [SP,#0xD0+var_C4]
5CF614:  LDR             R5, [SP,#0xD0+var_AC]
5CF616:  LDR             R6, [SP,#0xD0+var_B8]
5CF618:  CMP             R8, R0
5CF61A:  BLT.W           loc_5CF262
5CF61E:  B               loc_5CF66A
5CF620:  LDR             R5, [SP,#0xD0+var_9C]
5CF622:  ADD             R4, SP, #0xD0+var_90
5CF624:  LDR             R6, [SP,#0xD0+var_C0]
5CF626:  LDR.W           R0, [R4,R6,LSL#3]; x
5CF62A:  BLX.W           floorf
5CF62E:  ADDS            R6, #1
5CF630:  VMOV            S28, R0
5CF634:  CMP             R6, R5
5CF636:  IT EQ
5CF638:  MOVEQ           R6, #0
5CF63A:  LDR.W           R1, [R4,R6,LSL#3]
5CF63E:  MOV             R0, R1; x
5CF640:  BLX.W           floorf
5CF644:  VMOV            S0, R0
5CF648:  VCVT.S32.F32    S2, S28
5CF64C:  VCVT.S32.F32    S0, S0
5CF650:  VMOV            R11, S2
5CF654:  VMOV            R0, S0
5CF658:  CMP             R11, R0
5CF65A:  BLT             loc_5CF626
5CF65C:  LDR             R0, [SP,#0xD0+var_C4]
5CF65E:  LDR             R5, [SP,#0xD0+var_AC]
5CF660:  STR             R6, [SP,#0xD0+var_C0]
5CF662:  CMP             R8, R0
5CF664:  MOV             R6, R0
5CF666:  BLT.W           loc_5CF262
5CF66A:  LDR             R0, =(NumExtraBlocks_ptr - 0x5CF674)
5CF66C:  LDR.W           R9, [SP,#0xD0+var_A0]
5CF670:  ADD             R0, PC; NumExtraBlocks_ptr
5CF672:  LDR             R0, [R0]; NumExtraBlocks
5CF674:  LDR             R0, [R0]
5CF676:  CMP             R0, #1
5CF678:  BLT             loc_5CF6A2
5CF67A:  LDR             R0, =(ExtraBlocksY_ptr - 0x5CF684)
5CF67C:  MOVS            R4, #0
5CF67E:  LDR             R1, =(ExtraBlocksX_ptr - 0x5CF686)
5CF680:  ADD             R0, PC; ExtraBlocksY_ptr
5CF682:  ADD             R1, PC; ExtraBlocksX_ptr
5CF684:  LDR.W           R8, [R0]; ExtraBlocksY
5CF688:  LDR             R0, =(NumExtraBlocks_ptr - 0x5CF690)
5CF68A:  LDR             R6, [R1]; ExtraBlocksX
5CF68C:  ADD             R0, PC; NumExtraBlocks_ptr
5CF68E:  LDR             R5, [R0]; NumExtraBlocks
5CF690:  LDR.W           R1, [R8,R4,LSL#2]
5CF694:  LDR.W           R0, [R6,R4,LSL#2]
5CF698:  BLX             R9
5CF69A:  LDR             R0, [R5]
5CF69C:  ADDS            R4, #1
5CF69E:  CMP             R4, R0
5CF6A0:  BLT             loc_5CF690
5CF6A2:  LDR             R0, =(NumExtraBlocks_ptr - 0x5CF6AA)
5CF6A4:  MOVS            R1, #0
5CF6A6:  ADD             R0, PC; NumExtraBlocks_ptr
5CF6A8:  LDR             R0, [R0]; NumExtraBlocks
5CF6AA:  STR             R1, [R0]
5CF6AC:  ADD             SP, SP, #0x70 ; 'p'
5CF6AE:  VPOP            {D8-D15}
5CF6B2:  ADD             SP, SP, #4
5CF6B4:  POP.W           {R8-R11}
5CF6B8:  POP             {R4-R7,PC}
