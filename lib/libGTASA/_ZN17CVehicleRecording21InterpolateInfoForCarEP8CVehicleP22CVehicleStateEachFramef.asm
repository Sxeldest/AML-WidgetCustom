; =========================================================
; Game Engine Function: _ZN17CVehicleRecording21InterpolateInfoForCarEP8CVehicleP22CVehicleStateEachFramef
; Address            : 0x323B2C - 0x323DAC
; =========================================================

323B2C:  PUSH            {R4-R7,LR}
323B2E:  ADD             R7, SP, #0xC
323B30:  PUSH.W          {R8,R9,R11}
323B34:  VPUSH           {D8-D9}
323B38:  SUB             SP, SP, #0xD8
323B3A:  MOV             R4, R0
323B3C:  MOVS            R0, #0
323B3E:  STRD.W          R0, R0, [SP,#0x100+var_30]
323B42:  MOV             R6, R1
323B44:  ADD.W           R8, SP, #0x100+var_B8
323B48:  LDR             R1, [R4,#0x14]; CMatrix *
323B4A:  MOV             R5, R2
323B4C:  MOV             R0, R8; this
323B4E:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
323B52:  LDRSB.W         R0, [R6,#0xA]
323B56:  ADD.W           R9, SP, #0x100+var_70
323B5A:  VLDR            S2, =127.0
323B5E:  ADD.W           R2, R9, #0x10
323B62:  MOV             R1, R9; CVector *
323B64:  VMOV            S0, R0
323B68:  VCVT.F32.S32    S0, S0
323B6C:  VDIV.F32        S0, S0, S2
323B70:  VSTR            S0, [SP,#0x100+var_70]
323B74:  LDRSB.W         R0, [R6,#0xB]
323B78:  VMOV            S0, R0
323B7C:  VCVT.F32.S32    S0, S0
323B80:  VDIV.F32        S0, S0, S2
323B84:  VSTR            S0, [SP,#0x100+var_6C]
323B88:  LDRSB.W         R0, [R6,#0xC]
323B8C:  VMOV            S0, R0
323B90:  VCVT.F32.S32    S0, S0
323B94:  VDIV.F32        S0, S0, S2
323B98:  VSTR            S0, [SP,#0x100+var_68]
323B9C:  LDRSB.W         R0, [R6,#0xD]
323BA0:  VMOV            S0, R0
323BA4:  VCVT.F32.S32    S0, S0
323BA8:  VDIV.F32        S0, S0, S2
323BAC:  VSTR            S0, [SP,#0x100+var_60]
323BB0:  LDRSB.W         R0, [R6,#0xE]
323BB4:  VMOV            S0, R0
323BB8:  VCVT.F32.S32    S0, S0
323BBC:  VDIV.F32        S0, S0, S2
323BC0:  VSTR            S0, [SP,#0x100+var_5C]
323BC4:  LDRSB.W         R0, [R6,#0xF]
323BC8:  VMOV            S0, R0
323BCC:  MOV             R0, SP; CVector *
323BCE:  VCVT.F32.S32    S0, S0
323BD2:  VDIV.F32        S0, S0, S2
323BD6:  VSTR            S0, [SP,#0x100+var_58]
323BDA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
323BDE:  VMOV.F32        S6, #1.0
323BE2:  VLDR            S0, [SP,#0x100+var_100]
323BE6:  VMOV            S16, R5
323BEA:  VLDR            S8, [SP,#0x100+var_70]
323BEE:  VLDR            S10, [SP,#0x100+var_6C]
323BF2:  MOV             R5, SP
323BF4:  VMUL.F32        S0, S0, S16
323BF8:  VLDR            S12, [SP,#0x100+var_68]
323BFC:  VLDR            S1, [SP,#0x100+var_58]
323C00:  VMUL.F32        S8, S8, S16
323C04:  VLDR            S3, [R6,#0x14]
323C08:  VMUL.F32        S12, S12, S16
323C0C:  VLDR            S5, [R6,#0x18]
323C10:  VMUL.F32        S1, S1, S16
323C14:  VSUB.F32        S18, S6, S16
323C18:  VLDR            S7, [R6,#0x1C]
323C1C:  VLDR            S14, [SP,#0x100+var_60]
323C20:  VMUL.F32        S3, S3, S16
323C24:  VLDR            S9, [SP,#0x100+var_5C]
323C28:  VMUL.F32        S5, S5, S16
323C2C:  VSTR            S0, [SP,#0x100+var_50]
323C30:  VMUL.F32        S6, S14, S16
323C34:  VLDR            S0, [SP,#0x100+var_B8]
323C38:  VMUL.F32        S7, S7, S16
323C3C:  VLDR            S2, [SP,#0x100+var_FC]
323C40:  VMUL.F32        S10, S10, S16
323C44:  VLDR            S4, [SP,#0x100+var_F8]
323C48:  VMUL.F32        S14, S9, S16
323C4C:  VMUL.F32        S0, S18, S0
323C50:  MOV             R0, R5
323C52:  VMUL.F32        S2, S2, S16
323C56:  MOV             R1, R9
323C58:  VMUL.F32        S4, S4, S16
323C5C:  MOV             R2, R8
323C5E:  VSTR            S0, [SP,#0x100+var_B8]
323C62:  VLDR            S0, [SP,#0x100+var_B4]
323C66:  VSTR            S2, [SP,#0x100+var_4C]
323C6A:  VMUL.F32        S0, S18, S0
323C6E:  VSTR            S4, [SP,#0x100+var_48]
323C72:  VSTR            S8, [SP,#0x100+var_70]
323C76:  VSTR            S10, [SP,#0x100+var_6C]
323C7A:  VSTR            S12, [SP,#0x100+var_68]
323C7E:  VSTR            S6, [SP,#0x100+var_60]
323C82:  VSTR            S14, [SP,#0x100+var_5C]
323C86:  VSTR            S1, [SP,#0x100+var_58]
323C8A:  VSTR            S0, [SP,#0x100+var_B4]
323C8E:  VLDR            S0, [SP,#0x100+var_B0]
323C92:  VSTR            S3, [SP,#0x100+var_40]
323C96:  VMUL.F32        S0, S18, S0
323C9A:  VSTR            S5, [SP,#0x100+var_3C]
323C9E:  VSTR            S7, [SP,#0x100+var_38]
323CA2:  VSTR            S0, [SP,#0x100+var_B0]
323CA6:  VLDR            S0, [SP,#0x100+var_A8]
323CAA:  VMUL.F32        S0, S18, S0
323CAE:  VSTR            S0, [SP,#0x100+var_A8]
323CB2:  VLDR            S0, [SP,#0x100+var_A4]
323CB6:  VMUL.F32        S0, S18, S0
323CBA:  VSTR            S0, [SP,#0x100+var_A4]
323CBE:  VLDR            S0, [SP,#0x100+var_A0]
323CC2:  VMUL.F32        S0, S18, S0
323CC6:  VSTR            S0, [SP,#0x100+var_A0]
323CCA:  VLDR            S0, [SP,#0x100+var_98]
323CCE:  VMUL.F32        S0, S18, S0
323CD2:  VSTR            S0, [SP,#0x100+var_98]
323CD6:  VLDR            S0, [SP,#0x100+var_94]
323CDA:  VMUL.F32        S0, S18, S0
323CDE:  VSTR            S0, [SP,#0x100+var_94]
323CE2:  VLDR            S0, [SP,#0x100+var_90]
323CE6:  VMUL.F32        S0, S18, S0
323CEA:  VSTR            S0, [SP,#0x100+var_90]
323CEE:  VLDR            S0, [SP,#0x100+var_88]
323CF2:  VMUL.F32        S0, S18, S0
323CF6:  VSTR            S0, [SP,#0x100+var_88]
323CFA:  VLDR            S0, [SP,#0x100+var_84]
323CFE:  VMUL.F32        S0, S18, S0
323D02:  VSTR            S0, [SP,#0x100+var_84]
323D06:  VLDR            S0, [SP,#0x100+var_80]
323D0A:  VMUL.F32        S0, S18, S0
323D0E:  VSTR            S0, [SP,#0x100+var_80]
323D12:  BLX             j__ZplRK7CMatrixS1_; operator+(CMatrix const&,CMatrix const&)
323D16:  LDR             R0, [R4,#0x14]
323D18:  MOV             R1, R5
323D1A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
323D1E:  MOV             R0, R5; this
323D20:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
323D24:  LDRSH.W         R0, [R6,#4]
323D28:  VLDR            S2, =16384.0
323D2C:  VMOV            S0, R0
323D30:  VCVT.F32.S32    S0, S0
323D34:  VLDR            S4, [R4,#0x48]
323D38:  VLDR            S6, [R4,#0x4C]
323D3C:  VMUL.F32        S4, S18, S4
323D40:  VLDR            S8, [R4,#0x50]
323D44:  VDIV.F32        S0, S0, S2
323D48:  VMUL.F32        S0, S0, S16
323D4C:  VADD.F32        S0, S4, S0
323D50:  VMUL.F32        S4, S18, S6
323D54:  VSTR            S0, [R4,#0x48]
323D58:  LDRSH.W         R0, [R6,#6]
323D5C:  VMOV            S0, R0
323D60:  VCVT.F32.S32    S0, S0
323D64:  VDIV.F32        S0, S0, S2
323D68:  VMUL.F32        S0, S0, S16
323D6C:  VADD.F32        S0, S4, S0
323D70:  VSTR            S0, [R4,#0x4C]
323D74:  LDRSH.W         R0, [R6,#8]
323D78:  VMOV            S0, R0
323D7C:  MOV             R0, R8; this
323D7E:  VCVT.F32.S32    S0, S0
323D82:  VDIV.F32        S0, S0, S2
323D86:  VMUL.F32        S2, S18, S8
323D8A:  VMUL.F32        S0, S0, S16
323D8E:  VADD.F32        S0, S2, S0
323D92:  VSTR            S0, [R4,#0x50]
323D96:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
323D9A:  MOV             R0, R9; this
323D9C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
323DA0:  ADD             SP, SP, #0xD8
323DA2:  VPOP            {D8-D9}
323DA6:  POP.W           {R8,R9,R11}
323DAA:  POP             {R4-R7,PC}
