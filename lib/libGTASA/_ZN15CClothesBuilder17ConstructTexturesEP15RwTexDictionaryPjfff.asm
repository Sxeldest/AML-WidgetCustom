; =========================================================
; Game Engine Function: _ZN15CClothesBuilder17ConstructTexturesEP15RwTexDictionaryPjfff
; Address            : 0x458DF0 - 0x459160
; =========================================================

458DF0:  PUSH            {R4-R7,LR}
458DF2:  ADD             R7, SP, #0xC
458DF4:  PUSH.W          {R8-R11}
458DF8:  SUB             SP, SP, #4
458DFA:  VPUSH           {D8-D12}
458DFE:  SUB             SP, SP, #0x18; float
458E00:  VLDR            S16, [R7,#arg_0]
458E04:  VMOV            S22, R3
458E08:  VMOV            S18, R2; char *
458E0C:  MOV             R5, R1
458E0E:  MOV             R8, R0
458E10:  MOVS            R6, #0
458E12:  MOVS            R4, #4
458E14:  LDR.W           R0, [R5,R4,LSL#2]; this
458E18:  MOVS            R1, #0; unsigned int
458E1A:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458E1E:  MOV             R1, R0
458E20:  CBZ             R1, loc_458E36
458E22:  CBZ             R6, loc_458E2E
458E24:  MOV             R0, R6
458E26:  MOVS            R2, #1
458E28:  BLX             j__ZN15CClothesBuilder26PlaceTextureOnTopOfTextureEP9RwTextureS1_b; CClothesBuilder::PlaceTextureOnTopOfTexture(RwTexture *,RwTexture *,bool)
458E2C:  B               loc_458E36
458E2E:  MOV             R0, R1
458E30:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458E34:  MOV             R6, R0
458E36:  ADDS            R4, #1
458E38:  CMP             R4, #0xD
458E3A:  BNE             loc_458E14
458E3C:  LDR             R0, =(torsoTxdName_ptr - 0x458E44)
458E3E:  LDR             R1, =(torsoTex_ptr - 0x458E4E)
458E40:  ADD             R0, PC; torsoTxdName_ptr
458E42:  STR.W           R8, [SP,#0x60+var_4C]
458E46:  LDR.W           R9, =(fatTorsoTex_ptr - 0x458E56)
458E4A:  ADD             R1, PC; torsoTex_ptr ; char *
458E4C:  LDR             R4, [R0]; torsoTxdName
458E4E:  LDR.W           R8, =(rippedTorsoTex_ptr - 0x458E5E)
458E52:  ADD             R9, PC; fatTorsoTex_ptr
458E54:  VLDR            S20, =0.0
458E58:  LDR             R0, [R4]; "player_torso" ...
458E5A:  ADD             R8, PC; rippedTorsoTex_ptr
458E5C:  LDR.W           R10, [R1]; torsoTex
458E60:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458E64:  LDR.W           R1, [R10]; "torso" ; unsigned int
458E68:  LDR.W           R9, [R9]; fatTorsoTex
458E6C:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458E70:  MOV             R11, R0
458E72:  LDR             R0, [R4]; "player_torso" ...
458E74:  VMAX.F32        D10, D11, D10
458E78:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458E7C:  LDR.W           R1, [R9]; "torso_fat" ...
458E80:  LDR.W           R8, [R8]; rippedTorsoTex
458E84:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458E88:  MOV             R9, R0
458E8A:  LDR             R0, [R4]; "player_torso" ...
458E8C:  VADD.F32        S24, S18, S22
458E90:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458E94:  VCMPE.F32       S22, #0.0
458E98:  LDR.W           R1, [R8]; "torso_ripped" ...
458E9C:  VMRS            APSR_nzcv, FPSCR
458EA0:  IT LT
458EA2:  VMOVLT.F32      S18, S24
458EA6:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458EAA:  MOV             R10, R0
458EAC:  MOV             R0, R11
458EAE:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458EB2:  VMOV            R3, S18; int
458EB6:  MOV             R4, R0
458EB8:  CMP             R6, #0
458EBA:  BEQ             loc_458ED8
458EBC:  MOV             R0, R4; int
458EBE:  MOV             R1, R9; int
458EC0:  MOV             R2, R10; int
458EC2:  STR             R6, [SP,#0x60+var_54]; int
458EC4:  VSTR            S20, [SP,#0x60+var_60]
458EC8:  VSTR            S16, [SP,#0x60+var_5C]
458ECC:  BLX             j__ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_S1_fffiS1_; CClothesBuilder::BlendTextures(RwTexture *,RwTexture *,RwTexture *,float,float,float,int,RwTexture *)
458ED0:  MOV             R0, R6
458ED2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
458ED6:  B               loc_458EEA
458ED8:  MOV             R0, R4; int
458EDA:  MOV             R1, R9; int
458EDC:  MOV             R2, R10; int
458EDE:  VSTR            S20, [SP,#0x60+var_60]
458EE2:  VSTR            S16, [SP,#0x60+var_5C]
458EE6:  BLX             j__ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_S1_fffi; CClothesBuilder::BlendTextures(RwTexture *,RwTexture *,RwTexture *,float,float,float,int)
458EEA:  LDR             R0, [R5]; this
458EEC:  MOVS            R1, #0; unsigned int
458EEE:  LDR.W           R8, [SP,#0x60+var_4C]
458EF2:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458EF6:  MOV             R1, R0
458EF8:  CBZ             R1, loc_458F0C
458EFA:  CBZ             R4, loc_458F06
458EFC:  MOV             R0, R4
458EFE:  MOVS            R2, #0
458F00:  BLX             j__ZN15CClothesBuilder26PlaceTextureOnTopOfTextureEP9RwTextureS1_b; CClothesBuilder::PlaceTextureOnTopOfTexture(RwTexture *,RwTexture *,bool)
458F04:  B               loc_458F0C
458F06:  MOV             R0, R1
458F08:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458F0C:  LDR             R0, =(clothesTextureNames_ptr - 0x458F12)
458F0E:  ADD             R0, PC; clothesTextureNames_ptr
458F10:  LDR             R0, [R0]; clothesTextureNames
458F12:  LDR             R1, [R0]; "torso"
458F14:  MOV             R0, R4
458F16:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
458F1A:  MOV             R0, R8
458F1C:  MOV             R1, R4
458F1E:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
458F22:  LDR             R0, =(legsTxdName_ptr - 0x458F28)
458F24:  ADD             R0, PC; legsTxdName_ptr
458F26:  LDR             R6, [R0]; legsTxdName
458F28:  LDR             R0, [R6]; "player_legs" ...
458F2A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458F2E:  LDR             R1, =(legsTex_ptr - 0x458F34)
458F30:  ADD             R1, PC; legsTex_ptr
458F32:  LDR             R1, [R1]; legsTex
458F34:  LDR             R1, [R1]; "legs" ; unsigned int
458F36:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458F3A:  MOV             R4, R0
458F3C:  LDR             R0, [R6]; "player_legs" ...
458F3E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458F42:  LDR             R1, =(fatLegsTex_ptr - 0x458F48)
458F44:  ADD             R1, PC; fatLegsTex_ptr
458F46:  LDR             R1, [R1]; fatLegsTex
458F48:  LDR             R1, [R1]; "legs_fat" ...
458F4A:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458F4E:  MOV             R9, R0
458F50:  LDR             R0, [R6]; "player_legs" ...
458F52:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458F56:  LDR             R1, =(rippedLegsTex_ptr - 0x458F5C)
458F58:  ADD             R1, PC; rippedLegsTex_ptr
458F5A:  LDR             R1, [R1]; rippedLegsTex
458F5C:  LDR             R1, [R1]; "legs_ripped" ...
458F5E:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458F62:  MOV             R6, R0
458F64:  MOV             R0, R4
458F66:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458F6A:  VMOV            R3, S18; int
458F6E:  MOV             R1, R9; int
458F70:  MOV             R2, R6; int
458F72:  VSTR            S20, [SP,#0x60+var_60]
458F76:  MOV             R4, R0
458F78:  VSTR            S16, [SP,#0x60+var_5C]
458F7C:  BLX             j__ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_S1_fffi; CClothesBuilder::BlendTextures(RwTexture *,RwTexture *,RwTexture *,float,float,float,int)
458F80:  LDR             R0, [R5,#8]; this
458F82:  MOVS            R1, #0; unsigned int
458F84:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458F88:  MOV             R1, R0
458F8A:  CBZ             R1, loc_458F9E
458F8C:  CBZ             R4, loc_458F98
458F8E:  MOV             R0, R4
458F90:  MOVS            R2, #0
458F92:  BLX             j__ZN15CClothesBuilder26PlaceTextureOnTopOfTextureEP9RwTextureS1_b; CClothesBuilder::PlaceTextureOnTopOfTexture(RwTexture *,RwTexture *,bool)
458F96:  B               loc_458F9E
458F98:  MOV             R0, R1
458F9A:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458F9E:  LDR             R0, =(clothesTextureNames_ptr - 0x458FA4)
458FA0:  ADD             R0, PC; clothesTextureNames_ptr
458FA2:  LDR             R0, [R0]; clothesTextureNames
458FA4:  LDR             R1, [R0,#(off_6AE51C - 0x6AE510)]; "legs"
458FA6:  MOV             R0, R4
458FA8:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
458FAC:  MOV             R0, R8
458FAE:  MOV             R1, R4
458FB0:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
458FB4:  LDR             R4, [R5,#4]
458FB6:  CBNZ            R4, loc_458FC6
458FB8:  LDR             R0, =(faceTxdName_ptr - 0x458FBE)
458FBA:  ADD             R0, PC; faceTxdName_ptr
458FBC:  LDR             R0, [R0]; faceTxdName
458FBE:  LDR             R0, [R0]; "player_face" ...
458FC0:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
458FC4:  MOV             R4, R0
458FC6:  LDR             R0, =(faceTex_ptr - 0x458FCC)
458FC8:  ADD             R0, PC; faceTex_ptr
458FCA:  LDR             R0, [R0]; faceTex
458FCC:  LDR             R1, [R0]; "face" ; unsigned int
458FCE:  MOV             R0, R4; this
458FD0:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458FD4:  MOV             R6, R0
458FD6:  LDR             R0, =(fatFaceTex_ptr - 0x458FDC)
458FD8:  ADD             R0, PC; fatFaceTex_ptr
458FDA:  LDR             R0, [R0]; fatFaceTex
458FDC:  LDR             R1, [R0]; "face_fat" ...
458FDE:  MOV             R0, R4; this
458FE0:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
458FE4:  MOV             R9, R0
458FE6:  CBZ             R6, loc_459020
458FE8:  MOV             R0, R6
458FEA:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
458FEE:  MOV             R4, R0
458FF0:  CMP.W           R9, #0
458FF4:  BEQ             loc_45902E
458FF6:  VADD.F32        S0, S20, S16
458FFA:  MOV             R0, R4
458FFC:  VADD.F32        S2, S18, S16
459000:  MOV             R1, R9
459002:  VADD.F32        S0, S18, S0
459006:  VADD.F32        S4, S20, S2
45900A:  VDIV.F32        S0, S2, S0
45900E:  VDIV.F32        S2, S20, S4
459012:  VMOV            R2, S0
459016:  VMOV            R3, S2
45901A:  BLX             j__ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_ffi; CClothesBuilder::BlendTextures(RwTexture *,RwTexture *,float,float,int)
45901E:  B               loc_45902E
459020:  MOV             R0, R4; this
459022:  MOVS            R1, #0; unsigned int
459024:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
459028:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
45902C:  MOV             R4, R0
45902E:  LDR             R0, =(clothesTextureNames_ptr - 0x459034)
459030:  ADD             R0, PC; clothesTextureNames_ptr
459032:  LDR             R0, [R0]; clothesTextureNames
459034:  LDR             R1, [R0,#(off_6AE514 - 0x6AE510)]; "head" ...
459036:  MOV             R0, R4
459038:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
45903C:  MOV             R0, R8
45903E:  MOV             R1, R4
459040:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
459044:  LDR             R0, [R5,#0xC]
459046:  CBNZ            R0, loc_459054
459048:  LDR             R0, =(feetTxdName_ptr - 0x45904E)
45904A:  ADD             R0, PC; feetTxdName_ptr
45904C:  LDR             R0, [R0]; feetTxdName
45904E:  LDR             R0, [R0]; "player_feet" ...
459050:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
459054:  MOVS            R1, #0; unsigned int
459056:  MOVS            R4, #0
459058:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
45905C:  CBZ             R0, loc_459064
45905E:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
459062:  MOV             R4, R0
459064:  LDR             R0, =(clothesTextureNames_ptr - 0x45906A)
459066:  ADD             R0, PC; clothesTextureNames_ptr
459068:  LDR             R0, [R0]; clothesTextureNames
45906A:  LDR             R1, [R0,#(off_6AE520 - 0x6AE510)]; "feet"
45906C:  MOV             R0, R4
45906E:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
459072:  MOV             R0, R8
459074:  MOV             R1, R4
459076:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
45907A:  LDR             R0, [R5,#0x34]; this
45907C:  MOVS            R1, #0; unsigned int
45907E:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
459082:  CBZ             R0, loc_4590A2
459084:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
459088:  MOV             R4, R0
45908A:  CBZ             R4, loc_4590A2
45908C:  LDR             R0, =(clothesTextureNames_ptr - 0x459092)
45908E:  ADD             R0, PC; clothesTextureNames_ptr
459090:  LDR             R0, [R0]; clothesTextureNames
459092:  LDR             R1, [R0,#(off_6AE524 - 0x6AE510)]; "necklace" ...
459094:  MOV             R0, R4
459096:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
45909A:  MOV             R0, R8
45909C:  MOV             R1, R4
45909E:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
4590A2:  LDR             R0, [R5,#0x38]; this
4590A4:  MOVS            R1, #0; unsigned int
4590A6:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
4590AA:  CBZ             R0, loc_4590CA
4590AC:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
4590B0:  MOV             R4, R0
4590B2:  CBZ             R4, loc_4590CA
4590B4:  LDR             R0, =(clothesTextureNames_ptr - 0x4590BA)
4590B6:  ADD             R0, PC; clothesTextureNames_ptr
4590B8:  LDR             R0, [R0]; clothesTextureNames
4590BA:  LDR             R1, [R0,#(off_6AE528 - 0x6AE510)]; "watch" ...
4590BC:  MOV             R0, R4
4590BE:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
4590C2:  MOV             R0, R8
4590C4:  MOV             R1, R4
4590C6:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
4590CA:  LDR             R0, [R5,#0x3C]; this
4590CC:  MOVS            R1, #0; unsigned int
4590CE:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
4590D2:  CBZ             R0, loc_4590F2
4590D4:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
4590D8:  MOV             R4, R0
4590DA:  CBZ             R4, loc_4590F2
4590DC:  LDR             R0, =(clothesTextureNames_ptr - 0x4590E2)
4590DE:  ADD             R0, PC; clothesTextureNames_ptr
4590E0:  LDR             R0, [R0]; clothesTextureNames
4590E2:  LDR             R1, [R0,#(off_6AE52C - 0x6AE510)]; "glasses" ...
4590E4:  MOV             R0, R4
4590E6:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
4590EA:  MOV             R0, R8
4590EC:  MOV             R1, R4
4590EE:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
4590F2:  LDR             R0, [R5,#0x40]; this
4590F4:  MOVS            R1, #0; unsigned int
4590F6:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
4590FA:  CBZ             R0, loc_45911A
4590FC:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
459100:  MOV             R4, R0
459102:  CBZ             R4, loc_45911A
459104:  LDR             R0, =(clothesTextureNames_ptr - 0x45910A)
459106:  ADD             R0, PC; clothesTextureNames_ptr
459108:  LDR             R0, [R0]; clothesTextureNames
45910A:  LDR             R1, [R0,#(off_6AE530 - 0x6AE510)]; "hat"
45910C:  MOV             R0, R4
45910E:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
459112:  MOV             R0, R8
459114:  MOV             R1, R4
459116:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
45911A:  LDR             R0, [R5,#0x44]; this
45911C:  MOVS            R1, #0; unsigned int
45911E:  BLX             j__ZN15CClothesBuilder17GetClothesTextureEjPKc; CClothesBuilder::GetClothesTexture(uint,char const*)
459122:  CBZ             R0, loc_459152
459124:  BLX             j__ZN15CClothesBuilder11CopyTextureEP9RwTexture; CClothesBuilder::CopyTexture(RwTexture *)
459128:  MOV             R4, R0
45912A:  CBZ             R4, loc_459152
45912C:  LDR             R0, =(clothesTextureNames_ptr - 0x459132)
45912E:  ADD             R0, PC; clothesTextureNames_ptr
459130:  LDR             R0, [R0]; clothesTextureNames
459132:  LDR             R1, [R0,#(off_6AE534 - 0x6AE510)]; "extra1" ...
459134:  MOV             R0, R4
459136:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
45913A:  MOV             R0, R8
45913C:  MOV             R1, R4
45913E:  ADD             SP, SP, #0x18
459140:  VPOP            {D8-D12}
459144:  ADD             SP, SP, #4
459146:  POP.W           {R8-R11}
45914A:  POP.W           {R4-R7,LR}
45914E:  B.W             sub_19BFE4
459152:  ADD             SP, SP, #0x18
459154:  VPOP            {D8-D12}
459158:  ADD             SP, SP, #4
45915A:  POP.W           {R8-R11}
45915E:  POP             {R4-R7,PC}
