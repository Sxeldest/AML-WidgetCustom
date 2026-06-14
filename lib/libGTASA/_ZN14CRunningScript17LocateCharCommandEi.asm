; =========================================================
; Game Engine Function: _ZN14CRunningScript17LocateCharCommandEi
; Address            : 0x34A914 - 0x34AD18
; =========================================================

34A914:  PUSH            {R4-R7,LR}
34A916:  ADD             R7, SP, #0xC
34A918:  PUSH.W          {R8-R11}
34A91C:  SUB             SP, SP, #4
34A91E:  VPUSH           {D8-D15}
34A922:  SUB             SP, SP, #0x30; float
34A924:  MOV             R6, R1
34A926:  SUB.W           R5, R6, #0xFE
34A92A:  CMP             R5, #5
34A92C:  MOV             R4, R0
34A92E:  ITE HI
34A930:  MOVHI           R1, #6
34A932:  MOVLS           R1, #8; __int16
34A934:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34A938:  LDR.W           R0, =(ScriptParams_ptr - 0x34A942)
34A93C:  STR             R4, [SP,#0x90+var_70]
34A93E:  ADD             R0, PC; ScriptParams_ptr
34A940:  LDR             R0, [R0]; ScriptParams
34A942:  LDR             R1, [R0]
34A944:  CMP             R1, #0
34A946:  BLT             loc_34A96A
34A948:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34A954)
34A94C:  UXTB            R3, R1
34A94E:  LSRS            R1, R1, #8
34A950:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34A952:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34A954:  LDR             R0, [R0]; CPools::ms_pPedPool
34A956:  LDR             R2, [R0,#4]
34A958:  LDRB            R2, [R2,R1]
34A95A:  CMP             R2, R3
34A95C:  BNE             loc_34A96A
34A95E:  MOVW            R2, #0x7CC
34A962:  LDR             R0, [R0]
34A964:  MLA.W           R4, R1, R2, R0
34A968:  B               loc_34A96C
34A96A:  MOVS            R4, #0
34A96C:  LDRB.W          R0, [R4,#0x485]
34A970:  LSLS            R0, R0, #0x1F
34A972:  ITT NE
34A974:  LDRNE.W         R0, [R4,#0x590]
34A978:  CMPNE           R0, #0
34A97A:  BNE             loc_34A97E
34A97C:  MOV             R0, R4
34A97E:  LDR             R1, [R0,#0x14]
34A980:  ADD.W           R2, R1, #0x30 ; '0'
34A984:  CMP             R1, #0
34A986:  IT EQ
34A988:  ADDEQ           R2, R0, #4
34A98A:  STR             R6, [SP,#0x90+var_74]
34A98C:  SUB.W           R0, R6, #0xEF
34A990:  VLDR            S30, [R2]
34A994:  VLDR            S28, [R2,#4]
34A998:  MOVS            R6, #0
34A99A:  VLDR            S26, [R2,#8]
34A99E:  CMP             R0, #0x14
34A9A0:  BHI             loc_34A9C0
34A9A2:  MOVS            R1, #1
34A9A4:  LSL.W           R0, R1, R0
34A9A8:  MOVS            R1, #(off_1C0004+3); CPed *
34A9AE:  TST             R0, R1
34A9B0:  BEQ             loc_34A9C0
34A9B2:  MOV             R0, R4; this
34A9B4:  BLX             j__ZN11CTheScripts12IsPedStoppedEP4CPed; CTheScripts::IsPedStopped(CPed *)
34A9B8:  MOVS            R6, #0
34A9BA:  CMP             R0, #0
34A9BC:  IT EQ
34A9BE:  MOVEQ           R6, #1
34A9C0:  LDR             R0, =(ScriptParams_ptr - 0x34A9CA)
34A9C2:  CMP             R5, #5
34A9C4:  STR             R4, [SP,#0x90+var_78]
34A9C6:  ADD             R0, PC; ScriptParams_ptr
34A9C8:  LDR             R1, [R0]; ScriptParams
34A9CA:  VLDR            S16, [R1,#4]
34A9CE:  VLDR            S18, [R1,#8]
34A9D2:  VLDR            S22, [R1,#0xC]
34A9D6:  BHI             loc_34A9EE
34A9D8:  LDR             R0, =(ScriptParams_ptr - 0x34A9DE)
34A9DA:  ADD             R0, PC; ScriptParams_ptr
34A9DC:  LDR             R1, [R0]; ScriptParams
34A9DE:  ADD.W           R0, R1, #0x1C
34A9E2:  VLDR            S20, [R1,#0x10]
34A9E6:  VLDR            S17, [R1,#0x18]
34A9EA:  ADDS            R1, #0x14
34A9EC:  B               loc_34A9F8
34A9EE:  ADD.W           R0, R1, #0x14
34A9F2:  ADDS            R1, #0x10
34A9F4:  VMOV.F32        S20, S22
34A9F8:  VLDR            S2, =36.0
34A9FC:  MOV.W           R9, #0
34AA00:  VLDR            S24, [R1]
34AA04:  MOV.W           R8, #0
34AA08:  VCMP.F32        S17, S2
34AA0C:  LDR             R4, [R0]
34AA0E:  VMRS            APSR_nzcv, FPSCR
34AA12:  VCMP.F32        S24, S2
34AA16:  MOV.W           R10, #0
34AA1A:  VLDR            S0, =1.2
34AA1E:  ADR             R1, aDesert5; "desert5"
34AA20:  MOV.W           R11, #0
34AA24:  VMUL.F32        S19, S20, S0
34AA28:  IT EQ
34AA2A:  MOVEQ.W         R9, #1
34AA2E:  VMRS            APSR_nzcv, FPSCR
34AA32:  VCMP.F32        S20, S2
34AA36:  IT EQ
34AA38:  MOVEQ.W         R8, #1
34AA3C:  VMRS            APSR_nzcv, FPSCR
34AA40:  IT EQ
34AA42:  MOVEQ.W         R10, #1
34AA46:  LDR             R0, [SP,#0x90+var_70]
34AA48:  ADDS            R0, #8; char *
34AA4A:  BLX             strcmp
34AA4E:  CMP             R0, #0
34AA50:  MOV.W           R1, #0
34AA54:  IT EQ
34AA56:  MOVEQ           R1, #1
34AA58:  AND.W           R1, R1, R10
34AA5C:  AND.W           R1, R1, R8
34AA60:  ANDS.W          R1, R1, R9
34AA64:  ITTT NE
34AA66:  VMOVNE.F32      S17, S19
34AA6A:  VMOVNE.F32      S24, S19
34AA6E:  VMOVNE.F32      S20, S19
34AA72:  CMP             R6, #0
34AA74:  MOV             R6, R5
34AA76:  BNE             loc_34AB0A
34AA78:  VADD.F32        S0, S16, S20
34AA7C:  MOVS            R1, #0
34AA7E:  VSUB.F32        S2, S16, S20
34AA82:  VCMPE.F32       S30, S0
34AA86:  VMRS            APSR_nzcv, FPSCR
34AA8A:  VCMPE.F32       S30, S2
34AA8E:  IT GT
34AA90:  MOVGT           R1, #1
34AA92:  VMRS            APSR_nzcv, FPSCR
34AA96:  IT LT
34AA98:  MOVLT.W         R11, #1
34AA9C:  CMP             R6, #5
34AA9E:  ORR.W           R1, R1, R11
34AAA2:  BHI             loc_34AB00
34AAA4:  CBNZ            R1, loc_34AB06
34AAA6:  VSUB.F32        S0, S18, S24
34AAAA:  MOV.W           R11, #0
34AAAE:  VCMPE.F32       S28, S0
34AAB2:  VMRS            APSR_nzcv, FPSCR
34AAB6:  BLT             loc_34AB0A
34AAB8:  VADD.F32        S0, S18, S24
34AABC:  VCMPE.F32       S28, S0
34AAC0:  VMRS            APSR_nzcv, FPSCR
34AAC4:  BGT             loc_34AB0A
34AAC6:  VSUB.F32        S0, S22, S17
34AACA:  MOV.W           R11, #0
34AACE:  VCMPE.F32       S26, S0
34AAD2:  VMRS            APSR_nzcv, FPSCR
34AAD6:  BLT             loc_34AB0A
34AAD8:  VADD.F32        S0, S22, S17
34AADC:  VCMPE.F32       S26, S0
34AAE0:  VMRS            APSR_nzcv, FPSCR
34AAE4:  BGT             loc_34AB0A
34AAE6:  CMP             R0, #0
34AAE8:  BNE.W           loc_34ACC2
34AAEC:  LDR             R0, =(AudioEngine_ptr - 0x34AAFA)
34AAEE:  MOVS            R1, #1; int
34AAF0:  MOVS            R2, #0; float
34AAF2:  MOV.W           R3, #0x3F800000; float
34AAF6:  ADD             R0, PC; AudioEngine_ptr
34AAF8:  LDR             R0, [R0]; AudioEngine ; this
34AAFA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
34AAFE:  B               loc_34ACC2
34AB00:  CMP             R1, #0
34AB02:  BEQ.W           loc_34AC9E
34AB06:  MOV.W           R11, #0
34AB0A:  LDR             R5, [SP,#0x90+var_70]
34AB0C:  LDRB.W          R0, [R5,#0xF2]
34AB10:  LDRH.W          R1, [R5,#0xF0]
34AB14:  CMP             R0, #0
34AB16:  IT NE
34AB18:  MOVNE           R0, #1
34AB1A:  CMP             R1, #0
34AB1C:  EOR.W           R0, R0, R11
34AB20:  BEQ             loc_34AB52
34AB22:  CMP             R1, #8
34AB24:  BHI             loc_34AB34
34AB26:  LDRB.W          R2, [R5,#0xE5]
34AB2A:  SUBS            R1, #1
34AB2C:  STRH.W          R1, [R5,#0xF0]
34AB30:  ANDS            R0, R2
34AB32:  B               loc_34AB52
34AB34:  SUB.W           R2, R1, #0x15
34AB38:  UXTH            R2, R2
34AB3A:  CMP             R2, #7
34AB3C:  BHI             loc_34AB56
34AB3E:  LDRB.W          R2, [R5,#0xE5]; float
34AB42:  SUBS            R3, R1, #1
34AB44:  CMP             R1, #0x15
34AB46:  ORR.W           R0, R0, R2
34AB4A:  IT EQ
34AB4C:  MOVEQ           R3, #0
34AB4E:  STRH.W          R3, [R5,#0xF0]
34AB52:  STRB.W          R0, [R5,#0xE5]
34AB56:  CMP             R4, #0
34AB58:  BEQ.W           loc_34AC5E
34AB5C:  VADD.F32        S0, S18, S24
34AB60:  LDR             R0, [R5,#0x14]
34AB62:  VADD.F32        S2, S16, S20
34AB66:  CMP             R6, #5
34AB68:  VSUB.F32        S4, S18, S24
34AB6C:  ADD.W           R4, R0, R5
34AB70:  VSUB.F32        S6, S16, S20
34AB74:  BHI             loc_34ABF2
34AB76:  VMAX.F32        D8, D2, D0
34AB7A:  VMIN.F32        D0, D2, D0
34AB7E:  VMAX.F32        D9, D3, D1
34AB82:  VMIN.F32        D1, D3, D1
34AB86:  VMOV.F32        S4, #0.5
34AB8A:  VADD.F32        S0, S0, S16
34AB8E:  VADD.F32        S2, S2, S18
34AB92:  VMUL.F32        S24, S0, S4
34AB96:  VLDR            S0, =-100.0
34AB9A:  VMUL.F32        S20, S2, S4
34AB9E:  VCMPE.F32       S22, S0
34ABA2:  VMRS            APSR_nzcv, FPSCR
34ABA6:  VSTR            S24, [SP,#0x90+var_68]
34ABAA:  VSTR            S20, [SP,#0x90+var_6C]
34ABAE:  BGT             loc_34ABC8
34ABB0:  VMOV            R0, S20; this
34ABB4:  VMOV            R1, S24; float
34ABB8:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34ABBC:  VMOV.F32        S0, #2.0
34ABC0:  VMOV            S2, R0
34ABC4:  VADD.F32        S22, S2, S0
34ABC8:  VSUB.F32        S0, S24, S16
34ABCC:  MOVS            R0, #0
34ABCE:  VSUB.F32        S2, S18, S20
34ABD2:  ADD             R3, SP, #0x90+var_6C; int
34ABD4:  VSTR            S22, [SP,#0x90+var_64]
34ABD8:  MOVS            R1, #2; int
34ABDA:  STR             R0, [SP,#0x90+var_80]
34ABDC:  MOVS            R2, #0; int
34ABDE:  STRD.W          R0, R0, [SP,#0x90+var_8C]; int
34ABE2:  MOV             R0, R4; this
34ABE4:  VSTR            S0, [SP,#0x90+var_84]
34ABE8:  VSTR            S2, [SP,#0x90+var_90]
34ABEC:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34ABF0:  B               loc_34AC90
34ABF2:  VMAX.F32        D11, D3, D1
34ABF6:  VMIN.F32        D1, D3, D1
34ABFA:  VMAX.F32        D13, D2, D0
34ABFE:  VMIN.F32        D0, D2, D0
34AC02:  VMOV.F32        S6, #0.5
34AC06:  VADD.F32        S2, S2, S22
34AC0A:  VADD.F32        S0, S0, S26
34AC0E:  VMUL.F32        S28, S2, S6
34AC12:  VMUL.F32        S30, S0, S6
34AC16:  VMOV            R0, S28; this
34AC1A:  VMOV            R1, S30; float
34AC1E:  VSTR            S30, [SP,#0x90+var_68]
34AC22:  VSTR            S28, [SP,#0x90+var_6C]
34AC26:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34AC2A:  VMOV.F32        S0, #2.0
34AC2E:  ADD             R3, SP, #0x90+var_6C; int
34AC30:  VMOV            S2, R0
34AC34:  MOVS            R0, #0
34AC36:  VSUB.F32        S4, S22, S28
34AC3A:  STR             R0, [SP,#0x90+var_80]
34AC3C:  MOVS            R1, #2; int
34AC3E:  MOVS            R2, #0; int
34AC40:  VADD.F32        S0, S2, S0
34AC44:  VSUB.F32        S2, S30, S26
34AC48:  VSTR            S0, [SP,#0x90+var_64]
34AC4C:  VSTR            S2, [SP,#0x90+var_84]
34AC50:  STRD.W          R0, R0, [SP,#0x90+var_8C]; int
34AC54:  MOV             R0, R4; this
34AC56:  VSTR            S4, [SP,#0x90+var_90]
34AC5A:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34AC5E:  CMP             R6, #6
34AC60:  BCC             loc_34AC90
34AC62:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34AC68)
34AC64:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34AC66:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34AC68:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34AC6A:  CBZ             R0, loc_34AC90
34AC6C:  VSUB.F32        S0, S16, S20
34AC70:  VSUB.F32        S2, S18, S24
34AC74:  VADD.F32        S4, S16, S20
34AC78:  VADD.F32        S6, S18, S24
34AC7C:  VMOV            R0, S0; this
34AC80:  VMOV            R1, S2; float
34AC84:  VMOV            R2, S4; float
34AC88:  VMOV            R3, S6; float
34AC8C:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34AC90:  ADD             SP, SP, #0x30 ; '0'
34AC92:  VPOP            {D8-D15}
34AC96:  ADD             SP, SP, #4
34AC98:  POP.W           {R8-R11}
34AC9C:  POP             {R4-R7,PC}
34AC9E:  VSUB.F32        S0, S18, S24
34ACA2:  MOV.W           R11, #0
34ACA6:  VCMPE.F32       S28, S0
34ACAA:  VMRS            APSR_nzcv, FPSCR
34ACAE:  BLT.W           loc_34AB0A
34ACB2:  VADD.F32        S0, S18, S24
34ACB6:  VCMPE.F32       S28, S0
34ACBA:  VMRS            APSR_nzcv, FPSCR
34ACBE:  BGT.W           loc_34AB0A
34ACC2:  LDR             R0, [SP,#0x90+var_74]
34ACC4:  MOV.W           R11, #0
34ACC8:  SUBS            R0, #0xEC
34ACCA:  CMP             R0, #0x17
34ACCC:  BHI.W           loc_34AB0A
34ACD0:  MOVS            R1, #1
34ACD2:  LSL.W           R2, R1, R0
34ACD6:  MOVS            R1, #0x240009
34ACDC:  TST             R2, R1
34ACDE:  BNE             loc_34AD08
34ACE0:  LDR             R1, [SP,#0x90+var_78]
34ACE2:  MOVS            R3, #0x480012
34ACE8:  TST             R2, R3
34ACEA:  ADDW            R1, R1, #0x484
34ACEE:  BNE             loc_34AD0E
34ACF0:  MOVS            R2, #1
34ACF2:  LSL.W           R0, R2, R0
34ACF6:  MOVS            R2, #0x900024
34ACFC:  TST             R0, R2
34ACFE:  ITT NE
34AD00:  LDRNE           R0, [R1]
34AD02:  UBFXNE.W        R11, R0, #8, #1
34AD06:  B               loc_34AB0A
34AD08:  MOV.W           R11, #1
34AD0C:  B               loc_34AB0A
34AD0E:  LDRB            R0, [R1,#1]
34AD10:  MOVS            R1, #1
34AD12:  BIC.W           R11, R1, R0
34AD16:  B               loc_34AB0A
