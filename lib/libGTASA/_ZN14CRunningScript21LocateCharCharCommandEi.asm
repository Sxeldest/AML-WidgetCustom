; =========================================================
; Game Engine Function: _ZN14CRunningScript21LocateCharCharCommandEi
; Address            : 0x34AFAC - 0x34B2F0
; =========================================================

34AFAC:  PUSH            {R4-R7,LR}
34AFAE:  ADD             R7, SP, #0xC
34AFB0:  PUSH.W          {R8}
34AFB4:  VPUSH           {D8-D15}
34AFB8:  SUB             SP, SP, #0x20; float
34AFBA:  MOV             R8, R1
34AFBC:  SUB.W           R6, R8, #0x104
34AFC0:  CMP             R6, #2
34AFC2:  MOV             R4, R0
34AFC4:  ITE HI
34AFC6:  MOVHI           R1, #5
34AFC8:  MOVLS           R1, #6; __int16
34AFCA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34AFCE:  LDR             R0, =(ScriptParams_ptr - 0x34AFD6)
34AFD0:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34AFD8)
34AFD2:  ADD             R0, PC; ScriptParams_ptr
34AFD4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34AFD6:  LDR             R0, [R0]; ScriptParams
34AFD8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34AFDA:  LDR             R0, [R0]
34AFDC:  LDR             R1, [R1]; CPools::ms_pPedPool
34AFDE:  CMP             R0, #0
34AFE0:  BLT             loc_34AFFA
34AFE2:  LDR             R2, [R1,#4]
34AFE4:  UXTB            R3, R0
34AFE6:  LSRS            R0, R0, #8
34AFE8:  LDRB            R2, [R2,R0]
34AFEA:  CMP             R2, R3
34AFEC:  BNE             loc_34AFFA
34AFEE:  MOVW            R2, #0x7CC
34AFF2:  LDR             R3, [R1]
34AFF4:  MLA.W           R0, R0, R2, R3
34AFF8:  B               loc_34AFFC
34AFFA:  MOVS            R0, #0
34AFFC:  LDR             R2, =(ScriptParams_ptr - 0x34B002)
34AFFE:  ADD             R2, PC; ScriptParams_ptr
34B000:  LDR             R2, [R2]; ScriptParams
34B002:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
34B004:  CMP             R2, #0
34B006:  BLT             loc_34B020
34B008:  LDR             R3, [R1,#4]
34B00A:  UXTB            R5, R2
34B00C:  LSRS            R2, R2, #8
34B00E:  LDRB            R3, [R3,R2]
34B010:  CMP             R3, R5
34B012:  BNE             loc_34B020
34B014:  MOVW            R3, #0x7CC
34B018:  LDR             R1, [R1]
34B01A:  MLA.W           R2, R2, R3, R1
34B01E:  B               loc_34B022
34B020:  MOVS            R2, #0
34B022:  LDR.W           R12, [R0,#0x484]
34B026:  TST.W           R12, #0x100
34B02A:  BEQ             loc_34B036
34B02C:  LDR.W           R3, [R0,#0x590]
34B030:  CMP             R3, #0
34B032:  IT NE
34B034:  MOVNE           R0, R3
34B036:  LDR             R3, [R0,#0x14]
34B038:  LDRB.W          R5, [R2,#0x485]
34B03C:  ADD.W           R1, R3, #0x30 ; '0'
34B040:  CMP             R3, #0
34B042:  IT EQ
34B044:  ADDEQ           R1, R0, #4
34B046:  VLDR            S8, [R1]
34B04A:  LSLS            R0, R5, #0x1F
34B04C:  VLDR            S4, [R1,#4]
34B050:  VLDR            S2, [R1,#8]
34B054:  BEQ             loc_34B060
34B056:  LDR.W           R0, [R2,#0x590]
34B05A:  CMP             R0, #0
34B05C:  IT NE
34B05E:  MOVNE           R2, R0
34B060:  LDR             R0, =(ScriptParams_ptr - 0x34B068)
34B062:  LDR             R1, [R2,#0x14]
34B064:  ADD             R0, PC; ScriptParams_ptr
34B066:  ADD.W           R3, R1, #0x30 ; '0'
34B06A:  CMP             R1, #0
34B06C:  LDR             R0, [R0]; ScriptParams
34B06E:  MOV.W           R1, #0
34B072:  VLDR            S10, [R0,#8]
34B076:  VLDR            S18, [R0,#0xC]
34B07A:  VLDR            S6, [R0,#0x10]
34B07E:  IT EQ
34B080:  ADDEQ           R3, R2, #4
34B082:  VLDR            S12, [R3]
34B086:  MOVS            R2, #0
34B088:  VLDR            S22, [R3,#4]
34B08C:  VADD.F32        S16, S12, S10
34B090:  VLDR            S0, [R3,#8]
34B094:  VSUB.F32        S20, S12, S10
34B098:  LDR             R0, [R0,#(dword_81A91C - 0x81A908)]
34B09A:  VCMPE.F32       S8, S16
34B09E:  VMRS            APSR_nzcv, FPSCR
34B0A2:  VCMPE.F32       S8, S20
34B0A6:  IT GT
34B0A8:  MOVGT           R2, #1
34B0AA:  VMRS            APSR_nzcv, FPSCR
34B0AE:  IT LT
34B0B0:  MOVLT           R1, #1
34B0B2:  CMP             R6, #3
34B0B4:  ORR.W           R2, R2, R1
34B0B8:  IT CS
34B0BA:  VMOVCS          R0, S6
34B0BE:  CMP             R6, #2
34B0C0:  BHI             loc_34B104
34B0C2:  CBNZ            R2, loc_34B10A
34B0C4:  VSUB.F32        S8, S22, S18
34B0C8:  MOVS            R2, #0
34B0CA:  VCMPE.F32       S4, S8
34B0CE:  VMRS            APSR_nzcv, FPSCR
34B0D2:  BLT             loc_34B10C
34B0D4:  VADD.F32        S8, S22, S18
34B0D8:  VCMPE.F32       S4, S8
34B0DC:  VMRS            APSR_nzcv, FPSCR
34B0E0:  BGT             loc_34B10C
34B0E2:  VSUB.F32        S4, S0, S6
34B0E6:  MOVS            R2, #0
34B0E8:  VCMPE.F32       S2, S4
34B0EC:  VMRS            APSR_nzcv, FPSCR
34B0F0:  BLT             loc_34B10C
34B0F2:  VADD.F32        S4, S0, S6
34B0F6:  VCMPE.F32       S2, S4
34B0FA:  VMRS            APSR_nzcv, FPSCR
34B0FE:  BLE.W           loc_34B2AA
34B102:  B               loc_34B10C
34B104:  CMP             R2, #0
34B106:  BEQ.W           loc_34B288
34B10A:  MOVS            R2, #0
34B10C:  LDRB.W          R1, [R4,#0xF2]
34B110:  LDRH.W          R3, [R4,#0xF0]
34B114:  CMP             R1, #0
34B116:  IT NE
34B118:  MOVNE           R1, #1
34B11A:  CMP             R3, #0
34B11C:  EOR.W           R1, R1, R2
34B120:  BEQ             loc_34B152
34B122:  CMP             R3, #8
34B124:  BHI             loc_34B134
34B126:  LDRB.W          R2, [R4,#0xE5]
34B12A:  SUBS            R3, #1
34B12C:  STRH.W          R3, [R4,#0xF0]
34B130:  ANDS            R1, R2
34B132:  B               loc_34B152
34B134:  SUB.W           R2, R3, #0x15
34B138:  UXTH            R2, R2
34B13A:  CMP             R2, #7
34B13C:  BHI             loc_34B156
34B13E:  LDRB.W          R2, [R4,#0xE5]; float
34B142:  SUBS            R5, R3, #1
34B144:  CMP             R3, #0x15
34B146:  ORR.W           R1, R1, R2
34B14A:  IT EQ
34B14C:  MOVEQ           R5, #0
34B14E:  STRH.W          R5, [R4,#0xF0]
34B152:  STRB.W          R1, [R4,#0xE5]
34B156:  CMP             R0, #0
34B158:  BEQ             loc_34B252
34B15A:  VADD.F32        S2, S22, S18
34B15E:  LDR             R0, [R4,#0x14]
34B160:  VSUB.F32        S4, S22, S18
34B164:  CMP             R6, #2
34B166:  ADD             R4, R0
34B168:  BHI             loc_34B1E6
34B16A:  VMAX.F32        D9, D2, D1
34B16E:  VMIN.F32        D1, D2, D1
34B172:  VMAX.F32        D11, D10, D8
34B176:  VMIN.F32        D3, D10, D8
34B17A:  VMOV.F32        S4, #0.5
34B17E:  VADD.F32        S2, S2, S18
34B182:  VADD.F32        S6, S6, S22
34B186:  VMUL.F32        S20, S2, S4
34B18A:  VLDR            S2, =-100.0
34B18E:  VMUL.F32        S16, S6, S4
34B192:  VCMPE.F32       S0, S2
34B196:  VMRS            APSR_nzcv, FPSCR
34B19A:  VSTR            S20, [SP,#0x70+var_58]
34B19E:  VSTR            S16, [SP,#0x70+var_5C]
34B1A2:  BGT             loc_34B1BC
34B1A4:  VMOV            R0, S16; this
34B1A8:  VMOV            R1, S20; float
34B1AC:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34B1B0:  VMOV.F32        S0, #2.0
34B1B4:  VMOV            S2, R0
34B1B8:  VADD.F32        S0, S2, S0
34B1BC:  VSUB.F32        S2, S20, S18
34B1C0:  MOVS            R0, #0
34B1C2:  VSUB.F32        S4, S22, S16
34B1C6:  ADD             R3, SP, #0x70+var_5C; int
34B1C8:  VSTR            S0, [SP,#0x70+var_54]
34B1CC:  MOVS            R1, #2; int
34B1CE:  STR             R0, [SP,#0x70+var_60]
34B1D0:  MOVS            R2, #0; int
34B1D2:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34B1D6:  MOV             R0, R4; this
34B1D8:  VSTR            S2, [SP,#0x70+var_64]
34B1DC:  VSTR            S4, [SP,#0x70+var_70]
34B1E0:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34B1E4:  B               loc_34B27C
34B1E6:  VMAX.F32        D13, D2, D1
34B1EA:  VMIN.F32        D1, D2, D1
34B1EE:  VMAX.F32        D12, D10, D8
34B1F2:  VMIN.F32        D0, D10, D8
34B1F6:  VMOV.F32        S6, #0.5
34B1FA:  VADD.F32        S2, S2, S26
34B1FE:  VADD.F32        S0, S0, S24
34B202:  VMUL.F32        S30, S2, S6
34B206:  VMUL.F32        S28, S0, S6
34B20A:  VMOV            R1, S30; float
34B20E:  VSTR            S30, [SP,#0x70+var_58]
34B212:  VMOV            R0, S28; this
34B216:  VSTR            S28, [SP,#0x70+var_5C]
34B21A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34B21E:  VMOV.F32        S0, #2.0
34B222:  ADD             R3, SP, #0x70+var_5C; int
34B224:  VMOV            S2, R0
34B228:  MOVS            R0, #0
34B22A:  VSUB.F32        S4, S24, S28
34B22E:  STR             R0, [SP,#0x70+var_60]
34B230:  MOVS            R1, #2; int
34B232:  MOVS            R2, #0; int
34B234:  VADD.F32        S0, S2, S0
34B238:  VSUB.F32        S2, S30, S26
34B23C:  VSTR            S0, [SP,#0x70+var_54]
34B240:  VSTR            S2, [SP,#0x70+var_64]
34B244:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34B248:  MOV             R0, R4; this
34B24A:  VSTR            S4, [SP,#0x70+var_70]
34B24E:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34B252:  CMP             R6, #3
34B254:  BCC             loc_34B27C
34B256:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34B25C)
34B258:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34B25A:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34B25C:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34B25E:  CBZ             R0, loc_34B27C
34B260:  VSUB.F32        S0, S22, S18
34B264:  VADD.F32        S2, S22, S18
34B268:  VMOV            R0, S20; this
34B26C:  VMOV            R2, S16; float
34B270:  VMOV            R1, S0; float
34B274:  VMOV            R3, S2; float
34B278:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34B27C:  ADD             SP, SP, #0x20 ; ' '
34B27E:  VPOP            {D8-D15}
34B282:  POP.W           {R8}
34B286:  POP             {R4-R7,PC}
34B288:  VSUB.F32        S2, S22, S18
34B28C:  MOVS            R2, #0
34B28E:  VCMPE.F32       S4, S2
34B292:  VMRS            APSR_nzcv, FPSCR
34B296:  BLT.W           loc_34B10C
34B29A:  VADD.F32        S2, S22, S18
34B29E:  VCMPE.F32       S4, S2
34B2A2:  VMRS            APSR_nzcv, FPSCR
34B2A6:  BGT.W           loc_34B10C
34B2AA:  SUB.W           R3, R8, #0xF2
34B2AE:  MOVS            R2, #0
34B2B0:  CMP             R3, #0x14
34B2B2:  BHI.W           loc_34B10C
34B2B6:  MOVS            R1, #1
34B2B8:  LSL.W           R5, R1, R3
34B2BC:  MOVS            R1, #0x40001
34B2C2:  TST             R5, R1
34B2C4:  BNE             loc_34B2E4
34B2C6:  MOVS            R1, #0x80002
34B2CC:  TST             R5, R1
34B2CE:  BNE             loc_34B2E8
34B2D0:  MOVS            R1, #1
34B2D2:  LSLS            R1, R3
34B2D4:  MOVS            R3, #0x100004
34B2DA:  TST             R1, R3
34B2DC:  IT NE
34B2DE:  UBFXNE.W        R2, R12, #8, #1
34B2E2:  B               loc_34B10C
34B2E4:  MOVS            R2, #1
34B2E6:  B               loc_34B10C
34B2E8:  MOVS            R1, #1
34B2EA:  BIC.W           R2, R1, R12,LSR#8
34B2EE:  B               loc_34B10C
