; =========================================================
; Game Engine Function: _ZN11CFileLoader22LoadCollisionModelVer2EPhjR9CColModelPKc
; Address            : 0x3EF8E4 - 0x3EFB64
; =========================================================

3EF8E4:  PUSH            {R4-R7,LR}
3EF8E6:  ADD             R7, SP, #0xC
3EF8E8:  PUSH.W          {R8-R11}
3EF8EC:  SUB             SP, SP, #0x4C
3EF8EE:  MOV             R6, SP
3EF8F0:  MOV             R8, R0
3EF8F2:  MOV             R0, R6; this
3EF8F4:  MOV             R11, R2
3EF8F6:  MOV             R5, R1
3EF8F8:  BLX             j__ZN12CBoundingBoxC2Ev; CBoundingBox::CBoundingBox(void)
3EF8FC:  MOV             R1, R8; void *
3EF8FE:  MOVS            R2, #0x4C ; 'L'; size_t
3EF900:  BLX             memcpy_1
3EF904:  LDRB.W          R0, [SP,#0x68+var_38]
3EF908:  UBFX.W          R1, R0, #1, #1
3EF90C:  CMP             R1, R1
3EF90E:  BEQ             loc_3EF922
3EF910:  LDR             R1, =(aCoreFileloader - 0x3EF91C); "../Core/FileLoader.cpp"
3EF912:  ADR             R0, aBitfieldErrorS; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EF914:  MOVW            R2, #0x51F; int
3EF918:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EF91A:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EF91E:  LDRB.W          R0, [SP,#0x68+var_38]
3EF922:  STRB.W          R0, [SP,#0x68+var_38]
3EF926:  UBFX.W          R1, R0, #2, #1
3EF92A:  CMP             R1, R1
3EF92C:  BEQ             loc_3EF940
3EF92E:  LDR             R1, =(aCoreFileloader - 0x3EF93A); "../Core/FileLoader.cpp"
3EF930:  ADR             R0, aBitfieldErrorS_0; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EF932:  MOV.W           R2, #0x520; int
3EF936:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EF938:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EF93C:  LDRB.W          R0, [SP,#0x68+var_38]
3EF940:  STRB.W          R0, [SP,#0x68+var_38]
3EF944:  UBFX.W          R1, R0, #3, #1
3EF948:  CMP             R1, R1
3EF94A:  BEQ             loc_3EF960
3EF94C:  LDR             R0, =(aBitfieldErrorS_3 - 0x3EF958); "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EF94E:  MOVW            R2, #0x521; int
3EF952:  LDR             R1, =(aCoreFileloader - 0x3EF95A); "../Core/FileLoader.cpp"
3EF954:  ADD             R0, PC; "Bitfield Error:(%s %d) GetEndianBitfiel"...
3EF956:  ADD             R1, PC; "../Core/FileLoader.cpp"
3EF958:  BLX             j__Z13BitfieldErrorPcS_i; BitfieldError(char *,char *,int)
3EF95C:  LDRB.W          R0, [SP,#0x68+var_38]
3EF960:  ADD.W           R1, R6, #0x18
3EF964:  ADD.W           R2, R11, #0x18
3EF968:  VLD1.64         {D16-D17}, [R1]
3EF96C:  STRB.W          R0, [SP,#0x68+var_38]
3EF970:  LDRB.W          R1, [R11,#0x29]
3EF974:  VST1.32         {D16-D17}, [R2]
3EF978:  AND.W           R1, R1, #0xFE; unsigned int
3EF97C:  VLD1.32         {D16-D17}, [R6]!
3EF980:  UBFX.W          R0, R0, #1, #1
3EF984:  ORRS            R0, R1
3EF986:  VLDR            D18, [R6]
3EF98A:  SUBS.W          R6, R5, #0x4C ; 'L'
3EF98E:  STRB.W          R0, [R11,#0x29]
3EF992:  MOV             R0, R11
3EF994:  VST1.32         {D16-D17}, [R0]!
3EF998:  VSTR            D18, [R0]
3EF99C:  BEQ.W           loc_3EFB5C
3EF9A0:  SUB.W           R0, R5, #0x18; byte_count
3EF9A4:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EF9A8:  MOV             R9, R0
3EF9AA:  ADD.W           R1, R8, #0x4C ; 'L'; void *
3EF9AE:  ADD.W           R0, R9, #0x34 ; '4'; void *
3EF9B2:  MOV             R2, R6; size_t
3EF9B4:  STR.W           R9, [R11,#0x2C]
3EF9B8:  BLX             memcpy_1
3EF9BC:  LDR.W           R0, [R11,#0x2C]
3EF9C0:  MOVS            R3, #2
3EF9C2:  LDRH.W          R1, [SP,#0x68+var_40]
3EF9C6:  SUB.W           R10, R9, #0x34 ; '4'
3EF9CA:  STRH            R1, [R0]
3EF9CC:  LDR.W           R0, [R11,#0x2C]
3EF9D0:  LDRH.W          R1, [SP,#0x68+var_3E]
3EF9D4:  STRH            R1, [R0,#2]
3EF9D6:  LDR.W           R0, [R11,#0x2C]
3EF9DA:  LDRB.W          R1, [SP,#0x68+var_3A]
3EF9DE:  STRB            R1, [R0,#6]
3EF9E0:  LDR.W           R0, [R11,#0x2C]
3EF9E4:  LDRH.W          R1, [SP,#0x68+var_3C]
3EF9E8:  STRH            R1, [R0,#4]
3EF9EA:  LDR.W           R0, [R11,#0x2C]
3EF9EE:  LDRB            R1, [R0,#7]
3EF9F0:  AND.W           R1, R1, #0xFE
3EF9F4:  STRB            R1, [R0,#7]
3EF9F6:  LDR.W           R0, [R11,#0x2C]
3EF9FA:  LDRB            R1, [R0,#7]
3EF9FC:  AND.W           R1, R1, #0xFB
3EFA00:  STRB            R1, [R0,#7]
3EFA02:  LDR.W           R0, [R11,#0x2C]
3EFA06:  LDRB.W          R1, [SP,#0x68+var_38]
3EFA0A:  LDRB            R2, [R0,#7]
3EFA0C:  AND.W           R1, R3, R1,LSR#2
3EFA10:  AND.W           R2, R2, #0xFD
3EFA14:  ORRS            R1, R2
3EFA16:  STRB            R1, [R0,#7]
3EFA18:  LDR             R1, [SP,#0x68+var_34]
3EFA1A:  LDR.W           R0, [R11,#0x2C]
3EFA1E:  CMP             R1, #0
3EFA20:  IT NE
3EFA22:  ADDNE           R1, R10
3EFA24:  STR             R1, [R0,#8]
3EFA26:  LDR             R1, [SP,#0x68+var_30]
3EFA28:  LDR.W           R0, [R11,#0x2C]
3EFA2C:  CMP             R1, #0
3EFA2E:  IT NE
3EFA30:  ADDNE           R1, R10
3EFA32:  STR             R1, [R0,#0xC]
3EFA34:  LDR             R1, [SP,#0x68+var_2C]
3EFA36:  LDR.W           R0, [R11,#0x2C]
3EFA3A:  CMP             R1, #0
3EFA3C:  IT NE
3EFA3E:  ADDNE           R1, R10
3EFA40:  STR             R1, [R0,#0x10]
3EFA42:  LDR             R5, [SP,#0x68+var_24]
3EFA44:  CBZ             R5, loc_3EFA8A
3EFA46:  LDRSH.W         R6, [SP,#0x68+var_3C]
3EFA4A:  LSLS            R0, R6, #4; byte_count
3EFA4C:  BLX             malloc
3EFA50:  CMP             R6, #1
3EFA52:  BLT             loc_3EFA8C
3EFA54:  ADD.W           R12, R5, R10
3EFA58:  MOVS            R2, #0
3EFA5A:  MOVS            R3, #8
3EFA5C:  ADDS            R4, R0, R3
3EFA5E:  LDRH.W          R5, [R12,R2]
3EFA62:  ADD.W           R1, R0, R2,LSL#1
3EFA66:  STR.W           R5, [R4,#-8]
3EFA6A:  ADD.W           R5, R12, R2
3EFA6E:  ADDS            R2, #8
3EFA70:  SUBS            R6, #1
3EFA72:  LDRH            R4, [R5,#2]
3EFA74:  STR             R4, [R1,#4]
3EFA76:  LDRH            R4, [R5,#4]
3EFA78:  STR             R4, [R0,R3]
3EFA7A:  ADD.W           R3, R3, #0x10
3EFA7E:  LDRB            R4, [R5,#6]
3EFA80:  STRB            R4, [R1,#0xC]
3EFA82:  LDRB            R5, [R5,#7]
3EFA84:  STRB            R5, [R1,#0xD]
3EFA86:  BNE             loc_3EFA5C
3EFA88:  B               loc_3EFA8C
3EFA8A:  MOVS            R0, #0
3EFA8C:  LDR.W           R1, [R11,#0x2C]
3EFA90:  MOV.W           R8, #0
3EFA94:  STR             R0, [R1,#0x18]
3EFA96:  LDR             R5, [SP,#0x68+var_28]
3EFA98:  CBZ             R5, loc_3EFB08
3EFA9A:  LDR.W           R0, [R11,#0x2C]; this
3EFA9E:  BLX             j__ZNK14CCollisionData12GetNoVectorsEv; CCollisionData::GetNoVectors(void)
3EFAA2:  MOV             R6, R0
3EFAA4:  ADD.W           R0, R6, R6,LSL#1
3EFAA8:  LSLS            R0, R0, #2; byte_count
3EFAAA:  BLX             malloc
3EFAAE:  CMP             R6, #1
3EFAB0:  BLT             loc_3EFB0A
3EFAB2:  ADD.W           R1, R5, R10
3EFAB6:  ADDS            R2, R0, #4
3EFAB8:  ADDS            R1, #2
3EFABA:  VLDR            S0, =0.0078125
3EFABE:  LDRSH.W         R3, [R1,#-2]
3EFAC2:  SUBS            R6, #1
3EFAC4:  VMOV            S2, R3
3EFAC8:  VCVT.F32.S32    S2, S2
3EFACC:  VMUL.F32        S2, S2, S0
3EFAD0:  VSTR            S2, [R2,#-4]
3EFAD4:  LDRSH.W         R3, [R1]
3EFAD8:  VMOV            S2, R3
3EFADC:  VCVT.F32.S32    S2, S2
3EFAE0:  VMUL.F32        S2, S2, S0
3EFAE4:  VSTR            S2, [R2]
3EFAE8:  LDRSH.W         R3, [R1,#2]
3EFAEC:  ADD.W           R1, R1, #6
3EFAF0:  VMOV            S2, R3
3EFAF4:  VCVT.F32.S32    S2, S2
3EFAF8:  VMUL.F32        S2, S2, S0
3EFAFC:  VSTR            S2, [R2,#4]
3EFB00:  ADD.W           R2, R2, #0xC
3EFB04:  BNE             loc_3EFABE
3EFB06:  B               loc_3EFB0A
3EFB08:  MOVS            R0, #0
3EFB0A:  LDR.W           R1, [R11,#0x2C]
3EFB0E:  STR             R0, [R1,#0x14]
3EFB10:  LDR             R1, [SP,#0x68+var_24]
3EFB12:  LDR.W           R0, [R11,#0x2C]
3EFB16:  ADD             R1, R9
3EFB18:  SUBS            R1, #0x38 ; '8'
3EFB1A:  STR             R1, [R0,#0x30]
3EFB1C:  LDR.W           R0, [R11,#0x2C]
3EFB20:  STR.W           R8, [R0,#0x1C]
3EFB24:  LDR.W           R0, [R11,#0x2C]
3EFB28:  LDRB            R1, [R0,#7]
3EFB2A:  AND.W           R1, R1, #0xFB
3EFB2E:  STRB            R1, [R0,#7]
3EFB30:  LDR.W           R0, [R11,#0x2C]
3EFB34:  STR.W           R8, [R0,#0x28]
3EFB38:  LDR.W           R0, [R11,#0x2C]
3EFB3C:  STR.W           R8, [R0,#0x2C]
3EFB40:  LDR.W           R0, [R11,#0x2C]
3EFB44:  STR.W           R8, [R0,#0x20]
3EFB48:  LDR.W           R0, [R11,#0x2C]
3EFB4C:  STR.W           R8, [R0,#0x24]
3EFB50:  LDRB.W          R0, [R11,#0x29]
3EFB54:  ORR.W           R0, R0, #6
3EFB58:  STRB.W          R0, [R11,#0x29]
3EFB5C:  ADD             SP, SP, #0x4C ; 'L'
3EFB5E:  POP.W           {R8-R11}
3EFB62:  POP             {R4-R7,PC}
