; =========================================================
; Game Engine Function: _ZN8CClothes15LoadClothesFileEv
; Address            : 0x457A60 - 0x457D38
; =========================================================

457A60:  PUSH            {R4-R7,LR}
457A62:  ADD             R7, SP, #0xC
457A64:  PUSH.W          {R8-R11}
457A68:  SUB             SP, SP, #0x4C
457A6A:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457A76)
457A6C:  MOV.W           R8, #0
457A70:  ADR             R1, aR_17; "r"
457A72:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457A74:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457A76:  STR.W           R8, [R0]; CClothes::ms_numRuleTags
457A7A:  ADR             R0, aDataClothesDat; "DATA\\CLOTHES.DAT"
457A7C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
457A80:  MOV             R4, R0
457A82:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
457A86:  MOV             R11, R0
457A88:  CMP.W           R11, #0
457A8C:  BEQ.W           loc_457D28
457A90:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457A9A)
457A92:  ADR             R6, aEnd_0; "end"
457A94:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AA0)
457A96:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457A98:  LDR.W           R9, =(asc_619030 - 0x457AA4); " \t,"
457A9C:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457A9E:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AA0:  ADD             R9, PC; " \t,"
457AA2:  STR             R0, [SP,#0x68+var_24]
457AA4:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AA6:  STR             R0, [SP,#0x68+var_28]
457AA8:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AB0)
457AAA:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AB2)
457AAC:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457AAE:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457AB0:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AB2:  STR             R0, [SP,#0x68+var_38]
457AB4:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AB6:  STR             R0, [SP,#0x68+var_3C]
457AB8:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AC0)
457ABA:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AC2)
457ABC:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457ABE:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457AC0:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AC2:  STR             R0, [SP,#0x68+var_2C]
457AC4:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AC6:  STR             R0, [SP,#0x68+var_30]
457AC8:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AD0)
457ACA:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AD2)
457ACC:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457ACE:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457AD0:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AD2:  STR             R0, [SP,#0x68+var_40]
457AD4:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AD6:  STR             R0, [SP,#0x68+var_34]
457AD8:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AE0)
457ADA:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AE2)
457ADC:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457ADE:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457AE0:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AE2:  STR             R0, [SP,#0x68+var_44]
457AE4:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AE6:  STR             R0, [SP,#0x68+var_48]
457AE8:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AF0)
457AEA:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457AF2)
457AEC:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457AEE:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457AF0:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AF2:  STR             R0, [SP,#0x68+var_5C]
457AF4:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457AFA)
457AF6:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457AF8:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457AFA:  STR             R0, [SP,#0x68+var_4C]
457AFC:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457AFE:  STR             R0, [SP,#0x68+var_50]
457B00:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457B08)
457B02:  LDR             R1, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x457B0A)
457B04:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457B06:  ADD             R1, PC; _ZN8CClothes15ms_clothesRulesE_ptr
457B08:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457B0A:  STR             R0, [SP,#0x68+var_54]
457B0C:  LDR             R0, [R1]; CClothes::ms_clothesRules ...
457B0E:  STR             R0, [SP,#0x68+var_58]
457B10:  STR             R0, [SP,#0x68+var_20]
457B12:  B               loc_457CE6
457B14:  ADR             R0, aRule; "rule"
457B16:  MOV             R1, R11; char *
457B18:  MOVS            R2, #4; size_t
457B1A:  BLX             strncmp
457B1E:  CMP             R0, #0
457B20:  MOV.W           R8, #0
457B24:  IT EQ
457B26:  MOVEQ.W         R8, #1
457B2A:  B               def_457BEA; jumptable 00457BEA default case
457B2C:  MOV.W           R8, #0
457B30:  B               def_457BEA; jumptable 00457BEA default case
457B32:  ADR             R1, aCuts; "cuts"
457B34:  MOV             R0, R5; char *
457B36:  BLX             strcasecmp
457B3A:  CBZ             R0, loc_457B8E
457B3C:  ADR             R1, aSetc; "setc"
457B3E:  MOV             R0, R5; char *
457B40:  BLX             strcasecmp
457B44:  CBZ             R0, loc_457B94
457B46:  ADR             R1, aTex; "tex"
457B48:  MOV             R0, R5; char *
457B4A:  BLX             strcasecmp
457B4E:  CBZ             R0, loc_457B9A
457B50:  ADR             R1, aHide; "hide"
457B52:  MOV             R0, R5; char *
457B54:  BLX             strcasecmp
457B58:  CBZ             R0, loc_457BA0
457B5A:  ADR             R1, aIgnore; "ignore"
457B5C:  MOV             R0, R5; char *
457B5E:  BLX             strcasecmp
457B62:  CBZ             R0, loc_457BA6
457B64:  ADR             R1, aEndignore; "endignore"
457B66:  MOV             R0, R5; char *
457B68:  BLX             strcasecmp
457B6C:  CBZ             R0, loc_457BAC
457B6E:  ADR             R1, aExclusive; "exclusive"
457B70:  MOV             R0, R5; char *
457B72:  BLX             strcasecmp
457B76:  CBZ             R0, loc_457BB2
457B78:  ADR             R1, aEndexclusive; "endexclusive"
457B7A:  MOV             R0, R5; char *
457B7C:  BLX             strcasecmp
457B80:  CMP             R0, #0
457B82:  LDR.W           R10, [SP,#0x68+var_20]
457B86:  IT EQ
457B88:  MOVEQ.W         R10, #6
457B8C:  B               loc_457BB6
457B8E:  MOV.W           R10, #0
457B92:  B               loc_457BB6
457B94:  MOV.W           R10, #1
457B98:  B               loc_457BB6
457B9A:  MOV.W           R10, #2
457B9E:  B               loc_457BB6
457BA0:  MOV.W           R10, #3
457BA4:  B               loc_457BB6
457BA6:  MOV.W           R10, #5
457BAA:  B               loc_457BB6
457BAC:  MOV.W           R10, #4
457BB0:  B               loc_457BB6
457BB2:  MOV.W           R10, #7
457BB6:  LDR             R2, [SP,#0x68+var_24]
457BB8:  LDR             R5, =(asc_619030 - 0x457BC0); " \t,"
457BBA:  LDR             R0, [R2]
457BBC:  ADD             R5, PC; " \t,"
457BBE:  ADDS            R1, R0, #1
457BC0:  STR             R1, [R2]
457BC2:  LDR             R1, [SP,#0x68+var_28]
457BC4:  STR.W           R10, [R1,R0,LSL#2]
457BC8:  MOVS            R0, #0; char *
457BCA:  MOV             R1, R5; char *
457BCC:  BLX             strtok
457BD0:  MOV             R11, R0
457BD2:  MOVS            R0, #0; char *
457BD4:  MOV             R1, R5; char *
457BD6:  BLX             strtok
457BDA:  MOV             R5, R0
457BDC:  CMP.W           R10, #7; switch 8 cases
457BE0:  STR.W           R10, [SP,#0x68+var_20]
457BE4:  BHI.W           def_457BEA; jumptable 00457BEA default case
457BE8:  LDR             R1, [SP,#0x68+var_20]; char *
457BEA:  TBB.W           [PC,R1]; switch jump
457BEE:  DCB 6; jump table for switch statement
457BEF:  DCB 0xF
457BF0:  DCB 0x47
457BF1:  DCB 0x53
457BF2:  DCB 4
457BF3:  DCB 4
457BF4:  DCB 4
457BF5:  DCB 4
457BF6:  MOV             R0, R11; jumptable 00457BEA cases 4-7
457BF8:  B               loc_457CCE
457BFA:  MOV             R0, R11; jumptable 00457BEA case 0
457BFC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457C00:  LDR             R3, [SP,#0x68+var_38]
457C02:  LDR             R1, [R3]
457C04:  ADDS            R2, R1, #1
457C06:  STR             R2, [R3]
457C08:  LDR             R2, [SP,#0x68+var_3C]
457C0A:  B               loc_457C8C
457C0C:  LDR.W           R10, =(asc_619030 - 0x457C16); jumptable 00457BEA case 1
457C10:  MOVS            R0, #0; char *
457C12:  ADD             R10, PC; " \t,"
457C14:  MOV             R1, R10; char *
457C16:  BLX             strtok
457C1A:  STR             R0, [SP,#0x68+var_60]
457C1C:  MOVS            R0, #0; char *
457C1E:  MOV             R1, R10; char *
457C20:  BLX             strtok
457C24:  STR             R0, [SP,#0x68+var_68]
457C26:  MOV             R0, R11; this
457C28:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457C2C:  LDR.W           R10, [SP,#0x68+var_40]
457C30:  LDR.W           R11, [R10]
457C34:  ADD.W           R1, R11, #1
457C38:  STR             R1, [SP,#0x68+var_64]
457C3A:  STR.W           R1, [R10]
457C3E:  LDR             R1, [SP,#0x68+var_34]
457C40:  STR.W           R0, [R1,R11,LSL#2]
457C44:  MOV             R0, R5; char *
457C46:  BLX             j__Z23GetClothesModelFromNamePKc; GetClothesModelFromName(char const*)
457C4A:  ADD.W           R5, R11, #2
457C4E:  STR.W           R5, [R10]
457C52:  LDR             R1, [SP,#0x68+var_34]
457C54:  ADR.W           R11, dword_457DC8
457C58:  LDRD.W          R2, R10, [SP,#0x68+var_64]
457C5C:  STR.W           R0, [R1,R2,LSL#2]
457C60:  MOV             R0, R11; char *
457C62:  MOV             R1, R10; char *
457C64:  BLX             strcmp
457C68:  CBZ             R0, loc_457CB0
457C6A:  MOV             R0, R10; this
457C6C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457C70:  MOV             R2, R0
457C72:  LDR             R0, [SP,#0x68+var_5C]
457C74:  LDR.W           R10, [SP,#0x68+var_68]
457C78:  LDR             R5, [R0]
457C7A:  B               loc_457CB6
457C7C:  MOV             R0, R11; jumptable 00457BEA case 2
457C7E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457C82:  LDR             R3, [SP,#0x68+var_4C]
457C84:  LDR             R1, [R3]
457C86:  ADDS            R2, R1, #1
457C88:  STR             R2, [R3]
457C8A:  LDR             R2, [SP,#0x68+var_50]
457C8C:  STR.W           R0, [R2,R1,LSL#2]
457C90:  MOV             R0, R5
457C92:  B               loc_457CCE
457C94:  MOV             R0, R11; jumptable 00457BEA case 3
457C96:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457C9A:  LDR             R3, [SP,#0x68+var_54]
457C9C:  LDR             R1, [R3]
457C9E:  ADDS            R2, R1, #1
457CA0:  STR             R2, [R3]
457CA2:  LDR             R2, [SP,#0x68+var_58]
457CA4:  STR.W           R0, [R2,R1,LSL#2]
457CA8:  MOV             R0, R5; char *
457CAA:  BLX             j__Z23GetClothesModelFromNamePKc; GetClothesModelFromName(char const*)
457CAE:  B               loc_457CD2
457CB0:  LDR.W           R10, [SP,#0x68+var_68]
457CB4:  MOVS            R2, #0
457CB6:  LDR             R1, [SP,#0x68+var_44]
457CB8:  ADDS            R0, R5, #1
457CBA:  STR             R0, [R1]
457CBC:  MOV             R1, R10; char *
457CBE:  LDR             R0, [SP,#0x68+var_48]
457CC0:  STR.W           R2, [R0,R5,LSL#2]
457CC4:  MOV             R0, R11; char *
457CC6:  BLX             strcmp
457CCA:  CBZ             R0, loc_457CE2
457CCC:  MOV             R0, R10; this
457CCE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
457CD2:  LDR             R3, [SP,#0x68+var_2C]
457CD4:  LDR             R1, [R3]
457CD6:  ADDS            R2, R1, #1
457CD8:  STR             R2, [R3]
457CDA:  LDR             R2, [SP,#0x68+var_30]
457CDC:  STR.W           R0, [R2,R1,LSL#2]
457CE0:  B               def_457BEA; jumptable 00457BEA default case
457CE2:  MOVS            R0, #0
457CE4:  B               loc_457CD2
457CE6:  LDRB.W          R0, [R11]
457CEA:  CMP             R0, #0
457CEC:  IT NE
457CEE:  CMPNE           R0, #0x23 ; '#'
457CF0:  BEQ             def_457BEA; jumptable 00457BEA default case
457CF2:  CMP.W           R8, #0
457CF6:  BEQ.W           loc_457B14
457CFA:  MOV             R0, R6; char *
457CFC:  MOV             R1, R11; char *
457CFE:  MOVS            R2, #3; size_t
457D00:  BLX             strncmp
457D04:  CMP             R0, #0
457D06:  BEQ.W           loc_457B2C
457D0A:  MOV             R0, R11; char *
457D0C:  MOV             R1, R9; char *
457D0E:  BLX             strtok
457D12:  MOV             R5, R0
457D14:  CMP             R5, #0
457D16:  BNE.W           loc_457B32
457D1A:  MOV             R0, R4; jumptable 00457BEA default case
457D1C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
457D20:  MOV             R11, R0
457D22:  CMP.W           R11, #0
457D26:  BNE             loc_457CE6
457D28:  MOV             R0, R4; this
457D2A:  ADD             SP, SP, #0x4C ; 'L'
457D2C:  POP.W           {R8-R11}
457D30:  POP.W           {R4-R7,LR}
457D34:  B.W             j_j__ZN8CFileMgr9CloseFileEj; j_CFileMgr::CloseFile(uint)
