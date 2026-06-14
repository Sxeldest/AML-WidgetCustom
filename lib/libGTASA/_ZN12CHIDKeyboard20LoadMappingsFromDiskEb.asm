; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard20LoadMappingsFromDiskEb
; Address            : 0x295934 - 0x295B52
; =========================================================

295934:  PUSH            {R4-R7,LR}
295936:  ADD             R7, SP, #0xC
295938:  PUSH.W          {R8-R11}
29593C:  SUB.W           SP, SP, #0x324
295940:  MOV             R9, R0
295942:  LDR             R0, =(__stack_chk_guard_ptr - 0x29594A)
295944:  CMP             R1, #1
295946:  ADD             R0, PC; __stack_chk_guard_ptr
295948:  LDR             R0, [R0]; __stack_chk_guard
29594A:  LDR             R0, [R0]; this
29594C:  STR             R0, [SP,#0x340+var_20]
29594E:  BNE             loc_295956
295950:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
295954:  B               loc_29595C
295956:  ADR             R0, aData; "data"
295958:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
29595C:  LDR             R0, =(aKeyboardmappin - 0x295964); "KeyboardMappings.cfg"
29595E:  ADR             R1, dword_295B64; char *
295960:  ADD             R0, PC; "KeyboardMappings.cfg"
295962:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
295966:  MOV             R6, R0
295968:  CMP             R6, #0
29596A:  BEQ.W           loc_295B2C
29596E:  MOVS            R0, #0
295970:  STR.W           R0, [R9,#8]
295974:  MOV             R0, R6; this
295976:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
29597A:  MOV             R4, R0
29597C:  CMP             R4, #0
29597E:  BEQ.W           loc_295B1A
295982:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x295990)
295984:  ADD.W           R10, SP, #0x340+var_323+3
295988:  ADD.W           R11, SP, #0x340+var_120
29598C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29598E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
295990:  STR             R0, [SP,#0x340+var_32C]
295992:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x295998)
295994:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
295996:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
295998:  STR             R0, [SP,#0x340+var_330]
29599A:  LDRB            R0, [R4]
29599C:  CMP             R0, #0
29599E:  BEQ.W           loc_295B0C
2959A2:  MOV             R0, R4; s
2959A4:  MOVS            R1, #0x3B ; ';'; c
2959A6:  BLX             strchr
2959AA:  CMP             R0, #0
2959AC:  BNE.W           loc_295B0C
2959B0:  ADR             R1, aSSS_1; "%s %s %s"
2959B2:  ADD             R3, SP, #0x340+var_220
2959B4:  MOV             R0, R4; s
2959B6:  MOV             R2, R11
2959B8:  STR.W           R10, [SP,#0x340+var_340]
2959BC:  BLX             sscanf
2959C0:  LDR             R0, [SP,#0x340+var_32C]
2959C2:  LDR             R5, [R0,#4]
2959C4:  CBZ             R5, loc_2959E6
2959C6:  LDR             R0, [SP,#0x340+var_330]
2959C8:  MOV             R8, R6
2959CA:  MOVS            R6, #0
2959CC:  LDR             R0, [R0,#8]
2959CE:  ADDS            R4, R0, #4
2959D0:  MOV             R0, R11; char *
2959D2:  MOV             R1, R4; char *
2959D4:  BLX             strcasecmp
2959D8:  CBZ             R0, loc_2959EA
2959DA:  ADDS            R6, #1
2959DC:  ADDS            R4, #0xC
2959DE:  CMP             R6, R5
2959E0:  BCC             loc_2959D0
2959E2:  MOVS            R5, #0x64 ; 'd'
2959E4:  B               loc_2959EE
2959E6:  MOVS            R5, #0x64 ; 'd'
2959E8:  B               loc_2959F0
2959EA:  LDR.W           R5, [R4,#-4]
2959EE:  MOV             R6, R8
2959F0:  LDR             R1, =(aKeyLmb - 0x2959F8); "KEY_LMB"
2959F2:  MOV             R0, R11; char *
2959F4:  ADD             R1, PC; "KEY_LMB"
2959F6:  BLX             strcasecmp
2959FA:  CBZ             R0, loc_295A36
2959FC:  LDR             R1, =(aKeyRmb - 0x295A04); "KEY_RMB"
2959FE:  MOV             R0, R11; char *
295A00:  ADD             R1, PC; "KEY_RMB"
295A02:  BLX             strcasecmp
295A06:  CBZ             R0, loc_295A3A
295A08:  LDR             R1, =(aKeyMmb - 0x295A10); "KEY_MMB"
295A0A:  MOV             R0, R11; char *
295A0C:  ADD             R1, PC; "KEY_MMB"
295A0E:  BLX             strcasecmp
295A12:  CBZ             R0, loc_295A3E
295A14:  LDR             R1, =(aKeyWfd - 0x295A1C); "KEY_WFD"
295A16:  MOV             R0, R11; char *
295A18:  ADD             R1, PC; "KEY_WFD"
295A1A:  BLX             strcasecmp
295A1E:  CBZ             R0, loc_295A42
295A20:  LDR             R1, =(aKeyWbd - 0x295A28); "KEY_WBD"
295A22:  MOV             R0, R11; char *
295A24:  ADD             R1, PC; "KEY_WBD"
295A26:  BLX             strcasecmp
295A2A:  CMP             R0, #0
295A2C:  MOV.W           R4, #0xFFFFFFFF
295A30:  IT EQ
295A32:  MOVEQ           R4, #4
295A34:  B               loc_295A44
295A36:  MOVS            R4, #0
295A38:  B               loc_295A44
295A3A:  MOVS            R4, #1
295A3C:  B               loc_295A44
295A3E:  MOVS            R4, #2
295A40:  B               loc_295A44
295A42:  MOVS            R4, #3
295A44:  ADD             R0, SP, #0x340+var_220; this
295A46:  BLX             j__ZN4CHID16GetMappingByNameEPKc; CHID::GetMappingByName(char const*)
295A4A:  MOV             R8, R0
295A4C:  CMP.W           R8, #0
295A50:  BEQ             loc_295B0C
295A52:  ADR             R1, dword_295B7C; char *
295A54:  MOV             R0, R10; char *
295A56:  STR             R4, [SP,#0x340+var_328]
295A58:  BLX             strcasecmp
295A5C:  LDRD.W          R1, R10, [R9,#4]
295A60:  CMP             R0, #0
295A62:  MOV.W           R11, #0
295A66:  ADD.W           R0, R10, #1
295A6A:  IT EQ
295A6C:  MOVEQ.W         R11, #1
295A70:  CMP             R1, R0
295A72:  BCS             loc_295ACC
295A74:  MOVW            R1, #0xAAAB
295A78:  LSLS            R0, R0, #2
295A7A:  MOVT            R1, #0xAAAA
295A7E:  STR             R5, [SP,#0x340+var_334]
295A80:  UMULL.W         R0, R1, R0, R1
295A84:  MOVS            R0, #3
295A86:  ADD.W           R0, R0, R1,LSR#1
295A8A:  STR             R0, [SP,#0x340+var_338]
295A8C:  ADD.W           R0, R0, R0,LSL#2
295A90:  LSLS            R0, R0, #2; byte_count
295A92:  BLX             malloc
295A96:  MOV             R5, R9
295A98:  MOV             R4, R0
295A9A:  LDR.W           R9, [R5,#0xC]
295A9E:  CMP.W           R9, #0
295AA2:  BEQ             loc_295ABC
295AA4:  ADD.W           R0, R10, R10,LSL#2
295AA8:  MOV             R1, R9; void *
295AAA:  LSLS            R2, R0, #2; size_t
295AAC:  MOV             R0, R4; void *
295AAE:  BLX             memcpy_0
295AB2:  MOV             R0, R9; p
295AB4:  BLX             free
295AB8:  LDR.W           R10, [R5,#8]
295ABC:  MOV             R9, R5
295ABE:  STR.W           R4, [R9,#0xC]
295AC2:  LDR             R0, [SP,#0x340+var_338]
295AC4:  STR.W           R0, [R9,#4]
295AC8:  LDR             R5, [SP,#0x340+var_334]
295ACA:  B               loc_295AD0
295ACC:  LDR.W           R4, [R9,#0xC]
295AD0:  ADD.W           R0, R10, R10,LSL#2
295AD4:  ADD.W           R10, SP, #0x340+var_323+3
295AD8:  STR.W           R5, [R4,R0,LSL#2]
295ADC:  ADD.W           R0, R4, R0,LSL#2
295AE0:  STRB.W          R11, [R0,#8]
295AE4:  ADD.W           R11, SP, #0x340+var_120
295AE8:  STR.W           R8, [R0,#4]
295AEC:  LDRB.W          R2, [SP,#0x340+var_323+2]
295AF0:  LDRH.W          R1, [SP,#0x340+var_323]; unsigned int
295AF4:  STRB            R2, [R0,#0xB]
295AF6:  LDR             R2, [SP,#0x340+var_328]
295AF8:  STR             R2, [R0,#0xC]
295AFA:  MOVS            R2, #0
295AFC:  STR             R2, [R0,#0x10]
295AFE:  STRH.W          R1, [R0,#9]
295B02:  LDR.W           R0, [R9,#8]
295B06:  ADDS            R0, #1
295B08:  STR.W           R0, [R9,#8]
295B0C:  MOV             R0, R6; this
295B0E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
295B12:  MOV             R4, R0
295B14:  CMP             R4, #0
295B16:  BNE.W           loc_29599A
295B1A:  LDR             R0, =(byte_61CD7E - 0x295B20)
295B1C:  ADD             R0, PC; byte_61CD7E ; this
295B1E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
295B22:  MOV             R0, R6; this
295B24:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
295B28:  MOVS            R0, #1
295B2A:  B               loc_295B36
295B2C:  LDR             R0, =(byte_61CD7E - 0x295B32)
295B2E:  ADD             R0, PC; byte_61CD7E ; this
295B30:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
295B34:  MOVS            R0, #0
295B36:  LDR             R1, =(__stack_chk_guard_ptr - 0x295B3E)
295B38:  LDR             R2, [SP,#0x340+var_20]
295B3A:  ADD             R1, PC; __stack_chk_guard_ptr
295B3C:  LDR             R1, [R1]; __stack_chk_guard
295B3E:  LDR             R1, [R1]
295B40:  SUBS            R1, R1, R2
295B42:  ITTT EQ
295B44:  ADDEQ.W         SP, SP, #0x324
295B48:  POPEQ.W         {R8-R11}
295B4C:  POPEQ           {R4-R7,PC}
295B4E:  BLX             __stack_chk_fail
