; =========================================================
; Game Engine Function: _ZN15CClothesBuilder18CreateSkinnedClumpEP7RpClumpP15RwTexDictionaryR15CPedClothesDescPKS4_b
; Address            : 0x458858 - 0x458D6E
; =========================================================

458858:  PUSH            {R4-R7,LR}
45885A:  ADD             R7, SP, #0xC
45885C:  PUSH.W          {R8-R11}
458860:  SUB             SP, SP, #4
458862:  VPUSH           {D8-D10}
458866:  SUB             SP, SP, #0xE8; float
458868:  MOV             R8, R0
45886A:  ADD             R0, SP, #0x120+var_100; this
45886C:  MOV             R5, R3
45886E:  MOV             R6, R2
458870:  STR             R1, [SP,#0x120+var_110]
458872:  BLX             j__ZN15CPedClothesDescC2Ev; CPedClothesDesc::CPedClothesDesc(void)
458876:  LDR.W           R4, =(unk_9A7560 - 0x458886)
45887A:  MOVW            R1, #0x226; int
45887E:  LDR.W           R2, =(unk_9A7A74 - 0x458888)
458882:  ADD             R4, PC; unk_9A7560
458884:  ADD             R2, PC; unk_9A7A74 ; void *
458886:  MOV             R0, R4; this
458888:  BLX             j__ZN10CDirectory4InitEiPv; CDirectory::Init(int,void *)
45888C:  LDR.W           R1, =(aTexdbPlayerImg_0 - 0x458896); "TEXDB\\PLAYER.IMG"
458890:  MOV             R0, R4; this
458892:  ADD             R1, PC; "TEXDB\\PLAYER.IMG"
458894:  BLX             j__ZN10CDirectory11ReadDirFileEPKc; CDirectory::ReadDirFile(char const*)
458898:  LDR             R0, [R6]
45889A:  CBNZ            R0, loc_4588AE
45889C:  LDR.W           R0, =(torsoDffName_ptr - 0x4588A6)
4588A0:  MOVS            R2, #0; int
4588A2:  ADD             R0, PC; torsoDffName_ptr
4588A4:  LDR             R0, [R0]; torsoDffName
4588A6:  LDR             R1, [R0]; CKeyGen *
4588A8:  MOV             R0, R6; this
4588AA:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
4588AE:  LDR             R0, [R6,#4]
4588B0:  CBNZ            R0, loc_4588C4
4588B2:  LDR.W           R0, =(headDffName_ptr - 0x4588BC)
4588B6:  MOVS            R2, #1; int
4588B8:  ADD             R0, PC; headDffName_ptr
4588BA:  LDR             R0, [R0]; headDffName
4588BC:  LDR             R1, [R0]; CKeyGen *
4588BE:  MOV             R0, R6; this
4588C0:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
4588C4:  LDR             R0, [R6,#8]
4588C6:  CBNZ            R0, loc_4588DA
4588C8:  LDR.W           R0, =(handsDffName_ptr - 0x4588D2)
4588CC:  MOVS            R2, #2; int
4588CE:  ADD             R0, PC; handsDffName_ptr
4588D0:  LDR             R0, [R0]; handsDffName
4588D2:  LDR             R1, [R0]; CKeyGen *
4588D4:  MOV             R0, R6; this
4588D6:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
4588DA:  LDR             R0, [R6,#0xC]
4588DC:  CBNZ            R0, loc_4588F0
4588DE:  LDR.W           R0, =(legsDffName_ptr - 0x4588E8)
4588E2:  MOVS            R2, #3; int
4588E4:  ADD             R0, PC; legsDffName_ptr
4588E6:  LDR             R0, [R0]; legsDffName
4588E8:  LDR             R1, [R0]; CKeyGen *
4588EA:  MOV             R0, R6; this
4588EC:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
4588F0:  LDR             R0, [R6,#0x10]
4588F2:  CBNZ            R0, loc_458906
4588F4:  LDR.W           R0, =(feetDffName_ptr - 0x4588FE)
4588F8:  MOVS            R2, #4; int
4588FA:  ADD             R0, PC; feetDffName_ptr
4588FC:  LDR             R0, [R0]; feetDffName
4588FE:  LDR             R1, [R0]; CKeyGen *
458900:  MOV             R0, R6; this
458902:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
458906:  LDR.W           R0, =(_ZN15CClothesBuilder19ms_pOldClothesStateE_ptr - 0x458910)
45890A:  CMP             R5, #0
45890C:  ADD             R0, PC; _ZN15CClothesBuilder19ms_pOldClothesStateE_ptr
45890E:  LDR             R0, [R0]; CClothesBuilder::ms_pOldClothesState ...
458910:  STR             R5, [R0]; CClothesBuilder::ms_pOldClothesState
458912:  BEQ.W           loc_458A5A
458916:  LDR.W           R0, =(_ZN15CClothesBuilder20ms_textureHasChangedE_ptr - 0x458924)
45891A:  MOVS            R2, #0
45891C:  LDR.W           R1, =(_ZN15CClothesBuilder21ms_geometryHasChangedE_ptr - 0x458926)
458920:  ADD             R0, PC; _ZN15CClothesBuilder20ms_textureHasChangedE_ptr
458922:  ADD             R1, PC; _ZN15CClothesBuilder21ms_geometryHasChangedE_ptr
458924:  LDR             R0, [R0]; CClothesBuilder::ms_textureHasChanged ...
458926:  LDR             R1, [R1]; CClothesBuilder::ms_geometryHasChanged ...
458928:  STRB            R2, [R0]; CClothesBuilder::ms_textureHasChanged
45892A:  STRB            R2, [R1]; CClothesBuilder::ms_geometryHasChanged
45892C:  VLDR            S0, [R5,#0x70]
458930:  VLDR            S2, [R6,#0x70]
458934:  VCMP.F32        S2, S0
458938:  VMRS            APSR_nzcv, FPSCR
45893C:  BNE             loc_458952
45893E:  VLDR            S0, [R5,#0x74]
458942:  VLDR            S2, [R6,#0x74]
458946:  VCMP.F32        S2, S0
45894A:  VMRS            APSR_nzcv, FPSCR
45894E:  BEQ.W           loc_458D64
458952:  LDR.W           R0, =(_ZN15CClothesBuilder21ms_geometryHasChangedE_ptr - 0x45895E)
458956:  LDR.W           R1, =(_ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr - 0x458960)
45895A:  ADD             R0, PC; _ZN15CClothesBuilder21ms_geometryHasChangedE_ptr
45895C:  ADD             R1, PC; _ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr
45895E:  LDR             R2, [R0]; CClothesBuilder::ms_geometryHasChanged ...
458960:  MOVS            R0, #1
458962:  LDR             R1, [R1]; CClothesBuilder::ms_ratiosHaveChanged ...
458964:  STRB            R0, [R2]; CClothesBuilder::ms_geometryHasChanged
458966:  STRB            R0, [R1]; CClothesBuilder::ms_ratiosHaveChanged
458968:  LDR             R1, [R5]
45896A:  LDR             R2, [R6]
45896C:  CMP             R2, R1
45896E:  BNE             loc_4589BA
458970:  LDR             R1, [R5,#4]
458972:  LDR             R2, [R6,#4]
458974:  CMP             R2, R1
458976:  BNE             loc_4589BA
458978:  LDR             R1, [R5,#8]
45897A:  LDR             R2, [R6,#8]
45897C:  CMP             R2, R1
45897E:  BNE             loc_4589BA
458980:  LDR             R1, [R5,#0xC]
458982:  LDR             R2, [R6,#0xC]
458984:  CMP             R2, R1
458986:  BNE             loc_4589BA
458988:  LDR             R1, [R5,#0x10]
45898A:  LDR             R2, [R6,#0x10]
45898C:  CMP             R2, R1
45898E:  BNE             loc_4589BA
458990:  LDR             R1, [R5,#0x14]
458992:  LDR             R2, [R6,#0x14]
458994:  CMP             R2, R1
458996:  BNE             loc_4589BA
458998:  LDR             R1, [R5,#0x18]
45899A:  LDR             R2, [R6,#0x18]
45899C:  CMP             R2, R1
45899E:  BNE             loc_4589BA
4589A0:  LDR             R1, [R5,#0x1C]
4589A2:  LDR             R2, [R6,#0x1C]
4589A4:  CMP             R2, R1
4589A6:  BNE             loc_4589BA
4589A8:  LDR             R1, [R5,#0x20]
4589AA:  LDR             R2, [R6,#0x20]
4589AC:  CMP             R2, R1
4589AE:  BNE             loc_4589BA
4589B0:  LDR             R1, [R5,#0x24]
4589B2:  LDR             R2, [R6,#0x24]
4589B4:  CMP             R2, R1
4589B6:  MOV             R1, R0
4589B8:  BEQ             loc_4589C6
4589BA:  LDR.W           R1, =(_ZN15CClothesBuilder21ms_geometryHasChangedE_ptr - 0x4589C2)
4589BE:  ADD             R1, PC; _ZN15CClothesBuilder21ms_geometryHasChangedE_ptr
4589C0:  LDR             R2, [R1]; CClothesBuilder::ms_geometryHasChanged ...
4589C2:  MOVS            R1, #1
4589C4:  STRB            R1, [R2]; CClothesBuilder::ms_geometryHasChanged
4589C6:  LDR             R2, [R5,#0x28]
4589C8:  LDR             R3, [R6,#0x28]
4589CA:  CMP             R3, R2
4589CC:  BNE             loc_458A6E
4589CE:  LDR             R2, [R5,#0x2C]
4589D0:  LDR             R3, [R6,#0x2C]
4589D2:  CMP             R3, R2
4589D4:  BNE             loc_458A6E
4589D6:  LDR             R2, [R5,#0x30]
4589D8:  LDR             R3, [R6,#0x30]
4589DA:  CMP             R3, R2
4589DC:  BNE             loc_458A6E
4589DE:  LDR             R2, [R5,#0x34]
4589E0:  LDR             R3, [R6,#0x34]
4589E2:  CMP             R3, R2
4589E4:  BNE             loc_458A6E
4589E6:  LDR             R2, [R5,#0x38]
4589E8:  LDR             R3, [R6,#0x38]
4589EA:  CMP             R3, R2
4589EC:  BNE             loc_458A6E
4589EE:  LDR             R2, [R5,#0x3C]
4589F0:  LDR             R3, [R6,#0x3C]
4589F2:  CMP             R3, R2
4589F4:  BNE             loc_458A6E
4589F6:  LDR             R2, [R5,#0x40]
4589F8:  LDR             R3, [R6,#0x40]
4589FA:  CMP             R3, R2
4589FC:  BNE             loc_458A6E
4589FE:  LDR             R2, [R5,#0x44]
458A00:  LDR             R3, [R6,#0x44]
458A02:  CMP             R3, R2
458A04:  BNE             loc_458A6E
458A06:  LDR             R2, [R5,#0x48]
458A08:  LDR             R3, [R6,#0x48]
458A0A:  CMP             R3, R2
458A0C:  BNE             loc_458A6E
458A0E:  LDR             R2, [R5,#0x4C]
458A10:  LDR             R3, [R6,#0x4C]
458A12:  CMP             R3, R2
458A14:  BNE             loc_458A6E
458A16:  LDR             R2, [R5,#0x50]
458A18:  LDR             R3, [R6,#0x50]
458A1A:  CMP             R3, R2
458A1C:  BNE             loc_458A6E
458A1E:  LDR             R2, [R5,#0x54]
458A20:  LDR             R3, [R6,#0x54]
458A22:  CMP             R3, R2
458A24:  BNE             loc_458A6E
458A26:  LDR             R2, [R5,#0x58]
458A28:  LDR             R3, [R6,#0x58]
458A2A:  CMP             R3, R2
458A2C:  BNE             loc_458A6E
458A2E:  LDR             R2, [R5,#0x5C]
458A30:  LDR             R3, [R6,#0x5C]
458A32:  CMP             R3, R2
458A34:  BNE             loc_458A6E
458A36:  LDR             R2, [R5,#0x60]
458A38:  LDR             R3, [R6,#0x60]
458A3A:  CMP             R3, R2
458A3C:  BNE             loc_458A6E
458A3E:  LDR             R2, [R5,#0x64]
458A40:  LDR             R3, [R6,#0x64]
458A42:  CMP             R3, R2
458A44:  BNE             loc_458A6E
458A46:  LDR             R2, [R5,#0x68]
458A48:  LDR             R3, [R6,#0x68]
458A4A:  CMP             R3, R2
458A4C:  BNE             loc_458A6E
458A4E:  LDR             R2, [R5,#0x6C]
458A50:  LDR             R3, [R6,#0x6C]
458A52:  CMP             R3, R2
458A54:  BNE             loc_458A6E
458A56:  MOVS            R2, #0
458A58:  B               loc_458A78
458A5A:  LDR             R0, =(_ZN15CClothesBuilder21ms_geometryHasChangedE_ptr - 0x458A62)
458A5C:  LDR             R1, =(_ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr - 0x458A64)
458A5E:  ADD             R0, PC; _ZN15CClothesBuilder21ms_geometryHasChangedE_ptr
458A60:  ADD             R1, PC; _ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr
458A62:  LDR             R0, [R0]; CClothesBuilder::ms_geometryHasChanged ...
458A64:  LDR             R2, [R1]; CClothesBuilder::ms_ratiosHaveChanged ...
458A66:  MOVS            R1, #1
458A68:  STRB            R1, [R0]; CClothesBuilder::ms_geometryHasChanged
458A6A:  MOVS            R0, #1
458A6C:  STRB            R1, [R2]; CClothesBuilder::ms_ratiosHaveChanged
458A6E:  LDR             R2, =(_ZN15CClothesBuilder20ms_textureHasChangedE_ptr - 0x458A74)
458A70:  ADD             R2, PC; _ZN15CClothesBuilder20ms_textureHasChangedE_ptr
458A72:  LDR             R3, [R2]; CClothesBuilder::ms_textureHasChanged ...
458A74:  MOVS            R2, #1
458A76:  STRB            R2, [R3]; CClothesBuilder::ms_textureHasChanged
458A78:  ORRS            R0, R1
458A7A:  ORRS            R0, R2
458A7C:  BEQ             loc_458AFA
458A7E:  ADD             R5, SP, #0x120+var_100
458A80:  MOV             R1, R6; void *
458A82:  MOVS            R2, #0x78 ; 'x'; size_t
458A84:  LDR.W           R9, [R7,#arg_0]
458A88:  MOV             R0, R5; void *
458A8A:  BLX             memcpy_0
458A8E:  MOV             R0, R5; this
458A90:  MOV             R1, R9; CPedClothesDesc *
458A92:  BLX             j__ZN15CClothesBuilder21PreprocessClothesDescER15CPedClothesDescb; CClothesBuilder::PreprocessClothesDesc(CPedClothesDesc &,bool)
458A96:  VLDR            S0, =-200.0
458A9A:  MOVS            R0, #(dword_14+3); this
458A9C:  VLDR            S2, [SP,#0x120+var_90]
458AA0:  ADR             R4, dword_458DC4
458AA2:  VLDR            S16, =0.0
458AA6:  VADD.F32        S0, S2, S0
458AAA:  VLDR            S18, =1000.0
458AAE:  VMAX.F32        D10, D0, D8
458AB2:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
458AB6:  VCMPE.F32       S20, #0.0
458ABA:  VMRS            APSR_nzcv, FPSCR
458ABE:  VMOV            S0, R0
458AC2:  VMAX.F32        D0, D0, D8
458AC6:  VDIV.F32        S4, S0, S18
458ACA:  IT LT
458ACC:  ADDLT           R4, #4
458ACE:  VLDR            S2, [R4]
458AD2:  VMOV.F32        S0, #1.0
458AD6:  VDIV.F32        S2, S20, S2
458ADA:  VMIN.F32        D9, D2, D0
458ADE:  VMIN.F32        D10, D1, D0
458AE2:  VADD.F32        S2, S18, S20
458AE6:  VCMPE.F32       S2, S0
458AEA:  VMRS            APSR_nzcv, FPSCR
458AEE:  BLE             loc_458AFE
458AF0:  VDIV.F32        S18, S18, S2
458AF4:  VDIV.F32        S20, S20, S2
458AF8:  B               loc_458B02
458AFA:  MOVS            R5, #0
458AFC:  B               loc_458D54
458AFE:  VSUB.F32        S16, S0, S2
458B02:  LDR             R0, =(_ZN15CClothesBuilder20ms_textureHasChangedE_ptr - 0x458B0A)
458B04:  LDR             R1, =(_ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr - 0x458B10)
458B06:  ADD             R0, PC; _ZN15CClothesBuilder20ms_textureHasChangedE_ptr
458B08:  STR.W           R8, [SP,#0x120+var_114]
458B0C:  ADD             R1, PC; _ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr
458B0E:  LDR             R0, [R0]; CClothesBuilder::ms_textureHasChanged ...
458B10:  LDR             R1, [R1]; CClothesBuilder::ms_ratiosHaveChanged ...
458B12:  LDRB            R0, [R0]; CClothesBuilder::ms_textureHasChanged
458B14:  LDRB            R1, [R1]; CClothesBuilder::ms_ratiosHaveChanged
458B16:  ORRS            R0, R1
458B18:  LSLS            R0, R0, #0x18
458B1A:  BEQ             loc_458B46
458B1C:  CMP.W           R9, #0
458B20:  BNE             loc_458B46
458B22:  LDR             R1, =(sub_458DDC+1 - 0x458B2C)
458B24:  MOVS            R2, #0
458B26:  LDR             R4, [SP,#0x120+var_110]
458B28:  ADD             R1, PC; sub_458DDC
458B2A:  MOV             R0, R4
458B2C:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
458B30:  VMOV            R2, S16; int
458B34:  ADD.W           R1, R5, #0x28 ; '('; int
458B38:  VMOV            R3, S20; int
458B3C:  MOV             R0, R4; int
458B3E:  VSTR            S18, [SP,#0x120+var_120]
458B42:  BLX             j__ZN15CClothesBuilder17ConstructTexturesEP15RwTexDictionaryPjfff; CClothesBuilder::ConstructTextures(RwTexDictionary *,uint *,float,float,float)
458B46:  LDR             R0, =(clothesTextureNames_ptr - 0x458B56)
458B48:  ADD.W           R11, SP, #0x120+var_60
458B4C:  ADD.W           R10, SP, #0x120+var_88
458B50:  MOVS            R5, #0
458B52:  ADD             R0, PC; clothesTextureNames_ptr
458B54:  MOV.W           R8, #0xFF
458B58:  LDR.W           R9, [R0]; clothesTextureNames
458B5C:  LDR.W           R1, [R9,R5,LSL#2]
458B60:  LDR             R0, [SP,#0x120+var_110]
458B62:  BLX             j__Z31RwTexDictionaryFindNamedTextureP15RwTexDictionaryPKc; RwTexDictionaryFindNamedTexture(RwTexDictionary *,char const*)
458B66:  MOV             R4, R0
458B68:  CBZ             R4, loc_458B8E
458B6A:  MOV             R0, R10; this
458B6C:  MOVS            R1, #0xFF; unsigned __int8
458B6E:  MOVS            R2, #0xFF; unsigned __int8
458B70:  MOVS            R3, #0xFF; unsigned __int8
458B72:  STR.W           R8, [SP,#0x120+var_120]; unsigned __int8
458B76:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
458B7A:  BLX             j__Z16RpMaterialCreatev; RpMaterialCreate(void)
458B7E:  MOV             R6, R0
458B80:  LDR             R0, [SP,#0x120+var_88]
458B82:  STR             R0, [R6,#4]
458B84:  MOV             R0, R6
458B86:  MOV             R1, R4
458B88:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
458B8C:  B               loc_458B90
458B8E:  MOVS            R6, #0
458B90:  STR.W           R6, [R11,R5,LSL#2]
458B94:  ADDS            R5, #1
458B96:  CMP             R5, #0xA
458B98:  BNE             loc_458B5C
458B9A:  VMOV            R2, S16; int
458B9E:  ADD             R1, SP, #0x120+var_100; int
458BA0:  VMOV            R3, S20; int
458BA4:  MOV             R0, R10; int
458BA6:  VSTR            S18, [SP,#0x120+var_120]
458BAA:  BLX             j__ZN15CClothesBuilder22ConstructGeometryArrayEPP10RpGeometryPjfff; CClothesBuilder::ConstructGeometryArray(RpGeometry **,uint *,float,float,float)
458BAE:  LDR             R0, [SP,#0x120+var_114]
458BB0:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
458BB4:  MOV             R4, R0
458BB6:  LDR             R0, [R4,#0x18]
458BB8:  BLX             j_RpSkinGeometryGetSkin
458BBC:  MOV             R9, R0
458BBE:  MOV             R0, R4
458BC0:  BLX             j_RpSkinAtomicGetHAnimHierarchy
458BC4:  MOV             R4, R0
458BC6:  MOVS            R0, #0xA
458BC8:  ADD             R1, SP, #0x120+var_104
458BCA:  ADD             R2, SP, #0x120+var_108
458BCC:  ADD             R3, SP, #0x120+var_10C
458BCE:  STMEA.W         SP, {R0,R10,R11}
458BD2:  MOV             R0, R4
458BD4:  BLX             j__ZN15CClothesBuilder30ConstructGeometryAndSkinArraysEP16RpHAnimHierarchyPP10RpGeometryPP15RwMatrixWeightsPPjjS4_PP10RpMaterial; CClothesBuilder::ConstructGeometryAndSkinArrays(RpHAnimHierarchy *,RpGeometry **,RwMatrixWeights **,uint **,uint,RpGeometry **,RpMaterial **)
458BD8:  LDR.W           R8, [SP,#0x120+var_104]
458BDC:  MOV             R0, R9
458BDE:  LDR.W           R11, [R8,#0x14]
458BE2:  BLX             j_RpSkinGetNumBones
458BE6:  MOV             R10, R0
458BE8:  MOV             R0, R9
458BEA:  LDRD.W          R5, R6, [SP,#0x120+var_10C]
458BEE:  BLX             j_RpSkinGetSkinToBoneMatrices
458BF2:  STR             R0, [SP,#0x120+var_120]
458BF4:  MOV             R0, R11
458BF6:  MOV             R1, R10
458BF8:  MOV             R2, R6
458BFA:  MOV             R3, R5
458BFC:  BLX             j_RpSkinCreate
458C00:  MOV             R1, R0
458C02:  MOV             R0, R8
458C04:  BLX             j_RpSkinGeometrySetSkin
458C08:  CMP             R6, #0
458C0A:  ITT NE
458C0C:  MOVNE           R0, R6; void *
458C0E:  BLXNE           _ZdaPv; operator delete[](void *)
458C12:  CMP             R5, #0
458C14:  ITT NE
458C16:  MOVNE           R0, R5; void *
458C18:  BLXNE           _ZdaPv; operator delete[](void *)
458C1C:  LDR             R0, [R4,#0x20]
458C1E:  LDR             R1, [R4]
458C20:  LDR             R2, [R0,#0x20]
458C22:  MOV             R0, R4
458C24:  BLX             j__Z35RpHAnimHierarchyCreateFromHierarchyP16RpHAnimHierarchy20RpHAnimHierarchyFlagi; RpHAnimHierarchyCreateFromHierarchy(RpHAnimHierarchy *,RpHAnimHierarchyFlag,int)
458C28:  MOV             R6, R0
458C2A:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
458C2E:  MOV             R1, R6
458C30:  MOV             R5, R0
458C32:  BLX             j__Z24RpHAnimFrameSetHierarchyP7RwFrameP16RpHAnimHierarchy; RpHAnimFrameSetHierarchy(RwFrame *,RpHAnimHierarchy *)
458C36:  BLX             j__Z14RpAtomicCreatev; RpAtomicCreate(void)
458C3A:  MOV             R1, R8
458C3C:  MOVS            R2, #0
458C3E:  MOV             R4, R0
458C40:  BLX             j__Z19RpAtomicSetGeometryP8RpAtomicP10RpGeometryj; RpAtomicSetGeometry(RpAtomic *,RpGeometry *,uint)
458C44:  MOV             R0, R4
458C46:  MOV             R1, R6
458C48:  BLX             j_RpSkinAtomicSetHAnimHierarchy
458C4C:  MOV             R0, R4
458C4E:  MOV             R1, R5
458C50:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
458C54:  MOV             R0, R4
458C56:  MOVS            R1, #1
458C58:  BLX             j_RpSkinAtomicSetType
458C5C:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
458C60:  MOV             R1, R5
458C62:  MOV             R6, R0
458C64:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
458C68:  BLX             j__Z13RpClumpCreatev; RpClumpCreate(void)
458C6C:  MOV             R5, R0
458C6E:  MOV             R1, R4
458C70:  STR             R6, [R5,#4]
458C72:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
458C76:  MOV             R0, R8
458C78:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458C7C:  LDR.W           R0, [R8,#8]
458C80:  ORR.W           R0, R0, #2
458C84:  STR.W           R0, [R8,#8]
458C88:  LDR             R0, [SP,#0x120+var_110]
458C8A:  BLX             j__Z25RwTexDictionarySetCurrentP15RwTexDictionary; RwTexDictionarySetCurrent(RwTexDictionary *)
458C8E:  LDR             R0, [SP,#0x120+var_88]
458C90:  CMP             R0, #0
458C92:  IT NE
458C94:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458C98:  LDR             R0, [SP,#0x120+var_60]
458C9A:  CMP             R0, #0
458C9C:  IT NE
458C9E:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458CA2:  LDR             R0, [SP,#0x120+var_84]
458CA4:  CMP             R0, #0
458CA6:  IT NE
458CA8:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458CAC:  LDR             R0, [SP,#0x120+var_5C]
458CAE:  CMP             R0, #0
458CB0:  IT NE
458CB2:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458CB6:  LDR             R0, [SP,#0x120+var_80]
458CB8:  CMP             R0, #0
458CBA:  IT NE
458CBC:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458CC0:  LDR             R0, [SP,#0x120+var_58]
458CC2:  CMP             R0, #0
458CC4:  IT NE
458CC6:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458CCA:  LDR             R0, [SP,#0x120+var_7C]
458CCC:  CMP             R0, #0
458CCE:  IT NE
458CD0:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458CD4:  LDR             R0, [SP,#0x120+var_54]
458CD6:  CMP             R0, #0
458CD8:  IT NE
458CDA:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458CDE:  LDR             R0, [SP,#0x120+var_78]
458CE0:  CMP             R0, #0
458CE2:  IT NE
458CE4:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458CE8:  LDR             R0, [SP,#0x120+var_50]
458CEA:  CMP             R0, #0
458CEC:  IT NE
458CEE:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458CF2:  LDR             R0, [SP,#0x120+var_74]
458CF4:  CMP             R0, #0
458CF6:  IT NE
458CF8:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458CFC:  LDR             R0, [SP,#0x120+var_4C]
458CFE:  CMP             R0, #0
458D00:  IT NE
458D02:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458D06:  LDR             R0, [SP,#0x120+var_70]
458D08:  CMP             R0, #0
458D0A:  IT NE
458D0C:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458D10:  LDR             R0, [SP,#0x120+var_48]
458D12:  CMP             R0, #0
458D14:  IT NE
458D16:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458D1A:  LDR             R0, [SP,#0x120+var_6C]
458D1C:  CMP             R0, #0
458D1E:  IT NE
458D20:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458D24:  LDR             R0, [SP,#0x120+var_44]
458D26:  CMP             R0, #0
458D28:  IT NE
458D2A:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458D2E:  LDR             R0, [SP,#0x120+var_68]
458D30:  CMP             R0, #0
458D32:  IT NE
458D34:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458D38:  LDR             R0, [SP,#0x120+var_40]
458D3A:  CMP             R0, #0
458D3C:  IT NE
458D3E:  BLXNE           j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458D42:  LDR             R0, [SP,#0x120+var_64]
458D44:  CMP             R0, #0
458D46:  IT NE
458D48:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
458D4C:  LDR             R0, [SP,#0x120+var_3C]
458D4E:  CBZ             R0, loc_458D54
458D50:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
458D54:  MOV             R0, R5
458D56:  ADD             SP, SP, #0xE8
458D58:  VPOP            {D8-D10}
458D5C:  ADD             SP, SP, #4
458D5E:  POP.W           {R8-R11}
458D62:  POP             {R4-R7,PC}
458D64:  LDR             R0, =(_ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr - 0x458D6A)
458D66:  ADD             R0, PC; _ZN15CClothesBuilder20ms_ratiosHaveChangedE_ptr
458D68:  LDR             R1, [R0]; CClothesBuilder::ms_ratiosHaveChanged ...
458D6A:  MOVS            R0, #0
458D6C:  B               loc_458966
