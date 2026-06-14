; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadPedObjectEPKc
; Address            : 0x469E4C - 0x46A026
; =========================================================

469E4C:  PUSH            {R4-R7,LR}
469E4E:  ADD             R7, SP, #0xC
469E50:  PUSH.W          {R8-R11}
469E54:  SUB             SP, SP, #0x164
469E56:  LDR             R1, =(__stack_chk_guard_ptr - 0x469E62)
469E58:  ADD             R3, SP, #0x180+var_BC
469E5A:  LDR             R2, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x469E68)
469E5C:  ADD             R5, SP, #0x180+var_68
469E5E:  ADD             R1, PC; __stack_chk_guard_ptr
469E60:  ADD.W           R9, SP, #0x180+var_90
469E64:  ADD             R2, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
469E66:  ADD             R6, SP, #0x180+var_148
469E68:  LDR             R1, [R1]; __stack_chk_guard
469E6A:  ADD             R4, SP, #0x180+var_A8
469E6C:  LDR.W           R11, [R2]; CAnimManager::ms_numAnimAssocDefinitions ...
469E70:  ADD             R2, SP, #0x180+var_F8
469E72:  ADD.W           R10, SP, #0x180+var_78
469E76:  LDR             R1, [R1]
469E78:  STR             R1, [SP,#0x180+var_20]
469E7A:  MOV.W           R1, #0xFFFFFFFF
469E7E:  STR             R1, [SP,#0x180+var_138]
469E80:  LDR.W           R1, [R11]; CAnimManager::ms_numAnimAssocDefinitions
469E84:  STR             R1, [SP,#0x180+var_14C]
469E86:  ADD             R1, SP, #0x180+var_134
469E88:  STRD.W          R6, R3, [SP,#0x180+var_160]
469E8C:  ADD             R6, SP, #0x180+var_50
469E8E:  STRD.W          R2, R1, [SP,#0x180+var_158]
469E92:  ADD             R1, SP, #0x180+var_144
469E94:  ADD             R2, SP, #0x180+var_140
469E96:  STRD.W          R6, R9, [SP,#0x180+var_180]
469E9A:  STRD.W          R4, R5, [SP,#0x180+var_178]
469E9E:  ADD             R5, SP, #0x180+var_38
469EA0:  ADD             R3, SP, #0x180+var_13C
469EA2:  STRD.W          R3, R2, [SP,#0x180+var_170]
469EA6:  STRD.W          R10, R1, [SP,#0x180+var_168]
469EAA:  ADR             R1, aDSSSSSXXSDDSSS; "%d %s %s %s %s %s %x %x %s %d %d %s %s "...
469EAC:  ADD             R2, SP, #0x180+var_138
469EAE:  MOV             R3, R5
469EB0:  BLX             sscanf
469EB4:  LDR             R0, [SP,#0x180+var_138]; this
469EB6:  BLX             j__ZN10CModelInfo11AddPedModelEi; CModelInfo::AddPedModel(int)
469EBA:  MOV             R8, R0
469EBC:  MOV             R0, R5; this
469EBE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
469EC2:  STR.W           R0, [R8,#4]
469EC6:  ADD.W           R0, R8, #8; char *
469ECA:  MOV             R1, R5; char *
469ECC:  BLX             strcpy
469ED0:  LDR             R0, [SP,#0x180+var_138]; this
469ED2:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
469ED6:  MOV             R2, R0; char *
469ED8:  MOV             R0, R8; this
469EDA:  MOV             R1, R6; CTxdStore *
469EDC:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
469EE0:  LDR.W           R0, [R8]
469EE4:  MOV             R1, R10
469EE6:  LDR             R2, [R0,#0x34]
469EE8:  MOV             R0, R8
469EEA:  BLX             R2
469EEC:  LDR             R0, =(_ZN14CTempColModels15ms_colModelPed1E_ptr - 0x469EF4)
469EEE:  MOVS            R2, #0; bool
469EF0:  ADD             R0, PC; _ZN14CTempColModels15ms_colModelPed1E_ptr
469EF2:  LDR             R1, [R0]; CColModel *
469EF4:  MOV             R0, R8; this
469EF6:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
469EFA:  MOV             R0, R9; this
469EFC:  BLX             j__ZN8CPedType11FindPedTypeEPc; CPedType::FindPedType(char *)
469F00:  STR.W           R0, [R8,#0x40]
469F04:  MOV             R0, R4; this
469F06:  BLX             j__ZN9CPedStats14GetPedStatTypeEPc; CPedStats::GetPedStatType(char *)
469F0A:  STR.W           R0, [R8,#0x44]
469F0E:  LDR.W           R0, [R11]; CAnimManager::ms_numAnimAssocDefinitions
469F12:  CMP             R0, #1
469F14:  BLT             loc_469F38
469F16:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x469F20)
469F18:  ADD             R6, SP, #0x180+var_68
469F1A:  MOVS            R5, #0
469F1C:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
469F1E:  LDR             R4, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
469F20:  MOV             R0, R5
469F22:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
469F26:  MOV             R1, R0; char *
469F28:  MOV             R0, R6; char *
469F2A:  BLX             strcmp
469F2E:  CBZ             R0, loc_469F3A
469F30:  LDR             R0, [R4]; CAnimManager::ms_numAnimAssocDefinitions
469F32:  ADDS            R5, #1
469F34:  CMP             R5, R0
469F36:  BLT             loc_469F20
469F38:  LDR             R5, [SP,#0x180+var_14C]
469F3A:  STR.W           R5, [R8,#0x3C]
469F3E:  LDR             R0, [SP,#0x180+var_13C]
469F40:  STRH.W          R0, [R8,#0x48]
469F44:  LDR             R0, [SP,#0x180+var_140]
469F46:  STRH.W          R0, [R8,#0x4A]
469F4A:  LDRD.W          R0, R1, [SP,#0x180+var_148]
469F4E:  ADDS            R0, #1
469F50:  STRB.W          R0, [R8,#0x51]
469F54:  ADDS            R0, R1, #1
469F56:  STRB.W          R0, [R8,#0x50]
469F5A:  LDRB.W          R0, [SP,#0x180+var_38]
469F5E:  SUB.W           R1, R0, #0x61 ; 'a'
469F62:  UXTB            R1, R1
469F64:  CMP             R1, #0x1A
469F66:  IT CC
469F68:  ADDCC           R0, #0xE0
469F6A:  MOV             R1, #0xFFFFFFBE; char *
469F6E:  UXTAB.W         R3, R1, R0
469F72:  CMP             R3, #0x15; switch 22 cases
469F74:  BHI             def_469F7A; jumptable 00469F7A default case, cases 1-5,8-12,14-20
469F76:  MOVS            R0, #3
469F78:  MOVS            R2, #1
469F7A:  TBB.W           [PC,R3]; switch jump
469F7E:  DCB 0xB; jump table for switch statement
469F7F:  DCB 0xD
469F80:  DCB 0xD
469F81:  DCB 0xD
469F82:  DCB 0xD
469F83:  DCB 0xD
469F84:  DCB 0x29
469F85:  DCB 0x2C
469F86:  DCB 0xD
469F87:  DCB 0xD
469F88:  DCB 0xD
469F89:  DCB 0xD
469F8A:  DCB 0xD
469F8B:  DCB 0x2C
469F8C:  DCB 0xD
469F8D:  DCB 0xD
469F8E:  DCB 0xD
469F8F:  DCB 0xD
469F90:  DCB 0xD
469F91:  DCB 0xD
469F92:  DCB 0xD
469F93:  DCB 0x2B
469F94:  MOV             R0, R2; jumptable 00469F7A case 0
469F96:  B               loc_469FD6; jumptable 00469F7A cases 7,13
469F98:  LDRB.W          R0, [SP,#0x180+var_37]; jumptable 00469F7A default case, cases 1-5,8-12,14-20
469F9C:  SUB.W           R2, R0, #0x61 ; 'a'
469FA0:  UXTB            R2, R2
469FA2:  CMP             R2, #0x1A
469FA4:  IT CC
469FA6:  ADDCC           R0, #0xE0
469FA8:  UXTAB.W         R1, R1, R0
469FAC:  CMP             R1, #0x15; switch 22 cases
469FAE:  BHI             def_469FB4; jumptable 00469FB4 default case, cases 1-5,8-12,14-20
469FB0:  MOVS            R0, #3
469FB2:  MOVS            R2, #1
469FB4:  TBB.W           [PC,R1]; switch jump
469FB8:  DCB 0xB; jump table for switch statement
469FB9:  DCB 0x35
469FBA:  DCB 0x35
469FBB:  DCB 0x35
469FBC:  DCB 0x35
469FBD:  DCB 0x35
469FBE:  DCB 0xC
469FBF:  DCB 0xF
469FC0:  DCB 0x35
469FC1:  DCB 0x35
469FC2:  DCB 0x35
469FC3:  DCB 0x35
469FC4:  DCB 0x35
469FC5:  DCB 0xF
469FC6:  DCB 0x35
469FC7:  DCB 0x35
469FC8:  DCB 0x35
469FC9:  DCB 0x35
469FCA:  DCB 0x35
469FCB:  DCB 0x35
469FCC:  DCB 0x35
469FCD:  DCB 0xE
469FCE:  B               loc_469F94; jumptable 00469FB4 case 0
469FD0:  MOVS            R0, #4; jumptable 00469F7A case 6
469FD2:  B               loc_469FD6; jumptable 00469F7A cases 7,13
469FD4:  MOVS            R0, #2; jumptable 00469F7A case 21
469FD6:  STRB.W          R0, [R8,#0x52]; jumptable 00469F7A cases 7,13
469FDA:  ADD             R0, SP, #0x180+var_BC; this
469FDC:  BLX             j__ZN23CAEPedSpeechAudioEntity15GetAudioPedTypeEPc; CAEPedSpeechAudioEntity::GetAudioPedType(char *)
469FE0:  MOV             R5, R0
469FE2:  ADD             R0, SP, #0x180+var_F8; this
469FE4:  MOV             R1, R5; char *
469FE6:  STRH.W          R5, [R8,#0x54]
469FEA:  BLX             j__ZN23CAEPedSpeechAudioEntity8GetVoiceEPcs; CAEPedSpeechAudioEntity::GetVoice(char *,short)
469FEE:  STRH.W          R0, [R8,#0x56]
469FF2:  ADD             R0, SP, #0x180+var_134; this
469FF4:  MOV             R1, R5; char *
469FF6:  BLX             j__ZN23CAEPedSpeechAudioEntity8GetVoiceEPcs; CAEPedSpeechAudioEntity::GetVoice(char *,short)
469FFA:  LDRH.W          R1, [R8,#0x56]
469FFE:  STRH.W          R0, [R8,#0x58]
46A002:  STRH.W          R1, [R8,#0x5A]
46A006:  LDR             R1, =(__stack_chk_guard_ptr - 0x46A00E)
46A008:  LDR             R0, [SP,#0x180+var_138]
46A00A:  ADD             R1, PC; __stack_chk_guard_ptr
46A00C:  LDR             R2, [SP,#0x180+var_20]
46A00E:  LDR             R1, [R1]; __stack_chk_guard
46A010:  LDR             R1, [R1]
46A012:  SUBS            R1, R1, R2
46A014:  ITTT EQ
46A016:  ADDEQ           SP, SP, #0x164
46A018:  POPEQ.W         {R8-R11}
46A01C:  POPEQ           {R4-R7,PC}
46A01E:  BLX             __stack_chk_fail
46A022:  MOVS            R2, #0; jumptable 00469FB4 default case, cases 1-5,8-12,14-20
46A024:  B               loc_469F94; jumptable 00469F7A case 0
