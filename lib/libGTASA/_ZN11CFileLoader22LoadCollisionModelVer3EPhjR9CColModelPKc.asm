; =========================================================
; Game Engine Function: _ZN11CFileLoader22LoadCollisionModelVer3EPhjR9CColModelPKc
; Address            : 0x3EFBE8 - 0x3EFFF4
; =========================================================

3EFBE8:  PUSH            {R4-R7,LR}
3EFBEA:  ADD             R7, SP, #0xC
3EFBEC:  PUSH.W          {R8-R10}
3EFBF0:  SUB             SP, SP, #0x58
3EFBF2:  MOV             R6, SP
3EFBF4:  MOV             R8, R0
3EFBF6:  MOV             R0, R6; this
3EFBF8:  MOV             R10, R2
3EFBFA:  MOV             R9, R1
3EFBFC:  BLX             j__ZN12CBoundingBoxC2Ev; CBoundingBox::CBoundingBox(void)
3EFC00:  MOV             R1, R8; void *
3EFC02:  MOVS            R2, #0x58 ; 'X'; size_t
3EFC04:  BLX             memcpy_1
3EFC08:  LDRB.W          R5, [SP,#0x70+var_40]
3EFC0C:  AND.W           R4, R5, #1
3EFC10:  CMP             R4, R4
3EFC12:  MOV             R1, R5
3EFC14:  BEQ             loc_3EFC2C
3EFC16:  LDR.W           R1, =(aCoreFileloader - 0x3EFC26); "../Core/FileLoader.cpp"
3EFC1A:  ADR.W           R0, aBitfieldErrorS_1; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFC1E:  MOVW            R2, #0x462; int
3EFC22:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EFC24:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EFC28:  LDRB.W          R1, [SP,#0x70+var_40]
3EFC2C:  AND.W           R0, R1, #0xFE
3EFC30:  ORRS            R0, R4
3EFC32:  STRB.W          R0, [SP,#0x70+var_40]
3EFC36:  UBFX.W          R4, R5, #1, #1
3EFC3A:  UBFX.W          R1, R1, #1, #1
3EFC3E:  CMP             R4, R1
3EFC40:  BEQ             loc_3EFC58
3EFC42:  LDR.W           R1, =(aCoreFileloader - 0x3EFC52); "../Core/FileLoader.cpp"
3EFC46:  ADR.W           R0, aBitfieldErrorS_2; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFC4A:  MOVW            R2, #0x463; int
3EFC4E:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EFC50:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EFC54:  LDRB.W          R0, [SP,#0x70+var_40]
3EFC58:  AND.W           R1, R0, #0xFD
3EFC5C:  ORR.W           R1, R1, R4,LSL#1
3EFC60:  STRB.W          R1, [SP,#0x70+var_40]
3EFC64:  UBFX.W          R4, R5, #2, #1
3EFC68:  UBFX.W          R0, R0, #2, #1
3EFC6C:  CMP             R4, R0
3EFC6E:  BEQ             loc_3EFC88
3EFC70:  LDR.W           R0, =(aBitfieldErrorS_4 - 0x3EFC80); "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFC74:  MOVW            R2, #0x464; int
3EFC78:  LDR.W           R1, =(aCoreFileloader - 0x3EFC82); "../Core/FileLoader.cpp"
3EFC7C:  ADD             R0, PC; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFC7E:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EFC80:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EFC84:  LDRB.W          R1, [SP,#0x70+var_40]
3EFC88:  AND.W           R0, R1, #0xFB
3EFC8C:  ORR.W           R2, R0, R4,LSL#2
3EFC90:  STRB.W          R2, [SP,#0x70+var_40]
3EFC94:  UBFX.W          R4, R5, #3, #1
3EFC98:  UBFX.W          R0, R1, #3, #1
3EFC9C:  CMP             R4, R0
3EFC9E:  BEQ             loc_3EFCB8
3EFCA0:  LDR.W           R0, =(aBitfieldErrorS_5 - 0x3EFCB0); "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFCA4:  MOVW            R2, #0x465; int
3EFCA8:  LDR.W           R1, =(aCoreFileloader - 0x3EFCB2); "../Core/FileLoader.cpp"
3EFCAC:  ADD             R0, PC; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFCAE:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EFCB0:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EFCB4:  LDRB.W          R2, [SP,#0x70+var_40]
3EFCB8:  AND.W           R0, R2, #0xF7
3EFCBC:  ORR.W           R0, R0, R4,LSL#3
3EFCC0:  STRB.W          R0, [SP,#0x70+var_40]
3EFCC4:  UBFX.W          R5, R5, #4, #1
3EFCC8:  UBFX.W          R1, R2, #4, #1
3EFCCC:  CMP             R5, R1
3EFCCE:  BEQ             loc_3EFCE4
3EFCD0:  LDR             R0, =(aBitfieldErrorS_6 - 0x3EFCDC); "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFCD2:  MOVW            R2, #0x466; int
3EFCD6:  LDR             R1, =(aCoreFileloader - 0x3EFCDE); "../Core/FileLoader.cpp"
3EFCD8:  ADD             R0, PC; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EFCDA:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EFCDC:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EFCE0:  LDRB.W          R0, [SP,#0x70+var_40]
3EFCE4:  ADD.W           R1, R6, #0x18
3EFCE8:  ADD.W           R2, R10, #0x18
3EFCEC:  VLD1.64         {D16-D17}, [R1]
3EFCF0:  AND.W           R1, R0, #0xEF
3EFCF4:  ORR.W           R1, R1, R5,LSL#4
3EFCF8:  STRB.W          R1, [SP,#0x70+var_40]
3EFCFC:  LDRB.W          R1, [R10,#0x29]
3EFD00:  VST1.32         {D16-D17}, [R2]
3EFD04:  AND.W           R1, R1, #0xFE; unsigned int
3EFD08:  VLD1.32         {D16-D17}, [R6]!
3EFD0C:  UBFX.W          R0, R0, #1, #1
3EFD10:  ORRS            R0, R1
3EFD12:  VLDR            D18, [R6]
3EFD16:  SUBS.W          R6, R9, #0x58 ; 'X'
3EFD1A:  STRB.W          R0, [R10,#0x29]
3EFD1E:  MOV             R0, R10
3EFD20:  VST1.32         {D16-D17}, [R0]!
3EFD24:  VSTR            D18, [R0]
3EFD28:  BEQ.W           loc_3EFFEC
3EFD2C:  SUB.W           R0, R9, #0x24 ; '$'; byte_count
3EFD30:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EFD34:  MOV             R9, R0
3EFD36:  ADD.W           R1, R8, #0x58 ; 'X'; void *
3EFD3A:  ADD.W           R0, R9, #0x34 ; '4'; void *
3EFD3E:  MOV             R2, R6; size_t
3EFD40:  STR.W           R9, [R10,#0x2C]
3EFD44:  BLX             memcpy_1
3EFD48:  LDR.W           R0, [R10,#0x2C]
3EFD4C:  MOVS            R3, #2
3EFD4E:  LDRH.W          R1, [SP,#0x70+var_48]
3EFD52:  SUB.W           R8, R9, #0x40 ; '@'
3EFD56:  STRH            R1, [R0]
3EFD58:  LDR.W           R0, [R10,#0x2C]
3EFD5C:  LDRH.W          R1, [SP,#0x70+var_46]
3EFD60:  STRH            R1, [R0,#2]
3EFD62:  LDR.W           R0, [R10,#0x2C]
3EFD66:  LDRB.W          R1, [SP,#0x70+var_42]
3EFD6A:  STRB            R1, [R0,#6]
3EFD6C:  LDR.W           R0, [R10,#0x2C]
3EFD70:  LDRH.W          R1, [SP,#0x70+var_44]
3EFD74:  STRH            R1, [R0,#4]
3EFD76:  LDR.W           R0, [R10,#0x2C]
3EFD7A:  LDRB            R1, [R0,#7]
3EFD7C:  AND.W           R1, R1, #0xFE
3EFD80:  STRB            R1, [R0,#7]
3EFD82:  LDR.W           R0, [R10,#0x2C]
3EFD86:  LDRB.W          R1, [SP,#0x70+var_40]
3EFD8A:  LDRB            R2, [R0,#7]
3EFD8C:  AND.W           R1, R3, R1,LSR#2
3EFD90:  AND.W           R2, R2, #0xFD
3EFD94:  ORRS            R1, R2
3EFD96:  STRB            R1, [R0,#7]
3EFD98:  LDR.W           R0, [R10,#0x2C]
3EFD9C:  LDR             R1, [SP,#0x70+var_24]
3EFD9E:  STR             R1, [R0,#0x20]
3EFDA0:  LDR             R1, [SP,#0x70+var_3C]
3EFDA2:  LDR.W           R0, [R10,#0x2C]
3EFDA6:  CMP             R1, #0
3EFDA8:  IT NE
3EFDAA:  ADDNE           R1, R8
3EFDAC:  STR             R1, [R0,#8]
3EFDAE:  LDR             R1, [SP,#0x70+var_38]
3EFDB0:  LDR.W           R0, [R10,#0x2C]
3EFDB4:  CMP             R1, #0
3EFDB6:  IT NE
3EFDB8:  ADDNE           R1, R8
3EFDBA:  STR             R1, [R0,#0xC]
3EFDBC:  LDR             R1, [SP,#0x70+var_34]
3EFDBE:  LDR.W           R0, [R10,#0x2C]
3EFDC2:  CMP             R1, #0
3EFDC4:  IT NE
3EFDC6:  ADDNE           R1, R8
3EFDC8:  STR             R1, [R0,#0x10]
3EFDCA:  LDR             R4, [SP,#0x70+var_2C]
3EFDCC:  CBZ             R4, loc_3EFE12
3EFDCE:  LDRSH.W         R6, [SP,#0x70+var_44]
3EFDD2:  LSLS            R0, R6, #4; byte_count
3EFDD4:  BLX             malloc
3EFDD8:  CMP             R6, #1
3EFDDA:  BLT             loc_3EFE14
3EFDDC:  ADD.W           R12, R4, R8
3EFDE0:  MOVS            R2, #0
3EFDE2:  MOVS            R3, #8
3EFDE4:  ADDS            R5, R0, R3
3EFDE6:  LDRH.W          R4, [R12,R2]
3EFDEA:  ADD.W           R1, R0, R2,LSL#1
3EFDEE:  STR.W           R4, [R5,#-8]
3EFDF2:  ADD.W           R5, R12, R2
3EFDF6:  ADDS            R2, #8
3EFDF8:  SUBS            R6, #1
3EFDFA:  LDRH            R4, [R5,#2]
3EFDFC:  STR             R4, [R1,#4]
3EFDFE:  LDRH            R4, [R5,#4]
3EFE00:  STR             R4, [R0,R3]
3EFE02:  ADD.W           R3, R3, #0x10
3EFE06:  LDRB            R4, [R5,#6]
3EFE08:  STRB            R4, [R1,#0xC]
3EFE0A:  LDRB            R5, [R5,#7]
3EFE0C:  STRB            R5, [R1,#0xD]
3EFE0E:  BNE             loc_3EFDE4
3EFE10:  B               loc_3EFE14
3EFE12:  MOVS            R0, #0
3EFE14:  LDR.W           R1, [R10,#0x2C]
3EFE18:  STR             R0, [R1,#0x18]
3EFE1A:  LDR             R4, [SP,#0x70+var_1C]
3EFE1C:  CBZ             R4, loc_3EFE60
3EFE1E:  LDR             R6, [SP,#0x70+var_24]
3EFE20:  LSLS            R0, R6, #4; byte_count
3EFE22:  BLX             malloc
3EFE26:  CMP             R6, #1
3EFE28:  BLT             loc_3EFE62
3EFE2A:  ADD.W           R12, R4, R8
3EFE2E:  MOVS            R2, #0
3EFE30:  MOVS            R3, #8
3EFE32:  ADDS            R4, R0, R3
3EFE34:  LDRH.W          R5, [R12,R2]
3EFE38:  ADD.W           R1, R0, R2,LSL#1
3EFE3C:  STR.W           R5, [R4,#-8]
3EFE40:  ADD.W           R5, R12, R2
3EFE44:  ADDS            R2, #8
3EFE46:  SUBS            R6, #1
3EFE48:  LDRH            R4, [R5,#2]
3EFE4A:  STR             R4, [R1,#4]
3EFE4C:  LDRH            R4, [R5,#4]
3EFE4E:  STR             R4, [R0,R3]
3EFE50:  ADD.W           R3, R3, #0x10
3EFE54:  LDRB            R4, [R5,#6]
3EFE56:  STRB            R4, [R1,#0xC]
3EFE58:  LDRB            R5, [R5,#7]
3EFE5A:  STRB            R5, [R1,#0xD]
3EFE5C:  BNE             loc_3EFE32
3EFE5E:  B               loc_3EFE62
3EFE60:  MOVS            R0, #0
3EFE62:  LDR.W           R1, [R10,#0x2C]
3EFE66:  STR             R0, [R1,#0x2C]
3EFE68:  LDR             R4, [SP,#0x70+var_30]
3EFE6A:  CBZ             R4, loc_3EFEDA
3EFE6C:  LDR.W           R0, [R10,#0x2C]; this
3EFE70:  BLX             j__ZNK14CCollisionData12GetNoVectorsEv; CCollisionData::GetNoVectors(void)
3EFE74:  MOV             R6, R0
3EFE76:  ADD.W           R0, R6, R6,LSL#1
3EFE7A:  LSLS            R0, R0, #2; byte_count
3EFE7C:  BLX             malloc
3EFE80:  CMP             R6, #1
3EFE82:  BLT             loc_3EFEDC
3EFE84:  ADD.W           R1, R4, R8
3EFE88:  ADDS            R2, R0, #4
3EFE8A:  ADDS            R1, #2
3EFE8C:  VLDR            S0, =0.0078125
3EFE90:  LDRSH.W         R3, [R1,#-2]
3EFE94:  SUBS            R6, #1
3EFE96:  VMOV            S2, R3
3EFE9A:  VCVT.F32.S32    S2, S2
3EFE9E:  VMUL.F32        S2, S2, S0
3EFEA2:  VSTR            S2, [R2,#-4]
3EFEA6:  LDRSH.W         R3, [R1]
3EFEAA:  VMOV            S2, R3
3EFEAE:  VCVT.F32.S32    S2, S2
3EFEB2:  VMUL.F32        S2, S2, S0
3EFEB6:  VSTR            S2, [R2]
3EFEBA:  LDRSH.W         R3, [R1,#2]
3EFEBE:  ADD.W           R1, R1, #6
3EFEC2:  VMOV            S2, R3
3EFEC6:  VCVT.F32.S32    S2, S2
3EFECA:  VMUL.F32        S2, S2, S0
3EFECE:  VSTR            S2, [R2,#4]
3EFED2:  ADD.W           R2, R2, #0xC
3EFED6:  BNE             loc_3EFE90
3EFED8:  B               loc_3EFEDC
3EFEDA:  MOVS            R0, #0
3EFEDC:  LDR.W           R1, [R10,#0x2C]
3EFEE0:  STR             R0, [R1,#0x14]
3EFEE2:  LDR             R4, [SP,#0x70+var_20]
3EFEE4:  CBZ             R4, loc_3EFF54
3EFEE6:  LDR.W           R0, [R10,#0x2C]; this
3EFEEA:  BLX             j__ZNK14CCollisionData16GetNoShadVectorsEv; CCollisionData::GetNoShadVectors(void)
3EFEEE:  MOV             R6, R0
3EFEF0:  ADD.W           R0, R6, R6,LSL#1
3EFEF4:  LSLS            R0, R0, #2; byte_count
3EFEF6:  BLX             malloc
3EFEFA:  CMP             R6, #1
3EFEFC:  BLT             loc_3EFF56
3EFEFE:  ADD.W           R1, R4, R8
3EFF02:  ADDS            R2, R0, #4
3EFF04:  ADDS            R1, #2
3EFF06:  VLDR            S0, =0.0078125
3EFF0A:  LDRSH.W         R3, [R1,#-2]
3EFF0E:  SUBS            R6, #1
3EFF10:  VMOV            S2, R3
3EFF14:  VCVT.F32.S32    S2, S2
3EFF18:  VMUL.F32        S2, S2, S0
3EFF1C:  VSTR            S2, [R2,#-4]
3EFF20:  LDRSH.W         R3, [R1]
3EFF24:  VMOV            S2, R3
3EFF28:  VCVT.F32.S32    S2, S2
3EFF2C:  VMUL.F32        S2, S2, S0
3EFF30:  VSTR            S2, [R2]
3EFF34:  LDRSH.W         R3, [R1,#2]
3EFF38:  ADD.W           R1, R1, #6
3EFF3C:  VMOV            S2, R3
3EFF40:  VCVT.F32.S32    S2, S2
3EFF44:  VMUL.F32        S2, S2, S0
3EFF48:  VSTR            S2, [R2,#4]
3EFF4C:  ADD.W           R2, R2, #0xC
3EFF50:  BNE             loc_3EFF0A
3EFF52:  B               loc_3EFF56
3EFF54:  MOVS            R0, #0
3EFF56:  LDR.W           R1, [R10,#0x2C]
3EFF5A:  ADD             R6, SP, #0x70+var_24
3EFF5C:  MOV.W           R12, #0
3EFF60:  STR             R0, [R1,#0x28]
3EFF62:  LDR             R1, [SP,#0x70+var_2C]
3EFF64:  LDR.W           R0, [R10,#0x2C]
3EFF68:  ADD             R1, R9
3EFF6A:  SUBS            R1, #0x44 ; 'D'
3EFF6C:  STR             R1, [R0,#0x30]
3EFF6E:  LDR.W           R0, [R10,#0x2C]
3EFF72:  LDRB            R1, [R0,#7]
3EFF74:  LDM             R6, {R2,R3,R6}
3EFF76:  BIC.W           R5, R1, #4
3EFF7A:  CMP             R2, #0
3EFF7C:  MOV             R2, R5
3EFF7E:  IT GT
3EFF80:  ORRGT.W         R2, R1, #4
3EFF84:  CMP             R3, #0
3EFF86:  IT EQ
3EFF88:  MOVEQ           R2, R5
3EFF8A:  CMP             R6, #0
3EFF8C:  IT EQ
3EFF8E:  MOVEQ           R2, R5
3EFF90:  STRB            R2, [R0,#7]
3EFF92:  MOVS            R2, #0
3EFF94:  LDR.W           R0, [R10,#0x2C]
3EFF98:  LDRB            R1, [R0,#7]
3EFF9A:  LSLS            R1, R1, #0x1D
3EFF9C:  BPL             loc_3EFFD6
3EFF9E:  LDR             R2, [R0,#0x20]
3EFFA0:  CBZ             R2, loc_3EFFD0
3EFFA2:  CMP             R2, #1
3EFFA4:  BLT             loc_3EFFD4
3EFFA6:  LDR             R3, [R0,#0x2C]
3EFFA8:  ADDS            R6, R3, #4
3EFFAA:  MOVS            R3, #0
3EFFAC:  LDR.W           R5, [R6,#-4]
3EFFB0:  LDRD.W          R4, R1, [R6]
3EFFB4:  ADDS            R6, #0x10
3EFFB6:  CMP             R5, R3
3EFFB8:  IT HI
3EFFBA:  MOVHI           R3, R5
3EFFBC:  CMP             R4, R3
3EFFBE:  IT HI
3EFFC0:  MOVHI           R3, R4
3EFFC2:  CMP             R1, R3
3EFFC4:  IT HI
3EFFC6:  MOVHI           R3, R1
3EFFC8:  SUBS            R2, #1
3EFFCA:  BNE             loc_3EFFAC
3EFFCC:  ADDS            R2, R3, #1
3EFFCE:  B               loc_3EFFD6
3EFFD0:  MOVS            R2, #0
3EFFD2:  B               loc_3EFFD6
3EFFD4:  MOVS            R2, #1
3EFFD6:  STR             R2, [R0,#0x24]
3EFFD8:  LDR.W           R0, [R10,#0x2C]
3EFFDC:  STR.W           R12, [R0,#0x1C]
3EFFE0:  LDRB.W          R0, [R10,#0x29]
3EFFE4:  ORR.W           R0, R0, #6
3EFFE8:  STRB.W          R0, [R10,#0x29]
3EFFEC:  ADD             SP, SP, #0x58 ; 'X'
3EFFEE:  POP.W           {R8-R10}
3EFFF2:  POP             {R4-R7,PC}
