; =========================================================
; Game Engine Function: _ZN10CCollision18SphereCastVsCachesEP10CColSphereP7CVectoriP14CColCacheEntryPiS5_
; Address            : 0x2DFD04 - 0x2E0038
; =========================================================

2DFD04:  PUSH            {R4-R7,LR}
2DFD06:  ADD             R7, SP, #0xC
2DFD08:  PUSH.W          {R8-R11}
2DFD0C:  SUB             SP, SP, #0x124
2DFD0E:  MOV             R4, R2
2DFD10:  LDR             R2, =(__stack_chk_guard_ptr - 0x2DFD1C)
2DFD12:  ADD.W           R9, SP, #0x140+var_68
2DFD16:  CMP             R4, #1
2DFD18:  ADD             R2, PC; __stack_chk_guard_ptr
2DFD1A:  MOV             R6, R9
2DFD1C:  LDR             R2, [R2]; __stack_chk_guard
2DFD1E:  LDR             R2, [R2]
2DFD20:  STR             R2, [SP,#0x140+var_20]
2DFD22:  MOV             R2, R0
2DFD24:  VLD1.32         {D16-D17}, [R2]!
2DFD28:  LDR             R2, [R2]
2DFD2A:  VST1.64         {D16-D17}, [R6]!
2DFD2E:  STR             R2, [R6]
2DFD30:  VLDR            S0, [R1]
2DFD34:  VLDR            S6, [R0]
2DFD38:  VLDR            S2, [R1,#4]
2DFD3C:  VLDR            S4, [R1,#8]
2DFD40:  VADD.F32        S0, S6, S0
2DFD44:  VLDR            S8, [R0,#4]
2DFD48:  ADD             R1, SP, #0x140+var_38
2DFD4A:  VLDR            S10, [R0,#8]
2DFD4E:  VADD.F32        S2, S8, S2
2DFD52:  VLD1.64         {D16-D17}, [R9]
2DFD56:  VADD.F32        S4, S10, S4
2DFD5A:  VSTR            S2, [SP,#0x140+var_80+4]
2DFD5E:  VSTR            S0, [SP,#0x140+var_80]
2DFD62:  VSTR            S4, [SP,#0x140+var_78]
2DFD66:  LDR             R0, [R0,#0xC]
2DFD68:  VST1.64         {D16-D17}, [R1]!
2DFD6C:  STR             R0, [SP,#0x140+var_74]
2DFD6E:  LDR             R0, [R6]
2DFD70:  STR             R0, [R1]
2DFD72:  ADD             R0, SP, #0x140+var_80
2DFD74:  VLD1.64         {D16-D17}, [R0]!
2DFD78:  ADD             R1, SP, #0x140+var_50
2DFD7A:  VST1.64         {D16-D17}, [R1]!
2DFD7E:  LDR             R0, [R0]
2DFD80:  STR             R0, [R1]
2DFD82:  BLT.W           loc_2E0012
2DFD86:  ADD             R0, SP, #0x140+var_108
2DFD88:  ADD.W           R11, R3, #8
2DFD8C:  ADDS            R0, #0x10
2DFD8E:  STR             R0, [SP,#0x140+var_134]
2DFD90:  ADD             R0, SP, #0x140+var_E8
2DFD92:  ADDS            R0, #0x10
2DFD94:  STR             R0, [SP,#0x140+var_138]
2DFD96:  MOVS            R0, #0
2DFD98:  STR             R0, [SP,#0x140+var_128]
2DFD9A:  MOVS            R0, #0
2DFD9C:  STR             R0, [SP,#0x140+var_130]
2DFD9E:  MOVS            R0, #0
2DFDA0:  STR             R0, [SP,#0x140+var_12C]
2DFDA2:  MOVS            R0, #0
2DFDA4:  STR             R0, [SP,#0x140+var_124]
2DFDA6:  LDR.W           R8, [R11,#-4]
2DFDAA:  CMP.W           R8, #0
2DFDAE:  BEQ             loc_2DFE94
2DFDB0:  ADD             R0, SP, #0x140+var_38
2DFDB2:  ADD             R3, SP, #0x140+var_50
2DFDB4:  VLD1.64         {D16-D17}, [R0]!
2DFDB8:  MOV             R5, R9
2DFDBA:  ADD             R2, SP, #0x140+var_80
2DFDBC:  VST1.64         {D16-D17}, [R9]!
2DFDC0:  VLD1.64         {D16-D17}, [R3]!
2DFDC4:  LDRB.W          R1, [SP,#0x140+var_26]
2DFDC8:  LDRH            R0, [R0]
2DFDCA:  VST1.64         {D16-D17}, [R2]!
2DFDCE:  STRB.W          R1, [SP,#0x140+var_56]
2DFDD2:  STRH.W          R0, [R9]
2DFDD6:  LDRH            R0, [R3]
2DFDD8:  LDRB.W          R1, [SP,#0x140+var_3E]
2DFDDC:  STRH            R0, [R2]
2DFDDE:  STRB.W          R1, [SP,#0x140+var_6E]
2DFDE2:  LDR.W           R10, [R8,#0x14]
2DFDE6:  CMP.W           R10, #0
2DFDEA:  BNE             loc_2DFE02
2DFDEC:  MOV             R0, R8; this
2DFDEE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2DFDF2:  LDR.W           R1, [R8,#0x14]; CMatrix *
2DFDF6:  ADD.W           R0, R8, #4; this
2DFDFA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2DFDFE:  LDR.W           R10, [R8,#0x14]
2DFE02:  MOV             R0, R8; this
2DFE04:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2DFE08:  LDR             R1, [R0,#0x2C]
2DFE0A:  CMP             R1, #0
2DFE0C:  BEQ             loc_2DFED2
2DFE0E:  LDR             R0, [R1,#0x14]
2DFE10:  STR             R0, [SP,#0x140+var_128]
2DFE12:  LDR             R0, [R1,#0x18]
2DFE14:  STR             R0, [SP,#0x140+var_12C]
2DFE16:  MOV             R0, R1
2DFE18:  STR             R0, [SP,#0x140+var_124]
2DFE1A:  LDR             R0, [R1,#0x1C]
2DFE1C:  STR             R0, [SP,#0x140+var_130]
2DFE1E:  MOVS            R0, #0
2DFE20:  STRD.W          R0, R0, [SP,#0x140+var_88]
2DFE24:  MOV             R0, R10; CMatrix *
2DFE26:  ADD.W           R10, SP, #0x140+var_C8
2DFE2A:  MOV             R1, R10; CMatrix *
2DFE2C:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DFE30:  ADD.W           R9, SP, #0x140+var_E8
2DFE34:  ADD             R2, SP, #0x140+var_80; CVector *
2DFE36:  MOV             R1, R5; CVector *
2DFE38:  MOV             R0, R9; this
2DFE3A:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DFE3E:  ADD             R5, SP, #0x140+var_114
2DFE40:  MOV             R1, R10
2DFE42:  MOV             R2, R9
2DFE44:  MOV             R0, R5
2DFE46:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DFE4A:  ADD             R6, SP, #0x140+var_120
2DFE4C:  LDR             R2, [SP,#0x140+var_138]
2DFE4E:  MOV             R1, R10
2DFE50:  MOV             R0, R6
2DFE52:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DFE56:  ADD             R0, SP, #0x140+var_108; this
2DFE58:  MOV             R1, R5; CVector *
2DFE5A:  MOV             R2, R6; CVector *
2DFE5C:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DFE60:  LDR             R0, [SP,#0x140+var_100]
2DFE62:  MOVS            R3, #0
2DFE64:  STR             R0, [SP,#0x140+var_60]
2DFE66:  LDR             R0, [SP,#0x140+var_134]
2DFE68:  VLDR            D16, [SP,#0x140+var_108]
2DFE6C:  LDR             R2, [R7,#arg_4]
2DFE6E:  VSTR            D16, [SP,#0x140+var_68]
2DFE72:  VLDR            D16, [R0]
2DFE76:  LDR             R0, [R0,#8]
2DFE78:  STR             R0, [SP,#0x140+var_78]
2DFE7A:  LDR             R0, [R7,#arg_0]
2DFE7C:  VSTR            D16, [SP,#0x140+var_80]
2DFE80:  LDR             R0, [R0]
2DFE82:  LSLS            R1, R0, #4
2DFE84:  ADD.W           R0, R2, R0,LSL#4
2DFE88:  STRB            R3, [R2,R1]
2DFE8A:  STR.W           R8, [R0,#4]
2DFE8E:  MOV             R0, R10; this
2DFE90:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
2DFE94:  LDRB.W          R0, [R11,#-8]
2DFE98:  CMP             R0, #3
2DFE9A:  BEQ             loc_2DFF12
2DFE9C:  ADD.W           R9, SP, #0x140+var_68
2DFEA0:  CMP             R0, #2
2DFEA2:  BEQ             loc_2DFEDA
2DFEA4:  CMP             R0, #1
2DFEA6:  BNE.W           loc_2E0008
2DFEAA:  LDRH.W          R5, [R11]
2DFEAE:  MOVW            R0, #0x7FFE
2DFEB2:  CMP             R5, R0
2DFEB4:  BHI.W           loc_2DFFBC
2DFEB8:  LDR             R0, [SP,#0x140+var_128]
2DFEBA:  STR             R0, [SP,#0x140+var_140]
2DFEBC:  LDR             R0, [SP,#0x140+var_12C]
2DFEBE:  LDR             R1, [SP,#0x140+var_130]
2DFEC0:  ADD.W           R2, R0, R5,LSL#4
2DFEC4:  ADD.W           R0, R5, R5,LSL#2
2DFEC8:  ADD.W           R3, R1, R0,LSL#2
2DFECC:  ADD             R1, SP, #0x140+var_80
2DFECE:  MOV             R0, R9
2DFED0:  B               loc_2DFFDA
2DFED2:  MOVS            R0, #0
2DFED4:  MOV             R9, R5
2DFED6:  STR             R0, [SP,#0x140+var_124]
2DFED8:  B               loc_2E0008
2DFEDA:  LDR             R0, [SP,#0x140+var_124]
2DFEDC:  LDRH.W          R5, [R11,#2]
2DFEE0:  LDR             R0, [R0,#8]
2DFEE2:  ADD.W           R1, R5, R5,LSL#2
2DFEE6:  ADD.W           R2, R0, R1,LSL#2; CColSphere *
2DFEEA:  ADD             R1, SP, #0x140+var_80; CColSphere *
2DFEEC:  MOV             R0, R9; this
2DFEEE:  BLX             j__ZN10CCollision18SphereCastVsSphereEP10CColSphereS1_S1_; CCollision::SphereCastVsSphere(CColSphere *,CColSphere *,CColSphere *)
2DFEF2:  CMP             R0, #1
2DFEF4:  BNE.W           loc_2E0008
2DFEF8:  LDR             R0, [R7,#arg_0]
2DFEFA:  MOVS            R6, #2
2DFEFC:  LDR             R3, [R7,#arg_4]
2DFEFE:  MOV             R2, R0
2DFF00:  LDR             R0, [R2]
2DFF02:  ADDS            R1, R0, #1
2DFF04:  STR             R1, [R2]
2DFF06:  LSLS            R1, R0, #4
2DFF08:  ADD.W           R0, R3, R0,LSL#4
2DFF0C:  STRB            R6, [R3,R1]
2DFF0E:  STRH            R5, [R0,#0xA]
2DFF10:  B               loc_2DFFFA
2DFF12:  LDR             R0, [SP,#0x140+var_124]
2DFF14:  ADD             R5, SP, #0x140+var_E8
2DFF16:  LDRH.W          R8, [R11,#4]
2DFF1A:  ADD.W           R9, SP, #0x140+var_68
2DFF1E:  VLDR            S2, [SP,#0x140+var_5C]
2DFF22:  ADD             R2, SP, #0x140+var_80; CVector *
2DFF24:  LDR             R0, [R0,#0xC]
2DFF26:  RSB.W           R1, R8, R8,LSL#3
2DFF2A:  ADD.W           R0, R0, R1,LSL#2
2DFF2E:  MOV             R1, R9; CVector *
2DFF30:  VLD1.32         {D16-D17}, [R0]
2DFF34:  ADDS            R0, #0xC
2DFF36:  VLD1.32         {D18-D19}, [R0]
2DFF3A:  ADD.W           R0, R5, #0xC
2DFF3E:  VST1.32         {D18-D19}, [R0]
2DFF42:  MOV             R0, R5
2DFF44:  VST1.64         {D16-D17}, [R0]!
2DFF48:  VLDR            S0, [R0]
2DFF4C:  VLDR            S4, [SP,#0x140+var_E8]
2DFF50:  VLDR            S6, [SP,#0x140+var_E4]
2DFF54:  VADD.F32        S0, S2, S0
2DFF58:  VLDR            S8, [SP,#0x140+var_E0]
2DFF5C:  VSUB.F32        S4, S4, S2
2DFF60:  VLDR            S10, [SP,#0x140+var_DC]
2DFF64:  VSUB.F32        S6, S6, S2
2DFF68:  VLDR            S12, [SP,#0x140+var_D4]
2DFF6C:  VSUB.F32        S8, S8, S2
2DFF70:  VADD.F32        S10, S2, S10
2DFF74:  VADD.F32        S2, S2, S12
2DFF78:  VSTR            S0, [R0]
2DFF7C:  ADD             R0, SP, #0x140+var_C8; this
2DFF7E:  VSTR            S6, [SP,#0x140+var_E4]
2DFF82:  VSTR            S4, [SP,#0x140+var_E8]
2DFF86:  VSTR            S8, [SP,#0x140+var_E0]
2DFF8A:  VSTR            S10, [SP,#0x140+var_DC]
2DFF8E:  VSTR            S2, [SP,#0x140+var_D4]
2DFF92:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DFF96:  MOV             R1, R5; CColLine *
2DFF98:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DFF9C:  CMP             R0, #1
2DFF9E:  BNE             loc_2E0008
2DFFA0:  LDR             R0, [R7,#arg_0]
2DFFA2:  MOVS            R6, #3
2DFFA4:  LDR             R3, [R7,#arg_4]
2DFFA6:  MOV             R2, R0
2DFFA8:  LDR             R0, [R2]
2DFFAA:  ADDS            R1, R0, #1
2DFFAC:  STR             R1, [R2]
2DFFAE:  LSLS            R1, R0, #4
2DFFB0:  ADD.W           R0, R3, R0,LSL#4
2DFFB4:  STRB            R6, [R3,R1]
2DFFB6:  STRH.W          R8, [R0,#0xC]
2DFFBA:  B               loc_2DFFFA
2DFFBC:  LDR             R0, [SP,#0x140+var_128]
2DFFBE:  STR             R0, [SP,#0x140+var_140]
2DFFC0:  MOVW            R0, #0xFFFF
2DFFC4:  EORS            R0, R5
2DFFC6:  LDR             R1, [SP,#0x140+var_12C]
2DFFC8:  ADD.W           R2, R1, R0,LSL#4
2DFFCC:  ADD.W           R0, R0, R0,LSL#2
2DFFD0:  LDR             R1, [SP,#0x140+var_130]
2DFFD2:  ADD.W           R3, R1, R0,LSL#2
2DFFD6:  ADD             R0, SP, #0x140+var_80
2DFFD8:  MOV             R1, R9
2DFFDA:  BLX             j__ZN10CCollision22SphereCastVersusVsPolyEP10CColSphereS1_P12CColTriangleP17CColTrianglePlaneP7CVector; CCollision::SphereCastVersusVsPoly(CColSphere *,CColSphere *,CColTriangle *,CColTrianglePlane *,CVector *)
2DFFDE:  CMP             R0, #1
2DFFE0:  BNE             loc_2E0008
2DFFE2:  LDR             R0, [R7,#arg_0]
2DFFE4:  MOVS            R6, #1
2DFFE6:  LDR             R3, [R7,#arg_4]
2DFFE8:  MOV             R2, R0
2DFFEA:  LDR             R0, [R2]
2DFFEC:  ADDS            R1, R0, #1
2DFFEE:  STR             R1, [R2]
2DFFF0:  LSLS            R1, R0, #4
2DFFF2:  ADD.W           R0, R3, R0,LSL#4
2DFFF6:  STRB            R6, [R3,R1]
2DFFF8:  STRH            R5, [R0,#8]
2DFFFA:  LDR             R0, [R2]
2DFFFC:  MOVS            R2, #0
2DFFFE:  LSLS            R1, R0, #4
2E0000:  ADD.W           R0, R3, R0,LSL#4
2E0004:  STRB            R2, [R3,R1]
2E0006:  STR             R2, [R0,#4]
2E0008:  ADD.W           R11, R11, #0x10
2E000C:  SUBS            R4, #1
2E000E:  BNE.W           loc_2DFDA6
2E0012:  LDR             R0, [R7,#arg_0]
2E0014:  LDR             R1, [R0]
2E0016:  MOVS            R0, #0
2E0018:  CMP             R1, #0
2E001A:  LDR             R1, =(__stack_chk_guard_ptr - 0x2E0026)
2E001C:  IT GT
2E001E:  MOVGT           R0, #1
2E0020:  LDR             R2, [SP,#0x140+var_20]
2E0022:  ADD             R1, PC; __stack_chk_guard_ptr
2E0024:  LDR             R1, [R1]; __stack_chk_guard
2E0026:  LDR             R1, [R1]
2E0028:  SUBS            R1, R1, R2
2E002A:  ITTT EQ
2E002C:  ADDEQ           SP, SP, #0x124
2E002E:  POPEQ.W         {R8-R11}
2E0032:  POPEQ           {R4-R7,PC}
2E0034:  BLX             __stack_chk_fail
