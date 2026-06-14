; =========================================================
; Game Engine Function: _ZN11CAutomobile20SetupSuspensionLinesEv
; Address            : 0x54EBC8 - 0x54F0F8
; =========================================================

54EBC8:  PUSH            {R4-R7,LR}
54EBCA:  ADD             R7, SP, #0xC
54EBCC:  PUSH.W          {R8-R11}
54EBD0:  SUB             SP, SP, #4
54EBD2:  VPUSH           {D8}
54EBD6:  SUB             SP, SP, #0x20
54EBD8:  MOV             R4, R0
54EBDA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x54EBE6)
54EBDE:  LDRSH.W         R1, [R4,#0x26]
54EBE2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
54EBE4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
54EBE6:  LDR.W           R10, [R0,R1,LSL#2]
54EBEA:  MOV             R0, R4; this
54EBEC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
54EBF0:  MOV             R5, R0
54EBF2:  LDR             R6, [R5,#0x2C]
54EBF4:  LDR             R0, [R6,#0x10]
54EBF6:  CBZ             R0, loc_54EBFC
54EBF8:  MOVS            R0, #1
54EBFA:  B               loc_54EC14
54EBFC:  LDRH            R0, [R4,#0x26]
54EBFE:  MOVS            R1, #4
54EC00:  CMP.W           R0, #0x1B0
54EC04:  IT EQ
54EC06:  MOVEQ           R1, #0xC; unsigned int
54EC08:  LSLS            R0, R1, #5; byte_count
54EC0A:  STRB            R1, [R6,#6]
54EC0C:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
54EC10:  STR             R0, [R6,#0x10]
54EC12:  MOVS            R0, #0
54EC14:  VMOV.F32        S16, #-0.5
54EC18:  ADDW            R9, R4, #0x89C
54EC1C:  ADD.W           R8, R10, #0x58 ; 'X'
54EC20:  STR             R0, [SP,#0x48+var_40]
54EC22:  STRD.W          R5, R5, [SP,#0x48+var_48]
54EC26:  MOVS            R5, #0
54EC28:  MOV.W           R11, #0x18
54EC2C:  ADD.W           R0, R10, #0x5C ; '\'
54EC30:  STR             R0, [SP,#0x48+var_3C]
54EC32:  ADD             R2, SP, #0x48+var_38; CVector *
54EC34:  MOV             R0, R10; this
54EC36:  MOV             R1, R5; int
54EC38:  MOVS            R3, #0; bool
54EC3A:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54EC3E:  LDR.W           R0, [R4,#0x5A4]
54EC42:  CMP             R0, #2
54EC44:  BNE             loc_54EC66
54EC46:  VLDR            S0, [SP,#0x48+var_38]
54EC4A:  ADR.W           R0, dword_54F0FC
54EC4E:  VCMPE.F32       S0, #0.0
54EC52:  VMRS            APSR_nzcv, FPSCR
54EC56:  IT GT
54EC58:  ADDGT           R0, #4
54EC5A:  VLDR            S2, [R0]
54EC5E:  VADD.F32        S0, S0, S2
54EC62:  VSTR            S0, [SP,#0x48+var_38]
54EC66:  LDR             R0, [SP,#0x48+var_30]
54EC68:  STR.W           R0, [R9,#-0x50]
54EC6C:  LDR.W           R1, [R4,#0x388]
54EC70:  VMOV            S0, R0
54EC74:  VLDR            S2, [R1,#0xB8]
54EC78:  VADD.F32        S0, S2, S0
54EC7C:  VSTR            S0, [SP,#0x48+var_30]
54EC80:  LDR             R0, [R6,#0x10]
54EC82:  VLDR            D16, [SP,#0x48+var_38]
54EC86:  ADD             R0, R11
54EC88:  LDR             R1, [SP,#0x48+var_30]
54EC8A:  STR.W           R1, [R0,#-0x10]
54EC8E:  VSTR            D16, [R0,#-0x18]
54EC92:  ORR.W           R0, R5, #2
54EC96:  LDR.W           R1, [R4,#0x388]
54EC9A:  ADDS            R5, #1
54EC9C:  UXTH            R0, R0
54EC9E:  CMP             R0, #2
54ECA0:  LDR             R0, [SP,#0x48+var_3C]
54ECA2:  IT EQ
54ECA4:  MOVEQ           R0, R8
54ECA6:  VLDR            S2, [R1,#0xB8]
54ECAA:  VLDR            S0, [R0]
54ECAE:  VLDR            S4, [R1,#0xBC]
54ECB2:  VMUL.F32        S0, S0, S16
54ECB6:  VSUB.F32        S2, S4, S2
54ECBA:  VADD.F32        S0, S2, S0
54ECBE:  VLDR            S2, [SP,#0x48+var_30]
54ECC2:  VADD.F32        S0, S2, S0
54ECC6:  VSTR            S0, [SP,#0x48+var_30]
54ECCA:  LDR             R0, [R6,#0x10]
54ECCC:  LDR             R1, [SP,#0x48+var_30]
54ECCE:  VLDR            D16, [SP,#0x48+var_38]
54ECD2:  STR.W           R1, [R0,R11]
54ECD6:  ADD             R0, R11
54ECD8:  VSTR            D16, [R0,#-8]
54ECDC:  LDR.W           R0, [R4,#0x388]
54ECE0:  VLDR            S0, [R0,#0xB8]
54ECE4:  VLDR            S2, [R0,#0xBC]
54ECE8:  VSUB.F32        S0, S0, S2
54ECEC:  VSTR            S0, [R9,#-0x10]
54ECF0:  LDR             R0, [R6,#0x10]
54ECF2:  ADD             R0, R11
54ECF4:  ADD.W           R11, R11, #0x20 ; ' '
54ECF8:  CMP.W           R11, #0x98
54ECFC:  VLDR            S0, [R0]
54ED00:  VLDR            S2, [R0,#-0x10]
54ED04:  VSUB.F32        S0, S2, S0
54ED08:  VSTM            R9!, {S0}
54ED0C:  BNE             loc_54EC32
54ED0E:  MOV             R0, R4; this
54ED10:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
54ED14:  CMP             R0, #5
54ED16:  ITT NE
54ED18:  MOVNE           R0, R4; this
54ED1A:  BLXNE           j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
54ED1E:  VMOV.F32        S2, #4.0
54ED22:  LDR.W           R1, [R4,#0x388]
54ED26:  VMOV.F32        S0, #1.0
54ED2A:  ADDW            R0, R4, #0x88C
54ED2E:  VMOV.F32        S8, #0.5
54ED32:  MOV             R2, R8
54ED34:  VLDR            S4, [R1,#0xAC]
54ED38:  VLDR            S6, [R0]
54ED3C:  LDR             R0, [R6,#0x10]
54ED3E:  VMUL.F32        S4, S4, S2
54ED42:  VLDR            S10, [R0,#8]
54ED46:  ADDW            R0, R4, #0x8AC
54ED4A:  VDIV.F32        S4, S0, S4
54ED4E:  VSUB.F32        S4, S0, S4
54ED52:  VMUL.F32        S4, S6, S4
54ED56:  VLDR            S6, [R2]
54ED5A:  VMUL.F32        S6, S6, S8
54ED5E:  VSUB.F32        S4, S4, S10
54ED62:  VADD.F32        S4, S6, S4
54ED66:  VSTR            S4, [R0]
54ED6A:  VLDR            S6, [R1,#0xAC]
54ED6E:  ADDW            R1, R4, #0x898
54ED72:  LDR.W           R8, [SP,#0x48+var_3C]
54ED76:  VMUL.F32        S2, S6, S2
54ED7A:  VLDR            S6, [R1]
54ED7E:  LDR             R1, [R6,#0x10]
54ED80:  VLDR            S10, [R1,#0x68]
54ED84:  ADD.W           R1, R4, #0x8B0
54ED88:  VDIV.F32        S2, S0, S2
54ED8C:  VSUB.F32        S2, S0, S2
54ED90:  VMUL.F32        S2, S6, S2
54ED94:  VLDR            S6, [R8]
54ED98:  VMUL.F32        S6, S6, S8
54ED9C:  VSUB.F32        S2, S2, S10
54EDA0:  VADD.F32        S2, S6, S2
54EDA4:  VSTR            S2, [R1]
54EDA8:  ADDW            R1, R4, #0x84C
54EDAC:  VLDR            S2, [R2]
54EDB0:  VMUL.F32        S2, S2, S8
54EDB4:  VSUB.F32        S2, S2, S4
54EDB8:  VSTR            S2, [R1]
54EDBC:  ADD.W           R1, R4, #0x850
54EDC0:  VLDR            S2, [R8]
54EDC4:  VMUL.F32        S2, S2, S8
54EDC8:  VSUB.F32        S2, S2, S4
54EDCC:  VSTR            S2, [R1]
54EDD0:  ADDW            R1, R4, #0x854
54EDD4:  VLDR            S2, [R2]
54EDD8:  MOVW            R2, #0x1B9
54EDDC:  VMUL.F32        S2, S2, S8
54EDE0:  VSUB.F32        S2, S2, S4
54EDE4:  VSTR            S2, [R1]
54EDE8:  ADDW            R1, R4, #0x858
54EDEC:  VLDR            S2, [R8]
54EDF0:  VMUL.F32        S2, S2, S8
54EDF4:  VSUB.F32        S2, S2, S4
54EDF8:  VSTR            S2, [R1]
54EDFC:  LDR             R1, [R6,#0x10]
54EDFE:  LDR             R3, [SP,#0x48+var_48]
54EE00:  VLDR            S4, [R1,#0x18]
54EE04:  VLDR            S2, [R3,#8]
54EE08:  LDR             R1, [SP,#0x48+var_44]
54EE0A:  VCMPE.F32       S4, S2
54EE0E:  VMRS            APSR_nzcv, FPSCR
54EE12:  ITT LT
54EE14:  VSTRLT          S4, [R3,#8]
54EE18:  VMOVLT.F32      S2, S4
54EE1C:  VLDR            S4, [R3]
54EE20:  VLDR            S6, [R3,#4]
54EE24:  VMUL.F32        S2, S2, S2
54EE28:  VLDR            S8, [R3,#0xC]
54EE2C:  VMUL.F32        S4, S4, S4
54EE30:  VLDR            S10, [R3,#0x10]
54EE34:  VMUL.F32        S6, S6, S6
54EE38:  VMUL.F32        S8, S8, S8
54EE3C:  VLDR            S12, [R3,#0x14]
54EE40:  VMUL.F32        S10, S10, S10
54EE44:  VMUL.F32        S12, S12, S12
54EE48:  VADD.F32        S4, S4, S6
54EE4C:  VADD.F32        S8, S8, S10
54EE50:  VADD.F32        S2, S4, S2
54EE54:  VADD.F32        S6, S8, S12
54EE58:  VSQRT.F32       S2, S2
54EE5C:  VSQRT.F32       S4, S6
54EE60:  VCMPE.F32       S2, S4
54EE64:  VMRS            APSR_nzcv, FPSCR
54EE68:  IT LE
54EE6A:  ADDLE           R1, #0xC
54EE6C:  VLDR            S2, [R1]
54EE70:  VLDR            S4, [R1,#4]
54EE74:  VMUL.F32        S2, S2, S2
54EE78:  VLDR            S6, [R1,#8]
54EE7C:  VMUL.F32        S4, S4, S4
54EE80:  VMUL.F32        S6, S6, S6
54EE84:  VADD.F32        S2, S2, S4
54EE88:  VLDR            S4, [R3,#0x24]
54EE8C:  VADD.F32        S2, S2, S6
54EE90:  VSQRT.F32       S2, S2
54EE94:  VCMPE.F32       S4, S2
54EE98:  VMRS            APSR_nzcv, FPSCR
54EE9C:  IT LT
54EE9E:  VSTRLT          S2, [R3,#0x24]
54EEA2:  LDRH            R1, [R4,#0x26]
54EEA4:  CMP             R1, R2
54EEA6:  BNE             loc_54EEDA
54EEA8:  MOV.W           R1, #0x40000000
54EEAC:  STR             R1, [R3,#0x24]
54EEAE:  LDRSH.W         R1, [R6]
54EEB2:  CMP             R1, #1
54EEB4:  BLT             loc_54EEDA
54EEB6:  MOVW            R1, #0x999A
54EEBA:  MOVS            R2, #0
54EEBC:  MOVT            R1, #0x3E99
54EEC0:  SXTH            R5, R2
54EEC2:  LDR             R3, [R6,#8]
54EEC4:  ADD.W           R5, R5, R5,LSL#2
54EEC8:  ADDS            R2, #1
54EECA:  ADD.W           R3, R3, R5,LSL#2
54EECE:  SXTH            R2, R2
54EED0:  STR             R1, [R3,#0xC]
54EED2:  LDRSH.W         R3, [R6]
54EED6:  CMP             R2, R3
54EED8:  BLT             loc_54EEC0
54EEDA:  LDR.W           R1, [R4,#0x388]
54EEDE:  LDRB.W          R1, [R1,#0xCF]
54EEE2:  LSLS            R1, R1, #0x19
54EEE4:  MOV.W           R1, #0
54EEE8:  IT PL
54EEEA:  MOVPL           R1, #1
54EEEC:  LDR             R2, [SP,#0x48+var_40]
54EEEE:  ORRS            R1, R2
54EEF0:  BNE             loc_54EF6E
54EEF2:  LDRH            R1, [R4,#0x26]
54EEF4:  MOVW            R2, #0x23B
54EEF8:  VLDR            S4, =0.12
54EEFC:  VMOV.F32        S2, #0.25
54EF00:  CMP             R1, R2
54EF02:  IT EQ
54EF04:  VMOVEQ.F32      S2, S4
54EF08:  LDRSH.W         R2, [R6]
54EF0C:  CMP             R2, #1
54EF0E:  BLT             loc_54EF6E
54EF10:  VLDR            S4, [R0]
54EF14:  MOVS            R0, #0
54EF16:  MOVS            R1, #0xC
54EF18:  VSUB.F32        S2, S2, S4
54EF1C:  VLDR            S4, =0.4
54EF20:  LDR             R3, [R6,#8]
54EF22:  ADDS            R5, R3, R1
54EF24:  VLDR            S8, [R5,#-4]
54EF28:  VLDR            S6, [R5]
54EF2C:  VSUB.F32        S10, S8, S6
54EF30:  VCMPE.F32       S10, S2
54EF34:  VMRS            APSR_nzcv, FPSCR
54EF38:  BGE             loc_54EF64
54EF3A:  VCMPE.F32       S6, S4
54EF3E:  VMRS            APSR_nzcv, FPSCR
54EF42:  BLE             loc_54EF58
54EF44:  VSUB.F32        S6, S8, S2
54EF48:  VMAX.F32        D3, D3, D2
54EF4C:  VSTR            S6, [R5]
54EF50:  LDR             R3, [R6,#8]
54EF52:  ADDS            R2, R3, R1
54EF54:  VLDR            S6, [R2]
54EF58:  VADD.F32        S6, S2, S6
54EF5C:  ADDS            R2, R3, R1
54EF5E:  VSTR            S6, [R2,#-4]
54EF62:  LDRH            R2, [R6]
54EF64:  ADDS            R1, #0x14
54EF66:  ADDS            R0, #1
54EF68:  SXTH            R3, R2
54EF6A:  CMP             R0, R3
54EF6C:  BLT             loc_54EF20
54EF6E:  LDRH            R0, [R4,#0x26]
54EF70:  CMP.W           R0, #0x1B0
54EF74:  BNE.W           loc_54F0EA
54EF78:  VLDR            S2, =0.2
54EF7C:  MOVS            R0, #0x80
54EF7E:  MOVS            R1, #1
54EF80:  VMOV            S4, R1
54EF84:  ADDS            R1, #1
54EF86:  VCVT.F32.S32    S4, S4
54EF8A:  LDR             R2, [R6,#0x10]
54EF8C:  VLDR            S8, [R2,#0x20]
54EF90:  VLDR            S10, [R2,#0x24]
54EF94:  VLDR            S12, [R2,#0x28]
54EF98:  VLDR            S14, [R2]
54EF9C:  VMUL.F32        S4, S4, S2
54EFA0:  VLDR            S1, [R2,#4]
54EFA4:  VLDR            S3, [R2,#8]
54EFA8:  ADD             R2, R0
54EFAA:  VSUB.F32        S6, S0, S4
54EFAE:  VMUL.F32        S10, S4, S10
54EFB2:  VMUL.F32        S8, S4, S8
54EFB6:  VMUL.F32        S12, S4, S12
54EFBA:  VMUL.F32        S1, S6, S1
54EFBE:  VMUL.F32        S14, S6, S14
54EFC2:  VMUL.F32        S3, S6, S3
54EFC6:  VADD.F32        S10, S1, S10
54EFCA:  VADD.F32        S8, S14, S8
54EFCE:  VADD.F32        S12, S3, S12
54EFD2:  VSTR            S8, [R2]
54EFD6:  VSTR            S10, [R2,#4]
54EFDA:  VSTR            S12, [R2,#8]
54EFDE:  LDR             R2, [R6,#0x10]
54EFE0:  VLDR            S8, [R2,#0x30]
54EFE4:  VLDR            S10, [R2,#0x34]
54EFE8:  VLDR            S14, [R2,#0x10]
54EFEC:  VMUL.F32        S8, S4, S8
54EFF0:  VLDR            S1, [R2,#0x14]
54EFF4:  VMUL.F32        S10, S4, S10
54EFF8:  VLDR            S12, [R2,#0x38]
54EFFC:  VMUL.F32        S14, S6, S14
54F000:  VLDR            S3, [R2,#0x18]
54F004:  VMUL.F32        S1, S6, S1
54F008:  VMUL.F32        S4, S4, S12
54F00C:  ADD             R2, R0
54F00E:  VMUL.F32        S6, S6, S3
54F012:  ADDS            R0, #0x20 ; ' '
54F014:  CMP.W           R0, #0x100
54F018:  VADD.F32        S8, S14, S8
54F01C:  VADD.F32        S10, S1, S10
54F020:  VADD.F32        S4, S6, S4
54F024:  VSTR            S8, [R2,#0x10]
54F028:  VSTR            S10, [R2,#0x14]
54F02C:  VSTR            S4, [R2,#0x18]
54F030:  BNE             loc_54EF80
54F032:  MOV.W           R0, #0x118
54F036:  MOVS            R1, #1
54F038:  VMOV            S4, R1
54F03C:  ADDS            R1, #1
54F03E:  VCVT.F32.S32    S4, S4
54F042:  LDR             R2, [R6,#0x10]
54F044:  VLDR            S8, [R2,#0x60]
54F048:  VLDR            S10, [R2,#0x64]
54F04C:  VLDR            S12, [R2,#0x68]
54F050:  VLDR            S14, [R2,#0x40]
54F054:  VMUL.F32        S4, S4, S2
54F058:  VLDR            S1, [R2,#0x44]
54F05C:  VLDR            S3, [R2,#0x48]
54F060:  ADD             R2, R0
54F062:  VSUB.F32        S6, S0, S4
54F066:  VMUL.F32        S10, S4, S10
54F06A:  VMUL.F32        S8, S4, S8
54F06E:  VMUL.F32        S12, S4, S12
54F072:  VMUL.F32        S1, S6, S1
54F076:  VMUL.F32        S14, S6, S14
54F07A:  VMUL.F32        S3, S6, S3
54F07E:  VADD.F32        S10, S1, S10
54F082:  VADD.F32        S8, S14, S8
54F086:  VADD.F32        S12, S3, S12
54F08A:  VSTR            S8, [R2,#-0x18]
54F08E:  VSTR            S10, [R2,#-0x14]
54F092:  VSTR            S12, [R2,#-0x10]
54F096:  LDR             R2, [R6,#0x10]
54F098:  VLDR            S8, [R2,#0x70]
54F09C:  VLDR            S10, [R2,#0x74]
54F0A0:  VLDR            S14, [R2,#0x50]
54F0A4:  VMUL.F32        S8, S4, S8
54F0A8:  VLDR            S1, [R2,#0x54]
54F0AC:  VMUL.F32        S10, S4, S10
54F0B0:  VLDR            S12, [R2,#0x78]
54F0B4:  VMUL.F32        S14, S6, S14
54F0B8:  VLDR            S3, [R2,#0x58]
54F0BC:  VMUL.F32        S1, S6, S1
54F0C0:  VMUL.F32        S4, S4, S12
54F0C4:  ADD             R2, R0
54F0C6:  VMUL.F32        S6, S6, S3
54F0CA:  ADDS            R0, #0x20 ; ' '
54F0CC:  CMP.W           R0, #0x198
54F0D0:  VADD.F32        S8, S14, S8
54F0D4:  VADD.F32        S10, S1, S10
54F0D8:  VADD.F32        S4, S6, S4
54F0DC:  VSTR            S8, [R2,#-8]
54F0E0:  VSTR            S10, [R2,#-4]
54F0E4:  VSTR            S4, [R2]
54F0E8:  BNE             loc_54F038
54F0EA:  ADD             SP, SP, #0x20 ; ' '
54F0EC:  VPOP            {D8}
54F0F0:  ADD             SP, SP, #4
54F0F2:  POP.W           {R8-R11}
54F0F6:  POP             {R4-R7,PC}
