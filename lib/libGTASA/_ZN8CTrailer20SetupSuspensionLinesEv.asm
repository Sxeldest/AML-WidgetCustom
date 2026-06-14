; =========================================================
; Game Engine Function: _ZN8CTrailer20SetupSuspensionLinesEv
; Address            : 0x57AF28 - 0x57B2F6
; =========================================================

57AF28:  PUSH            {R4-R7,LR}
57AF2A:  ADD             R7, SP, #0xC
57AF2C:  PUSH.W          {R8-R11}
57AF30:  SUB             SP, SP, #4
57AF32:  VPUSH           {D8}
57AF36:  SUB             SP, SP, #0x58
57AF38:  MOV             R4, R0
57AF3A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57AF44)
57AF3C:  LDRSH.W         R1, [R4,#0x26]
57AF40:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57AF42:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57AF44:  LDR.W           R10, [R0,R1,LSL#2]
57AF48:  MOV             R0, R4; this
57AF4A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57AF4E:  MOV             R6, R0
57AF50:  ADD.W           R0, R4, #0xA00
57AF54:  VLDR            S0, =-1000.0
57AF58:  VLDR            S2, [R0]
57AF5C:  VCMP.F32        S2, S0
57AF60:  VMRS            APSR_nzcv, FPSCR
57AF64:  BNE             loc_57AF7C
57AF66:  MOV             R0, R4; this
57AF68:  ADD             SP, SP, #0x58 ; 'X'
57AF6A:  VPOP            {D8}
57AF6E:  ADD             SP, SP, #4
57AF70:  POP.W           {R8-R11}
57AF74:  POP.W           {R4-R7,LR}
57AF78:  B.W             sub_1917A8
57AF7C:  LDR             R5, [R6,#0x2C]
57AF7E:  LDR             R0, [R5,#0x10]
57AF80:  CBNZ            R0, loc_57AF8E
57AF82:  MOVS            R0, #6
57AF84:  STRB            R0, [R5,#6]
57AF86:  MOVS            R0, #0xC0; byte_count
57AF88:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
57AF8C:  STR             R0, [R5,#0x10]
57AF8E:  VMOV.F32        S16, #-0.5
57AF92:  ADDW            R11, R4, #0x89C
57AF96:  ADD.W           R9, SP, #0x80+var_38
57AF9A:  STRD.W          R6, R6, [SP,#0x80+var_80]
57AF9E:  MOVS            R6, #0
57AFA0:  MOV.W           R8, #0x18
57AFA4:  MOV             R0, R10; this
57AFA6:  MOV             R1, R6; int
57AFA8:  MOV             R2, R9; CVector *
57AFAA:  MOVS            R3, #0; bool
57AFAC:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
57AFB0:  LDR             R0, [SP,#0x80+var_30]
57AFB2:  ADDS            R6, #1
57AFB4:  STR.W           R0, [R11,#-0x50]
57AFB8:  LDR.W           R1, [R4,#0x388]
57AFBC:  VMOV            S0, R0
57AFC0:  VLDR            S2, [R1,#0xB8]
57AFC4:  VADD.F32        S0, S2, S0
57AFC8:  VSTR            S0, [SP,#0x80+var_30]
57AFCC:  LDR             R0, [R5,#0x10]
57AFCE:  VLDR            D16, [SP,#0x80+var_38]
57AFD2:  ADD             R0, R8
57AFD4:  LDR             R1, [SP,#0x80+var_30]
57AFD6:  STR.W           R1, [R0,#-0x10]
57AFDA:  VSTR            D16, [R0,#-0x18]
57AFDE:  LDR.W           R0, [R4,#0x388]
57AFE2:  VLDR            S0, [R10,#0x58]
57AFE6:  VLDR            S2, [R0,#0xB8]
57AFEA:  VMUL.F32        S0, S0, S16
57AFEE:  VLDR            S4, [R0,#0xBC]
57AFF2:  VSUB.F32        S2, S4, S2
57AFF6:  VADD.F32        S0, S2, S0
57AFFA:  VLDR            S2, [SP,#0x80+var_30]
57AFFE:  VADD.F32        S0, S2, S0
57B002:  VSTR            S0, [SP,#0x80+var_30]
57B006:  LDR             R0, [R5,#0x10]
57B008:  LDR             R1, [SP,#0x80+var_30]
57B00A:  VLDR            D16, [SP,#0x80+var_38]
57B00E:  STR.W           R1, [R0,R8]
57B012:  ADD             R0, R8
57B014:  VSTR            D16, [R0,#-8]
57B018:  LDR.W           R0, [R4,#0x388]
57B01C:  VLDR            S0, [R0,#0xB8]
57B020:  VLDR            S2, [R0,#0xBC]
57B024:  VSUB.F32        S0, S0, S2
57B028:  VSTR            S0, [R11,#-0x10]
57B02C:  LDR             R0, [R5,#0x10]
57B02E:  ADD             R0, R8
57B030:  ADD.W           R8, R8, #0x20 ; ' '
57B034:  CMP.W           R8, #0x98
57B038:  VLDR            S0, [R0]
57B03C:  VLDR            S2, [R0,#-0x10]
57B040:  VSUB.F32        S0, S2, S0
57B044:  VSTM            R11!, {S0}
57B048:  BNE             loc_57AFA4
57B04A:  LDR             R0, [R5,#0x10]
57B04C:  LDR             R3, [SP,#0x80+var_7C]
57B04E:  VLDR            S0, [R0,#0x18]
57B052:  VLDR            S2, [R3,#8]
57B056:  VCMPE.F32       S0, S2
57B05A:  VMRS            APSR_nzcv, FPSCR
57B05E:  ITT LT
57B060:  VSTRLT          S0, [R3,#8]
57B064:  VMOVLT.F32      S2, S0
57B068:  VLDR            S4, [R3]
57B06C:  VLDR            S6, [R3,#4]
57B070:  VMUL.F32        S2, S2, S2
57B074:  VLDR            S8, [R3,#0xC]
57B078:  VMUL.F32        S4, S4, S4
57B07C:  VLDR            S10, [R3,#0x10]
57B080:  VMUL.F32        S6, S6, S6
57B084:  VMUL.F32        S8, S8, S8
57B088:  VLDR            S0, [R3,#0x14]
57B08C:  VMUL.F32        S10, S10, S10
57B090:  LDR             R0, [SP,#0x80+var_80]
57B092:  VMUL.F32        S12, S0, S0
57B096:  ADD.W           R9, R0, #0xC
57B09A:  VADD.F32        S4, S4, S6
57B09E:  VADD.F32        S8, S8, S10
57B0A2:  VADD.F32        S2, S4, S2
57B0A6:  VADD.F32        S6, S8, S12
57B0AA:  VSQRT.F32       S2, S2
57B0AE:  VSQRT.F32       S4, S6
57B0B2:  VCMPE.F32       S2, S4
57B0B6:  VMRS            APSR_nzcv, FPSCR
57B0BA:  IT LE
57B0BC:  MOVLE           R0, R9
57B0BE:  VLDR            S2, [R0]
57B0C2:  VLDR            S4, [R0,#4]
57B0C6:  VMUL.F32        S2, S2, S2
57B0CA:  VLDR            S6, [R0,#8]
57B0CE:  VMUL.F32        S4, S4, S4
57B0D2:  VMUL.F32        S6, S6, S6
57B0D6:  VADD.F32        S2, S2, S4
57B0DA:  VLDR            S4, [R3,#0x24]
57B0DE:  VADD.F32        S2, S2, S6
57B0E2:  VSQRT.F32       S2, S2
57B0E6:  VCMPE.F32       S4, S2
57B0EA:  VMRS            APSR_nzcv, FPSCR
57B0EE:  IT LT
57B0F0:  VSTRLT          S2, [R3,#0x24]
57B0F4:  LDR.W           R11, [R4,#0x6AC]
57B0F8:  CMP.W           R11, #0
57B0FC:  BEQ             loc_57B17E
57B0FE:  ADD.W           R0, R11, #0x10
57B102:  ADD             R1, SP, #0x80+var_78
57B104:  VLD1.32         {D16-D17}, [R0]
57B108:  ADD.W           R0, R11, #0x20 ; ' '
57B10C:  VLD1.32         {D18-D19}, [R0]
57B110:  ADD.W           R0, R11, #0x30 ; '0'
57B114:  VLD1.32         {D20-D21}, [R0]
57B118:  ADD.W           R0, R11, #0x40 ; '@'
57B11C:  VLD1.32         {D22-D23}, [R0]
57B120:  ADD.W           R0, R1, #0x30 ; '0'
57B124:  VST1.64         {D22-D23}, [R0]
57B128:  ADD.W           R0, R1, #0x20 ; ' '
57B12C:  VST1.64         {D20-D21}, [R0]
57B130:  VST1.64         {D16-D17}, [R1]!
57B134:  VST1.64         {D18-D19}, [R1]
57B138:  LDR.W           R6, [R11,#4]
57B13C:  CBZ             R6, loc_57B15A
57B13E:  ADD.W           R8, SP, #0x80+var_78
57B142:  ADD.W           R1, R6, #0x10
57B146:  MOV             R0, R8
57B148:  MOVS            R2, #2
57B14A:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
57B14E:  LDR             R6, [R6,#4]
57B150:  CMP             R6, R11
57B152:  IT EQ
57B154:  MOVEQ           R6, #0
57B156:  CMP             R6, #0
57B158:  BNE             loc_57B142
57B15A:  VLDR            D16, [SP,#0x80+var_48]
57B15E:  LDR             R0, [SP,#0x80+var_40]
57B160:  STR             R0, [SP,#0x80+var_30]
57B162:  VSTR            D16, [SP,#0x80+var_38]
57B166:  STR.W           R0, [R4,#0x9FC]
57B16A:  VLDR            D16, [R9]
57B16E:  LDR.W           R0, [R9,#8]
57B172:  STR             R0, [SP,#0x80+var_30]
57B174:  VSTR            D16, [SP,#0x80+var_38]
57B178:  LDR             R3, [SP,#0x80+var_7C]
57B17A:  LDR             R0, [R3,#0x14]
57B17C:  B               loc_57B190
57B17E:  VMOV            R0, S0
57B182:  VLDR            D16, [R9]
57B186:  LDR.W           R1, [R9,#8]
57B18A:  STR             R1, [SP,#0x80+var_30]
57B18C:  VSTR            D16, [SP,#0x80+var_38]
57B190:  LDR             R1, [R3]
57B192:  STR             R0, [SP,#0x80+var_30]
57B194:  STR             R1, [SP,#0x80+var_38]
57B196:  LDR             R2, [R5,#0x10]
57B198:  VLDR            D16, [SP,#0x80+var_38]
57B19C:  STR.W           R0, [R2,#0x88]
57B1A0:  VSTR            D16, [R2,#0x80]
57B1A4:  LDR             R0, [R3,#8]
57B1A6:  STR             R0, [SP,#0x80+var_30]
57B1A8:  LDR             R2, [R5,#0x10]
57B1AA:  VLDR            D16, [SP,#0x80+var_38]
57B1AE:  VSTR            D16, [R2,#0x90]
57B1B2:  STR.W           R0, [R2,#0x98]
57B1B6:  EOR.W           R0, R1, #0x80000000
57B1BA:  STR             R0, [SP,#0x80+var_38]
57B1BC:  ADD.W           R2, R4, #0x8B0
57B1C0:  LDR             R0, [R3,#0x14]
57B1C2:  STR             R0, [SP,#0x80+var_30]
57B1C4:  LDR             R1, [R5,#0x10]
57B1C6:  VLDR            D16, [SP,#0x80+var_38]
57B1CA:  STR.W           R0, [R1,#0xA8]
57B1CE:  VSTR            D16, [R1,#0xA0]
57B1D2:  LDR             R0, [R3,#8]
57B1D4:  STR             R0, [SP,#0x80+var_30]
57B1D6:  LDR             R1, [R5,#0x10]
57B1D8:  VLDR            D16, [SP,#0x80+var_38]
57B1DC:  VSTR            D16, [R1,#0xB0]
57B1E0:  STR.W           R0, [R1,#0xB8]
57B1E4:  ADDW            R1, R4, #0x8AC
57B1E8:  LDR             R0, [R5,#0x10]
57B1EA:  VLDR            S0, [R0,#4]
57B1EE:  VLDR            S4, [R0,#0x24]
57B1F2:  VLDR            S6, [R0,#0x84]
57B1F6:  VADD.F32        S0, S0, S4
57B1FA:  VLDR            S2, [R0,#8]
57B1FE:  VMOV.F32        S4, #0.5
57B202:  LDR.W           R0, [R4,#0x388]
57B206:  VABS.F32        S6, S6
57B20A:  VLDR            S8, [R0,#0xAC]
57B20E:  ADDW            R0, R4, #0x88C
57B212:  VLDR            S10, [R0]
57B216:  VABS.F32        S0, S0
57B21A:  LDR             R0, =(_ZN8CTrailer25m_fTrailerSuspensionForceE_ptr - 0x57B220)
57B21C:  ADD             R0, PC; _ZN8CTrailer25m_fTrailerSuspensionForceE_ptr
57B21E:  LDR             R0, [R0]; CTrailer::m_fTrailerSuspensionForce ...
57B220:  VMUL.F32        S0, S0, S4
57B224:  VADD.F32        S0, S6, S0
57B228:  VDIV.F32        S0, S6, S0
57B22C:  VMOV.F32        S6, #-4.0
57B230:  VMUL.F32        S6, S8, S6
57B234:  VMOV.F32        S8, #1.0
57B238:  VDIV.F32        S6, S0, S6
57B23C:  VADD.F32        S6, S6, S8
57B240:  VSUB.F32        S0, S8, S0
57B244:  VMUL.F32        S6, S10, S6
57B248:  VLDR            S10, [R10,#0x58]
57B24C:  VMUL.F32        S10, S10, S4
57B250:  VSUB.F32        S2, S6, S2
57B254:  VMOV.F32        S6, #-2.0
57B258:  VADD.F32        S2, S10, S2
57B25C:  VSTR            S2, [R1]
57B260:  VSTR            S2, [R2]
57B264:  VLDR            S10, [R0]
57B268:  LDR             R0, [R5,#0x10]
57B26A:  VMUL.F32        S6, S10, S6
57B26E:  VDIV.F32        S0, S0, S6
57B272:  VLDR            S6, [R0,#0x88]
57B276:  VADD.F32        S0, S0, S8
57B27A:  VADD.F32        S2, S6, S2
57B27E:  VDIV.F32        S0, S2, S0
57B282:  VSUB.F32        S0, S6, S0
57B286:  VSTR            S0, [R0,#0x98]
57B28A:  LDR             R0, [R5,#0x10]
57B28C:  LDR.W           R2, [R0,#0x98]
57B290:  STR.W           R2, [R0,#0xB8]
57B294:  ADDW            R0, R4, #0x84C
57B298:  VLDR            S0, [R10,#0x58]
57B29C:  VLDR            S2, [R1]
57B2A0:  VMUL.F32        S0, S0, S4
57B2A4:  VSUB.F32        S0, S0, S2
57B2A8:  VSTR            S0, [R0]
57B2AC:  ADD.W           R0, R4, #0x850
57B2B0:  VLDR            S0, [R10,#0x58]
57B2B4:  VMUL.F32        S0, S0, S4
57B2B8:  VSUB.F32        S0, S0, S2
57B2BC:  VSTR            S0, [R0]
57B2C0:  ADDW            R0, R4, #0x854
57B2C4:  VLDR            S0, [R10,#0x58]
57B2C8:  VMUL.F32        S0, S0, S4
57B2CC:  VSUB.F32        S0, S0, S2
57B2D0:  VSTR            S0, [R0]
57B2D4:  ADDW            R0, R4, #0x858
57B2D8:  VLDR            S0, [R10,#0x58]
57B2DC:  VMUL.F32        S0, S0, S4
57B2E0:  VSUB.F32        S0, S0, S2
57B2E4:  VSTR            S0, [R0]
57B2E8:  ADD             SP, SP, #0x58 ; 'X'
57B2EA:  VPOP            {D8}
57B2EE:  ADD             SP, SP, #4
57B2F0:  POP.W           {R8-R11}
57B2F4:  POP             {R4-R7,PC}
