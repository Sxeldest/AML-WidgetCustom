; =========================================================
; Game Engine Function: _ZN4Fx_c8AddGlassER7CVectorR6RwRGBAfi
; Address            : 0x364D2C - 0x364EF6
; =========================================================

364D2C:  PUSH            {R4-R7,LR}
364D2E:  ADD             R7, SP, #0xC
364D30:  PUSH.W          {R8-R11}
364D34:  SUB             SP, SP, #4
364D36:  VPUSH           {D8-D13}
364D3A:  SUB             SP, SP, #0x40
364D3C:  LDR             R0, =(TheCamera_ptr - 0x364D4A)
364D3E:  MOV             R4, R1
364D40:  MOV             R6, R2
364D42:  VLDR            S0, [R4]
364D46:  ADD             R0, PC; TheCamera_ptr
364D48:  LDR             R0, [R0]; TheCamera
364D4A:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
364D4C:  ADD.W           R2, R1, #0x30 ; '0'
364D50:  CMP             R1, #0
364D52:  IT EQ
364D54:  ADDEQ           R2, R0, #4
364D56:  VLDR            D16, [R4,#4]
364D5A:  VLDR            S2, [R2]
364D5E:  VLDR            D17, [R2,#4]
364D62:  VSUB.F32        S0, S2, S0
364D66:  VSUB.F32        D16, D17, D16
364D6A:  VMUL.F32        D1, D16, D16
364D6E:  VMUL.F32        S0, S0, S0
364D72:  VADD.F32        S0, S0, S2
364D76:  VADD.F32        S0, S0, S3
364D7A:  VLDR            S2, =625.0
364D7E:  VCMPE.F32       S0, S2
364D82:  VMRS            APSR_nzcv, FPSCR
364D86:  BGT.W           loc_364EE8
364D8A:  ADD             R0, SP, #0x90+var_6C; this
364D8C:  LDR             R5, [R7,#arg_0]
364D8E:  VMOV            S16, R3
364D92:  BLX             j__ZN11FxPrtMult_cC2Ev; FxPrtMult_c::FxPrtMult_c(void)
364D96:  LDRB            R0, [R6]
364D98:  VLDR            S2, =255.0
364D9C:  VMOV            S0, R0
364DA0:  VCVT.F32.U32    S0, S0
364DA4:  VDIV.F32        S0, S0, S2
364DA8:  VSTR            S0, [SP,#0x90+var_6C]
364DAC:  LDRB            R0, [R6,#1]
364DAE:  VMOV            S0, R0
364DB2:  VCVT.F32.U32    S0, S0
364DB6:  VDIV.F32        S0, S0, S2
364DBA:  VSTR            S0, [SP,#0x90+var_68]
364DBE:  LDRB            R0, [R6,#2]
364DC0:  VMOV            S0, R0
364DC4:  VCVT.F32.U32    S0, S0
364DC8:  VDIV.F32        S0, S0, S2
364DCC:  VSTR            S0, [SP,#0x90+var_64]
364DD0:  LDRB            R0, [R6,#3]
364DD2:  VMOV            S0, R0
364DD6:  VCVT.F32.U32    S0, S0
364DDA:  VSTR            S16, [SP,#0x90+var_5C]
364DDE:  VDIV.F32        S0, S0, S2
364DE2:  VSTR            S0, [SP,#0x90+var_60]
364DE6:  BLX             rand
364DEA:  MOVW            R1, #0x8BAD
364DEE:  VLDR            S2, =0.0001
364DF2:  MOVT            R1, #0x68DB
364DF6:  VMOV.F32        S16, #0.5
364DFA:  SMMUL.W         R1, R0, R1
364DFE:  CMP             R5, #1
364E00:  MOV.W           R2, R1,ASR#12
364E04:  ADD.W           R1, R2, R1,LSR#31
364E08:  MOVW            R2, #0x2710
364E0C:  MLS.W           R0, R1, R2, R0
364E10:  VMOV            S0, R0
364E14:  MOV             R0, #0x3E4CCCCD
364E1C:  VCVT.F32.S32    S0, S0
364E20:  STR             R0, [SP,#0x90+var_54]
364E22:  VMUL.F32        S0, S0, S2
364E26:  VMUL.F32        S0, S0, S16
364E2A:  VADD.F32        S0, S0, S16
364E2E:  VSTR            S0, [SP,#0x90+var_58]
364E32:  BLT             loc_364EE8
364E34:  LDR             R0, =(g_fx_ptr - 0x364E46)
364E36:  VMOV.F32        S20, #-0.25
364E3A:  VMOV.F32        S22, #20.0
364E3E:  MOVW            R11, #0x999A
364E42:  ADD             R0, PC; g_fx_ptr
364E44:  MOVW            R8, #0x999A
364E48:  MOVW            R10, #0
364E4C:  VLDR            S18, =4.6566e-10
364E50:  LDR             R6, [R0]; g_fx
364E52:  ADD.W           R9, SP, #0x90+var_78
364E56:  VLDR            S24, =0.15
364E5A:  MOVT            R11, #0x3F19
364E5E:  VLDR            S26, =0.1
364E62:  MOVT            R8, #0x3F99
364E66:  MOVT            R10, #0xBF80
364E6A:  BLX             rand
364E6E:  VMOV            S0, R0
364E72:  VCVT.F32.S32    S0, S0
364E76:  VMUL.F32        S0, S0, S18
364E7A:  VMUL.F32        S0, S0, S16
364E7E:  VADD.F32        S0, S0, S20
364E82:  VMUL.F32        S0, S0, S22
364E86:  VSTR            S0, [SP,#0x90+var_78]
364E8A:  BLX             rand
364E8E:  VMOV            S0, R0
364E92:  VCVT.F32.S32    S0, S0
364E96:  VMUL.F32        S0, S0, S18
364E9A:  VMUL.F32        S0, S0, S16
364E9E:  VADD.F32        S0, S0, S20
364EA2:  VMUL.F32        S0, S0, S22
364EA6:  VSTR            S0, [SP,#0x90+var_74]
364EAA:  BLX             rand
364EAE:  VMOV            S0, R0
364EB2:  ADD             R1, SP, #0x90+var_6C
364EB4:  MOV             R2, R9; int
364EB6:  MOVS            R3, #0; int
364EB8:  VCVT.F32.S32    S0, S0
364EBC:  LDR             R0, [R6,#(dword_820560 - 0x820520)]; int
364EBE:  VMUL.F32        S0, S0, S18
364EC2:  VMUL.F32        S0, S0, S24
364EC6:  VADD.F32        S0, S0, S26
364ECA:  VMUL.F32        S0, S0, S22
364ECE:  VSTR            S0, [SP,#0x90+var_70]
364ED2:  STRD.W          R1, R10, [SP,#0x90+var_90]; int
364ED6:  MOVS            R1, #0
364ED8:  STRD.W          R8, R11, [SP,#0x90+var_88]; float
364EDC:  STR             R1, [SP,#0x90+var_80]; int
364EDE:  MOV             R1, R4; int
364EE0:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
364EE4:  SUBS            R5, #1
364EE6:  BNE             loc_364E6A
364EE8:  ADD             SP, SP, #0x40 ; '@'
364EEA:  VPOP            {D8-D13}
364EEE:  ADD             SP, SP, #4
364EF0:  POP.W           {R8-R11}
364EF4:  POP             {R4-R7,PC}
