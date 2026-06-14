; =========================================================
; Game Engine Function: _ZN14CRunningScript19LocateObjectCommandEi
; Address            : 0x34BD04 - 0x34BFC4
; =========================================================

34BD04:  PUSH            {R4-R7,LR}
34BD06:  ADD             R7, SP, #0xC
34BD08:  PUSH.W          {R11}
34BD0C:  VPUSH           {D8-D15}
34BD10:  SUB             SP, SP, #0x20; float
34BD12:  MOV             R5, R0
34BD14:  MOV             R6, R1
34BD16:  MOVW            R0, #0x4E6
34BD1A:  CMP             R6, R0
34BD1C:  ITE NE
34BD1E:  MOVNE           R1, #6
34BD20:  MOVEQ           R1, #8; __int16
34BD22:  MOV             R0, R5; this
34BD24:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34BD28:  LDR             R0, =(ScriptParams_ptr - 0x34BD2E)
34BD2A:  ADD             R0, PC; ScriptParams_ptr
34BD2C:  LDR             R0, [R0]; ScriptParams
34BD2E:  LDR             R1, [R0]
34BD30:  CMP             R1, #0
34BD32:  BLT             loc_34BD54
34BD34:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34BD3E)
34BD36:  UXTB            R3, R1
34BD38:  LSRS            R1, R1, #8
34BD3A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34BD3C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34BD3E:  LDR             R0, [R0]; CPools::ms_pObjectPool
34BD40:  LDR             R2, [R0,#4]
34BD42:  LDRB            R2, [R2,R1]
34BD44:  CMP             R2, R3
34BD46:  BNE             loc_34BD54
34BD48:  MOV.W           R2, #0x1A4
34BD4C:  LDR             R0, [R0]
34BD4E:  MLA.W           R0, R1, R2, R0
34BD52:  B               loc_34BD56
34BD54:  MOVS            R0, #0
34BD56:  LDR             R1, =(ScriptParams_ptr - 0x34BD5C)
34BD58:  ADD             R1, PC; ScriptParams_ptr
34BD5A:  LDR             R2, [R1]; ScriptParams
34BD5C:  MOVW            R1, #0x4E6
34BD60:  CMP             R6, R1
34BD62:  VLDR            S4, [R2,#4]
34BD66:  VLDR            S16, [R2,#8]
34BD6A:  VLDR            S0, [R2,#0xC]
34BD6E:  BNE             loc_34BD86
34BD70:  LDR             R2, =(ScriptParams_ptr - 0x34BD76)
34BD72:  ADD             R2, PC; ScriptParams_ptr
34BD74:  LDR             R2, [R2]; ScriptParams
34BD76:  ADD.W           R3, R2, #0x1C
34BD7A:  VLDR            S6, [R2,#0x10]
34BD7E:  VLDR            S2, [R2,#0x18]
34BD82:  ADDS            R2, #0x14
34BD84:  B               loc_34BD90
34BD86:  ADD.W           R3, R2, #0x14
34BD8A:  ADDS            R2, #0x10
34BD8C:  VMOV.F32        S6, S0
34BD90:  VADD.F32        S18, S4, S6
34BD94:  LDR             R4, [R0,#0x14]
34BD96:  VLDR            S22, [R2]
34BD9A:  VSUB.F32        S20, S4, S6
34BD9E:  ADD.W           R2, R4, #0x30 ; '0'
34BDA2:  CMP             R4, #0
34BDA4:  IT EQ
34BDA6:  ADDEQ           R2, R0, #4
34BDA8:  LDR             R0, [R3]
34BDAA:  VLDR            S6, [R2]
34BDAE:  MOVS            R3, #0
34BDB0:  VLDR            S4, [R2,#4]
34BDB4:  MOVS            R4, #0
34BDB6:  VCMPE.F32       S6, S18
34BDBA:  VMRS            APSR_nzcv, FPSCR
34BDBE:  VCMPE.F32       S6, S20
34BDC2:  IT GT
34BDC4:  MOVGT           R3, #1
34BDC6:  VMRS            APSR_nzcv, FPSCR
34BDCA:  IT LT
34BDCC:  MOVLT           R4, #1
34BDCE:  CMP             R6, R1
34BDD0:  ORR.W           R3, R3, R4
34BDD4:  BNE             loc_34BDDC
34BDD6:  CBZ             R3, loc_34BDF8
34BDD8:  MOVS            R1, #0
34BDDA:  B               loc_34BE40
34BDDC:  MOVS            R1, #0
34BDDE:  CBNZ            R3, loc_34BE40
34BDE0:  VSUB.F32        S2, S16, S22
34BDE4:  MOVS            R2, #0
34BDE6:  VADD.F32        S6, S16, S22
34BDEA:  VCMPE.F32       S4, S2
34BDEE:  VMRS            APSR_nzcv, FPSCR
34BDF2:  VCMPE.F32       S4, S6
34BDF6:  B               loc_34BE32
34BDF8:  VSUB.F32        S6, S16, S22
34BDFC:  MOVS            R1, #0
34BDFE:  VCMPE.F32       S4, S6
34BE02:  VMRS            APSR_nzcv, FPSCR
34BE06:  BLT             loc_34BE40
34BE08:  VADD.F32        S6, S16, S22
34BE0C:  VCMPE.F32       S4, S6
34BE10:  VMRS            APSR_nzcv, FPSCR
34BE14:  BGT             loc_34BE40
34BE16:  VSUB.F32        S6, S0, S2
34BE1A:  VLDR            S4, [R2,#8]
34BE1E:  VADD.F32        S2, S0, S2
34BE22:  MOVS            R2, #0
34BE24:  MOVS            R1, #0
34BE26:  VCMPE.F32       S4, S6
34BE2A:  VMRS            APSR_nzcv, FPSCR
34BE2E:  VCMPE.F32       S4, S2
34BE32:  IT GE
34BE34:  MOVGE           R2, #1
34BE36:  VMRS            APSR_nzcv, FPSCR
34BE3A:  IT LE
34BE3C:  MOVLE           R1, #1
34BE3E:  ANDS            R1, R2
34BE40:  LDRB.W          R3, [R5,#0xF2]
34BE44:  LDRH.W          R2, [R5,#0xF0]; float
34BE48:  CMP             R3, #0
34BE4A:  IT NE
34BE4C:  MOVNE           R3, #1
34BE4E:  CMP             R2, #0
34BE50:  EOR.W           R1, R1, R3
34BE54:  BEQ             loc_34BE86
34BE56:  CMP             R2, #8
34BE58:  BHI             loc_34BE68
34BE5A:  LDRB.W          R3, [R5,#0xE5]
34BE5E:  SUBS            R2, #1
34BE60:  STRH.W          R2, [R5,#0xF0]
34BE64:  ANDS            R1, R3
34BE66:  B               loc_34BE86
34BE68:  SUB.W           R3, R2, #0x15
34BE6C:  UXTH            R3, R3
34BE6E:  CMP             R3, #7
34BE70:  BHI             loc_34BE8A
34BE72:  LDRB.W          R3, [R5,#0xE5]
34BE76:  SUBS            R4, R2, #1
34BE78:  CMP             R2, #0x15
34BE7A:  ORR.W           R1, R1, R3
34BE7E:  IT EQ
34BE80:  MOVEQ           R4, #0
34BE82:  STRH.W          R4, [R5,#0xF0]
34BE86:  STRB.W          R1, [R5,#0xE5]
34BE8A:  CMP             R0, #0
34BE8C:  BEQ             loc_34BF8A
34BE8E:  VADD.F32        S2, S16, S22
34BE92:  LDR             R0, [R5,#0x14]
34BE94:  VSUB.F32        S4, S16, S22
34BE98:  ADD             R5, R0
34BE9A:  MOVW            R0, #0x4E6
34BE9E:  CMP             R6, R0
34BEA0:  BNE             loc_34BF1E
34BEA2:  VMAX.F32        D8, D2, D1
34BEA6:  VMIN.F32        D1, D2, D1
34BEAA:  VMAX.F32        D11, D10, D9
34BEAE:  VMIN.F32        D3, D10, D9
34BEB2:  VMOV.F32        S4, #0.5
34BEB6:  VADD.F32        S2, S2, S16
34BEBA:  VADD.F32        S6, S6, S22
34BEBE:  VMUL.F32        S20, S2, S4
34BEC2:  VLDR            S2, =-100.0
34BEC6:  VMUL.F32        S18, S6, S4
34BECA:  VCMPE.F32       S0, S2
34BECE:  VMRS            APSR_nzcv, FPSCR
34BED2:  VSTR            S20, [SP,#0x70+var_58]
34BED6:  VSTR            S18, [SP,#0x70+var_5C]
34BEDA:  BGT             loc_34BEF4
34BEDC:  VMOV            R0, S18; this
34BEE0:  VMOV            R1, S20; float
34BEE4:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34BEE8:  VMOV.F32        S0, #2.0
34BEEC:  VMOV            S2, R0
34BEF0:  VADD.F32        S0, S2, S0
34BEF4:  VSUB.F32        S2, S20, S16
34BEF8:  MOVS            R0, #0
34BEFA:  VSUB.F32        S4, S22, S18
34BEFE:  ADD             R3, SP, #0x70+var_5C; int
34BF00:  VSTR            S0, [SP,#0x70+var_54]
34BF04:  MOVS            R1, #2; int
34BF06:  STR             R0, [SP,#0x70+var_60]
34BF08:  MOVS            R2, #0; int
34BF0A:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34BF0E:  MOV             R0, R5; this
34BF10:  VSTR            S2, [SP,#0x70+var_64]
34BF14:  VSTR            S4, [SP,#0x70+var_70]
34BF18:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34BF1C:  B               loc_34BFB8
34BF1E:  VMAX.F32        D13, D2, D1
34BF22:  VMIN.F32        D1, D2, D1
34BF26:  VMAX.F32        D12, D10, D9
34BF2A:  VMIN.F32        D0, D10, D9
34BF2E:  VMOV.F32        S6, #0.5
34BF32:  VADD.F32        S2, S2, S26
34BF36:  VADD.F32        S0, S0, S24
34BF3A:  VMUL.F32        S30, S2, S6
34BF3E:  VMUL.F32        S28, S0, S6
34BF42:  VMOV            R1, S30; float
34BF46:  VSTR            S30, [SP,#0x70+var_58]
34BF4A:  VMOV            R0, S28; this
34BF4E:  VSTR            S28, [SP,#0x70+var_5C]
34BF52:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34BF56:  VMOV.F32        S0, #2.0
34BF5A:  ADD             R3, SP, #0x70+var_5C; int
34BF5C:  VMOV            S2, R0
34BF60:  MOVS            R0, #0
34BF62:  VSUB.F32        S4, S24, S28
34BF66:  STR             R0, [SP,#0x70+var_60]
34BF68:  MOVS            R1, #2; int
34BF6A:  MOVS            R2, #0; int
34BF6C:  VADD.F32        S0, S2, S0
34BF70:  VSUB.F32        S2, S30, S26
34BF74:  VSTR            S0, [SP,#0x70+var_54]
34BF78:  VSTR            S2, [SP,#0x70+var_64]
34BF7C:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34BF80:  MOV             R0, R5; this
34BF82:  VSTR            S4, [SP,#0x70+var_70]
34BF86:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34BF8A:  MOVW            R0, #0x4E6
34BF8E:  CMP             R6, R0
34BF90:  BEQ             loc_34BFB8
34BF92:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34BF98)
34BF94:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34BF96:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34BF98:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34BF9A:  CBZ             R0, loc_34BFB8
34BF9C:  VSUB.F32        S0, S16, S22
34BFA0:  VADD.F32        S2, S16, S22
34BFA4:  VMOV            R0, S20; this
34BFA8:  VMOV            R2, S18; float
34BFAC:  VMOV            R1, S0; float
34BFB0:  VMOV            R3, S2; float
34BFB4:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34BFB8:  ADD             SP, SP, #0x20 ; ' '
34BFBA:  VPOP            {D8-D15}
34BFBE:  POP.W           {R11}
34BFC2:  POP             {R4-R7,PC}
