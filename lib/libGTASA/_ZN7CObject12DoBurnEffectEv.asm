; =========================================================
; Game Engine Function: _ZN7CObject12DoBurnEffectEv
; Address            : 0x454AD4 - 0x454C52
; =========================================================

454AD4:  PUSH            {R4-R7,LR}
454AD6:  ADD             R7, SP, #0xC
454AD8:  PUSH.W          {R8-R11}
454ADC:  SUB             SP, SP, #4
454ADE:  VPUSH           {D8-D14}
454AE2:  SUB             SP, SP, #0x68
454AE4:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x454AEE)
454AE6:  LDRSH.W         R1, [R0,#0x26]
454AEA:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
454AEC:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
454AEE:  LDR.W           R1, [R2,R1,LSL#2]
454AF2:  LDR             R1, [R1,#0x2C]
454AF4:  VLDR            S16, [R1]
454AF8:  VLDR            S0, [R1,#0xC]
454AFC:  VLDR            S18, [R1,#4]
454B00:  VLDR            S2, [R1,#0x10]
454B04:  VSUB.F32        S24, S0, S16
454B08:  VLDR            S20, [R1,#8]
454B0C:  VSUB.F32        S22, S2, S18
454B10:  VLDR            S4, [R1,#0x14]
454B14:  STR             R0, [SP,#0xC0+var_AC]
454B16:  VSUB.F32        S26, S4, S20
454B1A:  VLDR            S2, [R0,#0x180]
454B1E:  VMOV.F32        S4, #20.0
454B22:  VMUL.F32        S0, S24, S22
454B26:  VMUL.F32        S0, S0, S26
454B2A:  VMUL.F32        S0, S2, S0
454B2E:  VDIV.F32        S0, S0, S4
454B32:  VCVT.S32.F32    S0, S0
454B36:  VMOV            R6, S0
454B3A:  CMP             R6, #1
454B3C:  BLT.W           loc_454C44
454B40:  LDR             R0, =(g_fx_ptr - 0x454B50)
454B42:  ADD             R5, SP, #0xC0+var_88
454B44:  VLDR            S28, =4.6566e-10
454B48:  ADD.W           R9, SP, #0xC0+var_68
454B4C:  ADD             R0, PC; g_fx_ptr
454B4E:  ADD             R4, SP, #0xC0+var_A8
454B50:  MOV.W           R11, #0x3F800000
454B54:  MOV.W           R10, #0
454B58:  LDR.W           R8, [R0]; g_fx
454B5C:  BLX             rand
454B60:  VMOV            S0, R0
454B64:  VCVT.F32.S32    S0, S0
454B68:  VMUL.F32        S0, S0, S28
454B6C:  VMUL.F32        S0, S24, S0
454B70:  VADD.F32        S0, S16, S0
454B74:  VSTR            S0, [SP,#0xC0+var_68]
454B78:  BLX             rand
454B7C:  VMOV            S0, R0
454B80:  VCVT.F32.S32    S0, S0
454B84:  VMUL.F32        S0, S0, S28
454B88:  VMUL.F32        S0, S22, S0
454B8C:  VADD.F32        S0, S18, S0
454B90:  VSTR            S0, [SP,#0xC0+var_68+4]
454B94:  BLX             rand
454B98:  VMOV            S0, R0
454B9C:  MOV             R2, R9
454B9E:  VCVT.F32.S32    S0, S0
454BA2:  LDR             R0, [SP,#0xC0+var_AC]
454BA4:  VMUL.F32        S0, S0, S28
454BA8:  VMUL.F32        S0, S26, S0
454BAC:  VADD.F32        S0, S20, S0
454BB0:  VSTR            S0, [SP,#0xC0+var_60]
454BB4:  LDR             R1, [R0,#0x14]
454BB6:  MOV             R0, R5
454BB8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
454BBC:  LDR             R0, [SP,#0xC0+var_80]
454BBE:  VLDR            D16, [SP,#0xC0+var_88]
454BC2:  STR             R0, [SP,#0xC0+var_60]
454BC4:  MOV             R0, R5; this
454BC6:  VSTR            D16, [SP,#0xC0+var_68]
454BCA:  BLX             j__ZN11FxPrtMult_cC2Ev; FxPrtMult_c::FxPrtMult_c(void)
454BCE:  MOVW            R0, #0xCCCD
454BD2:  STRD.W          R11, R11, [SP,#0xC0+var_C0]; float
454BD6:  MOVT            R0, #0x3ECC
454BDA:  STR.W           R11, [SP,#0xC0+var_B8]; float
454BDE:  STR             R0, [SP,#0xC0+var_B4]; float
454BE0:  MOV             R0, R4; this
454BE2:  MOVS            R1, #0; float
454BE4:  MOVS            R2, #0; float
454BE6:  MOVS            R3, #0; float
454BE8:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
454BEC:  ADD.W           R0, R4, #0xC
454BF0:  MOVW            R1, #0xD70A
454BF4:  VLD1.32         {D18-D19}, [R0]
454BF8:  ADD.W           R0, R5, #0xC
454BFC:  MOVT            R1, #0x3CA3
454C00:  MOV             R2, R4; int
454C02:  VLD1.64         {D16-D17}, [R4]
454C06:  MOVS            R3, #0; int
454C08:  VST1.32         {D18-D19}, [R0]
454C0C:  VST1.64         {D16-D17}, [R5]
454C10:  STRD.W          R10, R10, [SP,#0xC0+var_A8]
454C14:  STR             R1, [SP,#0xC0+var_A0]
454C16:  MOVS            R1, #0xBF800000
454C1C:  STR             R5, [SP,#0xC0+var_C0]; int
454C1E:  STR             R1, [SP,#0xC0+var_BC]; float
454C20:  MOV             R1, #0x3F99999A
454C28:  LDR.W           R0, [R8,#(dword_820544 - 0x820520)]; int
454C2C:  STR             R1, [SP,#0xC0+var_B8]; float
454C2E:  MOV             R1, #0x3F19999A
454C36:  STRD.W          R1, R10, [SP,#0xC0+var_B4]; float
454C3A:  MOV             R1, R9; int
454C3C:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
454C40:  SUBS            R6, #1
454C42:  BNE             loc_454B5C
454C44:  ADD             SP, SP, #0x68 ; 'h'
454C46:  VPOP            {D8-D14}
454C4A:  ADD             SP, SP, #4
454C4C:  POP.W           {R8-R11}
454C50:  POP             {R4-R7,PC}
