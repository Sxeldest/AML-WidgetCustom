; =========================================================
; Game Engine Function: _ZN9COccluder18ProcessLineSegmentEiiP15CActiveOccluder
; Address            : 0x5AFC28 - 0x5B0084
; =========================================================

5AFC28:  PUSH            {R4-R7,LR}
5AFC2A:  ADD             R7, SP, #0xC
5AFC2C:  PUSH.W          {R8-R11}
5AFC30:  SUB             SP, SP, #4
5AFC32:  VPUSH           {D8-D9}
5AFC36:  SUB             SP, SP, #0x28
5AFC38:  LDR.W           R0, =(gOccluderCoorsValid_ptr - 0x5AFC46)
5AFC3C:  MOV             R6, R1
5AFC3E:  MOV             R9, R3
5AFC40:  MOV             R10, R2
5AFC42:  ADD             R0, PC; gOccluderCoorsValid_ptr
5AFC44:  LDR             R0, [R0]; gOccluderCoorsValid
5AFC46:  LDRB            R0, [R0,R6]
5AFC48:  CBZ             R0, loc_5AFC86
5AFC4A:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AFC56)
5AFC4E:  ADD.W           R1, R6, R6,LSL#1
5AFC52:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AFC54:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AFC56:  ADD.W           R0, R0, R1,LSL#2
5AFC5A:  VLDR            D8, [R0]
5AFC5E:  LDR.W           R0, =(gOccluderCoorsValid_ptr - 0x5AFC66)
5AFC62:  ADD             R0, PC; gOccluderCoorsValid_ptr
5AFC64:  LDR             R0, [R0]; gOccluderCoorsValid
5AFC66:  LDRB.W          R0, [R0,R10]
5AFC6A:  CMP             R0, #0
5AFC6C:  BEQ.W           loc_5AFD82
5AFC70:  LDR.W           R0, =(gOccluderCoorsOnScreen_ptr - 0x5AFC7C)
5AFC74:  ADD.W           R1, R10, R10,LSL#1
5AFC78:  ADD             R0, PC; gOccluderCoorsOnScreen_ptr
5AFC7A:  LDR             R0, [R0]; gOccluderCoorsOnScreen
5AFC7C:  ADD.W           R0, R0, R1,LSL#2
5AFC80:  VLDR            D0, [R0]
5AFC84:  B               loc_5AFE62
5AFC86:  LDR.W           R0, =(gOccluderCoorsValid_ptr - 0x5AFC8E)
5AFC8A:  ADD             R0, PC; gOccluderCoorsValid_ptr
5AFC8C:  LDR             R0, [R0]; gOccluderCoorsValid
5AFC8E:  LDRB.W          R0, [R0,R10]
5AFC92:  CMP             R0, #0
5AFC94:  BEQ.W           loc_5AFEFC
5AFC98:  LDR.W           R0, =(gOccluderCoors_ptr - 0x5AFCA4)
5AFC9C:  LDR.W           R1, =(TheCamera_ptr - 0x5AFCA6)
5AFCA0:  ADD             R0, PC; gOccluderCoors_ptr
5AFCA2:  ADD             R1, PC; TheCamera_ptr
5AFCA4:  LDR             R4, [R0]; gOccluderCoors
5AFCA6:  ADD.W           R0, R6, R6,LSL#1
5AFCAA:  LDR             R1, [R1]; TheCamera
5AFCAC:  ADD.W           R5, R4, R0,LSL#2
5AFCB0:  ADD             R0, SP, #0x58+var_40
5AFCB2:  ADDW            R8, R1, #0x98C
5AFCB6:  MOV             R2, R5
5AFCB8:  MOV             R1, R8
5AFCBA:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFCBE:  ADD.W           R0, R10, R10,LSL#1
5AFCC2:  ADD.W           R11, SP, #0x58+var_40
5AFCC6:  MOV             R1, R8
5AFCC8:  VLDR            S16, [SP,#0x58+var_38]
5AFCCC:  ADD.W           R4, R4, R0,LSL#2
5AFCD0:  MOV             R0, R11
5AFCD2:  MOV             R2, R4
5AFCD4:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFCD8:  VLDR            S0, =-1.1
5AFCDC:  ADD             R2, SP, #0x58+var_4C
5AFCDE:  VLDR            S2, [SP,#0x58+var_38]
5AFCE2:  MOV             R0, R11
5AFCE4:  VADD.F32        S4, S16, S0
5AFCE8:  VLDR            S6, [R5,#4]
5AFCEC:  VADD.F32        S0, S2, S0
5AFCF0:  VLDR            S8, [R5,#8]
5AFCF4:  VMOV.F32        S16, #1.0
5AFCF8:  VLDR            S10, [R4]
5AFCFC:  VLDR            S12, [R4,#4]
5AFD00:  MOV             R1, R8
5AFD02:  VLDR            S14, [R4,#8]
5AFD06:  VABS.F32        S2, S4
5AFD0A:  VLDR            S4, [R5]
5AFD0E:  VABS.F32        S0, S0
5AFD12:  VADD.F32        S2, S2, S0
5AFD16:  VDIV.F32        S0, S0, S2
5AFD1A:  VSUB.F32        S2, S16, S0
5AFD1E:  VMUL.F32        S6, S6, S0
5AFD22:  VMUL.F32        S4, S4, S0
5AFD26:  VMUL.F32        S0, S8, S0
5AFD2A:  VMUL.F32        S12, S2, S12
5AFD2E:  VMUL.F32        S10, S10, S2
5AFD32:  VMUL.F32        S2, S2, S14
5AFD36:  VADD.F32        S6, S6, S12
5AFD3A:  VADD.F32        S4, S4, S10
5AFD3E:  VADD.F32        S0, S0, S2
5AFD42:  VSTR            S6, [SP,#0x58+var_48]
5AFD46:  VSTR            S4, [SP,#0x58+var_4C]
5AFD4A:  VSTR            S0, [SP,#0x58+var_44]
5AFD4E:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFD52:  VLD1.32         {D16}, [R11@64]!
5AFD56:  VLDR            S0, [R11]
5AFD5A:  VCMPE.F32       S0, S16
5AFD5E:  VMRS            APSR_nzcv, FPSCR
5AFD62:  BLE.W           loc_5AFEFC
5AFD66:  VDIV.F32        S0, S16, S0
5AFD6A:  LDR             R0, =(RsGlobal_ptr - 0x5AFD70)
5AFD6C:  ADD             R0, PC; RsGlobal_ptr
5AFD6E:  LDR             R0, [R0]; RsGlobal
5AFD70:  VLDR            D17, [R0,#4]
5AFD74:  VCVT.F32.S32    D17, D17
5AFD78:  VMUL.F32        D17, D17, D0[0]
5AFD7C:  VMUL.F32        D8, D16, D17
5AFD80:  B               loc_5AFC5E
5AFD82:  LDR             R0, =(gOccluderCoors_ptr - 0x5AFD8A)
5AFD84:  LDR             R1, =(TheCamera_ptr - 0x5AFD8C)
5AFD86:  ADD             R0, PC; gOccluderCoors_ptr
5AFD88:  ADD             R1, PC; TheCamera_ptr
5AFD8A:  LDR             R4, [R0]; gOccluderCoors
5AFD8C:  ADD.W           R0, R6, R6,LSL#1
5AFD90:  LDR             R1, [R1]; TheCamera
5AFD92:  ADD.W           R5, R4, R0,LSL#2
5AFD96:  ADD             R0, SP, #0x58+var_40
5AFD98:  ADDW            R8, R1, #0x98C
5AFD9C:  MOV             R2, R5
5AFD9E:  MOV             R1, R8
5AFDA0:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFDA4:  ADD.W           R0, R10, R10,LSL#1
5AFDA8:  MOV             R1, R8
5AFDAA:  VLDR            S18, [SP,#0x58+var_38]
5AFDAE:  ADD.W           R6, R4, R0,LSL#2
5AFDB2:  ADD             R4, SP, #0x58+var_40
5AFDB4:  MOV             R0, R4
5AFDB6:  MOV             R2, R6
5AFDB8:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFDBC:  VLDR            S0, =-1.1
5AFDC0:  MOV             R2, SP
5AFDC2:  VLDR            S2, [SP,#0x58+var_38]
5AFDC6:  MOV             R0, R4
5AFDC8:  VADD.F32        S4, S18, S0
5AFDCC:  VLDR            S6, [R5,#4]
5AFDD0:  VADD.F32        S0, S2, S0
5AFDD4:  VLDR            S8, [R5,#8]
5AFDD8:  VMOV.F32        S18, #1.0
5AFDDC:  VLDR            S10, [R6]
5AFDE0:  VLDR            S12, [R6,#4]
5AFDE4:  MOV             R1, R8
5AFDE6:  VLDR            S14, [R6,#8]
5AFDEA:  VABS.F32        S2, S4
5AFDEE:  VLDR            S4, [R5]
5AFDF2:  VABS.F32        S0, S0
5AFDF6:  VADD.F32        S2, S2, S0
5AFDFA:  VDIV.F32        S0, S0, S2
5AFDFE:  VSUB.F32        S2, S18, S0
5AFE02:  VMUL.F32        S6, S6, S0
5AFE06:  VMUL.F32        S4, S4, S0
5AFE0A:  VMUL.F32        S0, S8, S0
5AFE0E:  VMUL.F32        S12, S2, S12
5AFE12:  VMUL.F32        S10, S10, S2
5AFE16:  VMUL.F32        S2, S2, S14
5AFE1A:  VADD.F32        S6, S6, S12
5AFE1E:  VADD.F32        S4, S4, S10
5AFE22:  VADD.F32        S0, S0, S2
5AFE26:  VSTR            S6, [SP,#0x58+var_54]
5AFE2A:  VSTR            S4, [SP,#0x58+var_58]
5AFE2E:  VSTR            S0, [SP,#0x58+var_50]
5AFE32:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AFE36:  VLD1.32         {D16}, [R4@64]!
5AFE3A:  VLDR            S0, [R4]
5AFE3E:  VCMPE.F32       S0, S18
5AFE42:  VMRS            APSR_nzcv, FPSCR
5AFE46:  BLE             loc_5AFEFC
5AFE48:  VDIV.F32        S0, S18, S0
5AFE4C:  LDR             R0, =(RsGlobal_ptr - 0x5AFE52)
5AFE4E:  ADD             R0, PC; RsGlobal_ptr
5AFE50:  LDR             R0, [R0]; RsGlobal
5AFE52:  VLDR            D17, [R0,#4]
5AFE56:  VCVT.F32.S32    D17, D17
5AFE5A:  VMUL.F32        D17, D17, D0[0]
5AFE5E:  VMUL.F32        D0, D16, D17
5AFE62:  LDR             R0, =(gCenterOnScreen_ptr - 0x5AFE72)
5AFE64:  VSUB.F32        S2, S0, S16
5AFE68:  LDR             R1, =(gMaxYInOccluder_ptr - 0x5AFE78)
5AFE6A:  VMOV.F32        S10, S17
5AFE6E:  ADD             R0, PC; gCenterOnScreen_ptr
5AFE70:  LDR             R2, =(gMinXInOccluder_ptr - 0x5AFE7C)
5AFE72:  LDR             R6, =(gMaxXInOccluder_ptr - 0x5AFE7E)
5AFE74:  ADD             R1, PC; gMaxYInOccluder_ptr
5AFE76:  LDR             R0, [R0]; gCenterOnScreen
5AFE78:  ADD             R2, PC; gMinXInOccluder_ptr
5AFE7A:  ADD             R6, PC; gMaxXInOccluder_ptr
5AFE7C:  LDR             R1, [R1]; gMaxYInOccluder
5AFE7E:  LDR             R3, [R2]; gMinXInOccluder
5AFE80:  VLDR            S6, [R0]
5AFE84:  VLDR            S4, [R0,#4]
5AFE88:  VSUB.F32        S6, S6, S16
5AFE8C:  LDR             R0, =(gMinYInOccluder_ptr - 0x5AFE9C)
5AFE8E:  VSUB.F32        S8, S4, S17
5AFE92:  LDR             R2, [R6]; gMaxXInOccluder
5AFE94:  VSUB.F32        S4, S1, S17
5AFE98:  ADD             R0, PC; gMinYInOccluder_ptr
5AFE9A:  VLDR            S14, [R1]
5AFE9E:  LDR             R0, [R0]; gMinYInOccluder
5AFEA0:  VMAX.F32        D17, D7, D5
5AFEA4:  VLDR            S12, [R0]
5AFEA8:  VMUL.F32        S8, S2, S8
5AFEAC:  VMUL.F32        S6, S4, S6
5AFEB0:  VMIN.F32        D16, D6, D5
5AFEB4:  VLDR            S10, [R3]
5AFEB8:  VMIN.F32        D18, D5, D8
5AFEBC:  VSUB.F32        S6, S6, S8
5AFEC0:  VLDR            S8, [R2]
5AFEC4:  VMIN.F32        D6, D18, D0
5AFEC8:  VMAX.F32        D19, D4, D8
5AFECC:  VMOV.F32        S8, S1
5AFED0:  VMAX.F32        D0, D19, D0
5AFED4:  VSTR            S12, [R3]
5AFED8:  VCMPE.F32       S6, #0.0
5AFEDC:  VMRS            APSR_nzcv, FPSCR
5AFEE0:  VMAX.F32        D5, D17, D4
5AFEE4:  VMIN.F32        D4, D16, D4
5AFEE8:  VSTR            S0, [R2]
5AFEEC:  VSTR            S10, [R1]
5AFEF0:  VSTR            S8, [R0]
5AFEF4:  BLT             loc_5AFF00
5AFEF6:  VMOV.F32        S0, S17
5AFEFA:  B               loc_5AFF10
5AFEFC:  MOVS            R0, #1
5AFEFE:  B               loc_5B0076
5AFF00:  VADD.F32        S0, S17, S4
5AFF04:  VADD.F32        S16, S16, S2
5AFF08:  VNEG.F32        S4, S4
5AFF0C:  VNEG.F32        S2, S2
5AFF10:  VMUL.F32        S6, S4, S4
5AFF14:  LDRSB.W         R0, [R9,#0x7A]
5AFF18:  VMUL.F32        S8, S2, S2
5AFF1C:  LDR             R1, =(RsGlobal_ptr - 0x5AFF2E)
5AFF1E:  VCMPE.F32       S16, #0.0
5AFF22:  ADD.W           R0, R0, R0,LSL#2
5AFF26:  VMRS            APSR_nzcv, FPSCR
5AFF2A:  ADD             R1, PC; RsGlobal_ptr
5AFF2C:  ADD.W           R0, R9, R0,LSL#2
5AFF30:  LDR             R1, [R1]; RsGlobal
5AFF32:  VADD.F32        S6, S8, S6
5AFF36:  VSQRT.F32       S6, S6
5AFF3A:  VSTR            S6, [R0,#0x10]
5AFF3E:  LDRSB.W         R0, [R9,#0x7A]
5AFF42:  ADD.W           R0, R0, R0,LSL#2
5AFF46:  ADD.W           R0, R9, R0,LSL#2
5AFF4A:  VLDR            S6, [R0,#0x10]
5AFF4E:  VSTR            S16, [R0]
5AFF52:  VDIV.F32        S2, S2, S6
5AFF56:  LDRSB.W         R0, [R9,#0x7A]
5AFF5A:  ADD.W           R0, R0, R0,LSL#2
5AFF5E:  ADD.W           R0, R9, R0,LSL#2
5AFF62:  VDIV.F32        S4, S4, S6
5AFF66:  VSTR            S0, [R0,#4]
5AFF6A:  LDRSB.W         R0, [R9,#0x7A]
5AFF6E:  ADD.W           R0, R0, R0,LSL#2
5AFF72:  ADD.W           R0, R9, R0,LSL#2
5AFF76:  VSTR            S2, [R0,#8]
5AFF7A:  LDRSB.W         R0, [R9,#0x7A]
5AFF7E:  ADD.W           R0, R0, R0,LSL#2
5AFF82:  ADD.W           R0, R9, R0,LSL#2
5AFF86:  VSTR            S4, [R0,#0xC]
5AFF8A:  VLDR            S6, [R1,#4]
5AFF8E:  VCVT.F32.S32    S6, S6
5AFF92:  ITT GT
5AFF94:  VCMPEGT.F32     S0, #0.0
5AFF98:  VMRSGT          APSR_nzcv, FPSCR
5AFF9C:  BLE             loc_5AFFC0
5AFF9E:  VCMPE.F32       S16, S6
5AFFA2:  VMRS            APSR_nzcv, FPSCR
5AFFA6:  BGE             loc_5AFFC0
5AFFA8:  LDR             R0, =(RsGlobal_ptr - 0x5AFFAE)
5AFFAA:  ADD             R0, PC; RsGlobal_ptr
5AFFAC:  LDR             R0, [R0]; RsGlobal
5AFFAE:  VLDR            S8, [R0,#8]
5AFFB2:  VCVT.F32.S32    S8, S8
5AFFB6:  VCMPE.F32       S0, S8
5AFFBA:  VMRS            APSR_nzcv, FPSCR
5AFFBE:  BLT             loc_5B006A
5AFFC0:  VLDR            S8, =0.0
5AFFC4:  VSUB.F32        S10, S6, S16
5AFFC8:  VSUB.F32        S14, S8, S16
5AFFCC:  VSUB.F32        S12, S8, S0
5AFFD0:  VMUL.F32        S8, S4, S10
5AFFD4:  VMUL.F32        S14, S14, S4
5AFFD8:  VMUL.F32        S10, S12, S2
5AFFDC:  VSUB.F32        S12, S8, S10
5AFFE0:  VSUB.F32        S1, S14, S10
5AFFE4:  VMUL.F32        S10, S1, S12
5AFFE8:  VCMPE.F32       S10, #0.0
5AFFEC:  VMRS            APSR_nzcv, FPSCR
5AFFF0:  BLT             loc_5B006A
5AFFF2:  LDR             R0, =(RsGlobal_ptr - 0x5AFFF8)
5AFFF4:  ADD             R0, PC; RsGlobal_ptr
5AFFF6:  LDR             R0, [R0]; RsGlobal
5AFFF8:  VLDR            S10, [R0,#8]
5AFFFC:  VCVT.F32.S32    S10, S10
5B0000:  VSUB.F32        S3, S10, S0
5B0004:  VMUL.F32        S3, S2, S3
5B0008:  VSUB.F32        S14, S14, S3
5B000C:  VMUL.F32        S1, S1, S14
5B0010:  VCMPE.F32       S1, #0.0
5B0014:  VMRS            APSR_nzcv, FPSCR
5B0018:  BLT             loc_5B006A
5B001A:  VSUB.F32        S8, S8, S3
5B001E:  VMUL.F32        S12, S12, S8
5B0022:  VCMPE.F32       S12, #0.0
5B0026:  VMRS            APSR_nzcv, FPSCR
5B002A:  ITTT GE
5B002C:  VMULGE.F32      S8, S14, S8
5B0030:  VCMPEGE.F32     S8, #0.0
5B0034:  VMRSGE          APSR_nzcv, FPSCR
5B0038:  BLT             loc_5B006A
5B003A:  VMOV.F32        S8, #0.5
5B003E:  MOVS            R0, #0
5B0040:  VMUL.F32        S6, S6, S8
5B0044:  VMUL.F32        S10, S10, S8
5B0048:  VSUB.F32        S6, S6, S16
5B004C:  VSUB.F32        S0, S10, S0
5B0050:  VMUL.F32        S0, S2, S0
5B0054:  VMUL.F32        S2, S4, S6
5B0058:  VSUB.F32        S0, S2, S0
5B005C:  VCMPE.F32       S0, #0.0
5B0060:  VMRS            APSR_nzcv, FPSCR
5B0064:  IT LT
5B0066:  MOVLT           R0, #1
5B0068:  B               loc_5B0076
5B006A:  LDRB.W          R0, [R9,#0x7A]
5B006E:  ADDS            R0, #1
5B0070:  STRB.W          R0, [R9,#0x7A]
5B0074:  MOVS            R0, #0
5B0076:  ADD             SP, SP, #0x28 ; '('
5B0078:  VPOP            {D8-D9}
5B007C:  ADD             SP, SP, #4
5B007E:  POP.W           {R8-R11}
5B0082:  POP             {R4-R7,PC}
