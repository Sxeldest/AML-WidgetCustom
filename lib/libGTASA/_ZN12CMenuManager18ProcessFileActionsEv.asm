; =========================================================
; Game Engine Function: _ZN12CMenuManager18ProcessFileActionsEv
; Address            : 0x431B40 - 0x431EC2
; =========================================================

431B40:  PUSH            {R4-R7,LR}
431B42:  ADD             R7, SP, #0xC
431B44:  PUSH.W          {R8-R10}
431B48:  MOV             R4, R0
431B4A:  MOVW            R9, #:lower16:off_45434C
431B4E:  LDRSB.W         R0, [R4,#0x121]
431B52:  MOVW            R8, #0x4546
431B56:  MOVT            R9, #:upper16:off_45434C
431B5A:  MOVT            R8, #0x5F53
431B5E:  CMP             R0, #0xD
431B60:  BEQ             loc_431BDC
431B62:  CMP             R0, #0x12
431B64:  BEQ             loc_431C10
431B66:  CMP             R0, #0xE
431B68:  BNE.W           loc_431CD8
431B6C:  LDR.W           R0, =(byte_990BF8 - 0x431B74)
431B70:  ADD             R0, PC; byte_990BF8
431B72:  LDRB            R0, [R0]
431B74:  CMP             R0, #0
431B76:  BEQ             loc_431C58
431B78:  LDR.W           R0, =(gMobileMenu_ptr - 0x431B84)
431B7C:  LDR.W           R2, =(PcSaveHelper_ptr - 0x431B86)
431B80:  ADD             R0, PC; gMobileMenu_ptr
431B82:  ADD             R2, PC; PcSaveHelper_ptr
431B84:  LDR             R0, [R0]; gMobileMenu
431B86:  LDRSB.W         R1, [R0,#(dword_6E00BC - 0x6E006C)]; signed __int8
431B8A:  LDR             R0, [R2]; PcSaveHelper ; this
431B8C:  BLX             j__ZN8C_PcSave10DeleteSlotEa; C_PcSave::DeleteSlot(signed char)
431B90:  CMP             R0, #1
431B92:  BNE.W           loc_431CDE
431B96:  LDR.W           R0, =(PcSaveHelper_ptr - 0x431B9E)
431B9A:  ADD             R0, PC; PcSaveHelper_ptr
431B9C:  LDR             R0, [R0]; PcSaveHelper ; this
431B9E:  BLX             j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
431BA2:  MOVW            R0, #0x1AAD
431BA6:  MOVS            R2, #0
431BA8:  LDRB.W          R1, [R4,#0x121]
431BAC:  STRB            R2, [R4,R0]
431BAE:  MOV             R0, R4; this
431BB0:  STRB.W          R1, [R4,#0x122]
431BB4:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
431BB8:  LDRB.W          R0, [R4,#0x121]
431BBC:  CMP             R0, #4
431BBE:  ITTTT EQ
431BC0:  LDREQ.W         R0, [R4,#0x8C]
431BC4:  LDREQ.W         R1, [R4,#0x98]
431BC8:  STREQ.W         R0, [R4,#0x90]
431BCC:  STREQ.W         R1, [R4,#0x9C]
431BD0:  MOVS            R0, #1
431BD2:  STR             R0, [R4,#0x38]
431BD4:  MOVS            R0, #0xF
431BD6:  STRB.W          R0, [R4,#0x121]
431BDA:  B               loc_431D52
431BDC:  LDR             R0, =(byte_990BFA - 0x431BE2)
431BDE:  ADD             R0, PC; byte_990BFA
431BE0:  LDRB            R0, [R0]
431BE2:  CMP             R0, #0
431BE4:  BEQ             loc_431C66
431BE6:  LDR             R0, =(gMobileMenu_ptr - 0x431BF0)
431BE8:  MOVS            R1, #1; int
431BEA:  MOVS            R5, #1
431BEC:  ADD             R0, PC; gMobileMenu_ptr
431BEE:  LDR             R0, [R0]; gMobileMenu
431BF0:  LDR             R0, [R0,#(dword_6E00BC - 0x6E006C)]; this
431BF2:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
431BF6:  CMP             R0, #1
431BF8:  BNE             loc_431C6A
431BFA:  LDR             R0, =(gMobileMenu_ptr - 0x431C02)
431BFC:  LDR             R1, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431C04)
431BFE:  ADD             R0, PC; gMobileMenu_ptr
431C00:  ADD             R1, PC; _ZN5CGame16bMissionPackGameE_ptr
431C02:  LDR             R0, [R0]; gMobileMenu
431C04:  LDR             R1, [R1]; CGame::bMissionPackGame ...
431C06:  STRB.W          R5, [R0,#(byte_6E00B9 - 0x6E006C)]
431C0A:  MOVS            R5, #0
431C0C:  STRB            R5, [R1]; CGame::bMissionPackGame
431C0E:  B               loc_431CD2
431C10:  LDR             R0, =(byte_990BF9 - 0x431C16)
431C12:  ADD             R0, PC; byte_990BF9
431C14:  LDRB            R0, [R0]
431C16:  CBZ             R0, loc_431C5E
431C18:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431C1E)
431C1A:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431C1C:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431C1E:  LDRB            R0, [R0]; this
431C20:  CMP             R0, #0
431C22:  BEQ.W           loc_431D58
431C26:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
431C2A:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431C32)
431C2C:  LDR             R1, =(gString_ptr - 0x431C34)
431C2E:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431C30:  ADD             R1, PC; gString_ptr
431C32:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431C34:  LDR             R5, [R1]; gString
431C36:  ADR             R1, aMpackMpackDScr_1; "MPACK//MPACK%d//SCR.SCM"
431C38:  LDRB            R2, [R0]; CGame::bMissionPackGame
431C3A:  MOV             R0, R5
431C3C:  BL              sub_5E6BC0
431C40:  ADR             R1, aRb_11; "rb"
431C42:  MOV             R0, R5; this
431C44:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
431C48:  CMP             R0, #0
431C4A:  BEQ.W           loc_431D5E
431C4E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
431C52:  MOV.W           R10, #1
431C56:  B               loc_431D6C
431C58:  LDR             R0, =(byte_990BF8 - 0x431C5E)
431C5A:  ADD             R0, PC; byte_990BF8
431C5C:  B               loc_431C62
431C5E:  LDR             R0, =(byte_990BF9 - 0x431C64)
431C60:  ADD             R0, PC; byte_990BF9
431C62:  MOVS            R1, #1
431C64:  B               loc_431EBA
431C66:  MOVS            R5, #1
431C68:  B               loc_431CD2
431C6A:  MOVW            R0, #0x1AAD
431C6E:  MOVS            R5, #0
431C70:  LDRB.W          R1, [R4,#0x121]
431C74:  STRB            R5, [R4,R0]
431C76:  MOV             R0, R4; this
431C78:  STRB.W          R1, [R4,#0x122]
431C7C:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
431C80:  LDRB.W          R0, [R4,#0x121]
431C84:  MOV.W           R10, #0xE2
431C88:  MOVS            R2, #8; size_t
431C8A:  CMP             R0, #4
431C8C:  ITTTT EQ
431C8E:  LDREQ.W         R0, [R4,#0x8C]
431C92:  LDREQ.W         R1, [R4,#0x98]
431C96:  STREQ.W         R0, [R4,#0x90]
431C9A:  STREQ.W         R1, [R4,#0x9C]
431C9E:  LDR             R0, =(aScreens_ptr - 0x431CAC)
431CA0:  MOVS            R1, #0x14
431CA2:  STRB.W          R1, [R4,#0x121]
431CA6:  MOVS            R1, #1
431CA8:  ADD             R0, PC; aScreens_ptr
431CAA:  STR             R5, [R4,#0x38]
431CAC:  LDR             R6, [R0]; "FEP_STA" ...
431CAE:  MOVW            R0, #(byte_6AC64E - 0x6AB480)
431CB2:  STRB            R1, [R6,R0]
431CB4:  ADR             R1, aFetLg; "FET_LG"
431CB6:  LDRSB.W         R0, [R4,#0x121]
431CBA:  SMLABB.W        R0, R0, R10, R6; char *
431CBE:  BLX             strncpy
431CC2:  LDRSB.W         R0, [R4,#0x121]
431CC6:  SMLABB.W        R0, R0, R10, R6
431CCA:  STR.W           R9, [R0,#0xF]
431CCE:  STR.W           R8, [R0,#0xB]
431CD2:  LDR             R0, =(byte_990BFA - 0x431CD8)
431CD4:  ADD             R0, PC; byte_990BFA
431CD6:  STRB            R5, [R0]
431CD8:  POP.W           {R8-R10}
431CDC:  POP             {R4-R7,PC}
431CDE:  MOVW            R0, #0x1AAD
431CE2:  MOVS            R5, #0
431CE4:  LDRB.W          R1, [R4,#0x121]
431CE8:  STRB            R5, [R4,R0]
431CEA:  MOV             R0, R4; this
431CEC:  STRB.W          R1, [R4,#0x122]
431CF0:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
431CF4:  LDRB.W          R0, [R4,#0x121]
431CF8:  MOVS            R2, #1
431CFA:  CMP             R0, #4
431CFC:  ITTTT EQ
431CFE:  LDREQ.W         R0, [R4,#0x8C]
431D02:  LDREQ.W         R1, [R4,#0x98]
431D06:  STREQ.W         R0, [R4,#0x90]
431D0A:  STREQ.W         R1, [R4,#0x9C]
431D0E:  LDR             R0, =(aScreens_ptr - 0x431D1E)
431D10:  MOVS            R1, #0x14
431D12:  STRB.W          R1, [R4,#0x121]
431D16:  MOVW            R1, #(byte_6AC64E - 0x6AB480)
431D1A:  ADD             R0, PC; aScreens_ptr
431D1C:  STR             R5, [R4,#0x38]
431D1E:  LDR             R0, [R0]; "FEP_STA" ...
431D20:  STRB            R2, [R0,R1]
431D22:  MOVS            R2, #0xE2
431D24:  LDRSB.W         R1, [R4,#0x121]
431D28:  SMULBB.W        R3, R1, R2
431D2C:  SMLABB.W        R1, R1, R2, R0
431D30:  STR.W           R8, [R0,R3]
431D34:  ADD.W           R3, R9, #0x70000
431D38:  ADD.W           R3, R3, #0x1F8
431D3C:  STR             R3, [R1,#4]
431D3E:  LDRSB.W         R1, [R4,#0x121]
431D42:  SMLABB.W        R0, R1, R2, R0
431D46:  ADD.W           R1, R9, #0x1F8
431D4A:  STR.W           R1, [R0,#0xF]
431D4E:  STR.W           R8, [R0,#0xB]
431D52:  LDR             R0, =(byte_990BF8 - 0x431D58)
431D54:  ADD             R0, PC; byte_990BF8
431D56:  B               loc_431EB8
431D58:  MOV.W           R10, #1
431D5C:  B               loc_431D6C
431D5E:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431D68)
431D60:  MOV.W           R10, #0
431D64:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431D66:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431D68:  LDRB            R5, [R0]; CGame::bMissionPackGame
431D6A:  CBNZ            R5, loc_431D9E
431D6C:  LDR             R0, =(SaveGameFromMenu_ptr - 0x431D74)
431D6E:  LDR             R1, =(gMobileMenu_ptr - 0x431D78)
431D70:  ADD             R0, PC; SaveGameFromMenu_ptr
431D72:  LDR             R3, =(PcSaveHelper_ptr - 0x431D7C)
431D74:  ADD             R1, PC; gMobileMenu_ptr
431D76:  LDR             R0, [R0]; SaveGameFromMenu
431D78:  ADD             R3, PC; PcSaveHelper_ptr
431D7A:  LDR             R1, [R1]; gMobileMenu
431D7C:  LDR             R5, [R3]; PcSaveHelper
431D7E:  LDRB            R2, [R0]; bool
431D80:  LDRSB.W         R1, [R1,#(dword_6E00BC - 0x6E006C)]; CGenericGameStorage *
431D84:  MOV             R0, R5; this
431D86:  BLX             j__ZN8C_PcSave8SaveSlotEab; C_PcSave::SaveSlot(signed char,bool)
431D8A:  MOV             R6, R0
431D8C:  MOV             R0, R5; this
431D8E:  BLX             j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
431D92:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431D9A)
431D94:  CMP             R6, #0
431D96:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431D98:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431D9A:  LDRB            R5, [R0]; CGame::bMissionPackGame
431D9C:  BNE             loc_431DAE
431D9E:  MOVS            R0, #0
431DA0:  CMP.W           R10, #0
431DA4:  BNE             loc_431E7E
431DA6:  CMP             R5, #0
431DA8:  MOV.W           R10, #0
431DAC:  BEQ             loc_431E7E
431DAE:  MOVW            R0, #0x1AAD
431DB2:  MOVS            R2, #0
431DB4:  LDRB.W          R1, [R4,#0x121]
431DB8:  STRB            R2, [R4,R0]
431DBA:  MOV             R0, R4; this
431DBC:  STRB.W          R1, [R4,#0x122]
431DC0:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
431DC4:  LDRB.W          R0, [R4,#0x121]
431DC8:  CMP.W           R10, #0
431DCC:  BNE             loc_431E1E
431DCE:  CBZ             R5, loc_431E1E
431DD0:  CMP             R0, #4
431DD2:  MOV.W           R6, #0xE2
431DD6:  ITTTT EQ
431DD8:  LDREQ.W         R0, [R4,#0x8C]
431DDC:  LDREQ.W         R1, [R4,#0x98]
431DE0:  STREQ.W         R0, [R4,#0x90]
431DE4:  STREQ.W         R1, [R4,#0x9C]
431DE8:  MOVS            R2, #8; size_t
431DEA:  LDR             R0, =(aScreens_ptr - 0x431DF8)
431DEC:  MOVS            R1, #0x15
431DEE:  STRB.W          R1, [R4,#0x121]
431DF2:  MOVS            R1, #0x10
431DF4:  ADD             R0, PC; aScreens_ptr
431DF6:  LDR             R5, [R0]; "FEP_STA" ...
431DF8:  MOVS            R0, #0
431DFA:  STR             R0, [R4,#0x38]
431DFC:  MOVW            R0, #(byte_6AC730 - 0x6AB480)
431E00:  STRB            R1, [R5,R0]
431E02:  ADR             R1, aFetSg; "FET_SG"
431E04:  LDRSB.W         R0, [R4,#0x121]
431E08:  SMLABB.W        R0, R0, R6, R5; char *
431E0C:  BLX             strncpy
431E10:  LDRSB.W         R0, [R4,#0x121]
431E14:  MOV             R1, #0x80602
431E1C:  B               loc_431E6A
431E1E:  CMP             R0, #4
431E20:  MOV.W           R6, #0xE2
431E24:  ITTTT EQ
431E26:  LDREQ.W         R0, [R4,#0x8C]
431E2A:  LDREQ.W         R1, [R4,#0x98]
431E2E:  STREQ.W         R0, [R4,#0x90]
431E32:  STREQ.W         R1, [R4,#0x9C]
431E36:  MOVS            R2, #8; size_t
431E38:  LDR             R0, =(aScreens_ptr - 0x431E46)
431E3A:  MOVS            R1, #0x15
431E3C:  STRB.W          R1, [R4,#0x121]
431E40:  MOVS            R1, #0x10
431E42:  ADD             R0, PC; aScreens_ptr
431E44:  LDR             R5, [R0]; "FEP_STA" ...
431E46:  MOVS            R0, #0
431E48:  STR             R0, [R4,#0x38]
431E4A:  MOVW            R0, #(byte_6AC730 - 0x6AB480)
431E4E:  STRB            R1, [R5,R0]
431E50:  ADR             R1, aFetSg; "FET_SG"
431E52:  LDRSB.W         R0, [R4,#0x121]
431E56:  SMLABB.W        R0, R0, R6, R5; char *
431E5A:  BLX             strncpy
431E5E:  LDRSB.W         R0, [R4,#0x121]
431E62:  MOV             R1, #0xB09F7
431E6A:  SMLABB.W        R0, R0, R6, R5
431E6E:  ADD             R1, R9
431E70:  STR.W           R1, [R0,#0xF]
431E74:  STR.W           R8, [R0,#0xB]
431E78:  LDR             R0, =(byte_990BF9 - 0x431E7E)
431E7A:  ADD             R0, PC; byte_990BF9
431E7C:  B               loc_431EB8
431E7E:  MOVW            R1, #0x1AAD
431E82:  LDRB.W          R2, [R4,#0x121]
431E86:  STRB            R0, [R4,R1]
431E88:  MOV             R0, R4; this
431E8A:  STRB.W          R2, [R4,#0x122]
431E8E:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
431E92:  LDRB.W          R0, [R4,#0x121]
431E96:  CMP             R0, #4
431E98:  ITTTT EQ
431E9A:  LDREQ.W         R0, [R4,#0x8C]
431E9E:  LDREQ.W         R1, [R4,#0x98]
431EA2:  STREQ.W         R0, [R4,#0x90]
431EA6:  STREQ.W         R1, [R4,#0x9C]
431EAA:  MOVS            R0, #0x13
431EAC:  STRB.W          R0, [R4,#0x121]
431EB0:  MOVS            R0, #0
431EB2:  STR             R0, [R4,#0x38]
431EB4:  LDR             R0, =(byte_990BF9 - 0x431EBA)
431EB6:  ADD             R0, PC; byte_990BF9
431EB8:  MOVS            R1, #0
431EBA:  STRB            R1, [R0]
431EBC:  POP.W           {R8-R10}
431EC0:  POP             {R4-R7,PC}
