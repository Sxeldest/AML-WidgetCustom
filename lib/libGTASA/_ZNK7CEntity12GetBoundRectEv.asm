; =========================================================
; Game Engine Function: _ZNK7CEntity12GetBoundRectEv
; Address            : 0x3EBCD0 - 0x3EBF20
; =========================================================

3EBCD0:  PUSH            {R4,R5,R7,LR}
3EBCD2:  ADD             R7, SP, #8
3EBCD4:  VPUSH           {D8-D11}
3EBCD8:  SUB             SP, SP, #0x50
3EBCDA:  MOV             R5, R1
3EBCDC:  MOV             R4, R0
3EBCDE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBCEA)
3EBCE0:  ADR             R1, dword_3EBF20
3EBCE2:  VLD1.64         {D16-D17}, [R1@128]
3EBCE6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBCE8:  VST1.32         {D16-D17}, [R4]
3EBCEC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBCEE:  LDRSH.W         R1, [R5,#0x26]
3EBCF2:  LDR.W           R0, [R0,R1,LSL#2]
3EBCF6:  LDR             R0, [R0,#0x2C]
3EBCF8:  VLDR            D16, [R0]
3EBCFC:  LDR             R1, [R0,#8]
3EBCFE:  STR             R1, [SP,#0x78+var_50]
3EBD00:  VSTR            D16, [SP,#0x78+var_58]
3EBD04:  VLDR            D16, [R0,#0xC]
3EBD08:  LDR             R0, [R0,#0x14]
3EBD0A:  STR             R0, [SP,#0x78+var_60]
3EBD0C:  VSTR            D16, [SP,#0x78+var_68]
3EBD10:  LDR             R1, [R5,#0x14]
3EBD12:  CBZ             R1, loc_3EBD36
3EBD14:  LDR             R0, [SP,#0x78+var_50]
3EBD16:  ADD             R2, SP, #0x78+var_48
3EBD18:  STR             R0, [SP,#0x78+var_40]
3EBD1A:  ADD             R0, SP, #0x78+var_38
3EBD1C:  VLDR            D16, [SP,#0x78+var_58]
3EBD20:  VSTR            D16, [SP,#0x78+var_48]
3EBD24:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBD28:  VLDR            D16, [SP,#0x78+var_38]
3EBD2C:  LDR             R0, [SP,#0x78+var_30]
3EBD2E:  STR             R0, [SP,#0x78+var_70]
3EBD30:  VSTR            D16, [SP,#0x78+var_78]
3EBD34:  B               loc_3EBD40
3EBD36:  ADDS            R1, R5, #4
3EBD38:  ADD             R2, SP, #0x78+var_58
3EBD3A:  MOV             R0, SP
3EBD3C:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EBD40:  VLDR            S2, [SP,#0x78+var_78]
3EBD44:  VLDR            S16, =1000000.0
3EBD48:  VLDR            S18, =-1000000.0
3EBD4C:  VCMPE.F32       S2, S16
3EBD50:  VLDR            S0, [SP,#0x78+var_78+4]
3EBD54:  VMRS            APSR_nzcv, FPSCR
3EBD58:  VCMPE.F32       S2, S18
3EBD5C:  VLDR            S20, =1000000.0
3EBD60:  VLDR            S22, =-1000000.0
3EBD64:  ITT LT
3EBD66:  VSTRLT          S2, [R4]
3EBD6A:  VMOVLT.F32      S16, S2
3EBD6E:  VMRS            APSR_nzcv, FPSCR
3EBD72:  VCMPE.F32       S0, S20
3EBD76:  ITT GT
3EBD78:  VSTRGT          S2, [R4,#8]
3EBD7C:  VMOVGT.F32      S18, S2
3EBD80:  VMRS            APSR_nzcv, FPSCR
3EBD84:  VCMPE.F32       S0, S22
3EBD88:  ITT LT
3EBD8A:  VSTRLT          S0, [R4,#0xC]
3EBD8E:  VMOVLT.F32      S20, S0
3EBD92:  VMRS            APSR_nzcv, FPSCR
3EBD96:  ITT GT
3EBD98:  VSTRGT          S0, [R4,#4]
3EBD9C:  VMOVGT.F32      S22, S0
3EBDA0:  LDR             R1, [R5,#0x14]
3EBDA2:  CBZ             R1, loc_3EBDC6
3EBDA4:  LDR             R0, [SP,#0x78+var_60]
3EBDA6:  ADD             R2, SP, #0x78+var_48
3EBDA8:  STR             R0, [SP,#0x78+var_40]
3EBDAA:  ADD             R0, SP, #0x78+var_38
3EBDAC:  VLDR            D16, [SP,#0x78+var_68]
3EBDB0:  VSTR            D16, [SP,#0x78+var_48]
3EBDB4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBDB8:  VLDR            D16, [SP,#0x78+var_38]
3EBDBC:  LDR             R0, [SP,#0x78+var_30]
3EBDBE:  STR             R0, [SP,#0x78+var_70]
3EBDC0:  VSTR            D16, [SP,#0x78+var_78]
3EBDC4:  B               loc_3EBDD0
3EBDC6:  ADDS            R1, R5, #4
3EBDC8:  ADD             R2, SP, #0x78+var_68
3EBDCA:  MOV             R0, SP
3EBDCC:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EBDD0:  VLDR            S2, [SP,#0x78+var_78]
3EBDD4:  VLDR            S0, [SP,#0x78+var_78+4]
3EBDD8:  VCMPE.F32       S16, S2
3EBDDC:  VMRS            APSR_nzcv, FPSCR
3EBDE0:  VCMPE.F32       S18, S2
3EBDE4:  ITT GT
3EBDE6:  VSTRGT          S2, [R4]
3EBDEA:  VMOVGT.F32      S16, S2
3EBDEE:  VMRS            APSR_nzcv, FPSCR
3EBDF2:  VCMPE.F32       S20, S0
3EBDF6:  ITT LT
3EBDF8:  VSTRLT          S2, [R4,#8]
3EBDFC:  VMOVLT.F32      S18, S2
3EBE00:  VMRS            APSR_nzcv, FPSCR
3EBE04:  VCMPE.F32       S22, S0
3EBE08:  ITT GT
3EBE0A:  VSTRGT          S0, [R4,#0xC]
3EBE0E:  VMOVGT.F32      S20, S0
3EBE12:  VMRS            APSR_nzcv, FPSCR
3EBE16:  ITT LT
3EBE18:  VSTRLT          S0, [R4,#4]
3EBE1C:  VMOVLT.F32      S22, S0
3EBE20:  LDR             R0, [SP,#0x78+var_58]
3EBE22:  LDR             R1, [SP,#0x78+var_68]
3EBE24:  STR             R1, [SP,#0x78+var_58]
3EBE26:  STR             R0, [SP,#0x78+var_68]
3EBE28:  LDR             R1, [R5,#0x14]
3EBE2A:  CBZ             R1, loc_3EBE4E
3EBE2C:  LDR             R0, [SP,#0x78+var_50]
3EBE2E:  ADD             R2, SP, #0x78+var_48
3EBE30:  STR             R0, [SP,#0x78+var_40]
3EBE32:  ADD             R0, SP, #0x78+var_38
3EBE34:  VLDR            D16, [SP,#0x78+var_58]
3EBE38:  VSTR            D16, [SP,#0x78+var_48]
3EBE3C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBE40:  VLDR            D16, [SP,#0x78+var_38]
3EBE44:  LDR             R0, [SP,#0x78+var_30]
3EBE46:  STR             R0, [SP,#0x78+var_70]
3EBE48:  VSTR            D16, [SP,#0x78+var_78]
3EBE4C:  B               loc_3EBE58
3EBE4E:  ADDS            R1, R5, #4
3EBE50:  ADD             R2, SP, #0x78+var_58
3EBE52:  MOV             R0, SP
3EBE54:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EBE58:  VLDR            S2, [SP,#0x78+var_78]
3EBE5C:  VLDR            S0, [SP,#0x78+var_78+4]
3EBE60:  VCMPE.F32       S16, S2
3EBE64:  VMRS            APSR_nzcv, FPSCR
3EBE68:  VCMPE.F32       S18, S2
3EBE6C:  ITT GT
3EBE6E:  VSTRGT          S2, [R4]
3EBE72:  VMOVGT.F32      S16, S2
3EBE76:  VMRS            APSR_nzcv, FPSCR
3EBE7A:  VCMPE.F32       S20, S0
3EBE7E:  ITT LT
3EBE80:  VSTRLT          S2, [R4,#8]
3EBE84:  VMOVLT.F32      S18, S2
3EBE88:  VMRS            APSR_nzcv, FPSCR
3EBE8C:  VCMPE.F32       S22, S0
3EBE90:  ITT GT
3EBE92:  VSTRGT          S0, [R4,#0xC]
3EBE96:  VMOVGT.F32      S20, S0
3EBE9A:  VMRS            APSR_nzcv, FPSCR
3EBE9E:  ITT LT
3EBEA0:  VSTRLT          S0, [R4,#4]
3EBEA4:  VMOVLT.F32      S22, S0
3EBEA8:  LDR             R1, [R5,#0x14]
3EBEAA:  CBZ             R1, loc_3EBECE
3EBEAC:  LDR             R0, [SP,#0x78+var_60]
3EBEAE:  ADD             R2, SP, #0x78+var_48
3EBEB0:  STR             R0, [SP,#0x78+var_40]
3EBEB2:  ADD             R0, SP, #0x78+var_38
3EBEB4:  VLDR            D16, [SP,#0x78+var_68]
3EBEB8:  VSTR            D16, [SP,#0x78+var_48]
3EBEBC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBEC0:  VLDR            D16, [SP,#0x78+var_38]
3EBEC4:  LDR             R0, [SP,#0x78+var_30]
3EBEC6:  STR             R0, [SP,#0x78+var_70]
3EBEC8:  VSTR            D16, [SP,#0x78+var_78]
3EBECC:  B               loc_3EBED8
3EBECE:  ADDS            R1, R5, #4
3EBED0:  ADD             R2, SP, #0x78+var_68
3EBED2:  MOV             R0, SP
3EBED4:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EBED8:  VLDR            S2, [SP,#0x78+var_78]
3EBEDC:  VLDR            S0, [SP,#0x78+var_78+4]
3EBEE0:  VCMPE.F32       S16, S2
3EBEE4:  VMRS            APSR_nzcv, FPSCR
3EBEE8:  VCMPE.F32       S18, S2
3EBEEC:  IT GT
3EBEEE:  VSTRGT          S2, [R4]
3EBEF2:  VMRS            APSR_nzcv, FPSCR
3EBEF6:  VCMPE.F32       S20, S0
3EBEFA:  IT LT
3EBEFC:  VSTRLT          S2, [R4,#8]
3EBF00:  VMRS            APSR_nzcv, FPSCR
3EBF04:  VCMPE.F32       S22, S0
3EBF08:  IT GT
3EBF0A:  VSTRGT          S0, [R4,#0xC]
3EBF0E:  VMRS            APSR_nzcv, FPSCR
3EBF12:  IT LT
3EBF14:  VSTRLT          S0, [R4,#4]
3EBF18:  ADD             SP, SP, #0x50 ; 'P'
3EBF1A:  VPOP            {D8-D11}
3EBF1E:  POP             {R4,R5,R7,PC}
