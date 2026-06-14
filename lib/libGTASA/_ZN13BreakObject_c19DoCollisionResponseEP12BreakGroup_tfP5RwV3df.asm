; =========================================================
; Game Engine Function: _ZN13BreakObject_c19DoCollisionResponseEP12BreakGroup_tfP5RwV3df
; Address            : 0x451DF0 - 0x452166
; =========================================================

451DF0:  PUSH            {R4-R7,LR}
451DF2:  ADD             R7, SP, #0xC
451DF4:  PUSH.W          {R8-R11}
451DF8:  SUB             SP, SP, #4
451DFA:  VPUSH           {D8-D11}
451DFE:  SUB             SP, SP, #0x70
451E00:  MOV             R5, R1
451E02:  VLDR            S6, [R3]
451E06:  VLDR            S0, [R5,#0x40]
451E0A:  MOV             R4, R2
451E0C:  VLDR            S2, [R5,#0x44]
451E10:  MOV             R8, R0
451E12:  VLDR            S8, [R3,#4]
451E16:  VMUL.F32        S14, S6, S0
451E1A:  VLDR            S4, [R5,#0x48]
451E1E:  VMUL.F32        S12, S8, S2
451E22:  VLDR            S10, [R3,#8]
451E26:  VMUL.F32        S1, S4, S10
451E2A:  VADD.F32        S12, S14, S12
451E2E:  VLDR            S14, =0.85
451E32:  VADD.F32        S12, S12, S1
451E36:  VADD.F32        S12, S12, S12
451E3A:  VMUL.F32        S12, S12, S14
451E3E:  VMUL.F32        S8, S8, S12
451E42:  VMUL.F32        S6, S6, S12
451E46:  VMUL.F32        S10, S12, S10
451E4A:  VSUB.F32        S2, S2, S8
451E4E:  VSUB.F32        S0, S0, S6
451E52:  VSUB.F32        S4, S4, S10
451E56:  VSTR            S2, [SP,#0xB0+var_48]
451E5A:  VSTR            S0, [SP,#0xB0+var_4C]
451E5E:  VSTR            S4, [SP,#0xB0+var_44]
451E62:  BLX             rand
451E66:  VMOV            S0, R0
451E6A:  VLDR            S16, =4.6566e-10
451E6E:  VMOV.F32        S18, #-1.0
451E72:  VCVT.F32.S32    S0, S0
451E76:  VMUL.F32        S0, S0, S16
451E7A:  VADD.F32        S0, S0, S0
451E7E:  VADD.F32        S0, S0, S18
451E82:  VSTR            S0, [SP,#0xB0+var_58]
451E86:  BLX             rand
451E8A:  VMOV            S0, R0
451E8E:  VCVT.F32.S32    S0, S0
451E92:  VMUL.F32        S0, S0, S16
451E96:  VADD.F32        S0, S0, S0
451E9A:  VADD.F32        S0, S0, S18
451E9E:  VSTR            S0, [SP,#0xB0+var_54]
451EA2:  BLX             rand
451EA6:  VMOV            S0, R0
451EAA:  ADD             R0, SP, #0xB0+var_58
451EAC:  VCVT.F32.S32    S0, S0
451EB0:  MOV             R1, R0
451EB2:  VMUL.F32        S0, S0, S16
451EB6:  VADD.F32        S0, S0, S0
451EBA:  VADD.F32        S0, S0, S18
451EBE:  VSTR            S0, [SP,#0xB0+var_50]
451EC2:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
451EC6:  VMOV            S0, R4
451ECA:  VLDR            S18, =0.05
451ECE:  VLDR            S2, [SP,#0xB0+var_58]
451ED2:  ADD             R4, SP, #0xB0+var_4C
451ED4:  VMUL.F32        S0, S0, S18
451ED8:  VLDR            S4, [SP,#0xB0+var_54]
451EDC:  VLDR            S6, [SP,#0xB0+var_50]
451EE0:  MOV             R0, R4
451EE2:  VMUL.F32        S2, S0, S2
451EE6:  VMUL.F32        S4, S0, S4
451EEA:  VMUL.F32        S0, S0, S6
451EEE:  VSTR            S2, [SP,#0xB0+var_58]
451EF2:  VSTR            S4, [SP,#0xB0+var_54]
451EF6:  VSTR            S0, [SP,#0xB0+var_50]
451EFA:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
451EFE:  VLDR            S0, [SP,#0xB0+var_58]
451F02:  MOV             R6, R0
451F04:  VLDR            S6, [SP,#0xB0+var_4C]
451F08:  MOV             R0, R4
451F0A:  VLDR            S2, [SP,#0xB0+var_54]
451F0E:  MOV             R1, R4
451F10:  VLDR            S8, [SP,#0xB0+var_48]
451F14:  VADD.F32        S0, S6, S0
451F18:  VLDR            S10, [SP,#0xB0+var_44]
451F1C:  VLDR            S4, [SP,#0xB0+var_50]
451F20:  VADD.F32        S2, S8, S2
451F24:  VADD.F32        S4, S10, S4
451F28:  VSTR            S0, [SP,#0xB0+var_4C]
451F2C:  VSTR            S2, [SP,#0xB0+var_48]
451F30:  VSTR            S4, [SP,#0xB0+var_44]
451F34:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
451F38:  VMOV            S0, R6
451F3C:  VLDR            S2, [SP,#0xB0+var_4C]
451F40:  VLDR            S4, [SP,#0xB0+var_48]
451F44:  MOVS            R0, #0
451F46:  VLDR            S6, [SP,#0xB0+var_44]
451F4A:  VMUL.F32        S2, S0, S2
451F4E:  VMUL.F32        S4, S0, S4
451F52:  VLDR            S8, =0.8
451F56:  VMUL.F32        S6, S0, S6
451F5A:  VLDR            S10, [R7,#arg_0]
451F5E:  VCMPE.F32       S0, S18
451F62:  VMRS            APSR_nzcv, FPSCR
451F66:  VSTR            S2, [SP,#0xB0+var_4C]
451F6A:  VMUL.F32        S2, S2, S8
451F6E:  VSTR            S4, [SP,#0xB0+var_48]
451F72:  VMUL.F32        S4, S4, S8
451F76:  VSTR            S6, [SP,#0xB0+var_44]
451F7A:  VMUL.F32        S6, S6, S8
451F7E:  VLDR            S12, [R5,#0x5C]
451F82:  STR             R0, [R5,#0x60]
451F84:  VADD.F32        S8, S12, S10
451F88:  VSTR            S2, [R5,#0x40]
451F8C:  VSTR            S4, [R5,#0x44]
451F90:  VSTR            S6, [R5,#0x48]
451F94:  VSTR            S8, [R5,#0x38]
451F98:  BGE             loc_451FD0
451F9A:  MOVS            R0, #1
451F9C:  STRB.W          R0, [R5,#0x4C]
451FA0:  LDRB.W          R0, [R8]
451FA4:  CBZ             R0, loc_451FDA
451FA6:  BLX             rand
451FAA:  UXTH            R0, R0
451FAC:  VLDR            S2, =0.000015259
451FB0:  VMOV            S0, R0
451FB4:  VCVT.F32.S32    S0, S0
451FB8:  VMUL.F32        S0, S0, S2
451FBC:  VLDR            S2, =32.0
451FC0:  VMUL.F32        S0, S0, S2
451FC4:  VCVT.S32.F32    S0, S0
451FC8:  VMOV            R0, S0
451FCC:  ADDS            R0, #0x20 ; ' '
451FCE:  STR             R0, [R5,#0x70]
451FD0:  LDRB.W          R0, [R8]
451FD4:  CMP             R0, #0
451FD6:  BNE.W           loc_452158
451FDA:  ADD.W           R0, R5, #0x40 ; '@'
451FDE:  MOVW            R1, #0x999A
451FE2:  MOVW            R2, #0xCCCD
451FE6:  STR             R0, [SP,#0xB0+var_94]
451FE8:  MOVW            R0, #0x999A
451FEC:  ADD.W           R6, R5, #0x30 ; '0'
451FF0:  MOVT            R0, #0x3E19
451FF4:  MOVS            R5, #0
451FF6:  MOVT            R1, #0x3E99
451FFA:  MOVT            R2, #0x3DCC
451FFE:  STR.W           R8, [SP,#0xB0+var_90]
452002:  MOV.W           R3, #0x3F800000; float
452006:  STRD.W          R2, R1, [SP,#0xB0+var_B0]; float
45200A:  MOV.W           R1, #0x3F800000; float
45200E:  STRD.W          R5, R0, [SP,#0xB0+var_A8]; float
452012:  ADD             R0, SP, #0xB0+var_74; this
452014:  MOV.W           R2, #0x3F800000; float
452018:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
45201C:  LDR             R0, =(g_fx_ptr - 0x45202E)
45201E:  VMOV.F32        S18, #-0.5
452022:  MOVW            R10, #0
452026:  VLDR            S20, =0.3
45202A:  ADD             R0, PC; g_fx_ptr
45202C:  VLDR            S22, =-0.15
452030:  ADD.W           R11, SP, #0xB0+var_80
452034:  ADD             R4, SP, #0xB0+var_8C
452036:  LDR.W           R9, [R0]; g_fx
45203A:  MOV.W           R8, #4
45203E:  MOVT            R10, #0xBF80
452042:  VLDR            D16, [R6]
452046:  LDR             R0, [R6,#8]
452048:  STR             R0, [SP,#0xB0+var_78]
45204A:  VSTR            D16, [SP,#0xB0+var_80]
45204E:  BLX             rand
452052:  VMOV            S0, R0
452056:  VCVT.F32.S32    S0, S0
45205A:  VLDR            S2, [SP,#0xB0+var_80]
45205E:  VMUL.F32        S0, S0, S16
452062:  VADD.F32        S0, S0, S18
452066:  VADD.F32        S0, S2, S0
45206A:  VSTR            S0, [SP,#0xB0+var_80]
45206E:  BLX             rand
452072:  VMOV            S0, R0
452076:  VCVT.F32.S32    S0, S0
45207A:  VLDR            S2, [SP,#0xB0+var_80+4]
45207E:  VMUL.F32        S0, S0, S16
452082:  VADD.F32        S0, S0, S18
452086:  VADD.F32        S0, S2, S0
45208A:  VSTR            S0, [SP,#0xB0+var_80+4]
45208E:  BLX             rand
452092:  VMOV            S0, R0
452096:  VCVT.F32.S32    S0, S0
45209A:  VMUL.F32        S0, S0, S16
45209E:  VMUL.F32        S0, S0, S20
4520A2:  VADD.F32        S0, S0, S22
4520A6:  VSTR            S0, [SP,#0xB0+var_8C]
4520AA:  BLX             rand
4520AE:  VMOV            S0, R0
4520B2:  ADD             R1, SP, #0xB0+var_74
4520B4:  MOV             R2, R4; int
4520B6:  MOVS            R3, #0; int
4520B8:  VCVT.F32.S32    S0, S0
4520BC:  LDR.W           R0, [R9,#(dword_820544 - 0x820520)]; int
4520C0:  STR             R5, [SP,#0xB0+var_84]
4520C2:  VMUL.F32        S0, S0, S16
4520C6:  VMUL.F32        S0, S0, S20
4520CA:  VADD.F32        S0, S0, S22
4520CE:  VSTR            S0, [SP,#0xB0+var_88]
4520D2:  STRD.W          R1, R10, [SP,#0xB0+var_B0]; int
4520D6:  MOV             R1, #0x3F99999A
4520DE:  STR             R1, [SP,#0xB0+var_A8]; float
4520E0:  MOV             R1, #0x3F19999A
4520E8:  STRD.W          R1, R5, [SP,#0xB0+var_A4]; float
4520EC:  MOV             R1, R11; int
4520EE:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
4520F2:  SUBS.W          R8, R8, #1
4520F6:  BNE             loc_452042
4520F8:  LDR             R0, [SP,#0xB0+var_90]
4520FA:  LDRB            R0, [R0,#2]
4520FC:  CBZ             R0, loc_452158
4520FE:  LDR             R0, [SP,#0xB0+var_94]
452100:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
452104:  VLDR            S0, =100.0
452108:  VMOV            S2, R0
45210C:  LDR             R1, =(g_fx_ptr - 0x45211C)
45210E:  MOVS            R3, #0
452110:  VMUL.F32        S0, S2, S0
452114:  VLDR            D16, [R6]
452118:  ADD             R1, PC; g_fx_ptr
45211A:  LDR             R2, [R6,#8]
45211C:  STR             R2, [SP,#0xB0+var_78]
45211E:  ADD             R2, SP, #0xB0+var_8C
452120:  LDR             R0, [R1]; g_fx
452122:  MOV.W           R1, #0x3F800000
452126:  VSTR            D16, [SP,#0xB0+var_80]
45212A:  STRD.W          R3, R3, [SP,#0xB0+var_8C]
45212E:  STR             R1, [SP,#0xB0+var_84]
452130:  STR             R1, [SP,#0xB0+var_98]
452132:  VCVT.S32.F32    S0, S0
452136:  MOV             R1, #0x3ECCCCCD
45213E:  STR             R1, [SP,#0xB0+var_9C]
452140:  MOVS            R1, #1
452142:  STRD.W          R3, R1, [SP,#0xB0+var_A4]
452146:  ADD             R1, SP, #0xB0+var_80
452148:  STR             R3, [SP,#0xB0+var_A8]
45214A:  STR             R3, [SP,#0xB0+var_AC]
45214C:  MOV.W           R3, #0x40000000
452150:  VSTR            S0, [SP,#0xB0+var_B0]
452154:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
452158:  ADD             SP, SP, #0x70 ; 'p'
45215A:  VPOP            {D8-D11}
45215E:  ADD             SP, SP, #4
452160:  POP.W           {R8-R11}
452164:  POP             {R4-R7,PC}
