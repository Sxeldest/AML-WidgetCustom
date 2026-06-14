; =========================================================
; Game Engine Function: _ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h
; Address            : 0x4469D0 - 0x446F4E
; =========================================================

4469D0:  PUSH            {R4-R7,LR}
4469D2:  ADD             R7, SP, #0xC
4469D4:  PUSH.W          {R8-R11}
4469D8:  SUB             SP, SP, #4
4469DA:  VPUSH           {D8}
4469DE:  SUB             SP, SP, #0x1C8
4469E0:  STR             R0, [SP,#0x1F0+var_1DC]
4469E2:  MOV             R11, R1
4469E4:  LDR.W           R0, =(g_furnitureMan_ptr - 0x4469F4)
4469E8:  MOVW            R1, #0x206C
4469EC:  MOV             R4, R3
4469EE:  STR             R2, [SP,#0x1F0+var_1E0]
4469F0:  ADD             R0, PC; g_furnitureMan_ptr
4469F2:  LDR             R0, [R0]; g_furnitureMan
4469F4:  ADD             R0, R1; this
4469F6:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
4469FA:  LDRD.W          R10, R9, [R7,#arg_C]
4469FE:  CMP             R0, #1
446A00:  BLT.W           loc_446F34
446A04:  LDRD.W          R1, R0, [R7,#arg_4]
446A08:  ORR.W           R0, R0, #2
446A0C:  CMP             R0, #3
446A0E:  BNE             loc_446A1A
446A10:  LDRB.W          LR, [R11,#0xD]
446A14:  ADD.W           R0, R11, #0xC
446A18:  B               loc_446A22
446A1A:  LDRB.W          LR, [R11,#0xC]
446A1E:  ADD.W           R0, R11, #0xD
446A22:  LDRB.W          R8, [R0]
446A26:  CMP             R1, #1
446A28:  ITT EQ
446A2A:  LDREQ           R0, [R7,#arg_14]
446A2C:  CMPEQ           R0, #0
446A2E:  BNE             loc_446AAC
446A30:  LDR             R0, [SP,#0x1F0+var_1E0]
446A32:  ORRS            R0, R4
446A34:  CMP             R0, #0
446A36:  BLT.W           loc_446F34
446A3A:  LDR             R0, [SP,#0x1F0+var_1DC]
446A3C:  LDR             R2, [SP,#0x1F0+var_1E0]
446A3E:  LDR             R0, [R0,#0x14]
446A40:  ADD             R2, LR
446A42:  LDRB            R1, [R0,#2]
446A44:  CMP             R2, R1
446A46:  BGT.W           loc_446F34
446A4A:  LDRB            R0, [R0,#3]
446A4C:  ADD.W           R1, R8, R4
446A50:  CMP             R1, R0
446A52:  BGT.W           loc_446F34
446A56:  CMP.W           LR, #0
446A5A:  BEQ             loc_446AAC
446A5C:  LDR             R0, [SP,#0x1F0+var_1E0]
446A5E:  MOV.W           R12, #0
446A62:  LDR             R1, [SP,#0x1F0+var_1DC]
446A64:  LDRB.W          R5, [R11,#0x10]
446A68:  RSB.W           R0, R0, R0,LSL#4
446A6C:  ADD.W           R0, R4, R0,LSL#1
446A70:  ADD             R0, R1
446A72:  ADD.W           R1, R0, #0x68 ; 'h'
446A76:  CMP.W           R8, #0
446A7A:  BEQ             loc_446AA2
446A7C:  MOVS            R3, #0
446A7E:  LDRB            R2, [R1,R3]
446A80:  MOVS            R6, #0
446A82:  MOV             R0, R5
446A84:  CMP             R2, #9
446A86:  IT EQ
446A88:  MOVEQ           R6, #1
446A8A:  CMP             R5, #0
446A8C:  IT NE
446A8E:  MOVNE           R0, #1
446A90:  CMP             R2, #0
446A92:  ITT NE
446A94:  ANDNE           R0, R6
446A96:  CMPNE           R0, #1
446A98:  BNE.W           loc_446F34
446A9C:  ADDS            R3, #1
446A9E:  CMP             R3, R8
446AA0:  BLT             loc_446A7E
446AA2:  ADD.W           R12, R12, #1
446AA6:  ADDS            R1, #0x1E
446AA8:  CMP             R12, LR
446AAA:  BLT             loc_446A76
446AAC:  MOVS            R0, #0
446AAE:  STRD.W          LR, R4, [SP,#0x1F0+var_1EC]
446AB2:  STRD.W          R0, R0, [SP,#0x1F0+var_30]
446AB6:  LDRB.W          R1, [R11,#0x13]
446ABA:  STR.W           R8, [SP,#0x1F0+var_1E4]
446ABE:  CMP             R1, #0
446AC0:  BEQ.W           loc_446BCE
446AC4:  ADD             R4, SP, #0x1F0+var_B8
446AC6:  LDRB.W          R5, [R11,#0xC]
446ACA:  LDRB.W          R6, [R11,#0xD]
446ACE:  STRD.W          R0, R0, [SP,#0x1F0+var_78]
446AD2:  STRD.W          R0, R0, [SP,#0x1F0+var_C0]
446AD6:  STRD.W          R0, R0, [SP,#0x1F0+var_108]
446ADA:  MOV             R0, R4; this
446ADC:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
446AE0:  VMOV            S2, R5
446AE4:  MOV             R0, R4; this
446AE6:  VMOV            S4, R6
446AEA:  MOVS            R3, #0; float
446AEC:  VCVT.F32.U32    S2, S2
446AF0:  VMOV.F32        S0, #0.5
446AF4:  VCVT.F32.U32    S4, S4
446AF8:  VMUL.F32        S2, S2, S0
446AFC:  VMUL.F32        S4, S4, S0
446B00:  VSUB.F32        S2, S0, S2
446B04:  VSUB.F32        S0, S0, S4
446B08:  VMOV            R6, S2
446B0C:  VMOV            R8, S0
446B10:  MOV             R1, R6; float
446B12:  MOV             R2, R8; float
446B14:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
446B18:  ADD.W           R10, SP, #0x1F0+var_100
446B1C:  MOV             R0, R10; this
446B1E:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
446B22:  LDRB.W          R5, [R11,#0x13]
446B26:  BLX             rand
446B2A:  UXTH            R0, R0
446B2C:  VLDR            S2, =0.000015259
446B30:  VMOV            S0, R0
446B34:  LSLS            R0, R5, #1
446B36:  VMOV            S4, R0
446B3A:  VCVT.F32.S32    S0, S0
446B3E:  VCVT.F32.S32    S4, S4
446B42:  VMUL.F32        S0, S0, S2
446B46:  VLDR            S2, =0.017453
446B4A:  VMUL.F32        S0, S0, S4
446B4E:  VCVT.S32.F32    S0, S0
446B52:  VMOV            R0, S0
446B56:  SUBS            R0, R0, R5
446B58:  VMOV            S0, R0
446B5C:  MOV             R0, R10; this
446B5E:  VCVT.F32.S32    S0, S0
446B62:  VMUL.F32        S0, S0, S2
446B66:  VMOV            R1, S0; x
446B6A:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
446B6E:  ADD.W           R9, SP, #0x1F0+var_148
446B72:  MOV             R0, R9; this
446B74:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
446B78:  EOR.W           R2, R8, #0x80000000; float
446B7C:  EOR.W           R1, R6, #0x80000000; float
446B80:  MOV             R0, R9; this
446B82:  MOV.W           R3, #0x80000000; float
446B86:  LDR.W           R8, [SP,#0x1F0+var_1E4]
446B8A:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
446B8E:  ADD             R6, SP, #0x1F0+var_1D8
446B90:  MOV             R1, R9
446B92:  MOV             R2, R10
446B94:  MOV             R0, R6
446B96:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
446B9A:  ADD             R5, SP, #0x1F0+var_190
446B9C:  MOV             R1, R6
446B9E:  MOV             R2, R4
446BA0:  MOV             R0, R5
446BA2:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
446BA6:  ADD             R0, SP, #0x1F0+var_70
446BA8:  MOV             R1, R5
446BAA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
446BAE:  MOV             R0, R5; this
446BB0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446BB4:  MOV             R0, R6; this
446BB6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446BBA:  MOV             R0, R9; this
446BBC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446BC0:  MOV             R0, R10; this
446BC2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446BC6:  MOV             R0, R4; this
446BC8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446BCC:  B               loc_446BD4
446BCE:  ADD             R0, SP, #0x1F0+var_70; this
446BD0:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
446BD4:  LDR             R0, [SP,#0x1F0+var_1DC]
446BD6:  MOVS            R2, #0
446BD8:  MOVS            R6, #0
446BDA:  ADD.W           R1, R0, #0x18
446BDE:  ADD             R0, SP, #0x1F0+var_B8
446BE0:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
446BE4:  ADD.W           R9, SP, #0x1F0+var_100
446BE8:  STRD.W          R6, R6, [SP,#0x1F0+var_C0]
446BEC:  STRD.W          R6, R6, [SP,#0x1F0+var_108]
446BF0:  MOV             R0, R9; this
446BF2:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
446BF6:  LDR             R0, [R7,#arg_8]
446BF8:  VMOV.F32        S16, #0.5
446BFC:  VLDR            S2, =3.1416
446C00:  MOV             R5, R0
446C02:  MOV             R0, R9; this
446C04:  VMOV            S0, R5
446C08:  VCVT.F32.S32    S0, S0
446C0C:  VMUL.F32        S0, S0, S2
446C10:  VMUL.F32        S0, S0, S16
446C14:  VMOV            R1, S0; x
446C18:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
446C1C:  MOV             R0, R5
446C1E:  CMP             R0, #3
446C20:  BEQ             loc_446C3E
446C22:  LDRD.W          R10, R9, [R7,#arg_C]
446C26:  CMP             R0, #2
446C28:  LDRD.W          R1, R5, [SP,#0x1F0+var_1EC]
446C2C:  LDR             R2, [R7,#arg_4]
446C2E:  BEQ             loc_446C4E
446C30:  CMP             R0, #1
446C32:  MOV.W           R0, #0
446C36:  ITT EQ
446C38:  SUBEQ           R6, R1, #1
446C3A:  MOVEQ           R0, #0
446C3C:  B               loc_446C54
446C3E:  LDRD.W          R10, R9, [R7,#arg_C]
446C42:  SUB.W           R0, R8, #1
446C46:  LDR             R5, [SP,#0x1F0+var_1E8]
446C48:  MOVS            R6, #0
446C4A:  LDR             R2, [R7,#arg_4]
446C4C:  B               loc_446C54
446C4E:  SUB.W           R0, R8, #1
446C52:  SUBS            R6, R1, #1
446C54:  SUBS            R1, R2, #1
446C56:  VLDR            S0, [R7,#arg_0]
446C5A:  CMP             R1, #1
446C5C:  BHI             loc_446CC2
446C5E:  LDR             R1, [SP,#0x1F0+var_1DC]
446C60:  VMOV            S8, R5
446C64:  VMOV            S12, R0
446C68:  LDR             R1, [R1,#0x14]
446C6A:  LDRB            R3, [R1,#3]
446C6C:  LDRB            R2, [R1,#2]
446C6E:  LDRB            R1, [R1,#4]
446C70:  NEGS            R3, R3
446C72:  NEGS            R2, R2
446C74:  VMOV            S2, R3
446C78:  NEGS            R1, R1
446C7A:  VMOV            S4, R2
446C7E:  VCVT.F32.S32    S2, S2
446C82:  VMOV            S6, R1
446C86:  VCVT.F32.S32    S4, S4
446C8A:  VCVT.F32.S32    S6, S6
446C8E:  VCVT.F32.S32    S8, S8
446C92:  LDR             R1, [SP,#0x1F0+var_1E0]
446C94:  VMUL.F32        S2, S2, S16
446C98:  VMOV            S10, R1
446C9C:  VMUL.F32        S4, S4, S16
446CA0:  VCVT.F32.S32    S10, S10
446CA4:  VMUL.F32        S6, S6, S16
446CA8:  VCVT.F32.S32    S12, S12
446CAC:  VADD.F32        S2, S2, S8
446CB0:  VMOV            S8, R6
446CB4:  VCVT.F32.S32    S8, S8
446CB8:  VADD.F32        S4, S4, S10
446CBC:  VADD.F32        S0, S6, S0
446CC0:  B               loc_446D26
446CC2:  CMP             R2, #0
446CC4:  BNE             loc_446D5A
446CC6:  LDR             R1, [SP,#0x1F0+var_1DC]
446CC8:  VMOV            S8, R5
446CCC:  VMOV            S12, R0
446CD0:  LDR             R1, [R1,#0x14]
446CD2:  LDRB            R3, [R1,#3]
446CD4:  LDRB            R2, [R1,#2]
446CD6:  NEGS            R3, R3
446CD8:  LDRB            R1, [R1,#4]
446CDA:  NEGS            R2, R2
446CDC:  VMOV            S2, R3
446CE0:  VMOV            S4, R2
446CE4:  VCVT.F32.S32    S2, S2
446CE8:  VMOV            S6, R1
446CEC:  VCVT.F32.S32    S4, S4
446CF0:  VCVT.F32.U32    S6, S6
446CF4:  VCVT.F32.S32    S8, S8
446CF8:  LDR             R1, [SP,#0x1F0+var_1E0]
446CFA:  VMUL.F32        S2, S2, S16
446CFE:  VMOV            S10, R1
446D02:  VMUL.F32        S4, S4, S16
446D06:  VCVT.F32.S32    S10, S10
446D0A:  VMUL.F32        S6, S6, S16
446D0E:  VCVT.F32.S32    S12, S12
446D12:  VADD.F32        S2, S2, S8
446D16:  VMOV            S8, R6
446D1A:  VCVT.F32.S32    S8, S8
446D1E:  VADD.F32        S4, S4, S10
446D22:  VSUB.F32        S0, S6, S0
446D26:  VADD.F32        S4, S4, S8
446D2A:  VLDR            S10, [SP,#0x1F0+var_C8]
446D2E:  VADD.F32        S2, S2, S12
446D32:  VLDR            S6, [SP,#0x1F0+var_D0]
446D36:  VLDR            S8, [SP,#0x1F0+var_CC]
446D3A:  VADD.F32        S0, S0, S10
446D3E:  VADD.F32        S4, S4, S16
446D42:  VADD.F32        S2, S2, S16
446D46:  VSTR            S0, [SP,#0x1F0+var_C8]
446D4A:  VADD.F32        S4, S4, S6
446D4E:  VADD.F32        S2, S2, S8
446D52:  VSTR            S4, [SP,#0x1F0+var_D0]
446D56:  VSTR            S2, [SP,#0x1F0+var_CC]
446D5A:  ADD             R5, SP, #0x1F0+var_1D8
446D5C:  ADD             R1, SP, #0x1F0+var_B8
446D5E:  ADD             R2, SP, #0x1F0+var_100
446D60:  MOV             R0, R5
446D62:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
446D66:  ADD             R6, SP, #0x1F0+var_190
446D68:  ADD             R2, SP, #0x1F0+var_70
446D6A:  MOV             R1, R5
446D6C:  MOV             R0, R6
446D6E:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
446D72:  ADD             R0, SP, #0x1F0+var_148
446D74:  MOV             R1, R6
446D76:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
446D7A:  MOV             R0, R6; this
446D7C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446D80:  MOV             R0, R5; this
446D82:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446D86:  LDR             R0, =(g_furnitureMan_ptr - 0x446D90)
446D88:  MOVW            R1, #0x206C
446D8C:  ADD             R0, PC; g_furnitureMan_ptr
446D8E:  LDR             R0, [R0]; g_furnitureMan
446D90:  ADD             R0, R1; this
446D92:  BLX             j__ZN6List_c10RemoveHeadEv; List_c::RemoveHead(void)
446D96:  MOV             R8, R0
446D98:  CMP.W           R8, #0
446D9C:  BEQ             loc_446E8E
446D9E:  MOVS            R0, #off_3C; this
446DA0:  BLX             j__ZN9CBuildingnwEj; CBuilding::operator new(uint)
446DA4:  BLX             j__ZN9CBuildingC2Ev_0; CBuilding::CBuilding(void)
446DA8:  STR.W           R0, [R8,#8]
446DAC:  LDR             R2, [R0]
446DAE:  LDRH.W          R1, [R11,#8]
446DB2:  LDR             R2, [R2,#0x1C]
446DB4:  BLX             R2
446DB6:  LDR.W           R0, [R8,#8]; this
446DBA:  ADD             R1, SP, #0x1F0+var_148; CMatrix *
446DBC:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
446DC0:  LDR             R5, [SP,#0x1F0+var_1DC]
446DC2:  LDR.W           R0, [R8,#8]
446DC6:  LDR             R1, [R5,#0x10]
446DC8:  STRB.W          R1, [R0,#0x33]
446DCC:  LDR.W           R0, [R8,#8]
446DD0:  LDRD.W          R1, R2, [R0,#0x1C]
446DD4:  ORR.W           R1, R1, #0x10000
446DD8:  STRD.W          R1, R2, [R0,#0x1C]
446DDC:  LDR.W           R0, [R8,#8]
446DE0:  LDRD.W          R1, R2, [R0,#0x1C]
446DE4:  ORR.W           R1, R1, #0x400000; CEntity *
446DE8:  STRD.W          R1, R2, [R0,#0x1C]
446DEC:  LDR.W           R0, [R8,#8]; this
446DF0:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
446DF4:  LDR             R0, [SP,#0x1F0+var_1E8]
446DF6:  STRH.W          R0, [R8,#0xE]
446DFA:  ADD.W           R0, R5, #0x5C ; '\'; this
446DFE:  LDR             R1, [SP,#0x1F0+var_1E0]
446E00:  STRH.W          R1, [R8,#0xC]
446E04:  MOV             R5, R1
446E06:  MOV             R1, R8; ListItem_c *
446E08:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
446E0C:  LDR             R0, [R7,#arg_4]
446E0E:  LDR.W           LR, [SP,#0x1F0+var_1EC]
446E12:  CMP             R0, #1
446E14:  BNE             loc_446F08
446E16:  LDR             R0, [SP,#0x1F0+var_1E8]
446E18:  LDRB.W          R1, [R11,#0x11]
446E1C:  ORRS            R0, R5
446E1E:  CBZ             R1, loc_446E9C
446E20:  CMP             R0, #0
446E22:  BLT             loc_446F08
446E24:  LDR             R0, [SP,#0x1F0+var_1DC]
446E26:  ADD.W           R2, LR, R5
446E2A:  LDR             R0, [R0,#0x14]
446E2C:  LDRB            R1, [R0,#2]
446E2E:  CMP             R2, R1
446E30:  BGT             loc_446F08
446E32:  CMP.W           LR, #0
446E36:  BEQ             loc_446F08
446E38:  LDRB            R0, [R0,#3]
446E3A:  LDRD.W          R2, R1, [SP,#0x1F0+var_1E8]
446E3E:  ADD             R1, R2
446E40:  CMP             R1, R0
446E42:  BGT             loc_446F08
446E44:  RSB.W           R0, R5, R5,LSL#4
446E48:  LDR             R1, [SP,#0x1F0+var_1E8]
446E4A:  MOVS            R2, #6
446E4C:  MOVS            R3, #1
446E4E:  ADD.W           R0, R1, R0,LSL#1
446E52:  LDR             R1, [SP,#0x1F0+var_1DC]
446E54:  ADD             R0, R1
446E56:  MOVS            R1, #0
446E58:  ADD.W           R4, R0, #0x68 ; 'h'
446E5C:  LDR             R0, [SP,#0x1F0+var_1E4]
446E5E:  CBZ             R0, loc_446E84
446E60:  LDR             R5, [SP,#0x1F0+var_1E4]
446E62:  MOV             R0, R4
446E64:  B               loc_446E6A
446E66:  STRB            R2, [R0]
446E68:  B               loc_446E7C
446E6A:  LDRB            R6, [R0]
446E6C:  CMP             R6, #8
446E6E:  BHI             loc_446E66
446E70:  LSL.W           R6, R3, R6
446E74:  TST.W           R6, #0x1A0
446E78:  IT EQ
446E7A:  STRBEQ          R2, [R0]
446E7C:  SUBS            R5, #1
446E7E:  ADD.W           R0, R0, #1
446E82:  BNE             loc_446E6A
446E84:  ADDS            R1, #1
446E86:  ADDS            R4, #0x1E
446E88:  CMP             R1, LR
446E8A:  BLT             loc_446E5C
446E8C:  B               loc_446F08
446E8E:  MOVS            R5, #1
446E90:  B               loc_446F18
446E92:  ALIGN 4
446E94:  DCFS 0.000015259
446E98:  DCFS 0.017453
446E9C:  CMP             R0, #0
446E9E:  BLT             loc_446F08
446EA0:  LDR             R0, [SP,#0x1F0+var_1DC]
446EA2:  ADD.W           R2, LR, R5
446EA6:  LDR             R0, [R0,#0x14]
446EA8:  LDRB            R1, [R0,#2]
446EAA:  CMP             R2, R1
446EAC:  BGT             loc_446F08
446EAE:  CMP.W           LR, #0
446EB2:  BEQ             loc_446F08
446EB4:  LDRB            R0, [R0,#3]
446EB6:  LDRD.W          R2, R1, [SP,#0x1F0+var_1E8]
446EBA:  ADD             R1, R2
446EBC:  CMP             R1, R0
446EBE:  BGT             loc_446F08
446EC0:  RSB.W           R0, R5, R5,LSL#4
446EC4:  LDR             R1, [SP,#0x1F0+var_1E8]
446EC6:  MOV.W           R12, #0xA
446ECA:  MOVS            R3, #5
446ECC:  ADD.W           R0, R1, R0,LSL#1
446ED0:  LDR             R1, [SP,#0x1F0+var_1DC]
446ED2:  ADD             R0, R1
446ED4:  MOVS            R1, #0
446ED6:  ADD.W           R4, R0, #0x68 ; 'h'
446EDA:  LDR             R0, [SP,#0x1F0+var_1E4]
446EDC:  CBZ             R0, loc_446F00
446EDE:  LDR             R5, [SP,#0x1F0+var_1E4]
446EE0:  MOV             R0, R4
446EE2:  LDRB            R2, [R0]
446EE4:  SUBS            R6, R2, #7
446EE6:  CMP             R6, #2
446EE8:  BCC             loc_446EF8
446EEA:  CMP             R2, #5
446EEC:  BEQ             loc_446EF8
446EEE:  CMP             R2, #9
446EF0:  ITE NE
446EF2:  STRBNE          R3, [R0]
446EF4:  STRBEQ.W        R12, [R0]
446EF8:  SUBS            R5, #1
446EFA:  ADD.W           R0, R0, #1
446EFE:  BNE             loc_446EE2
446F00:  ADDS            R1, #1
446F02:  ADDS            R4, #0x1E
446F04:  CMP             R1, LR
446F06:  BLT             loc_446EDA
446F08:  STR.W           LR, [R10]
446F0C:  MOVS            R5, #0
446F0E:  LDR             R0, [SP,#0x1F0+var_1E4]
446F10:  STR.W           R0, [R9]
446F14:  LDR.W           R4, [R8,#8]
446F18:  ADD             R0, SP, #0x1F0+var_148; this
446F1A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446F1E:  ADD             R0, SP, #0x1F0+var_100; this
446F20:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446F24:  ADD             R0, SP, #0x1F0+var_B8; this
446F26:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446F2A:  ADD             R0, SP, #0x1F0+var_70; this
446F2C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
446F30:  CMP             R5, #1
446F32:  BNE             loc_446F3E
446F34:  MOVS            R4, #0
446F36:  STR.W           R4, [R10]
446F3A:  STR.W           R4, [R9]
446F3E:  MOV             R0, R4
446F40:  ADD             SP, SP, #0x1C8
446F42:  VPOP            {D8}
446F46:  ADD             SP, SP, #4
446F48:  POP.W           {R8-R11}
446F4C:  POP             {R4-R7,PC}
