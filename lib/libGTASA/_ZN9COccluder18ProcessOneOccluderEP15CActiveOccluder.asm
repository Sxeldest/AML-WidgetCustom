; =========================================================
; Game Engine Function: _ZN9COccluder18ProcessOneOccluderEP15CActiveOccluder
; Address            : 0x5AEB40 - 0x5AFA70
; =========================================================

5AEB40:  PUSH            {R4-R7,LR}
5AEB42:  ADD             R7, SP, #0xC
5AEB44:  PUSH.W          {R8-R11}
5AEB48:  SUB             SP, SP, #4
5AEB4A:  VPUSH           {D8-D15}
5AEB4E:  SUB.W           SP, SP, #0x208
5AEB52:  MOV             R4, R1
5AEB54:  MOVS            R5, #0
5AEB56:  MOV             R6, R0
5AEB58:  STRB.W          R5, [R4,#0x7A]
5AEB5C:  LDRSH.W         R0, [R6]
5AEB60:  VMOV.F32        S18, #0.25
5AEB64:  LDRSH.W         R1, [R6,#2]
5AEB68:  LDRSH.W         R2, [R6,#4]
5AEB6C:  VMOV            S2, R0
5AEB70:  LDR.W           R0, =(TheCamera_ptr - 0x5AEB80)
5AEB74:  VMOV            S0, R1
5AEB78:  VMOV            S4, R2
5AEB7C:  ADD             R0, PC; TheCamera_ptr
5AEB7E:  VCVT.F32.S32    S0, S0
5AEB82:  ADD             R2, SP, #0x268+var_8C
5AEB84:  VCVT.F32.S32    S2, S2
5AEB88:  LDR             R0, [R0]; TheCamera
5AEB8A:  VCVT.F32.S32    S4, S4
5AEB8E:  ADDW            R1, R0, #0x98C
5AEB92:  ADD             R0, SP, #0x268+var_E0
5AEB94:  VMUL.F32        S0, S0, S18
5AEB98:  VMUL.F32        S2, S2, S18
5AEB9C:  VMUL.F32        S4, S4, S18
5AEBA0:  VSTR            S0, [SP,#0x268+var_88]
5AEBA4:  VSTR            S2, [SP,#0x268+var_8C]
5AEBA8:  VSTR            S4, [SP,#0x268+var_84]
5AEBAC:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEBB0:  LDR.W           R0, =(gCenterOnScreen_ptr - 0x5AEBC0)
5AEBB4:  VMOV.F32        S16, #1.0
5AEBB8:  VLDR            D16, [SP,#0x268+var_E0]
5AEBBC:  ADD             R0, PC; gCenterOnScreen_ptr
5AEBBE:  LDR             R1, [SP,#0x268+var_D8]
5AEBC0:  LDR             R0, [R0]; gCenterOnScreen
5AEBC2:  STR             R1, [R0,#(dword_A46DB0 - 0xA46DA8)]
5AEBC4:  VSTR            D16, [R0]
5AEBC8:  VLDR            S0, [R0,#8]
5AEBCC:  VCMPE.F32       S0, S16
5AEBD0:  VMRS            APSR_nzcv, FPSCR
5AEBD4:  BLE.W           loc_5AF868
5AEBD8:  VDIV.F32        S2, S16, S0
5AEBDC:  LDR.W           R0, =(RsGlobal_ptr - 0x5AEBE6)
5AEBE0:  MOVS            R5, #0
5AEBE2:  ADD             R0, PC; RsGlobal_ptr
5AEBE4:  LDR             R0, [R0]; RsGlobal
5AEBE6:  VLDR            S4, [R0,#4]
5AEBEA:  VLDR            S6, [R0,#8]
5AEBEE:  VCVT.F32.S32    S4, S4
5AEBF2:  LDR.W           R0, =(gCenterOnScreen_ptr - 0x5AEBFE)
5AEBF6:  VCVT.F32.S32    S6, S6
5AEBFA:  ADD             R0, PC; gCenterOnScreen_ptr
5AEBFC:  LDR             R0, [R0]; gCenterOnScreen
5AEBFE:  VMUL.F32        S4, S2, S4
5AEC02:  VLDR            S8, [R0,#4]
5AEC06:  VMUL.F32        S2, S2, S6
5AEC0A:  VLDR            S6, [R0]
5AEC0E:  VMUL.F32        S4, S6, S4
5AEC12:  VLDR            S6, =-150.0
5AEC16:  VMUL.F32        S2, S8, S2
5AEC1A:  VCMPE.F32       S0, S6
5AEC1E:  VMRS            APSR_nzcv, FPSCR
5AEC22:  VSTR            S4, [R0]
5AEC26:  VSTR            S2, [R0,#4]
5AEC2A:  BLT.W           loc_5AF868
5AEC2E:  VLDR            S2, =300.0
5AEC32:  VCMPE.F32       S0, S2
5AEC36:  VMRS            APSR_nzcv, FPSCR
5AEC3A:  BGT.W           loc_5AF868
5AEC3E:  LDRSH.W         R0, [R6,#6]
5AEC42:  MOV.W           R9, #0
5AEC46:  LDRSH.W         R1, [R6,#8]
5AEC4A:  ADD.W           R8, SP, #0x268+var_128
5AEC4E:  LDRSH.W         R2, [R6,#0xA]
5AEC52:  VMOV            S4, R0
5AEC56:  VLDR            S20, =0.024544
5AEC5A:  VMOV            S2, R1
5AEC5E:  VMOV            S6, R2
5AEC62:  VCVT.F32.S32    S2, S2
5AEC66:  VCVT.F32.S32    S4, S4
5AEC6A:  VCVT.F32.S32    S6, S6
5AEC6E:  VMUL.F32        S2, S2, S18
5AEC72:  VMUL.F32        S4, S4, S18
5AEC76:  VMUL.F32        S6, S6, S18
5AEC7A:  VMUL.F32        S2, S2, S2
5AEC7E:  VMUL.F32        S4, S4, S4
5AEC82:  VMUL.F32        S6, S6, S6
5AEC86:  VADD.F32        S2, S4, S2
5AEC8A:  VADD.F32        S2, S2, S6
5AEC8E:  VSQRT.F32       S2, S2
5AEC92:  VSUB.F32        S0, S0, S2
5AEC96:  VCVT.S32.F32    S0, S0
5AEC9A:  STR             R4, [SP,#0x268+var_25C]
5AEC9C:  VMOV            R0, S0
5AECA0:  STRH.W          R0, [R4,#0x78]
5AECA4:  STRD.W          R9, R9, [SP,#0x268+var_E8]
5AECA8:  STRD.W          R9, R9, [SP,#0x268+var_130]
5AECAC:  STRD.W          R9, R9, [SP,#0x268+var_178]
5AECB0:  STRD.W          R9, R9, [SP,#0x268+var_1C0]
5AECB4:  LDRB            R0, [R6,#0xE]
5AECB6:  VMOV            S0, R0
5AECBA:  MOV             R0, R8; this
5AECBC:  VCVT.F32.U32    S0, S0
5AECC0:  VMUL.F32        S0, S0, S20
5AECC4:  VMOV            R1, S0; x
5AECC8:  BLX.W           j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
5AECCC:  LDRB            R0, [R6,#0xD]
5AECCE:  ADD.W           R10, SP, #0x268+var_170
5AECD2:  VMOV            S0, R0
5AECD6:  MOV             R0, R10; this
5AECD8:  VCVT.F32.U32    S0, S0
5AECDC:  VMUL.F32        S0, S0, S20
5AECE0:  VMOV            R1, S0; x
5AECE4:  BLX.W           j__ZN7CMatrix10SetRotateYEf; CMatrix::SetRotateY(float)
5AECE8:  LDRB            R0, [R6,#0xC]
5AECEA:  ADD.W           R11, SP, #0x268+var_1B8
5AECEE:  VMOV            S0, R0
5AECF2:  MOV             R0, R11; this
5AECF4:  VCVT.F32.U32    S0, S0
5AECF8:  VMUL.F32        S0, S0, S20
5AECFC:  VMOV            R1, S0; x
5AED00:  BLX.W           j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
5AED04:  ADD             R4, SP, #0x268+var_248
5AED06:  MOV             R1, R10
5AED08:  MOV             R2, R8
5AED0A:  MOV             R0, R4
5AED0C:  BLX.W           j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5AED10:  ADD             R5, SP, #0x268+var_E0
5AED12:  MOV             R1, R4
5AED14:  MOV             R2, R11
5AED16:  MOV             R0, R5
5AED18:  BLX.W           j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5AED1C:  ADD             R0, SP, #0x268+var_200
5AED1E:  MOV             R1, R5
5AED20:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5AED24:  MOV             R0, R5; this
5AED26:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AED2A:  MOV             R0, R4; this
5AED2C:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AED30:  LDR.W           R0, =(gMaxYInOccluder_ptr - 0x5AED44)
5AED34:  MOVW            R5, #0x23FE
5AED38:  LDR.W           R1, =(gMinYInOccluder_ptr - 0x5AED4E)
5AED3C:  MOVT            R5, #0xC974
5AED40:  ADD             R0, PC; gMaxYInOccluder_ptr
5AED42:  LDR.W           R2, =(gMaxXInOccluder_ptr - 0x5AED50)
5AED46:  LDR.W           R3, =(gMinXInOccluder_ptr - 0x5AED54)
5AED4A:  ADD             R1, PC; gMinYInOccluder_ptr
5AED4C:  ADD             R2, PC; gMaxXInOccluder_ptr
5AED4E:  LDR             R0, [R0]; gMaxYInOccluder
5AED50:  ADD             R3, PC; gMinXInOccluder_ptr
5AED52:  LDR             R1, [R1]; gMinYInOccluder
5AED54:  LDR             R2, [R2]; gMaxXInOccluder
5AED56:  LDR             R3, [R3]; gMinXInOccluder
5AED58:  STR             R5, [R0]
5AED5A:  MOV             R0, #0x497423FE
5AED62:  STR             R5, [R2]
5AED64:  STR             R0, [R3]
5AED66:  STR             R0, [R1]
5AED68:  LDRSH.W         R0, [R6,#6]
5AED6C:  VMOV            S0, R0
5AED70:  VCVT.F32.S32    S0, S0
5AED74:  VMUL.F32        S0, S0, S18
5AED78:  VCMP.F32        S0, #0.0
5AED7C:  VMRS            APSR_nzcv, FPSCR
5AED80:  BNE             loc_5AEDCC
5AED82:  LDRSH.W         R0, [R6,#8]
5AED86:  VMOV.F32        S20, #0.5
5AED8A:  ADD             R4, SP, #0x268+var_200
5AED8C:  ADD             R2, SP, #0x268+var_248
5AED8E:  VMOV            S0, R0
5AED92:  ADD             R0, SP, #0x268+var_E0
5AED94:  MOV             R1, R4
5AED96:  VCVT.F32.S32    S0, S0
5AED9A:  STRD.W          R9, R9, [SP,#0x268+var_248+4]
5AED9E:  VMUL.F32        S0, S0, S18
5AEDA2:  VMUL.F32        S0, S0, S20
5AEDA6:  VSTR            S0, [SP,#0x268+var_248]
5AEDAA:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEDAE:  VLDR            D16, [SP,#0x268+var_E0]
5AEDB2:  LDR             R0, [SP,#0x268+var_D8]
5AEDB4:  STR             R0, [SP,#0x268+var_68]
5AEDB6:  VSTR            D16, [SP,#0x268+var_70]
5AEDBA:  LDRSH.W         R0, [R6,#0xA]
5AEDBE:  VMOV            S0, R0
5AEDC2:  VCVT.F32.S32    S0, S0
5AEDC6:  STRD.W          R9, R9, [SP,#0x268+var_248]
5AEDCA:  B               loc_5AEE58
5AEDCC:  LDRSH.W         R0, [R6,#8]
5AEDD0:  VMOV            S2, R0
5AEDD4:  VCVT.F32.S32    S2, S2
5AEDD8:  VMUL.F32        S2, S2, S18
5AEDDC:  VCMP.F32        S2, #0.0
5AEDE0:  VMRS            APSR_nzcv, FPSCR
5AEDE4:  BEQ             loc_5AEE02
5AEDE6:  LDRSH.W         R0, [R6,#0xA]
5AEDEA:  VMOV            S2, R0
5AEDEE:  VCVT.F32.S32    S2, S2
5AEDF2:  VMUL.F32        S2, S2, S18
5AEDF6:  VCMP.F32        S2, #0.0
5AEDFA:  VMRS            APSR_nzcv, FPSCR
5AEDFE:  BNE.W           loc_5AF33C
5AEE02:  LDRSH.W         R0, [R6,#8]
5AEE06:  VMOV            S2, R0
5AEE0A:  VCVT.F32.S32    S2, S2
5AEE0E:  VMUL.F32        S2, S2, S18
5AEE12:  VCMP.F32        S2, #0.0
5AEE16:  VMRS            APSR_nzcv, FPSCR
5AEE1A:  BNE.W           loc_5AF2BE
5AEE1E:  VMOV.F32        S20, #0.5
5AEE22:  ADD             R4, SP, #0x268+var_200
5AEE24:  ADD             R0, SP, #0x268+var_E0
5AEE26:  ADD             R2, SP, #0x268+var_248
5AEE28:  MOVS            R5, #0
5AEE2A:  MOV             R1, R4
5AEE2C:  STR             R5, [SP,#0x268+var_248]
5AEE2E:  STR             R5, [SP,#0x268+var_240]
5AEE30:  VMUL.F32        S0, S0, S20
5AEE34:  VSTR            S0, [SP,#0x268+var_248+4]
5AEE38:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEE3C:  VLDR            D16, [SP,#0x268+var_E0]
5AEE40:  LDR             R0, [SP,#0x268+var_D8]
5AEE42:  STR             R0, [SP,#0x268+var_68]
5AEE44:  VSTR            D16, [SP,#0x268+var_70]
5AEE48:  LDRSH.W         R0, [R6,#0xA]
5AEE4C:  VMOV            S0, R0
5AEE50:  VCVT.F32.S32    S0, S0
5AEE54:  STRD.W          R5, R5, [SP,#0x268+var_248]
5AEE58:  VMUL.F32        S0, S0, S18
5AEE5C:  VMUL.F32        S0, S0, S20
5AEE60:  ADD             R0, SP, #0x268+var_E0
5AEE62:  ADD             R2, SP, #0x268+var_248
5AEE64:  MOV             R1, R4
5AEE66:  VSTR            S0, [SP,#0x268+var_240]
5AEE6A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEE6E:  VLDR            D16, [SP,#0x268+var_E0]
5AEE72:  LDR             R0, [SP,#0x268+var_D8]
5AEE74:  STR             R0, [SP,#0x268+var_78]
5AEE76:  VSTR            D16, [SP,#0x268+var_80]
5AEE7A:  LDR             R4, [SP,#0x268+var_25C]
5AEE7C:  VLDR            S0, [SP,#0x268+var_70]
5AEE80:  ADD             R2, SP, #0x268+var_248
5AEE82:  VLDR            S6, [SP,#0x268+var_8C]
5AEE86:  VLDR            S2, [SP,#0x268+var_70+4]
5AEE8A:  VLDR            S8, [SP,#0x268+var_88]
5AEE8E:  VSUB.F32        S1, S6, S0
5AEE92:  VLDR            S4, [SP,#0x268+var_68]
5AEE96:  VADD.F32        S0, S6, S0
5AEE9A:  VLDR            S10, [SP,#0x268+var_84]
5AEE9E:  VADD.F32        S12, S8, S2
5AEEA2:  VSUB.F32        S2, S8, S2
5AEEA6:  VLDR            S6, [SP,#0x268+var_80]
5AEEAA:  VADD.F32        S14, S10, S4
5AEEAE:  VLDR            S3, [SP,#0x268+var_80+4]
5AEEB2:  VSUB.F32        S4, S10, S4
5AEEB6:  VLDR            S5, [SP,#0x268+var_78]
5AEEBA:  LDR.W           R0, =(gOccluderCoors_ptr - 0x5AEECE)
5AEEBE:  VSUB.F32        S7, S1, S6
5AEEC2:  LDR.W           R1, =(TheCamera_ptr - 0x5AEED4)
5AEEC6:  VADD.F32        S9, S0, S6
5AEECA:  ADD             R0, PC; gOccluderCoors_ptr
5AEECC:  VADD.F32        S8, S12, S3
5AEED0:  ADD             R1, PC; TheCamera_ptr
5AEED2:  VSUB.F32        S0, S0, S6
5AEED6:  LDR             R0, [R0]; gOccluderCoors
5AEED8:  VADD.F32        S10, S14, S5
5AEEDC:  LDR             R1, [R1]; TheCamera
5AEEDE:  VADD.F32        S6, S1, S6
5AEEE2:  VADD.F32        S1, S4, S5
5AEEE6:  ADDW            R1, R1, #0x98C
5AEEEA:  VADD.F32        S11, S2, S3
5AEEEE:  VSUB.F32        S14, S14, S5
5AEEF2:  VSTR            S9, [R0]
5AEEF6:  VSUB.F32        S12, S12, S3
5AEEFA:  VSTR            S8, [R0,#4]
5AEEFE:  VSUB.F32        S4, S4, S5
5AEF02:  VSUB.F32        S2, S2, S3
5AEF06:  VSTR            S10, [R0,#8]
5AEF0A:  VSTR            S6, [R0,#0xC]
5AEF0E:  VSTR            S11, [R0,#0x10]
5AEF12:  VSTR            S1, [R0,#0x14]
5AEF16:  VSTR            S7, [R0,#0x18]
5AEF1A:  VSTR            S2, [R0,#0x1C]
5AEF1E:  VSTR            S4, [R0,#0x20]
5AEF22:  VSTR            S0, [R0,#0x24]
5AEF26:  VSTR            S12, [R0,#0x28]
5AEF2A:  VSTR            S14, [R0,#0x2C]
5AEF2E:  VLDR            D16, [R0]
5AEF32:  LDR             R0, [R0,#(dword_A46D50 - 0xA46D48)]
5AEF34:  STR             R0, [SP,#0x268+var_240]
5AEF36:  ADD             R0, SP, #0x268+var_E0
5AEF38:  VSTR            D16, [SP,#0x268+var_248]
5AEF3C:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEF40:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AEF4C)
5AEF44:  VLDR            D16, [SP,#0x268+var_E0]
5AEF48:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AEF4A:  LDR             R1, [SP,#0x268+var_D8]
5AEF4C:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AEF4E:  STR             R1, [R0,#(dword_A46DBC - 0xA46DB4)]
5AEF50:  VSTR            D16, [R0]
5AEF54:  VLDR            S0, [R0,#8]
5AEF58:  VCMPE.F32       S0, S16
5AEF5C:  VMRS            APSR_nzcv, FPSCR
5AEF60:  BLE             loc_5AEFC0
5AEF62:  VDIV.F32        S0, S16, S0
5AEF66:  LDR.W           R0, =(RsGlobal_ptr - 0x5AEF6E)
5AEF6A:  ADD             R0, PC; RsGlobal_ptr
5AEF6C:  LDR             R0, [R0]; RsGlobal
5AEF6E:  VLDR            S2, [R0,#4]
5AEF72:  VLDR            S4, [R0,#8]
5AEF76:  VCVT.F32.S32    S2, S2
5AEF7A:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AEF86)
5AEF7E:  VCVT.F32.S32    S4, S4
5AEF82:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AEF84:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AEF86:  VMUL.F32        S2, S0, S2
5AEF8A:  VLDR            S6, [R0,#4]
5AEF8E:  VMUL.F32        S0, S0, S4
5AEF92:  VLDR            S4, [R0]
5AEF96:  VMUL.F32        S2, S4, S2
5AEF9A:  VMUL.F32        S0, S6, S0
5AEF9E:  VSTR            S2, [R0]
5AEFA2:  VSTR            S0, [R0,#4]
5AEFA6:  MOVS            R0, #1
5AEFA8:  B               loc_5AEFC2
5AEFAA:  ALIGN 4
5AEFAC:  DCFS -150.0
5AEFB0:  DCFS 300.0
5AEFB4:  DCFS 0.024544
5AEFB8:  DCFS 0.1
5AEFBC:  DCFS 0.07
5AEFC0:  MOVS            R0, #0
5AEFC2:  LDR.W           R1, =(gOccluderCoorsValid_ptr - 0x5AEFCE)
5AEFC6:  LDR.W           R2, =(gOccluderCoors_ptr - 0x5AEFD4)
5AEFCA:  ADD             R1, PC; gOccluderCoorsValid_ptr
5AEFCC:  LDR.W           R3, =(TheCamera_ptr - 0x5AEFD8)
5AEFD0:  ADD             R2, PC; gOccluderCoors_ptr
5AEFD2:  LDR             R1, [R1]; gOccluderCoorsValid
5AEFD4:  ADD             R3, PC; TheCamera_ptr
5AEFD6:  LDR             R2, [R2]; gOccluderCoors
5AEFD8:  STRB            R0, [R1]
5AEFDA:  LDR             R1, [R3]; TheCamera
5AEFDC:  LDR             R0, [R2,#(dword_A46D5C - 0xA46D48)]
5AEFDE:  VLDR            D16, [R2,#0xC]
5AEFE2:  ADDW            R1, R1, #0x98C
5AEFE6:  STR             R0, [SP,#0x268+var_240]
5AEFE8:  ADD             R0, SP, #0x268+var_E0
5AEFEA:  ADD             R2, SP, #0x268+var_248
5AEFEC:  VSTR            D16, [SP,#0x268+var_248]
5AEFF0:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AEFF4:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF000)
5AEFF8:  VLDR            D16, [SP,#0x268+var_E0]
5AEFFC:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AEFFE:  LDR             R1, [SP,#0x268+var_D8]
5AF000:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF002:  STR             R1, [R0,#(dword_A46DC8 - 0xA46DB4)]
5AF004:  VSTR            D16, [R0,#0xC]
5AF008:  VLDR            S0, [R0,#0x14]
5AF00C:  VCMPE.F32       S0, S16
5AF010:  VMRS            APSR_nzcv, FPSCR
5AF014:  BLE             loc_5AF05E
5AF016:  VDIV.F32        S0, S16, S0
5AF01A:  LDR.W           R0, =(RsGlobal_ptr - 0x5AF022)
5AF01E:  ADD             R0, PC; RsGlobal_ptr
5AF020:  LDR             R0, [R0]; RsGlobal
5AF022:  VLDR            S2, [R0,#4]
5AF026:  VLDR            S4, [R0,#8]
5AF02A:  VCVT.F32.S32    S2, S2
5AF02E:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF03A)
5AF032:  VCVT.F32.S32    S4, S4
5AF036:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF038:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF03A:  VMUL.F32        S2, S0, S2
5AF03E:  VLDR            S6, [R0,#0x10]
5AF042:  VMUL.F32        S0, S0, S4
5AF046:  VLDR            S4, [R0,#0xC]
5AF04A:  VMUL.F32        S2, S4, S2
5AF04E:  VMUL.F32        S0, S6, S0
5AF052:  VSTR            S2, [R0,#0xC]
5AF056:  VSTR            S0, [R0,#0x10]
5AF05A:  MOVS            R0, #1
5AF05C:  B               loc_5AF060
5AF05E:  MOVS            R0, #0
5AF060:  LDR.W           R1, =(gOccluderCoorsValid_ptr - 0x5AF06C)
5AF064:  LDR.W           R2, =(gOccluderCoors_ptr - 0x5AF072)
5AF068:  ADD             R1, PC; gOccluderCoorsValid_ptr
5AF06A:  LDR.W           R3, =(TheCamera_ptr - 0x5AF076)
5AF06E:  ADD             R2, PC; gOccluderCoors_ptr
5AF070:  LDR             R1, [R1]; gOccluderCoorsValid
5AF072:  ADD             R3, PC; TheCamera_ptr
5AF074:  LDR             R2, [R2]; gOccluderCoors
5AF076:  STRB            R0, [R1,#(byte_A46E15 - 0xA46E14)]
5AF078:  LDR             R1, [R3]; TheCamera
5AF07A:  LDR             R0, [R2,#(dword_A46D68 - 0xA46D48)]
5AF07C:  VLDR            D16, [R2,#0x18]
5AF080:  ADDW            R1, R1, #0x98C
5AF084:  STR             R0, [SP,#0x268+var_240]
5AF086:  ADD             R0, SP, #0x268+var_E0
5AF088:  ADD             R2, SP, #0x268+var_248
5AF08A:  VSTR            D16, [SP,#0x268+var_248]
5AF08E:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF092:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF09E)
5AF096:  VLDR            D16, [SP,#0x268+var_E0]
5AF09A:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF09C:  LDR             R1, [SP,#0x268+var_D8]
5AF09E:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF0A0:  STR             R1, [R0,#(dword_A46DD4 - 0xA46DB4)]
5AF0A2:  VSTR            D16, [R0,#0x18]
5AF0A6:  VLDR            S0, [R0,#0x20]
5AF0AA:  VCMPE.F32       S0, S16
5AF0AE:  VMRS            APSR_nzcv, FPSCR
5AF0B2:  BLE             loc_5AF0FC
5AF0B4:  VDIV.F32        S0, S16, S0
5AF0B8:  LDR.W           R0, =(RsGlobal_ptr - 0x5AF0C0)
5AF0BC:  ADD             R0, PC; RsGlobal_ptr
5AF0BE:  LDR             R0, [R0]; RsGlobal
5AF0C0:  VLDR            S2, [R0,#4]
5AF0C4:  VLDR            S4, [R0,#8]
5AF0C8:  VCVT.F32.S32    S2, S2
5AF0CC:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF0D8)
5AF0D0:  VCVT.F32.S32    S4, S4
5AF0D4:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF0D6:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF0D8:  VMUL.F32        S2, S0, S2
5AF0DC:  VLDR            S6, [R0,#0x1C]
5AF0E0:  VMUL.F32        S0, S0, S4
5AF0E4:  VLDR            S4, [R0,#0x18]
5AF0E8:  VMUL.F32        S2, S4, S2
5AF0EC:  VMUL.F32        S0, S6, S0
5AF0F0:  VSTR            S2, [R0,#0x18]
5AF0F4:  VSTR            S0, [R0,#0x1C]
5AF0F8:  MOVS            R0, #1
5AF0FA:  B               loc_5AF0FE
5AF0FC:  MOVS            R0, #0
5AF0FE:  LDR.W           R1, =(gOccluderCoorsValid_ptr - 0x5AF10A)
5AF102:  LDR.W           R2, =(gOccluderCoors_ptr - 0x5AF110)
5AF106:  ADD             R1, PC; gOccluderCoorsValid_ptr
5AF108:  LDR.W           R3, =(TheCamera_ptr - 0x5AF114)
5AF10C:  ADD             R2, PC; gOccluderCoors_ptr
5AF10E:  LDR             R1, [R1]; gOccluderCoorsValid
5AF110:  ADD             R3, PC; TheCamera_ptr
5AF112:  LDR             R2, [R2]; gOccluderCoors
5AF114:  STRB            R0, [R1,#(byte_A46E16 - 0xA46E14)]
5AF116:  LDR             R1, [R3]; TheCamera
5AF118:  LDR             R0, [R2,#(dword_A46D74 - 0xA46D48)]
5AF11A:  VLDR            D16, [R2,#0x24]
5AF11E:  ADDW            R1, R1, #0x98C
5AF122:  STR             R0, [SP,#0x268+var_240]
5AF124:  ADD             R0, SP, #0x268+var_E0
5AF126:  ADD             R2, SP, #0x268+var_248
5AF128:  VSTR            D16, [SP,#0x268+var_248]
5AF12C:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF130:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF13C)
5AF134:  VLDR            D16, [SP,#0x268+var_E0]
5AF138:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF13A:  LDR             R1, [SP,#0x268+var_D8]
5AF13C:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF13E:  STR             R1, [R0,#(dword_A46DE0 - 0xA46DB4)]
5AF140:  VSTR            D16, [R0,#0x24]
5AF144:  VLDR            S0, [R0,#0x2C]
5AF148:  VCMPE.F32       S0, S16
5AF14C:  VMRS            APSR_nzcv, FPSCR
5AF150:  BLE             loc_5AF19A
5AF152:  VDIV.F32        S0, S16, S0
5AF156:  LDR.W           R0, =(RsGlobal_ptr - 0x5AF15E)
5AF15A:  ADD             R0, PC; RsGlobal_ptr
5AF15C:  LDR             R0, [R0]; RsGlobal
5AF15E:  VLDR            S2, [R0,#4]
5AF162:  VLDR            S4, [R0,#8]
5AF166:  VCVT.F32.S32    S2, S2
5AF16A:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF176)
5AF16E:  VCVT.F32.S32    S4, S4
5AF172:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF174:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AF176:  VMUL.F32        S2, S0, S2
5AF17A:  VLDR            S6, [R0,#0x28]
5AF17E:  VMUL.F32        S0, S0, S4
5AF182:  VLDR            S4, [R0,#0x24]
5AF186:  VMUL.F32        S2, S4, S2
5AF18A:  VMUL.F32        S0, S6, S0
5AF18E:  VSTR            S2, [R0,#0x24]
5AF192:  VSTR            S0, [R0,#0x28]
5AF196:  MOVS            R0, #1
5AF198:  B               loc_5AF19C
5AF19A:  MOVS            R0, #0; this
5AF19C:  LDR.W           R1, =(gOccluderCoorsValid_ptr - 0x5AF1AA)
5AF1A0:  MOVS            R2, #1; int
5AF1A2:  MOV             R3, R4; CActiveOccluder *
5AF1A4:  MOVS            R5, #0
5AF1A6:  ADD             R1, PC; gOccluderCoorsValid_ptr
5AF1A8:  LDR             R1, [R1]; gOccluderCoorsValid
5AF1AA:  STRB            R0, [R1,#(byte_A46E17 - 0xA46E14)]
5AF1AC:  MOVS            R1, #0; int
5AF1AE:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF1B2:  CMP             R0, #0
5AF1B4:  BNE.W           loc_5AF850
5AF1B8:  MOVS            R1, #1; int
5AF1BA:  MOVS            R2, #2; int
5AF1BC:  MOV             R3, R4; CActiveOccluder *
5AF1BE:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF1C2:  CBZ             R0, loc_5AF1C8
5AF1C4:  MOVS            R5, #0
5AF1C6:  B               loc_5AF850
5AF1C8:  MOVS            R1, #2; int
5AF1CA:  MOVS            R2, #3; int
5AF1CC:  MOV             R3, R4; CActiveOccluder *
5AF1CE:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF1D2:  MOVS            R5, #0
5AF1D4:  CMP             R0, #0
5AF1D6:  BNE.W           loc_5AF850
5AF1DA:  MOVS            R1, #3; int
5AF1DC:  MOVS            R2, #0; int
5AF1DE:  MOV             R3, R4; CActiveOccluder *
5AF1E0:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF1E4:  CMP             R0, #0
5AF1E6:  BNE.W           loc_5AF850
5AF1EA:  LDR.W           R0, =(RsGlobal_ptr - 0x5AF1F6)
5AF1EE:  LDR.W           R1, =(gMinXInOccluder_ptr - 0x5AF1FC)
5AF1F2:  ADD             R0, PC; RsGlobal_ptr
5AF1F4:  LDR.W           R2, =(gMaxXInOccluder_ptr - 0x5AF204)
5AF1F8:  ADD             R1, PC; gMinXInOccluder_ptr
5AF1FA:  VLDR            S6, =0.1
5AF1FE:  LDR             R0, [R0]; RsGlobal
5AF200:  ADD             R2, PC; gMaxXInOccluder_ptr
5AF202:  VLDR            S0, [R0,#4]
5AF206:  LDR             R0, [R1]; gMinXInOccluder
5AF208:  VCVT.F32.S32    S0, S0
5AF20C:  LDR             R1, [R2]; gMaxXInOccluder
5AF20E:  VLDR            S2, [R0]
5AF212:  VLDR            S4, [R1]
5AF216:  VSUB.F32        S2, S4, S2
5AF21A:  VMUL.F32        S0, S0, S6
5AF21E:  VCMPE.F32       S2, S0
5AF222:  VMRS            APSR_nzcv, FPSCR
5AF226:  BLT             loc_5AF1C4
5AF228:  LDR.W           R0, =(RsGlobal_ptr - 0x5AF234)
5AF22C:  LDR.W           R1, =(gMinYInOccluder_ptr - 0x5AF23A)
5AF230:  ADD             R0, PC; RsGlobal_ptr
5AF232:  LDR.W           R2, =(gMaxYInOccluder_ptr - 0x5AF242)
5AF236:  ADD             R1, PC; gMinYInOccluder_ptr
5AF238:  VLDR            S6, =0.07
5AF23C:  LDR             R0, [R0]; RsGlobal
5AF23E:  ADD             R2, PC; gMaxYInOccluder_ptr
5AF240:  VLDR            S0, [R0,#8]
5AF244:  LDR             R0, [R1]; gMinYInOccluder
5AF246:  VCVT.F32.S32    S0, S0
5AF24A:  LDR             R1, [R2]; gMaxYInOccluder
5AF24C:  VLDR            S2, [R0]
5AF250:  VLDR            S4, [R1]
5AF254:  VSUB.F32        S2, S4, S2
5AF258:  VMUL.F32        S0, S0, S6
5AF25C:  VCMPE.F32       S2, S0
5AF260:  VMRS            APSR_nzcv, FPSCR
5AF264:  BLT             loc_5AF1C4
5AF266:  ADD             R5, SP, #0x268+var_E0
5AF268:  ADD             R1, SP, #0x268+var_70; CVector *
5AF26A:  ADD             R2, SP, #0x268+var_80
5AF26C:  MOV             R0, R5; CVector *
5AF26E:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5AF272:  MOV             R0, R5; this
5AF274:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5AF278:  VLDR            D16, [SP,#0x268+var_E0]
5AF27C:  MOVS            R5, #1
5AF27E:  LDR             R0, [SP,#0x268+var_D8]
5AF280:  VLDR            S0, [SP,#0x268+var_8C]
5AF284:  VLDR            S2, [SP,#0x268+var_88]
5AF288:  VLDR            S4, [SP,#0x268+var_84]
5AF28C:  STR.W           R0, [R4,#0x84]
5AF290:  VSTR            D16, [R4,#0x7C]
5AF294:  VLDR            S6, [SP,#0x268+var_E0]
5AF298:  VLDR            S8, [SP,#0x268+var_E0+4]
5AF29C:  VMUL.F32        S0, S0, S6
5AF2A0:  VLDR            S10, [SP,#0x268+var_D8]
5AF2A4:  VMUL.F32        S2, S2, S8
5AF2A8:  STRB.W          R5, [R4,#0x7B]
5AF2AC:  VMUL.F32        S4, S4, S10
5AF2B0:  VADD.F32        S0, S0, S2
5AF2B4:  VADD.F32        S0, S0, S4
5AF2B8:  VSTR            S0, [R4,#0xA0]
5AF2BC:  B               loc_5AF850
5AF2BE:  LDRSH.W         R0, [R6,#0xA]
5AF2C2:  VMOV            S2, R0
5AF2C6:  VCVT.F32.S32    S2, S2
5AF2CA:  LDR             R4, [SP,#0x268+var_25C]
5AF2CC:  VMUL.F32        S2, S2, S18
5AF2D0:  VCMP.F32        S2, #0.0
5AF2D4:  VMRS            APSR_nzcv, FPSCR
5AF2D8:  BNE.W           loc_5AEE7C
5AF2DC:  VMOV.F32        S20, #0.5
5AF2E0:  ADD.W           R8, SP, #0x268+var_200
5AF2E4:  ADD             R0, SP, #0x268+var_E0
5AF2E6:  ADD             R2, SP, #0x268+var_248
5AF2E8:  MOVS            R5, #0
5AF2EA:  MOV             R1, R8
5AF2EC:  STR             R5, [SP,#0x268+var_248]
5AF2EE:  STR             R5, [SP,#0x268+var_240]
5AF2F0:  VMUL.F32        S0, S0, S20
5AF2F4:  VSTR            S0, [SP,#0x268+var_248+4]
5AF2F8:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF2FC:  VLDR            D16, [SP,#0x268+var_E0]
5AF300:  ADD             R2, SP, #0x268+var_248
5AF302:  LDR             R0, [SP,#0x268+var_D8]
5AF304:  MOV             R1, R8
5AF306:  STR             R0, [SP,#0x268+var_68]
5AF308:  VSTR            D16, [SP,#0x268+var_70]
5AF30C:  LDRSH.W         R0, [R6,#8]
5AF310:  VMOV            S0, R0
5AF314:  ADD             R0, SP, #0x268+var_E0
5AF316:  VCVT.F32.S32    S0, S0
5AF31A:  STRD.W          R5, R5, [SP,#0x268+var_248+4]
5AF31E:  VMUL.F32        S0, S0, S18
5AF322:  VMUL.F32        S0, S0, S20
5AF326:  VSTR            S0, [SP,#0x268+var_248]
5AF32A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF32E:  VLDR            D16, [SP,#0x268+var_E0]
5AF332:  LDR             R0, [SP,#0x268+var_D8]
5AF334:  STR             R0, [SP,#0x268+var_78]
5AF336:  VSTR            D16, [SP,#0x268+var_80]
5AF33A:  B               loc_5AEE7C
5AF33C:  VMOV.F32        S20, #0.5
5AF340:  ADD             R5, SP, #0x268+var_200
5AF342:  ADD             R0, SP, #0x268+var_E0
5AF344:  ADD             R2, SP, #0x268+var_248
5AF346:  MOVS            R4, #0
5AF348:  MOV             R1, R5
5AF34A:  STR             R4, [SP,#0x268+var_248]
5AF34C:  STR             R4, [SP,#0x268+var_240]
5AF34E:  VMUL.F32        S0, S0, S20
5AF352:  VSTR            S0, [SP,#0x268+var_248+4]
5AF356:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF35A:  VLDR            D16, [SP,#0x268+var_E0]
5AF35E:  ADD             R2, SP, #0x268+var_248
5AF360:  LDR             R0, [SP,#0x268+var_D8]
5AF362:  MOV             R1, R5
5AF364:  STR             R0, [SP,#0x268+var_68]
5AF366:  VSTR            D16, [SP,#0x268+var_70]
5AF36A:  LDRSH.W         R0, [R6,#8]
5AF36E:  VMOV            S0, R0
5AF372:  ADD             R0, SP, #0x268+var_E0
5AF374:  VCVT.F32.S32    S0, S0
5AF378:  STRD.W          R4, R4, [SP,#0x268+var_248+4]
5AF37C:  VMUL.F32        S0, S0, S18
5AF380:  VMUL.F32        S0, S0, S20
5AF384:  VSTR            S0, [SP,#0x268+var_248]
5AF388:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF38C:  VLDR            D16, [SP,#0x268+var_E0]
5AF390:  ADD             R2, SP, #0x268+var_248
5AF392:  LDR             R0, [SP,#0x268+var_D8]
5AF394:  MOV             R1, R5
5AF396:  STR             R0, [SP,#0x268+var_78]
5AF398:  VSTR            D16, [SP,#0x268+var_80]
5AF39C:  LDRSH.W         R0, [R6,#0xA]
5AF3A0:  VMOV            S0, R0
5AF3A4:  ADD             R0, SP, #0x268+var_E0
5AF3A6:  VCVT.F32.S32    S0, S0
5AF3AA:  STRD.W          R4, R4, [SP,#0x268+var_248]
5AF3AE:  VMUL.F32        S0, S0, S18
5AF3B2:  VMUL.F32        S0, S0, S20
5AF3B6:  VSTR            S0, [SP,#0x268+var_240]
5AF3BA:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF3BE:  VLDR            S5, [SP,#0x268+var_68]
5AF3C2:  VLDR            S11, [SP,#0x268+var_70]
5AF3C6:  VLDR            S13, [SP,#0x268+var_70+4]
5AF3CA:  VNEG.F32        S6, S5
5AF3CE:  VNEG.F32        S12, S11
5AF3D2:  VLDR            S4, [SP,#0x268+var_E0]
5AF3D6:  VNEG.F32        S10, S13
5AF3DA:  VLDR            S8, [SP,#0x268+var_78]
5AF3DE:  VLDR            S9, [SP,#0x268+var_80]
5AF3E2:  VNEG.F32        S14, S4
5AF3E6:  VLDR            S0, [SP,#0x268+var_E0+4]
5AF3EA:  VNEG.F32        S1, S8
5AF3EE:  VLDR            S2, [SP,#0x268+var_D8]
5AF3F2:  VNEG.F32        S3, S9
5AF3F6:  LDR             R0, [SP,#0x268+var_68]
5AF3F8:  VLDR            D16, [SP,#0x268+var_70]
5AF3FC:  VLDR            S15, [SP,#0x268+var_80+4]
5AF400:  STR             R0, [SP,#0x268+var_D8]
5AF402:  LDR             R0, [SP,#0x268+var_78]
5AF404:  VSTR            D16, [SP,#0x268+var_E0]
5AF408:  STR             R0, [SP,#0x268+var_C0]
5AF40A:  VSTR            S6, [SP,#0x268+var_CC]
5AF40E:  VNEG.F32        S6, S0
5AF412:  VSTR            S10, [SP,#0x268+var_D0]
5AF416:  VNEG.F32        S10, S15
5AF41A:  VSTR            S12, [SP,#0x268+var_D4]
5AF41E:  VNEG.F32        S12, S2
5AF422:  LDR.W           R1, =(TheCamera_ptr - 0x5AF42E)
5AF426:  VLDR            D16, [SP,#0x268+var_80]
5AF42A:  ADD             R1, PC; TheCamera_ptr
5AF42C:  VSTR            D16, [SP,#0x268+var_C8]
5AF430:  VSTR            S1, [SP,#0x268+var_B4]
5AF434:  VSTR            S3, [SP,#0x268+var_BC]
5AF438:  VSTR            S2, [SP,#0x268+var_A8]
5AF43C:  VSTR            S0, [SP,#0x268+var_AC]
5AF440:  VSTR            S4, [SP,#0x268+var_B0]
5AF444:  VSTR            S10, [SP,#0x268+var_B8]
5AF448:  VSTR            S12, [SP,#0x268+var_9C]
5AF44C:  VSTR            S6, [SP,#0x268+var_A0]
5AF450:  VSTR            S14, [SP,#0x268+var_A4]
5AF454:  LDR             R0, [R1]; TheCamera
5AF456:  VLDR            S20, [SP,#0x268+var_E0+4]
5AF45A:  VLDR            S12, [SP,#0x268+var_88]
5AF45E:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5AF460:  VADD.F32        S24, S12, S20
5AF464:  VLDR            S10, [SP,#0x268+var_84]
5AF468:  ADD.W           R2, R1, #0x30 ; '0'
5AF46C:  CMP             R1, #0
5AF46E:  VLDR            S22, [SP,#0x268+var_D8]
5AF472:  VSUB.F32        S28, S10, S5
5AF476:  VLDR            S18, [SP,#0x268+var_E0]
5AF47A:  VLDR            S7, [SP,#0x268+var_C8]
5AF47E:  VADD.F32        S26, S10, S22
5AF482:  VLDR            S6, [SP,#0x268+var_8C]
5AF486:  IT EQ
5AF488:  ADDEQ           R2, R0, #4
5AF48A:  VLDR            S3, [R2,#4]
5AF48E:  MOVS            R0, #0
5AF490:  VLDR            S14, [R2]
5AF494:  VSUB.F32        S24, S24, S3
5AF498:  VLDR            S1, [R2,#8]
5AF49C:  LDR.W           R1, =(gOccluderCoorsValid_ptr - 0x5AF4AC)
5AF4A0:  VSUB.F32        S28, S28, S1
5AF4A4:  VSUB.F32        S26, S26, S1
5AF4A8:  ADD             R1, PC; gOccluderCoorsValid_ptr
5AF4AA:  LDR             R5, [R1]; gOccluderCoorsValid
5AF4AC:  VMUL.F32        S20, S20, S24
5AF4B0:  VADD.F32        S24, S6, S18
5AF4B4:  VMUL.F32        S5, S28, S5
5AF4B8:  VMUL.F32        S22, S22, S26
5AF4BC:  VADD.F32        S26, S6, S7
5AF4C0:  VSUB.F32        S24, S24, S14
5AF4C4:  VSUB.F32        S26, S26, S14
5AF4C8:  VMUL.F32        S18, S18, S24
5AF4CC:  VSUB.F32        S24, S12, S13
5AF4D0:  VMUL.F32        S7, S7, S26
5AF4D4:  VADD.F32        S18, S18, S20
5AF4D8:  VSUB.F32        S24, S24, S3
5AF4DC:  VADD.F32        S20, S6, S4
5AF4E0:  VADD.F32        S18, S18, S22
5AF4E4:  VMUL.F32        S13, S24, S13
5AF4E8:  VSUB.F32        S24, S6, S11
5AF4EC:  VSUB.F32        S22, S12, S15
5AF4F0:  VSUB.F32        S20, S20, S14
5AF4F4:  VCMPE.F32       S18, #0.0
5AF4F8:  VMRS            APSR_nzcv, FPSCR
5AF4FC:  VSUB.F32        S24, S24, S14
5AF500:  VSUB.F32        S22, S22, S3
5AF504:  VMUL.F32        S20, S4, S20
5AF508:  VNMUL.F32       S11, S11, S24
5AF50C:  VSUB.F32        S24, S6, S9
5AF510:  VMUL.F32        S15, S22, S15
5AF514:  VADD.F32        S22, S10, S2
5AF518:  VSUB.F32        S11, S11, S13
5AF51C:  VSUB.F32        S24, S24, S14
5AF520:  VADD.F32        S13, S12, S0
5AF524:  VSUB.F32        S22, S22, S1
5AF528:  VSUB.F32        S5, S11, S5
5AF52C:  VLDR            S11, [SP,#0x268+var_C8+4]
5AF530:  VNMUL.F32       S9, S9, S24
5AF534:  IT LT
5AF536:  MOVLT           R0, #1
5AF538:  VSUB.F32        S24, S10, S8
5AF53C:  STRB.W          R0, [R7,#var_92]
5AF540:  VSUB.F32        S13, S13, S3
5AF544:  MOVS            R0, #0
5AF546:  VADD.F32        S18, S12, S11
5AF54A:  VCMPE.F32       S5, #0.0
5AF54E:  VMRS            APSR_nzcv, FPSCR
5AF552:  VSUB.F32        S9, S9, S15
5AF556:  VSUB.F32        S24, S24, S1
5AF55A:  VMUL.F32        S13, S0, S13
5AF55E:  VSUB.F32        S18, S18, S3
5AF562:  VMUL.F32        S15, S2, S22
5AF566:  VMUL.F32        S8, S24, S8
5AF56A:  VADD.F32        S13, S20, S13
5AF56E:  VMUL.F32        S11, S11, S18
5AF572:  VSUB.F32        S8, S9, S8
5AF576:  VADD.F32        S9, S13, S15
5AF57A:  VADD.F32        S7, S7, S11
5AF57E:  IT LT
5AF580:  MOVLT           R0, #1
5AF582:  VLDR            S5, [SP,#0x268+var_C0]
5AF586:  STRB.W          R0, [R7,#var_91]
5AF58A:  MOVS            R0, #0
5AF58C:  VCMPE.F32       S8, #0.0
5AF590:  VMRS            APSR_nzcv, FPSCR
5AF594:  VADD.F32        S18, S10, S5
5AF598:  VCMPE.F32       S9, #0.0
5AF59C:  VSUB.F32        S18, S18, S1
5AF5A0:  VMUL.F32        S5, S5, S18
5AF5A4:  IT LT
5AF5A6:  MOVLT           R0, #1
5AF5A8:  VMRS            APSR_nzcv, FPSCR
5AF5AC:  VADD.F32        S5, S7, S5
5AF5B0:  STRB.W          R0, [R7,#var_8F]
5AF5B4:  MOV.W           R0, #0
5AF5B8:  VCMPE.F32       S5, #0.0
5AF5BC:  IT LT
5AF5BE:  MOVLT           R0, #1
5AF5C0:  VMRS            APSR_nzcv, FPSCR
5AF5C4:  STR             R0, [SP,#0x268+var_260]
5AF5C6:  STRB.W          R0, [R7,#var_8E]
5AF5CA:  MOV.W           R0, #0
5AF5CE:  IT LT
5AF5D0:  MOVLT           R0, #1
5AF5D2:  VLDR            S8, [SP,#0x268+var_A4]
5AF5D6:  VLDR            S5, [SP,#0x268+var_A0]
5AF5DA:  VADD.F32        S9, S6, S8
5AF5DE:  VLDR            S7, [SP,#0x268+var_9C]
5AF5E2:  VADD.F32        S12, S12, S5
5AF5E6:  STRB.W          R0, [R7,#var_90]
5AF5EA:  VADD.F32        S10, S10, S7
5AF5EE:  MOVS            R0, #0
5AF5F0:  VSUB.F32        S14, S9, S14
5AF5F4:  VSUB.F32        S12, S12, S3
5AF5F8:  VSUB.F32        S10, S10, S1
5AF5FC:  VMUL.F32        S8, S8, S14
5AF600:  VMUL.F32        S12, S5, S12
5AF604:  VMUL.F32        S10, S7, S10
5AF608:  VADD.F32        S8, S8, S12
5AF60C:  VADD.F32        S8, S8, S10
5AF610:  VLDR            S10, [SP,#0x268+var_70]
5AF614:  VADD.F32        S6, S6, S10
5AF618:  VCMPE.F32       S8, #0.0
5AF61C:  VMRS            APSR_nzcv, FPSCR
5AF620:  IT LT
5AF622:  MOVLT           R0, #1
5AF624:  VLDR            S14, [SP,#0x268+var_70+4]
5AF628:  VLDR            S1, [SP,#0x268+var_88]
5AF62C:  VLDR            S15, [SP,#0x268+var_8C]
5AF630:  VADD.F32        S5, S1, S14
5AF634:  STR             R0, [SP,#0x268+var_264]
5AF636:  VSUB.F32        S14, S1, S14
5AF63A:  VLDR            S1, [SP,#0x268+var_80]
5AF63E:  VSUB.F32        S20, S15, S10
5AF642:  STRB.W          R0, [R7,#var_8D]
5AF646:  VADD.F32        S6, S6, S1
5AF64A:  LDR.W           R0, =(gOccluderCoors_ptr - 0x5AF65A)
5AF64E:  VADD.F32        S10, S15, S10
5AF652:  VLDR            S8, [SP,#0x268+var_68]
5AF656:  ADD             R0, PC; gOccluderCoors_ptr
5AF658:  VLDR            S12, [SP,#0x268+var_84]
5AF65C:  VLDR            S9, [SP,#0x268+var_80+4]
5AF660:  LDR             R0, [R0]; gOccluderCoors
5AF662:  VADD.F32        S3, S12, S8
5AF666:  VSUB.F32        S8, S12, S8
5AF66A:  VLDR            S7, [SP,#0x268+var_78]
5AF66E:  VADD.F32        S26, S20, S1
5AF672:  VADD.F32        S6, S4, S6
5AF676:  VADD.F32        S18, S14, S9
5AF67A:  VSUB.F32        S13, S5, S9
5AF67E:  VSUB.F32        S14, S14, S9
5AF682:  VSUB.F32        S11, S3, S7
5AF686:  VADD.F32        S12, S8, S7
5AF68A:  VADD.F32        S3, S3, S7
5AF68E:  VSTR            S6, [R0]
5AF692:  VSUB.F32        S6, S26, S4
5AF696:  VADD.F32        S26, S4, S26
5AF69A:  VSUB.F32        S8, S8, S7
5AF69E:  VADD.F32        S22, S0, S13
5AF6A2:  VADD.F32        S15, S2, S11
5AF6A6:  VSUB.F32        S24, S18, S0
5AF6AA:  VSUB.F32        S30, S3, S2
5AF6AE:  VSUB.F32        S11, S11, S2
5AF6B2:  VSTR            S26, [R0,#0xC]
5AF6B6:  VSUB.F32        S26, S10, S1
5AF6BA:  VADD.F32        S10, S10, S1
5AF6BE:  VSUB.F32        S1, S20, S1
5AF6C2:  VSUB.F32        S13, S13, S0
5AF6C6:  VADD.F32        S18, S0, S18
5AF6CA:  VADD.F32        S3, S2, S3
5AF6CE:  VSUB.F32        S28, S26, S4
5AF6D2:  VADD.F32        S26, S4, S26
5AF6D6:  VSUB.F32        S10, S10, S4
5AF6DA:  VSUB.F32        S7, S1, S4
5AF6DE:  VADD.F32        S4, S4, S1
5AF6E2:  VADD.F32        S1, S5, S9
5AF6E6:  VSUB.F32        S5, S14, S0
5AF6EA:  VSTR            S26, [R0,#0x18]
5AF6EE:  VSUB.F32        S26, S12, S2
5AF6F2:  VADD.F32        S12, S2, S12
5AF6F6:  VSTR            S4, [R0,#0x24]
5AF6FA:  VSUB.F32        S4, S1, S0
5AF6FE:  VSTR            S10, [R0,#0x30]
5AF702:  VADD.F32        S1, S0, S1
5AF706:  VSUB.F32        S10, S8, S2
5AF70A:  VADD.F32        S2, S2, S8
5AF70E:  VADD.F32        S0, S0, S14
5AF712:  VSTR            S1, [R0,#4]
5AF716:  VSTR            S3, [R0,#8]
5AF71A:  VSTR            S12, [R0,#0x14]
5AF71E:  VSTR            S18, [R0,#0x10]
5AF722:  VSTR            S15, [R0,#0x20]
5AF726:  VSTR            S22, [R0,#0x1C]
5AF72A:  VSTR            S2, [R0,#0x2C]
5AF72E:  VSTR            S0, [R0,#0x28]
5AF732:  VSTR            S30, [R0,#0x38]
5AF736:  VSTR            S4, [R0,#0x34]
5AF73A:  VSTR            S6, [R0,#0x3C]
5AF73E:  VSTR            S24, [R0,#0x40]
5AF742:  VSTR            S26, [R0,#0x44]
5AF746:  VSTR            S28, [R0,#0x48]
5AF74A:  VSTR            S13, [R0,#0x4C]
5AF74E:  VSTR            S11, [R0,#0x50]
5AF752:  VSTR            S7, [R0,#0x54]
5AF756:  VSTR            S5, [R0,#0x58]
5AF75A:  VSTR            S10, [R0,#0x5C]
5AF75E:  LDR             R0, =(gOccluderCoors_ptr - 0x5AF764)
5AF760:  ADD             R0, PC; gOccluderCoors_ptr
5AF762:  LDR.W           R10, [R0]; gOccluderCoors
5AF766:  LDR             R0, =(TheCamera_ptr - 0x5AF76C)
5AF768:  ADD             R0, PC; TheCamera_ptr
5AF76A:  LDR             R0, [R0]; TheCamera
5AF76C:  ADDW            R6, R0, #0x98C
5AF770:  LDR             R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF776)
5AF772:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF774:  LDR.W           R11, [R0]; gOccluderCoorsOnScreen
5AF778:  LDR             R0, =(RsGlobal_ptr - 0x5AF77E)
5AF77A:  ADD             R0, PC; RsGlobal_ptr
5AF77C:  LDR.W           R8, [R0]; RsGlobal
5AF780:  LDR             R0, =(gOccluderCoorsOnScreen_ptr - 0x5AF786)
5AF782:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AF784:  LDR.W           R9, [R0]; gOccluderCoorsOnScreen
5AF788:  ADD.W           R0, R10, R4
5AF78C:  ADD             R2, SP, #0x268+var_258
5AF78E:  MOV             R1, R6
5AF790:  VLDR            D16, [R0]
5AF794:  LDR             R0, [R0,#8]
5AF796:  STR             R0, [SP,#0x268+var_250]
5AF798:  ADD             R0, SP, #0x268+var_248
5AF79A:  VSTR            D16, [SP,#0x268+var_258]
5AF79E:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AF7A2:  VLDR            D16, [SP,#0x268+var_248]
5AF7A6:  ADD.W           R1, R11, R4
5AF7AA:  LDR             R0, [SP,#0x268+var_240]
5AF7AC:  STR             R0, [R1,#8]
5AF7AE:  VSTR            D16, [R1]
5AF7B2:  VLDR            S0, [R1,#8]
5AF7B6:  VCMPE.F32       S0, S16
5AF7BA:  VMRS            APSR_nzcv, FPSCR
5AF7BE:  BLE             loc_5AF7FC
5AF7C0:  VDIV.F32        S0, S16, S0
5AF7C4:  ADD.W           R0, R9, R4
5AF7C8:  VLDR            S2, [R8,#4]
5AF7CC:  VCVT.F32.S32    S2, S2
5AF7D0:  VLDR            S4, [R0]
5AF7D4:  VLDR            S6, [R0,#4]
5AF7D8:  VMUL.F32        S2, S0, S2
5AF7DC:  VMUL.F32        S2, S4, S2
5AF7E0:  VSTR            S2, [R0]
5AF7E4:  VLDR            S2, [R8,#8]
5AF7E8:  VCVT.F32.S32    S2, S2
5AF7EC:  VMUL.F32        S0, S0, S2
5AF7F0:  VMUL.F32        S0, S6, S0
5AF7F4:  VSTR            S0, [R0,#4]
5AF7F8:  MOVS            R0, #1
5AF7FA:  B               loc_5AF7FE
5AF7FC:  MOVS            R0, #0; this
5AF7FE:  ADDS            R4, #0xC
5AF800:  STRB.W          R0, [R5],#1
5AF804:  CMP             R4, #0x60 ; '`'
5AF806:  BNE             loc_5AF788
5AF808:  LDRB.W          R4, [R7,#var_92]
5AF80C:  LDRB.W          R9, [R7,#var_90]
5AF810:  LDR             R6, [SP,#0x268+var_25C]
5AF812:  CMP             R4, R9
5AF814:  BEQ             loc_5AF824
5AF816:  MOVS            R1, #0; int
5AF818:  MOVS            R2, #4; int
5AF81A:  MOV             R3, R6; CActiveOccluder *
5AF81C:  MOVS            R5, #0
5AF81E:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF822:  CBNZ            R0, loc_5AF850
5AF824:  LDRB.W          R8, [R7,#var_8F]
5AF828:  CMP             R4, R8
5AF82A:  BEQ             loc_5AF83C
5AF82C:  MOVS            R1, #2; int
5AF82E:  MOVS            R2, #6; int
5AF830:  MOV             R3, R6; CActiveOccluder *
5AF832:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF836:  CMP             R0, #0
5AF838:  BNE.W           loc_5AF1C4
5AF83C:  LDR             R0, [SP,#0x268+var_260]; this
5AF83E:  CMP             R4, R0
5AF840:  BEQ             loc_5AF87A
5AF842:  MOVS            R1, #0; int
5AF844:  MOVS            R2, #2; int
5AF846:  MOV             R3, R6; CActiveOccluder *
5AF848:  MOVS            R5, #0
5AF84A:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF84E:  CBZ             R0, loc_5AF87A
5AF850:  ADD             R0, SP, #0x268+var_200; this
5AF852:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AF856:  ADD             R0, SP, #0x268+var_1B8; this
5AF858:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AF85C:  ADD             R0, SP, #0x268+var_170; this
5AF85E:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AF862:  ADD             R0, SP, #0x268+var_128; this
5AF864:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5AF868:  MOV             R0, R5
5AF86A:  ADD.W           SP, SP, #0x208
5AF86E:  VPOP            {D8-D15}
5AF872:  ADD             SP, SP, #4
5AF874:  POP.W           {R8-R11}
5AF878:  POP             {R4-R7,PC}
5AF87A:  LDR             R0, [SP,#0x268+var_264]; this
5AF87C:  CMP             R4, R0
5AF87E:  BEQ             loc_5AF890
5AF880:  MOVS            R1, #4; int
5AF882:  MOVS            R2, #6; int
5AF884:  MOV             R3, R6; CActiveOccluder *
5AF886:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF88A:  CMP             R0, #0
5AF88C:  BNE.W           loc_5AF1C4
5AF890:  LDRB.W          R5, [R7,#var_91]
5AF894:  CMP             R5, R9
5AF896:  BEQ             loc_5AF8A8
5AF898:  MOVS            R1, #1; int
5AF89A:  MOVS            R2, #5; int
5AF89C:  MOV             R3, R6; CActiveOccluder *
5AF89E:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF8A2:  CMP             R0, #0
5AF8A4:  BNE.W           loc_5AF1C4
5AF8A8:  CMP             R5, R8
5AF8AA:  BEQ             loc_5AF8BC
5AF8AC:  MOVS            R1, #3; int
5AF8AE:  MOVS            R2, #7; int
5AF8B0:  MOV             R3, R6; CActiveOccluder *
5AF8B2:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF8B6:  CMP             R0, #0
5AF8B8:  BNE.W           loc_5AF1C4
5AF8BC:  LDR             R0, [SP,#0x268+var_260]; this
5AF8BE:  CMP             R5, R0
5AF8C0:  BEQ             loc_5AF8D2
5AF8C2:  MOVS            R1, #1; int
5AF8C4:  MOVS            R2, #3; int
5AF8C6:  MOV             R3, R6; CActiveOccluder *
5AF8C8:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF8CC:  CMP             R0, #0
5AF8CE:  BNE.W           loc_5AF1C4
5AF8D2:  LDR             R0, [SP,#0x268+var_264]; this
5AF8D4:  CMP             R5, R0
5AF8D6:  BEQ             loc_5AF8E8
5AF8D8:  MOVS            R1, #5; int
5AF8DA:  MOVS            R2, #7; int
5AF8DC:  MOV             R3, R6; CActiveOccluder *
5AF8DE:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF8E2:  CMP             R0, #0
5AF8E4:  BNE.W           loc_5AF1C4
5AF8E8:  LDR             R0, [SP,#0x268+var_260]; this
5AF8EA:  CMP             R9, R0
5AF8EC:  BEQ             loc_5AF8FE
5AF8EE:  MOVS            R1, #0; int
5AF8F0:  MOVS            R2, #1; int
5AF8F2:  MOV             R3, R6; CActiveOccluder *
5AF8F4:  MOVS            R5, #0
5AF8F6:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF8FA:  CMP             R0, #0
5AF8FC:  BNE             loc_5AF850
5AF8FE:  LDR             R0, [SP,#0x268+var_260]; this
5AF900:  CMP             R8, R0
5AF902:  BEQ             loc_5AF914
5AF904:  MOVS            R1, #2; int
5AF906:  MOVS            R2, #3; int
5AF908:  MOV             R3, R6; CActiveOccluder *
5AF90A:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF90E:  CMP             R0, #0
5AF910:  BNE.W           loc_5AF1C4
5AF914:  LDR             R0, [SP,#0x268+var_264]; this
5AF916:  CMP             R8, R0
5AF918:  BEQ             loc_5AF92A
5AF91A:  MOVS            R1, #6; int
5AF91C:  MOVS            R2, #7; int
5AF91E:  MOV             R3, R6; CActiveOccluder *
5AF920:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF924:  CMP             R0, #0
5AF926:  BNE.W           loc_5AF1C4
5AF92A:  LDR             R0, [SP,#0x268+var_264]; this
5AF92C:  CMP             R9, R0
5AF92E:  BEQ             loc_5AF940
5AF930:  MOVS            R1, #4; int
5AF932:  MOVS            R2, #5; int
5AF934:  MOV             R3, R6; CActiveOccluder *
5AF936:  BLX.W           j__ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder; COccluder::ProcessLineSegment(int,int,CActiveOccluder *)
5AF93A:  CMP             R0, #0
5AF93C:  BNE.W           loc_5AF1C4
5AF940:  LDR             R0, =(RsGlobal_ptr - 0x5AF948)
5AF942:  LDR             R1, =(gMinXInOccluder_ptr - 0x5AF94C)
5AF944:  ADD             R0, PC; RsGlobal_ptr
5AF946:  LDR             R2, =(gMaxXInOccluder_ptr - 0x5AF954)
5AF948:  ADD             R1, PC; gMinXInOccluder_ptr
5AF94A:  VLDR            S6, =0.15
5AF94E:  LDR             R0, [R0]; RsGlobal
5AF950:  ADD             R2, PC; gMaxXInOccluder_ptr
5AF952:  VLDR            S0, [R0,#4]
5AF956:  LDR             R0, [R1]; gMinXInOccluder
5AF958:  VCVT.F32.S32    S0, S0
5AF95C:  LDR             R1, [R2]; gMaxXInOccluder
5AF95E:  VLDR            S2, [R0]
5AF962:  VLDR            S4, [R1]
5AF966:  VSUB.F32        S2, S4, S2
5AF96A:  VMUL.F32        S0, S0, S6
5AF96E:  VCMPE.F32       S2, S0
5AF972:  VMRS            APSR_nzcv, FPSCR
5AF976:  BLT.W           loc_5AF1C4
5AF97A:  LDR             R0, =(RsGlobal_ptr - 0x5AF984)
5AF97C:  MOVS            R5, #0
5AF97E:  LDR             R1, =(gMinYInOccluder_ptr - 0x5AF988)
5AF980:  ADD             R0, PC; RsGlobal_ptr
5AF982:  LDR             R2, =(gMaxYInOccluder_ptr - 0x5AF990)
5AF984:  ADD             R1, PC; gMinYInOccluder_ptr
5AF986:  VLDR            S6, =0.1
5AF98A:  LDR             R0, [R0]; RsGlobal
5AF98C:  ADD             R2, PC; gMaxYInOccluder_ptr
5AF98E:  VLDR            S0, [R0,#8]
5AF992:  LDR             R0, [R1]; gMinYInOccluder
5AF994:  VCVT.F32.S32    S0, S0
5AF998:  LDR             R1, [R2]; gMaxYInOccluder
5AF99A:  VLDR            S2, [R0]
5AF99E:  VLDR            S4, [R1]
5AF9A2:  VSUB.F32        S2, S4, S2
5AF9A6:  VMUL.F32        S0, S0, S6
5AF9AA:  VCMPE.F32       S2, S0
5AF9AE:  VMRS            APSR_nzcv, FPSCR
5AF9B2:  BLT.W           loc_5AF850
5AF9B6:  ADD.W           R10, SP, #0x268+var_E0
5AF9BA:  SUB.W           R9, R7, #-var_92
5AF9BE:  ADD.W           R8, SP, #0x268+var_248
5AF9C2:  STRB.W          R5, [R6,#0x7B]
5AF9C6:  MOVS            R5, #1
5AF9C8:  LSLS            R0, R4, #0x18
5AF9CA:  BEQ             loc_5AFA68
5AF9CC:  LDR.W           R0, [R10,#8]
5AF9D0:  VLDR            D16, [R10]
5AF9D4:  STR             R0, [SP,#0x268+var_240]
5AF9D6:  MOV             R0, R8; this
5AF9D8:  VLDR            S16, [SP,#0x268+var_240]
5AF9DC:  VSTR            D16, [SP,#0x268+var_248]
5AF9E0:  VLDR            S18, [SP,#0x268+var_84]
5AF9E4:  VLDR            S20, [SP,#0x268+var_248]
5AF9E8:  VLDR            S22, [SP,#0x268+var_248+4]
5AF9EC:  VLDR            S24, [SP,#0x268+var_8C]
5AF9F0:  VLDR            S26, [SP,#0x268+var_88]
5AF9F4:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5AF9F8:  LDRSB.W         R0, [R6,#0x7B]
5AF9FC:  VADD.F32        S0, S24, S20
5AFA00:  VADD.F32        S2, S26, S22
5AFA04:  VLDR            D16, [SP,#0x268+var_248]
5AFA08:  LDR             R1, [SP,#0x268+var_240]
5AFA0A:  VADD.F32        S10, S18, S16
5AFA0E:  ADD.W           R0, R0, R0,LSL#1
5AFA12:  ADD.W           R0, R6, R0,LSL#2
5AFA16:  STR.W           R1, [R0,#0x84]
5AFA1A:  VSTR            D16, [R0,#0x7C]
5AFA1E:  VLDR            S4, [SP,#0x268+var_248]
5AFA22:  VLDR            S6, [SP,#0x268+var_248+4]
5AFA26:  VMUL.F32        S0, S0, S4
5AFA2A:  VLDR            S8, [SP,#0x268+var_240]
5AFA2E:  VMUL.F32        S2, S2, S6
5AFA32:  LDRSB.W         R0, [R6,#0x7B]
5AFA36:  VMUL.F32        S4, S10, S8
5AFA3A:  ADD.W           R0, R6, R0,LSL#2
5AFA3E:  VADD.F32        S0, S0, S2
5AFA42:  VADD.F32        S0, S0, S4
5AFA46:  VSTR            S0, [R0,#0xA0]
5AFA4A:  LDRB.W          R0, [R6,#0x7B]
5AFA4E:  ADDS            R0, #1
5AFA50:  STRB.W          R0, [R6,#0x7B]
5AFA54:  CMP             R5, #6
5AFA56:  BEQ             loc_5AFA6C
5AFA58:  ADDS            R0, R5, #1
5AFA5A:  LDRB.W          R4, [R9,R5]
5AFA5E:  ADD.W           R10, R10, #0xC
5AFA62:  MOV             R5, R0
5AFA64:  LSLS            R0, R4, #0x18
5AFA66:  BNE             loc_5AF9CC
5AFA68:  CMP             R5, #6
5AFA6A:  BNE             loc_5AFA58
5AFA6C:  MOVS            R5, #1
5AFA6E:  B               loc_5AF850
