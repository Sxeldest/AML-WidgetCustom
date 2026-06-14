; =========================================================
; Game Engine Function: _ZN17InteriorManager_c15GetPedsInteriorEP4CPed
; Address            : 0x44C924 - 0x44CAA4
; =========================================================

44C924:  PUSH            {R4-R7,LR}
44C926:  ADD             R7, SP, #0xC
44C928:  PUSH.W          {R8,R9,R11}
44C92C:  SUB             SP, SP, #8
44C92E:  MOV             R4, R1
44C930:  MOVW            R1, #0x428C
44C934:  LDR             R5, [R0,R1]
44C936:  CBNZ            R5, loc_44C942
44C938:  B               loc_44CA6C
44C93A:  LDR             R5, [R5,#4]
44C93C:  CMP             R5, #0
44C93E:  BEQ.W           loc_44CA6C
44C942:  LDRSB.W         R0, [R5,#0x36]
44C946:  CMP             R0, #1
44C948:  BLT             loc_44C93A
44C94A:  ADD.W           R1, R5, #0x38 ; '8'
44C94E:  MOVS            R2, #0
44C950:  LDR.W           R3, [R1,R2,LSL#2]
44C954:  CMP             R3, R4
44C956:  BEQ             loc_44C960
44C958:  ADDS            R2, #1
44C95A:  CMP             R2, R0
44C95C:  BLT             loc_44C950
44C95E:  B               loc_44C93A
44C960:  MOV             R9, R5
44C962:  ADD.W           R8, R4, #4
44C966:  LDR.W           R0, [R9,#0x10]!; int
44C96A:  CBZ             R0, loc_44C98A
44C96C:  LDR             R2, [R4,#0x14]
44C96E:  MOVS            R1, #0
44C970:  STR             R1, [SP,#0x20+var_20]; float
44C972:  MOV             R1, R8
44C974:  CMP             R2, #0
44C976:  MOV.W           R3, #0; int
44C97A:  IT NE
44C97C:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44C980:  MOVS            R2, #0; int
44C982:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44C986:  CMP             R0, #0
44C988:  BNE             loc_44CA66
44C98A:  MOV             R9, R5
44C98C:  LDR.W           R0, [R9,#0x14]!; int
44C990:  CBZ             R0, loc_44C9B0
44C992:  LDR             R2, [R4,#0x14]
44C994:  MOVS            R1, #0
44C996:  STR             R1, [SP,#0x20+var_20]; float
44C998:  MOV             R1, R8
44C99A:  CMP             R2, #0
44C99C:  MOV.W           R3, #0; int
44C9A0:  IT NE
44C9A2:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44C9A6:  MOVS            R2, #0; int
44C9A8:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44C9AC:  CMP             R0, #0
44C9AE:  BNE             loc_44CA66
44C9B0:  MOV             R9, R5
44C9B2:  LDR.W           R0, [R9,#0x18]!; int
44C9B6:  CBZ             R0, loc_44C9D6
44C9B8:  LDR             R2, [R4,#0x14]
44C9BA:  MOVS            R1, #0
44C9BC:  STR             R1, [SP,#0x20+var_20]; float
44C9BE:  MOV             R1, R8
44C9C0:  CMP             R2, #0
44C9C2:  MOV.W           R3, #0; int
44C9C6:  IT NE
44C9C8:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44C9CC:  MOVS            R2, #0; int
44C9CE:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44C9D2:  CMP             R0, #0
44C9D4:  BNE             loc_44CA66
44C9D6:  MOV             R9, R5
44C9D8:  LDR.W           R0, [R9,#0x1C]!; int
44C9DC:  CBZ             R0, loc_44C9FA
44C9DE:  LDR             R2, [R4,#0x14]
44C9E0:  MOVS            R1, #0
44C9E2:  STR             R1, [SP,#0x20+var_20]; float
44C9E4:  MOV             R1, R8
44C9E6:  CMP             R2, #0
44C9E8:  MOV.W           R3, #0; int
44C9EC:  IT NE
44C9EE:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44C9F2:  MOVS            R2, #0; int
44C9F4:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44C9F8:  CBNZ            R0, loc_44CA66
44C9FA:  MOV             R9, R5
44C9FC:  LDR.W           R0, [R9,#0x20]!; int
44CA00:  CBZ             R0, loc_44CA1E
44CA02:  LDR             R2, [R4,#0x14]
44CA04:  MOVS            R1, #0
44CA06:  STR             R1, [SP,#0x20+var_20]; float
44CA08:  MOV             R1, R8
44CA0A:  CMP             R2, #0
44CA0C:  MOV.W           R3, #0; int
44CA10:  IT NE
44CA12:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44CA16:  MOVS            R2, #0; int
44CA18:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CA1C:  CBNZ            R0, loc_44CA66
44CA1E:  MOV             R9, R5
44CA20:  LDR.W           R0, [R9,#0x24]!; int
44CA24:  CBZ             R0, loc_44CA42
44CA26:  LDR             R2, [R4,#0x14]
44CA28:  MOVS            R1, #0
44CA2A:  STR             R1, [SP,#0x20+var_20]; float
44CA2C:  MOV             R1, R8
44CA2E:  CMP             R2, #0
44CA30:  MOV.W           R3, #0; int
44CA34:  IT NE
44CA36:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44CA3A:  MOVS            R2, #0; int
44CA3C:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CA40:  CBNZ            R0, loc_44CA66
44CA42:  MOV             R9, R5
44CA44:  LDR.W           R0, [R9,#0x28]!; int
44CA48:  CBZ             R0, loc_44CA78
44CA4A:  LDR             R2, [R4,#0x14]
44CA4C:  MOVS            R1, #0
44CA4E:  STR             R1, [SP,#0x20+var_20]; float
44CA50:  MOV             R1, R8
44CA52:  CMP             R2, #0
44CA54:  MOV.W           R3, #0; int
44CA58:  IT NE
44CA5A:  ADDNE.W         R1, R2, #0x30 ; '0'; int
44CA5E:  MOVS            R2, #0; int
44CA60:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CA64:  CBZ             R0, loc_44CA78
44CA66:  LDR.W           R6, [R9]
44CA6A:  B               loc_44CA6E
44CA6C:  MOVS            R6, #0
44CA6E:  MOV             R0, R6
44CA70:  ADD             SP, SP, #8
44CA72:  POP.W           {R8,R9,R11}
44CA76:  POP             {R4-R7,PC}
44CA78:  LDR.W           R0, [R5,#0x2C]!; int
44CA7C:  MOVS            R6, #0
44CA7E:  CMP             R0, #0
44CA80:  BEQ             loc_44CA6E
44CA82:  LDR             R1, [R4,#0x14]
44CA84:  MOVS            R2, #0; int
44CA86:  STR             R6, [SP,#0x20+var_20]; float
44CA88:  MOVS            R3, #0; int
44CA8A:  CMP             R1, #0
44CA8C:  IT NE
44CA8E:  ADDNE.W         R8, R1, #0x30 ; '0'
44CA92:  MOV             R1, R8; int
44CA94:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CA98:  CMP             R0, #0
44CA9A:  MOV             R9, R5
44CA9C:  IT NE
44CA9E:  LDRNE.W         R6, [R9]
44CAA2:  B               loc_44CA6E
