; =========================================================
; Game Engine Function: _ZN11CAutomobile28dmgDrawCarCollidingParticlesERK7CVectorf11eWeaponType
; Address            : 0x550B14 - 0x550DF4
; =========================================================

550B14:  PUSH            {R4-R7,LR}
550B16:  ADD             R7, SP, #0xC
550B18:  PUSH.W          {R8-R11}
550B1C:  SUB             SP, SP, #4
550B1E:  VPUSH           {D8-D10}
550B22:  SUB             SP, SP, #0x68
550B24:  MOV             R6, R3
550B26:  MOV             R4, R2
550B28:  MOV             R11, R1
550B2A:  MOV             R5, R0
550B2C:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
550B30:  CMP             R0, #1
550B32:  BNE.W           loc_550DE6
550B36:  VMOV            S18, R4
550B3A:  VLDR            S20, =45.0
550B3E:  VCVT.S32.F32    S16, S18
550B42:  BLX             j__ZN10TouchSense8instanceEv; TouchSense::instance(void)
550B46:  VCMPE.F32       S18, S20
550B4A:  MOVS            R1, #0x14
550B4C:  VMRS            APSR_nzcv, FPSCR
550B50:  BLE             loc_550B5A
550B52:  STR             R1, [SP,#0xA0+var_A0]
550B54:  MOVS            R1, #1
550B56:  MOVS            R2, #0x5E ; '^'
550B58:  B               loc_550B60
550B5A:  STR             R1, [SP,#0xA0+var_A0]; int
550B5C:  MOVS            R1, #2; int
550B5E:  MOVS            R2, #0x61 ; 'a'; int
550B60:  MOVS            R3, #0x73 ; 's'; int
550B62:  BLX             j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
550B66:  VMOV            R0, S16
550B6A:  CMP             R6, #0
550B6C:  STR             R0, [SP,#0xA0+var_7C]
550B6E:  IT NE
550B70:  CMPNE           R6, #0xE
550B72:  BEQ             loc_550BF8
550B74:  LDR             R2, [SP,#0xA0+var_7C]
550B76:  MOVW            R0, #0x6667
550B7A:  ADD.W           R9, SP, #0xA0+var_68
550B7E:  LDR.W           R8, =(g_fx_ptr - 0x550B98)
550B82:  MOVT            R0, #0x6666
550B86:  VLDR            D16, [R5,#0x48]
550B8A:  LDR             R1, [R5,#0x50]
550B8C:  SMMUL.W         R4, R2, R0
550B90:  MOV             R0, R9; this
550B92:  STR             R1, [SP,#0xA0+var_60]
550B94:  ADD             R8, PC; g_fx_ptr
550B96:  VMOV.F32        S16, #-10.0
550B9A:  VSTR            D16, [SP,#0xA0+var_68]
550B9E:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
550BA2:  VMOV            S0, R0
550BA6:  VLDR            D16, [R11]
550BAA:  LDR.W           R0, [R11,#8]
550BAE:  LSRS            R1, R4, #2
550BB0:  VMUL.F32        S0, S0, S16
550BB4:  STR             R0, [SP,#0xA0+var_40]
550BB6:  ADD.W           R1, R1, R4,LSR#31
550BBA:  VSTR            D16, [SP,#0xA0+var_48]
550BBE:  ADDS            R1, #4
550BC0:  LDRD.W          R2, R10, [R5,#0x48]
550BC4:  MOVW            LR, #0x999A
550BC8:  LDR             R6, [R5,#0x50]
550BCA:  AND.W           R1, R1, #0x3F ; '?'
550BCE:  LDR.W           R0, [R8]; g_fx
550BD2:  STMEA.W         SP, {R1,R2,R10}
550BD6:  MOVT            LR, #0x3E99
550BDA:  MOV.W           R8, #1
550BDE:  VMOV            R3, S0
550BE2:  ADD             R1, SP, #0xA0+var_94
550BE4:  STM.W           R1, {R6,R8,LR}
550BE8:  ADD             R1, SP, #0xA0+var_48
550BEA:  MOV.W           R12, #0x3F800000
550BEE:  MOV             R2, R9
550BF0:  STR.W           R12, [SP,#0xA0+var_88]
550BF4:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
550BF8:  MOVW            R0, #0xCCCD
550BFC:  MOVW            R1, #0xCCCD
550C00:  MOVW            R10, #0x999A
550C04:  MOVT            R1, #0x3ECC; float
550C08:  MOVT            R10, #0x3F19
550C0C:  MOVT            R0, #0x3DCC
550C10:  MOV.W           R2, #0x3F800000
550C14:  STRD.W          R10, R1, [SP,#0xA0+var_A0]; float
550C18:  STRD.W          R2, R0, [SP,#0xA0+var_98]; float
550C1C:  ADD             R0, SP, #0xA0+var_68; this
550C1E:  MOV             R2, R1; float
550C20:  MOV             R3, R1; float
550C22:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
550C26:  MOVS            R3, #0
550C28:  VLDR            S12, =0.7
550C2C:  STRD.W          R3, R3, [SP,#0xA0+var_48]
550C30:  STR             R3, [SP,#0xA0+var_40]
550C32:  LDR             R2, [R5,#0x14]
550C34:  VLDR            S0, [R11]
550C38:  ADD.W           R1, R2, #0x30 ; '0'
550C3C:  CMP             R2, #0
550C3E:  VLDR            S2, [R11,#4]
550C42:  VLDR            S4, [R11,#8]
550C46:  IT EQ
550C48:  ADDEQ           R1, R5, #4
550C4A:  VLDR            S6, [R1]
550C4E:  VLDR            S8, [R1,#4]
550C52:  VLDR            S10, [R1,#8]
550C56:  VSUB.F32        S0, S0, S6
550C5A:  VSUB.F32        S2, S2, S8
550C5E:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x550C68)
550C60:  VSUB.F32        S4, S4, S10
550C64:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
550C66:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
550C68:  VMUL.F32        S0, S0, S12
550C6C:  VMUL.F32        S2, S2, S12
550C70:  VMUL.F32        S4, S4, S12
550C74:  VADD.F32        S0, S0, S6
550C78:  VLDR            S6, [R1]
550C7C:  VADD.F32        S2, S2, S8
550C80:  VADD.F32        S4, S4, S10
550C84:  VSTR            S2, [SP,#0xA0+var_70]
550C88:  VSTR            S0, [SP,#0xA0+var_74]
550C8C:  VSTR            S4, [SP,#0xA0+var_6C]
550C90:  VLDR            S0, [R5,#0x48]
550C94:  VLDR            S4, [R5,#0x4C]
550C98:  VMUL.F32        S10, S6, S0
550C9C:  VLDR            S2, [R5,#0x50]
550CA0:  VMUL.F32        S8, S6, S4
550CA4:  VMUL.F32        S6, S6, S2
550CA8:  VMUL.F32        S10, S10, S10
550CAC:  VMUL.F32        S8, S8, S8
550CB0:  VMUL.F32        S6, S6, S6
550CB4:  VADD.F32        S8, S10, S8
550CB8:  VADD.F32        S6, S8, S6
550CBC:  VMOV.F32        S8, #4.0
550CC0:  VSQRT.F32       S6, S6
550CC4:  VMUL.F32        S6, S6, S8
550CC8:  VCVT.S32.F32    S6, S6
550CCC:  VMOV            R9, S6
550CD0:  CMP.W           R9, #1
550CD4:  IT LE
550CD6:  MOVLE.W         R9, #1
550CDA:  CMP.W           R9, #1
550CDE:  BLT             loc_550D30
550CE0:  LDR             R1, =(g_fx_ptr - 0x550CEC)
550CE2:  ADD             R4, SP, #0xA0+var_48
550CE4:  STR             R5, [SP,#0xA0+var_80]
550CE6:  ADD             R5, SP, #0xA0+var_74
550CE8:  ADD             R1, PC; g_fx_ptr
550CEA:  MOV             R11, R0
550CEC:  MOVS            R6, #0
550CEE:  LDR.W           R8, [R1]; g_fx
550CF2:  MOVS            R1, #0
550CF4:  LDR.W           R0, [R8,#(dword_820540 - 0x820520)]; int
550CF8:  MOVT            R1, #0xBF80
550CFC:  STR.W           R11, [SP,#0xA0+var_A0]; int
550D00:  STR             R1, [SP,#0xA0+var_9C]; float
550D02:  MOV             R1, #0x3F99999A
550D0A:  MOV             R2, R4; int
550D0C:  STRD.W          R1, R10, [SP,#0xA0+var_98]; float
550D10:  MOV             R1, R5; int
550D12:  STR             R3, [SP,#0xA0+var_90]; int
550D14:  MOVS            R3, #0; int
550D16:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
550D1A:  ADDS            R6, #1
550D1C:  MOVS            R3, #0
550D1E:  CMP             R6, R9
550D20:  BLT             loc_550CF2
550D22:  LDR             R5, [SP,#0xA0+var_80]
550D24:  VLDR            S0, [R5,#0x48]
550D28:  VLDR            S4, [R5,#0x4C]
550D2C:  VLDR            S2, [R5,#0x50]
550D30:  VMUL.F32        S4, S4, S4
550D34:  VMUL.F32        S0, S0, S0
550D38:  VMUL.F32        S2, S2, S2
550D3C:  VADD.F32        S0, S0, S4
550D40:  VADD.F32        S0, S0, S2
550D44:  VLDR            S2, =0.0625
550D48:  VCMPE.F32       S0, S2
550D4C:  VMRS            APSR_nzcv, FPSCR
550D50:  BLE             loc_550DE6
550D52:  LDR             R0, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x550D64)
550D54:  MOVW            R3, #0xC28F
550D58:  LDRB.W          R1, [R5,#0x438]
550D5C:  MOVT            R3, #0x3D75
550D60:  ADD             R0, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
550D62:  LDR             R0, [R0]; CVehicleModelInfo::ms_vehicleColourTable ...
550D64:  LDR.W           R0, [R0,R1,LSL#2]
550D68:  UBFX.W          R1, R0, #0x10, #8
550D6C:  UBFX.W          R2, R0, #8, #8
550D70:  VMOV            S0, R1
550D74:  UXTB            R1, R0
550D76:  VMOV            S2, R2
550D7A:  VCVT.F32.U32    S0, S0
550D7E:  VCVT.F32.U32    S2, S2
550D82:  VMOV            S4, R1
550D86:  MOV             R1, #0x51EB851F
550D8E:  VCVT.F32.U32    S4, S4
550D92:  STR             R0, [SP,#0xA0+var_78]
550D94:  VLDR            S6, [R5,#0x130]
550D98:  LDR             R2, [SP,#0xA0+var_7C]
550D9A:  VMUL.F32        S0, S6, S0
550D9E:  LDR             R0, =(g_fx_ptr - 0x550DAC)
550DA0:  VMUL.F32        S2, S6, S2
550DA4:  SMMUL.W         R2, R2, R1
550DA8:  ADD             R0, PC; g_fx_ptr
550DAA:  VMUL.F32        S4, S6, S4
550DAE:  LDR             R0, [R0]; g_fx
550DB0:  VCVT.U32.F32    S0, S0
550DB4:  VCVT.U32.F32    S2, S2
550DB8:  VCVT.U32.F32    S4, S4
550DBC:  VMOV            R6, S0
550DC0:  VMOV            R1, S2
550DC4:  STRB.W          R1, [SP,#0xA0+var_78+1]
550DC8:  VMOV            R1, S4
550DCC:  STRB.W          R1, [SP,#0xA0+var_78]
550DD0:  ADD             R1, SP, #0xA0+var_74
550DD2:  STRB.W          R6, [SP,#0xA0+var_78+2]
550DD6:  ASRS            R6, R2, #5
550DD8:  ADD.W           R2, R6, R2,LSR#31
550DDC:  ADDS            R2, #1
550DDE:  STR             R2, [SP,#0xA0+var_A0]
550DE0:  ADD             R2, SP, #0xA0+var_78
550DE2:  BLX             j__ZN4Fx_c9AddDebrisER7CVectorR6RwRGBAfi; Fx_c::AddDebris(CVector &,RwRGBA &,float,int)
550DE6:  ADD             SP, SP, #0x68 ; 'h'
550DE8:  VPOP            {D8-D10}
550DEC:  ADD             SP, SP, #4
550DEE:  POP.W           {R8-R11}
550DF2:  POP             {R4-R7,PC}
