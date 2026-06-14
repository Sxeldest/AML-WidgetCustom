; =========================================================
; Game Engine Function: _ZN4Fx_c14AddPunchImpactER7CVectorS1_i
; Address            : 0x364A0C - 0x364AEE
; =========================================================

364A0C:  PUSH            {R4-R7,LR}
364A0E:  ADD             R7, SP, #0xC
364A10:  PUSH.W          {R8-R11}
364A14:  SUB             SP, SP, #0x34
364A16:  LDR             R0, =(TheCamera_ptr - 0x364A24)
364A18:  MOV             R5, R1
364A1A:  MOV             R4, R2
364A1C:  VLDR            S0, [R5]
364A20:  ADD             R0, PC; TheCamera_ptr
364A22:  LDR             R0, [R0]; TheCamera
364A24:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
364A26:  ADD.W           R2, R1, #0x30 ; '0'
364A2A:  CMP             R1, #0
364A2C:  IT EQ
364A2E:  ADDEQ           R2, R0, #4
364A30:  VLDR            D16, [R5,#4]
364A34:  VLDR            S2, [R2]
364A38:  VLDR            D17, [R2,#4]
364A3C:  VSUB.F32        S0, S2, S0
364A40:  VSUB.F32        D16, D17, D16
364A44:  VMUL.F32        D1, D16, D16
364A48:  VMUL.F32        S0, S0, S0
364A4C:  VADD.F32        S0, S0, S2
364A50:  VADD.F32        S0, S0, S3
364A54:  VLDR            S2, =625.0
364A58:  VCMPE.F32       S0, S2
364A5C:  VMRS            APSR_nzcv, FPSCR
364A60:  BGT             loc_364AE6
364A62:  MOVW            R0, #0xCCCD
364A66:  MOVW            R1, #0xCCCD
364A6A:  ADD.W           R9, SP, #0x50+var_38
364A6E:  MOVT            R0, #0x3DCC
364A72:  MOVT            R1, #0x3ECC
364A76:  MOVS            R2, #0
364A78:  STRD.W          R1, R0, [SP,#0x50+var_50]; float
364A7C:  MOV.W           R1, #0x3F800000; float
364A80:  STRD.W          R2, R0, [SP,#0x50+var_48]; float
364A84:  MOV             R0, R9; this
364A86:  MOV.W           R2, #0x3F800000; float
364A8A:  MOV.W           R3, #0x3F800000; float
364A8E:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
364A92:  LDR             R0, =(g_fx_ptr - 0x364AA4)
364A94:  MOVW            R10, #0x999A
364A98:  MOVW            R11, #0x999A
364A9C:  MOVW            R8, #0
364AA0:  ADD             R0, PC; g_fx_ptr
364AA2:  MOVT            R10, #0x3F19
364AA6:  MOVT            R11, #0x3F99
364AAA:  MOVT            R8, #0xBF80
364AAE:  LDR             R6, [R0]; g_fx
364AB0:  MOVS            R1, #0
364AB2:  MOV             R2, R4; int
364AB4:  MOVS            R3, #0; int
364AB6:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
364AB8:  STRD.W          R9, R8, [SP,#0x50+var_50]; int
364ABC:  STRD.W          R11, R10, [SP,#0x50+var_48]; float
364AC0:  STR             R1, [SP,#0x50+var_40]; int
364AC2:  MOV             R1, R5; int
364AC4:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
364AC8:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
364ACA:  MOVW            R3, #0xCCCD
364ACE:  MOVS            R1, #0
364AD0:  STRD.W          R9, R8, [SP,#0x50+var_50]; int
364AD4:  STRD.W          R11, R10, [SP,#0x50+var_48]; float
364AD8:  MOVT            R3, #0x3D4C; int
364ADC:  STR             R1, [SP,#0x50+var_40]; int
364ADE:  MOV             R1, R5; int
364AE0:  MOV             R2, R4; int
364AE2:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
364AE6:  ADD             SP, SP, #0x34 ; '4'
364AE8:  POP.W           {R8-R11}
364AEC:  POP             {R4-R7,PC}
