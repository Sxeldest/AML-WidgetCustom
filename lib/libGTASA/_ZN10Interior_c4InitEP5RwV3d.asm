; =========================================================
; Game Engine Function: _ZN10Interior_c4InitEP5RwV3d
; Address            : 0x444A2C - 0x444B90
; =========================================================

444A2C:  PUSH            {R4,R5,R7,LR}
444A2E:  ADD             R7, SP, #8
444A30:  SUB             SP, SP, #0x48
444A32:  MOV             R4, R0
444A34:  BLX             j__ZN10Interior_c10CalcMatrixEP5RwV3d; Interior_c::CalcMatrix(RwV3d *)
444A38:  MOV             R0, R4; this
444A3A:  BLX             j__ZN10Interior_c10ResetTilesEv; Interior_c::ResetTiles(void)
444A3E:  LDR             R0, [R4,#0xC]; this
444A40:  BLX             j__ZN15InteriorGroup_c9GetEntityEv; InteriorGroup_c::GetEntity(void)
444A44:  MOV             R5, R0
444A46:  LDR             R1, [R5,#0x14]
444A48:  CBNZ            R1, loc_444A5A
444A4A:  MOV             R0, R5; this
444A4C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
444A50:  LDR             R1, [R5,#0x14]; CMatrix *
444A52:  ADDS            R0, R5, #4; this
444A54:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
444A58:  LDR             R1, [R5,#0x14]; CMatrix *
444A5A:  MOV             R0, SP; this
444A5C:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
444A60:  LDR             R0, [R4,#0x14]
444A62:  LDRB            R1, [R0]
444A64:  CMP             R1, #0x63 ; 'c'
444A66:  BEQ             loc_444AF8
444A68:  LDR             R1, =(g_interiorMan_ptr - 0x444A76)
444A6A:  MOVW            R2, #(dword_99D8D0 - 0x999194)
444A6E:  VLDR            S0, [SP,#0x50+var_20]
444A72:  ADD             R1, PC; g_interiorMan_ptr
444A74:  LDR             R1, [R1]; g_interiorMan
444A76:  LDR             R1, [R1,R2]
444A78:  CBZ             R1, loc_444ACE
444A7A:  VLDR            S2, [SP,#0x50+var_1C]
444A7E:  VLDR            S4, [SP,#0x50+var_18]
444A82:  VCVT.S32.F32    S0, S0
444A86:  VLDR            S6, [R1,#8]
444A8A:  VLDR            S8, [R1,#0x14]
444A8E:  VLDR            S10, [R1,#0x18]
444A92:  VCVT.S32.F32    S2, S2
444A96:  VMOV            R1, S0
444A9A:  VCVT.S32.F32    S0, S6
444A9E:  VMOV            R2, S2
444AA2:  VCVT.S32.F32    S2, S8
444AA6:  VMOV            R3, S2
444AAA:  MULS            R1, R2
444AAC:  VMOV            R2, S0
444AB0:  VCVT.S32.F32    S0, S4
444AB4:  MULS            R2, R3
444AB6:  VMOV            R3, S0
444ABA:  VCVT.S32.F32    S0, S10
444ABE:  LDRB            R0, [R0,#0x1E]
444AC0:  MULS            R1, R3
444AC2:  VMOV            R3, S0
444AC6:  MLA.W           R1, R2, R3, R1
444ACA:  ADD             R0, R1
444ACC:  B               loc_444AF4
444ACE:  VLDR            S2, [SP,#0x50+var_1C]
444AD2:  LDRB            R0, [R0,#0x1E]
444AD4:  VMUL.F32        S0, S0, S2
444AD8:  VLDR            S4, [SP,#0x50+var_18]
444ADC:  VMOV            S2, R0
444AE0:  VCVT.F32.U32    S2, S2
444AE4:  VMUL.F32        S0, S0, S4
444AE8:  VADD.F32        S0, S0, S2
444AEC:  VCVT.U32.F32    S0, S0
444AF0:  VMOV            R0, S0; seed
444AF4:  BLX             srand
444AF8:  LDR             R0, [R4,#0x14]
444AFA:  MOVS            R1, #0
444AFC:  STRH.W          R1, [R4,#0x40C]
444B00:  LDRB            R0, [R0]
444B02:  CMP             R0, #4; switch 5 cases
444B04:  BHI             def_444B06; jumptable 00444B06 default case
444B06:  TBB.W           [PC,R0]; switch jump
444B0A:  DCB 3; jump table for switch statement
444B0B:  DCB 8
444B0C:  DCB 0xC
444B0D:  DCB 0x10
444B0E:  DCB 0x14
444B0F:  ALIGN 2
444B10:  MOV             R0, R4; jumptable 00444B06 case 0
444B12:  MOVS            R1, #0; int
444B14:  BLX             j__ZN10Interior_c11FurnishShopEi; Interior_c::FurnishShop(int)
444B18:  B               def_444B06; jumptable 00444B06 default case
444B1A:  MOV             R0, R4; jumptable 00444B06 case 1
444B1C:  BLX             j__ZN10Interior_c13FurnishOfficeEv; Interior_c::FurnishOffice(void)
444B20:  B               def_444B06; jumptable 00444B06 default case
444B22:  MOV             R0, R4; jumptable 00444B06 case 2
444B24:  BLX             j__ZN10Interior_c13FurnishLoungeEv; Interior_c::FurnishLounge(void)
444B28:  B               def_444B06; jumptable 00444B06 default case
444B2A:  MOV             R0, R4; jumptable 00444B06 case 3
444B2C:  BLX             j__ZN10Interior_c14FurnishBedroomEv; Interior_c::FurnishBedroom(void)
444B30:  B               def_444B06; jumptable 00444B06 default case
444B32:  MOV             R0, R4; jumptable 00444B06 case 4
444B34:  BLX             j__ZN10Interior_c14FurnishKitchenEv; Interior_c::FurnishKitchen(void)
444B38:  MOV             R0, R4; jumptable 00444B06 default case
444B3A:  BLX             j__ZN10Interior_c11CalcExitPtsEv; Interior_c::CalcExitPts(void)
444B3E:  LDR             R0, =(g_interiorMan_ptr - 0x444B46)
444B40:  MOV             R1, R4; Interior_c *
444B42:  ADD             R0, PC; g_interiorMan_ptr
444B44:  LDR             R5, [R0]; g_interiorMan
444B46:  MOV             R0, R5; this
444B48:  BLX             j__ZN17InteriorManager_c28HasInteriorHadStealDataSetupEP10Interior_c; InteriorManager_c::HasInteriorHadStealDataSetup(Interior_c *)
444B4C:  CBNZ            R0, loc_444B72
444B4E:  MOVW            R0, #(dword_99D438 - 0x999194)
444B52:  LDR             R0, [R5,R0]
444B54:  CMP             R0, #0x3F ; '?'
444B56:  BGT             loc_444B72
444B58:  LDR             R1, =(g_interiorMan_ptr - 0x444B64)
444B5A:  MOVW            R5, #0x42A8
444B5E:  LDR             R2, [R4,#8]
444B60:  ADD             R1, PC; g_interiorMan_ptr
444B62:  LDR             R1, [R1]; g_interiorMan
444B64:  ADD.W           R3, R1, R0,LSL#2
444B68:  ADDS            R0, #1
444B6A:  STR             R2, [R3,R5]
444B6C:  MOVW            R2, #(dword_99D438 - 0x999194)
444B70:  STR             R0, [R1,R2]
444B72:  LDR             R0, [R4,#0x14]
444B74:  LDRB            R0, [R0]
444B76:  AND.W           R0, R0, #0xFE
444B7A:  CMP             R0, #2
444B7C:  ITT EQ
444B7E:  MOVEQ           R0, R4
444B80:  NOPEQ
444B82:  NOP
444B84:  MOV             R0, SP; this
444B86:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
444B8A:  MOVS            R0, #1
444B8C:  ADD             SP, SP, #0x48 ; 'H'
444B8E:  POP             {R4,R5,R7,PC}
