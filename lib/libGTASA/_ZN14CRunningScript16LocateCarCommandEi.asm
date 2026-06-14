; =========================================================
; Game Engine Function: _ZN14CRunningScript16LocateCarCommandEi
; Address            : 0x34B978 - 0x34BCA0
; =========================================================

34B978:  PUSH            {R4-R7,LR}
34B97A:  ADD             R7, SP, #0xC
34B97C:  PUSH.W          {R11}
34B980:  VPUSH           {D8-D15}
34B984:  SUB             SP, SP, #0x20; float
34B986:  MOV             R5, R1
34B988:  SUBW            R6, R5, #0x1AF
34B98C:  CMP             R6, #1
34B98E:  MOV             R4, R0
34B990:  ITE HI
34B992:  MOVHI           R1, #6
34B994:  MOVLS           R1, #8; __int16
34B996:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34B99A:  LDR             R0, =(ScriptParams_ptr - 0x34B9A0)
34B99C:  ADD             R0, PC; ScriptParams_ptr
34B99E:  LDR             R0, [R0]; ScriptParams
34B9A0:  LDR             R1, [R0]
34B9A2:  CMP             R1, #0
34B9A4:  BLT             loc_34B9C6
34B9A6:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34B9B0)
34B9A8:  UXTB            R3, R1
34B9AA:  LSRS            R1, R1, #8
34B9AC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34B9AE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34B9B0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34B9B2:  LDR             R2, [R0,#4]
34B9B4:  LDRB            R2, [R2,R1]
34B9B6:  CMP             R2, R3
34B9B8:  BNE             loc_34B9C6
34B9BA:  MOVW            R2, #0xA2C
34B9BE:  LDR             R0, [R0]
34B9C0:  MLA.W           R1, R1, R2, R0
34B9C4:  B               loc_34B9C8
34B9C6:  MOVS            R1, #0
34B9C8:  CMP.W           R5, #0x1B0
34B9CC:  MOV.W           R3, #0
34B9D0:  IT NE
34B9D2:  CMPNE.W         R5, #0x1AE
34B9D6:  BNE             loc_34BA08
34B9D8:  LDR             R0, =(_ZN6CTimer15ms_fOldTimeStepE_ptr - 0x34B9E0)
34B9DA:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x34B9E6)
34B9DC:  ADD             R0, PC; _ZN6CTimer15ms_fOldTimeStepE_ptr
34B9DE:  VLDR            S0, =0.01
34B9E2:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
34B9E4:  LDR             R0, [R0]; CTimer::ms_fOldTimeStep ...
34B9E6:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
34B9E8:  VLDR            S2, [R0]
34B9EC:  VLDR            S4, [R2]
34B9F0:  VMIN.F32        D1, D2, D1
34B9F4:  VMUL.F32        S0, S2, S0
34B9F8:  VLDR            S2, [R1,#0xD8]
34B9FC:  VCMPE.F32       S2, S0
34BA00:  VMRS            APSR_nzcv, FPSCR
34BA04:  IT GT
34BA06:  MOVGT           R3, #1
34BA08:  LDR             R0, =(ScriptParams_ptr - 0x34BA10)
34BA0A:  CMP             R6, #1
34BA0C:  ADD             R0, PC; ScriptParams_ptr
34BA0E:  LDR             R2, [R0]; ScriptParams
34BA10:  VLDR            S16, [R2,#4]
34BA14:  VLDR            S18, [R2,#8]
34BA18:  VLDR            S0, [R2,#0xC]
34BA1C:  BHI             loc_34BA34
34BA1E:  LDR             R0, =(ScriptParams_ptr - 0x34BA24)
34BA20:  ADD             R0, PC; ScriptParams_ptr
34BA22:  LDR             R2, [R0]; ScriptParams
34BA24:  ADD.W           R0, R2, #0x1C
34BA28:  VLDR            S20, [R2,#0x10]
34BA2C:  VLDR            S2, [R2,#0x18]
34BA30:  ADDS            R2, #0x14
34BA32:  B               loc_34BA3E
34BA34:  ADD.W           R0, R2, #0x14
34BA38:  ADDS            R2, #0x10
34BA3A:  VMOV.F32        S20, S0
34BA3E:  LDR             R0, [R0]
34BA40:  CMP             R3, #0
34BA42:  VLDR            S22, [R2]
34BA46:  MOV.W           R2, #0
34BA4A:  BEQ             loc_34BA74
34BA4C:  LDRB.W          R1, [R4,#0xF2]
34BA50:  LDRH.W          R3, [R4,#0xF0]
34BA54:  CMP             R1, #0
34BA56:  IT NE
34BA58:  MOVNE           R1, #1
34BA5A:  CMP             R3, #0
34BA5C:  EOR.W           R1, R1, R2
34BA60:  BEQ             loc_34BADC
34BA62:  CMP             R3, #8
34BA64:  BHI             loc_34BABE
34BA66:  LDRB.W          R2, [R4,#0xE5]
34BA6A:  SUBS            R3, #1
34BA6C:  STRH.W          R3, [R4,#0xF0]
34BA70:  ANDS            R1, R2
34BA72:  B               loc_34BADC
34BA74:  VADD.F32        S6, S16, S20
34BA78:  LDR             R5, [R1,#0x14]
34BA7A:  VSUB.F32        S8, S16, S20
34BA7E:  ADD.W           R3, R5, #0x30 ; '0'
34BA82:  CMP             R5, #0
34BA84:  IT EQ
34BA86:  ADDEQ           R3, R1, #4
34BA88:  MOVS            R1, #0
34BA8A:  VLDR            S10, [R3]
34BA8E:  VLDR            S4, [R3,#4]
34BA92:  VCMPE.F32       S10, S6
34BA96:  VMRS            APSR_nzcv, FPSCR
34BA9A:  VCMPE.F32       S10, S8
34BA9E:  IT GT
34BAA0:  MOVGT           R1, #1
34BAA2:  VMRS            APSR_nzcv, FPSCR
34BAA6:  IT LT
34BAA8:  MOVLT           R2, #1
34BAAA:  CMP             R6, #1
34BAAC:  ORR.W           R1, R1, R2
34BAB0:  BHI.W           loc_34BC24
34BAB4:  CMP             R1, #0
34BAB6:  BEQ.W           loc_34BC52
34BABA:  MOVS            R2, #0
34BABC:  B               loc_34BA4C
34BABE:  SUB.W           R2, R3, #0x15
34BAC2:  UXTH            R2, R2
34BAC4:  CMP             R2, #7
34BAC6:  BHI             loc_34BAE0
34BAC8:  LDRB.W          R2, [R4,#0xE5]; float
34BACC:  SUBS            R5, R3, #1
34BACE:  CMP             R3, #0x15
34BAD0:  ORR.W           R1, R1, R2
34BAD4:  IT EQ
34BAD6:  MOVEQ           R5, #0
34BAD8:  STRH.W          R5, [R4,#0xF0]
34BADC:  STRB.W          R1, [R4,#0xE5]
34BAE0:  CMP             R0, #0
34BAE2:  BEQ.W           loc_34BBE6
34BAE6:  VADD.F32        S2, S18, S22
34BAEA:  LDR             R0, [R4,#0x14]
34BAEC:  VADD.F32        S4, S16, S20
34BAF0:  CMP             R6, #1
34BAF2:  VSUB.F32        S6, S18, S22
34BAF6:  ADD             R4, R0
34BAF8:  VSUB.F32        S8, S16, S20
34BAFC:  BHI             loc_34BB7A
34BAFE:  VMAX.F32        D8, D3, D1
34BB02:  VMIN.F32        D1, D3, D1
34BB06:  VMAX.F32        D9, D4, D2
34BB0A:  VMIN.F32        D2, D4, D2
34BB0E:  VMOV.F32        S6, #0.5
34BB12:  VADD.F32        S2, S2, S16
34BB16:  VADD.F32        S4, S4, S18
34BB1A:  VMUL.F32        S22, S2, S6
34BB1E:  VLDR            S2, =-100.0
34BB22:  VMUL.F32        S20, S4, S6
34BB26:  VCMPE.F32       S0, S2
34BB2A:  VMRS            APSR_nzcv, FPSCR
34BB2E:  VSTR            S22, [SP,#0x70+var_58]
34BB32:  VSTR            S20, [SP,#0x70+var_5C]
34BB36:  BGT             loc_34BB50
34BB38:  VMOV            R0, S20; this
34BB3C:  VMOV            R1, S22; float
34BB40:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34BB44:  VMOV.F32        S0, #2.0
34BB48:  VMOV            S2, R0
34BB4C:  VADD.F32        S0, S2, S0
34BB50:  VSUB.F32        S2, S22, S16
34BB54:  MOVS            R0, #0
34BB56:  VSUB.F32        S4, S18, S20
34BB5A:  ADD             R3, SP, #0x70+var_5C; int
34BB5C:  VSTR            S0, [SP,#0x70+var_54]
34BB60:  MOVS            R1, #2; int
34BB62:  STR             R0, [SP,#0x70+var_60]
34BB64:  MOVS            R2, #0; int
34BB66:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34BB6A:  MOV             R0, R4; this
34BB6C:  VSTR            S2, [SP,#0x70+var_64]
34BB70:  VSTR            S4, [SP,#0x70+var_70]
34BB74:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34BB78:  B               loc_34BC18
34BB7A:  VMAX.F32        D13, D3, D1
34BB7E:  VMIN.F32        D1, D3, D1
34BB82:  VMAX.F32        D12, D4, D2
34BB86:  VMIN.F32        D0, D4, D2
34BB8A:  VMOV.F32        S4, #0.5
34BB8E:  VADD.F32        S2, S2, S26
34BB92:  VADD.F32        S0, S0, S24
34BB96:  VMUL.F32        S30, S2, S4
34BB9A:  VMUL.F32        S28, S0, S4
34BB9E:  VMOV            R1, S30; float
34BBA2:  VSTR            S30, [SP,#0x70+var_58]
34BBA6:  VMOV            R0, S28; this
34BBAA:  VSTR            S28, [SP,#0x70+var_5C]
34BBAE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34BBB2:  VMOV.F32        S0, #2.0
34BBB6:  ADD             R3, SP, #0x70+var_5C; int
34BBB8:  VMOV            S2, R0
34BBBC:  MOVS            R0, #0
34BBBE:  VSUB.F32        S4, S24, S28
34BBC2:  STR             R0, [SP,#0x70+var_60]
34BBC4:  MOVS            R1, #2; int
34BBC6:  MOVS            R2, #0; int
34BBC8:  VADD.F32        S0, S2, S0
34BBCC:  VSUB.F32        S2, S30, S26
34BBD0:  VSTR            S0, [SP,#0x70+var_54]
34BBD4:  VSTR            S2, [SP,#0x70+var_64]
34BBD8:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34BBDC:  MOV             R0, R4; this
34BBDE:  VSTR            S4, [SP,#0x70+var_70]
34BBE2:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34BBE6:  CMP             R6, #2
34BBE8:  BCC             loc_34BC18
34BBEA:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34BBF0)
34BBEC:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34BBEE:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34BBF0:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34BBF2:  CBZ             R0, loc_34BC18
34BBF4:  VSUB.F32        S0, S16, S20
34BBF8:  VSUB.F32        S2, S18, S22
34BBFC:  VADD.F32        S4, S16, S20
34BC00:  VADD.F32        S6, S18, S22
34BC04:  VMOV            R0, S0; this
34BC08:  VMOV            R1, S2; float
34BC0C:  VMOV            R2, S4; float
34BC10:  VMOV            R3, S6; float
34BC14:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34BC18:  ADD             SP, SP, #0x20 ; ' '
34BC1A:  VPOP            {D8-D15}
34BC1E:  POP.W           {R11}
34BC22:  POP             {R4-R7,PC}
34BC24:  MOVS            R2, #0
34BC26:  CMP             R1, #0
34BC28:  BNE.W           loc_34BA4C
34BC2C:  VSUB.F32        S2, S18, S22
34BC30:  MOVS            R1, #0
34BC32:  VADD.F32        S6, S18, S22
34BC36:  VCMPE.F32       S4, S2
34BC3A:  VMRS            APSR_nzcv, FPSCR
34BC3E:  VCMPE.F32       S4, S6
34BC42:  IT GE
34BC44:  MOVGE           R1, #1
34BC46:  VMRS            APSR_nzcv, FPSCR
34BC4A:  IT LE
34BC4C:  MOVLE           R2, #1
34BC4E:  ANDS            R2, R1
34BC50:  B               loc_34BA4C
34BC52:  VSUB.F32        S6, S18, S22
34BC56:  MOVS            R2, #0
34BC58:  VCMPE.F32       S4, S6
34BC5C:  VMRS            APSR_nzcv, FPSCR
34BC60:  BLT.W           loc_34BA4C
34BC64:  VADD.F32        S6, S18, S22
34BC68:  VCMPE.F32       S4, S6
34BC6C:  VMRS            APSR_nzcv, FPSCR
34BC70:  BGT.W           loc_34BA4C
34BC74:  VSUB.F32        S6, S0, S2
34BC78:  VLDR            S4, [R3,#8]
34BC7C:  VADD.F32        S2, S0, S2
34BC80:  MOVS            R2, #0
34BC82:  MOVS            R1, #0
34BC84:  VCMPE.F32       S4, S6
34BC88:  VMRS            APSR_nzcv, FPSCR
34BC8C:  VCMPE.F32       S4, S2
34BC90:  IT GE
34BC92:  MOVGE           R2, #1
34BC94:  VMRS            APSR_nzcv, FPSCR
34BC98:  IT LE
34BC9A:  MOVLE           R1, #1
34BC9C:  ANDS            R2, R1
34BC9E:  B               loc_34BA4C
