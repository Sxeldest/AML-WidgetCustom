; =========================================================
; Game Engine Function: _ZN14CRunningScript22CharInAreaCheckCommandEi
; Address            : 0x34CD68 - 0x34D0B2
; =========================================================

34CD68:  PUSH            {R4-R7,LR}
34CD6A:  ADD             R7, SP, #0xC
34CD6C:  PUSH.W          {R8}
34CD70:  VPUSH           {D8-D15}
34CD74:  SUB             SP, SP, #0x20; float
34CD76:  MOV             R5, R1
34CD78:  MOV             R4, R0
34CD7A:  SUB.W           R0, R5, #0x1A6
34CD7E:  CMP             R0, #5
34CD80:  BCS.W           loc_34CEBC
34CD84:  MOV             R0, R4; this
34CD86:  MOVS            R1, #8; __int16
34CD88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34CD8C:  MOV.W           R8, #1
34CD90:  LDR             R0, =(ScriptParams_ptr - 0x34CD96)
34CD92:  ADD             R0, PC; ScriptParams_ptr
34CD94:  LDR             R0, [R0]; ScriptParams
34CD96:  LDR             R1, [R0]
34CD98:  CMP             R1, #0
34CD9A:  BLT             loc_34CDBC
34CD9C:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34CDA6)
34CD9E:  UXTB            R3, R1
34CDA0:  LSRS            R1, R1, #8
34CDA2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34CDA4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34CDA6:  LDR             R0, [R0]; CPools::ms_pPedPool
34CDA8:  LDR             R2, [R0,#4]
34CDAA:  LDRB            R2, [R2,R1]
34CDAC:  CMP             R2, R3
34CDAE:  BNE             loc_34CDBC
34CDB0:  MOVW            R2, #0x7CC
34CDB4:  LDR             R0, [R0]
34CDB6:  MLA.W           R6, R1, R2, R0
34CDBA:  B               loc_34CDBE
34CDBC:  MOVS            R6, #0
34CDBE:  LDRB.W          R0, [R6,#0x485]
34CDC2:  LSLS            R0, R0, #0x1F
34CDC4:  ITT NE
34CDC6:  LDRNE.W         R0, [R6,#0x590]
34CDCA:  CMPNE           R0, #0
34CDCC:  BNE             loc_34CDD0
34CDCE:  MOV             R0, R6
34CDD0:  LDR             R1, [R0,#0x14]
34CDD2:  ADD.W           R2, R1, #0x30 ; '0'
34CDD6:  CMP             R1, #0
34CDD8:  IT EQ
34CDDA:  ADDEQ           R2, R0, #4
34CDDC:  SUBW            R0, R5, #0x1A3
34CDE0:  VLDR            S28, [R2]
34CDE4:  CMP             R0, #7
34CDE6:  VLDR            S26, [R2,#4]
34CDEA:  VLDR            S24, [R2,#8]
34CDEE:  MOV.W           R2, #0
34CDF2:  BHI             loc_34CE0E
34CDF4:  MOVS            R1, #(stderr+1); CPed *
34CDF6:  LSL.W           R0, R1, R0
34CDFA:  TST.W           R0, #0xE7
34CDFE:  BEQ             loc_34CE0E
34CE00:  MOV             R0, R6; this
34CE02:  BLX             j__ZN11CTheScripts12IsPedStoppedEP4CPed; CTheScripts::IsPedStopped(CPed *)
34CE06:  MOVS            R2, #0
34CE08:  CMP             R0, #0
34CE0A:  IT EQ
34CE0C:  MOVEQ           R2, #1
34CE0E:  LDR             R0, =(ScriptParams_ptr - 0x34CE18)
34CE10:  CMP.W           R8, #1
34CE14:  ADD             R0, PC; ScriptParams_ptr
34CE16:  LDR             R0, [R0]; ScriptParams
34CE18:  VLDR            S4, [R0,#4]
34CE1C:  VLDR            S6, [R0,#8]
34CE20:  VLDR            S10, [R0,#0xC]
34CE24:  VLDR            S8, [R0,#0x10]
34CE28:  BNE             loc_34CE4C
34CE2A:  LDR             R0, =(ScriptParams_ptr - 0x34CE30)
34CE2C:  ADD             R0, PC; ScriptParams_ptr
34CE2E:  LDR             R0, [R0]; ScriptParams
34CE30:  VLDR            S0, [R0,#0x18]
34CE34:  VLDR            S12, [R0,#0x14]
34CE38:  ADDS            R0, #0x1C
34CE3A:  VMAX.F32        D1, D5, D0
34CE3E:  VMIN.F32        D0, D5, D0
34CE42:  VMOV            D5, D4
34CE46:  VMOV            D4, D6
34CE4A:  B               loc_34CE4E
34CE4C:  ADDS            R0, #0x14
34CE4E:  VMAX.F32        D8, D3, D4
34CE52:  LDR             R0, [R0]
34CE54:  VMIN.F32        D11, D3, D4
34CE58:  MOVS            R1, #0
34CE5A:  VMIN.F32        D10, D2, D5
34CE5E:  CMP             R2, #0
34CE60:  VMAX.F32        D9, D2, D5
34CE64:  BNE             loc_34CED8
34CE66:  VCMPE.F32       S28, S18
34CE6A:  MOVS            R2, #0
34CE6C:  VMRS            APSR_nzcv, FPSCR
34CE70:  VCMPE.F32       S28, S20
34CE74:  IT GT
34CE76:  MOVGT           R2, #1
34CE78:  VMRS            APSR_nzcv, FPSCR
34CE7C:  IT LT
34CE7E:  MOVLT           R1, #1
34CE80:  CMP.W           R8, #1
34CE84:  ORR.W           R1, R1, R2
34CE88:  BNE             loc_34CED0
34CE8A:  CBNZ            R1, loc_34CED6
34CE8C:  VCMPE.F32       S26, S22
34CE90:  MOVS            R1, #0
34CE92:  VMRS            APSR_nzcv, FPSCR
34CE96:  BLT             loc_34CED8
34CE98:  VCMPE.F32       S26, S16
34CE9C:  VMRS            APSR_nzcv, FPSCR
34CEA0:  BGT             loc_34CED8
34CEA2:  VCMPE.F32       S24, S0
34CEA6:  MOVS            R1, #0
34CEA8:  VMRS            APSR_nzcv, FPSCR
34CEAC:  BLT             loc_34CED8
34CEAE:  VCMPE.F32       S24, S2
34CEB2:  VMRS            APSR_nzcv, FPSCR
34CEB6:  BLE.W           loc_34D072
34CEBA:  B               loc_34CED8
34CEBC:  CMP             R5, #0xA4
34CEBE:  BEQ.W           loc_34CD84
34CEC2:  MOV             R0, R4; this
34CEC4:  MOVS            R1, #6; __int16
34CEC6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34CECA:  MOV.W           R8, #0
34CECE:  B               loc_34CD90
34CED0:  CMP             R1, #0
34CED2:  BEQ.W           loc_34D058
34CED6:  MOVS            R1, #0
34CED8:  LDRB.W          R3, [R4,#0xF2]
34CEDC:  LDRH.W          R2, [R4,#0xF0]; float
34CEE0:  CMP             R3, #0
34CEE2:  IT NE
34CEE4:  MOVNE           R3, #1
34CEE6:  CMP             R2, #0
34CEE8:  EOR.W           R1, R1, R3
34CEEC:  BEQ             loc_34CF1E
34CEEE:  CMP             R2, #8
34CEF0:  BHI             loc_34CF00
34CEF2:  LDRB.W          R3, [R4,#0xE5]
34CEF6:  SUBS            R2, #1
34CEF8:  STRH.W          R2, [R4,#0xF0]
34CEFC:  ANDS            R1, R3
34CEFE:  B               loc_34CF1E
34CF00:  SUB.W           R3, R2, #0x15
34CF04:  UXTH            R3, R3
34CF06:  CMP             R3, #7
34CF08:  BHI             loc_34CF22
34CF0A:  LDRB.W          R3, [R4,#0xE5]
34CF0E:  SUBS            R6, R2, #1
34CF10:  CMP             R2, #0x15
34CF12:  ORR.W           R1, R1, R3
34CF16:  IT EQ
34CF18:  MOVEQ           R6, #0
34CF1A:  STRH.W          R6, [R4,#0xF0]
34CF1E:  STRB.W          R1, [R4,#0xE5]
34CF22:  CMP             R0, #0
34CF24:  BEQ             loc_34D022
34CF26:  CMP.W           R8, #1
34CF2A:  BNE             loc_34CFB4
34CF2C:  VMAX.F32        D12, D11, D8
34CF30:  LDR             R0, [R4,#0x14]
34CF32:  VMIN.F32        D2, D11, D8
34CF36:  VMAX.F32        D8, D10, D9
34CF3A:  ADD             R4, R0
34CF3C:  VMIN.F32        D4, D10, D9
34CF40:  VADD.F32        S0, S0, S2
34CF44:  VLDR            S2, =-100.0
34CF48:  VMOV.F32        S6, #0.5
34CF4C:  VADD.F32        S4, S4, S24
34CF50:  VADD.F32        S8, S8, S16
34CF54:  VMUL.F32        S0, S0, S6
34CF58:  VMUL.F32        S20, S4, S6
34CF5C:  VMUL.F32        S18, S8, S6
34CF60:  VCMPE.F32       S0, S2
34CF64:  VMRS            APSR_nzcv, FPSCR
34CF68:  VSTR            S20, [SP,#0x70+var_58]
34CF6C:  VSTR            S18, [SP,#0x70+var_5C]
34CF70:  BGT             loc_34CF8A
34CF72:  VMOV            R0, S18; this
34CF76:  VMOV            R1, S20; float
34CF7A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34CF7E:  VMOV.F32        S0, #2.0
34CF82:  VMOV            S2, R0
34CF86:  VADD.F32        S0, S2, S0
34CF8A:  VSUB.F32        S2, S20, S24
34CF8E:  MOVS            R0, #0
34CF90:  VSUB.F32        S4, S16, S18
34CF94:  ADD             R3, SP, #0x70+var_5C; int
34CF96:  VSTR            S0, [SP,#0x70+var_54]
34CF9A:  MOVS            R1, #2; int
34CF9C:  STR             R0, [SP,#0x70+var_60]
34CF9E:  MOVS            R2, #0; int
34CFA0:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34CFA4:  MOV             R0, R4; this
34CFA6:  VSTR            S2, [SP,#0x70+var_64]
34CFAA:  VSTR            S4, [SP,#0x70+var_70]
34CFAE:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34CFB2:  B               loc_34D04C
34CFB4:  VMAX.F32        D12, D10, D9
34CFB8:  LDR             R5, [R4,#0x14]
34CFBA:  VMIN.F32        D0, D10, D9
34CFBE:  VMAX.F32        D13, D11, D8
34CFC2:  VMIN.F32        D2, D11, D8
34CFC6:  VMOV.F32        S2, #0.5
34CFCA:  VADD.F32        S0, S0, S24
34CFCE:  VADD.F32        S4, S4, S26
34CFD2:  VMUL.F32        S28, S0, S2
34CFD6:  VMUL.F32        S30, S4, S2
34CFDA:  VMOV            R0, S28; this
34CFDE:  VMOV            R1, S30; float
34CFE2:  VSTR            S30, [SP,#0x70+var_58]
34CFE6:  VSTR            S28, [SP,#0x70+var_5C]
34CFEA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34CFEE:  VMOV.F32        S0, #2.0
34CFF2:  ADD             R3, SP, #0x70+var_5C; int
34CFF4:  VMOV            S2, R0
34CFF8:  MOVS            R0, #0
34CFFA:  VSUB.F32        S4, S24, S28
34CFFE:  STR             R0, [SP,#0x70+var_60]
34D000:  MOVS            R1, #2; int
34D002:  MOVS            R2, #0; int
34D004:  VADD.F32        S0, S2, S0
34D008:  VSUB.F32        S2, S30, S26
34D00C:  VSTR            S0, [SP,#0x70+var_54]
34D010:  VSTR            S2, [SP,#0x70+var_64]
34D014:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34D018:  ADDS            R0, R5, R4; this
34D01A:  VSTR            S4, [SP,#0x70+var_70]
34D01E:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34D022:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34D02A)
34D024:  MOVS            R1, #0
34D026:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34D028:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34D02A:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34D02C:  CMP             R0, #0
34D02E:  IT EQ
34D030:  MOVEQ           R1, #1
34D032:  ORRS.W          R0, R8, R1
34D036:  BNE             loc_34D04C
34D038:  VMOV            R0, S20; this
34D03C:  VMOV            R1, S22; float
34D040:  VMOV            R2, S18; float
34D044:  VMOV            R3, S16; float
34D048:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34D04C:  ADD             SP, SP, #0x20 ; ' '
34D04E:  VPOP            {D8-D15}
34D052:  POP.W           {R8}
34D056:  POP             {R4-R7,PC}
34D058:  VCMPE.F32       S26, S22
34D05C:  MOVS            R1, #0
34D05E:  VMRS            APSR_nzcv, FPSCR
34D062:  BLT.W           loc_34CED8
34D066:  VCMPE.F32       S26, S16
34D06A:  VMRS            APSR_nzcv, FPSCR
34D06E:  BGT.W           loc_34CED8
34D072:  SUBW            R2, R5, #0x1A1
34D076:  CMP             R2, #9
34D078:  BHI             loc_34D0A4
34D07A:  ADDW            R1, R6, #0x484
34D07E:  MOVS            R3, #1
34D080:  LSL.W           R2, R3, R2
34D084:  MOVW            R6, #0x129
34D088:  TST             R2, R6
34D08A:  BNE             loc_34D09C
34D08C:  MOVW            R3, #0x252
34D090:  TST             R2, R3
34D092:  BEQ             loc_34D0AE
34D094:  LDR             R1, [R1]
34D096:  UBFX.W          R1, R1, #8, #1
34D09A:  B               loc_34CED8
34D09C:  LDRB            R1, [R1,#1]
34D09E:  BIC.W           R1, R3, R1
34D0A2:  B               loc_34CED8
34D0A4:  SUB.W           R1, R5, #0xA3
34D0A8:  CMP             R1, #2
34D0AA:  BCS.W           loc_34CED6
34D0AE:  MOVS            R1, #1
34D0B0:  B               loc_34CED8
