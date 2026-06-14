; =========================================================
; Game Engine Function: _ZN14MainMenuScreen11AddAllItemsEv
; Address            : 0x29B9D4 - 0x29BF54
; =========================================================

29B9D4:  PUSH            {R4-R7,LR}
29B9D6:  ADD             R7, SP, #0xC
29B9D8:  PUSH.W          {R8-R11}
29B9DC:  SUB             SP, SP, #4
29B9DE:  MOV             R8, R0
29B9E0:  LDRB.W          R0, [R8,#0xD]
29B9E4:  CBZ             R0, loc_29BA5E
29B9E6:  LDR.W           R0, =(aMenuMainresume - 0x29B9EE); "menu_mainresume"
29B9EA:  ADD             R0, PC; "menu_mainresume"
29B9EC:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29B9F0:  MOV             R5, R0
29B9F2:  MOV             R9, R8
29B9F4:  LDR             R0, [R5,#0x54]
29B9F6:  ADDS            R0, #1
29B9F8:  STR             R0, [R5,#0x54]
29B9FA:  LDR.W           R4, [R9,#0x40]!
29B9FE:  MOV             R11, R9
29BA00:  ADDS            R0, R4, #1
29BA02:  LDR.W           R1, [R11,#-4]!
29BA06:  STR.W           R11, [SP,#0x20+var_20]
29BA0A:  CMP             R1, R0
29BA0C:  BCS             loc_29BAE4
29BA0E:  MOVW            R1, #0xAAAB
29BA12:  LSLS            R0, R0, #2
29BA14:  MOVT            R1, #0xAAAA
29BA18:  UMULL.W         R0, R1, R0, R1
29BA1C:  MOVS            R0, #3
29BA1E:  ADD.W           R10, R0, R1,LSR#1
29BA22:  ADD.W           R0, R10, R10,LSL#1
29BA26:  LSLS            R0, R0, #2; byte_count
29BA28:  BLX             malloc
29BA2C:  LDR.W           R11, [R8,#0x44]
29BA30:  MOV             R6, R0
29BA32:  CMP.W           R11, #0
29BA36:  BEQ             loc_29BA50
29BA38:  ADD.W           R0, R4, R4,LSL#1
29BA3C:  MOV             R1, R11; void *
29BA3E:  LSLS            R2, R0, #2; size_t
29BA40:  MOV             R0, R6; void *
29BA42:  BLX             memcpy_0
29BA46:  MOV             R0, R11; p
29BA48:  BLX             free
29BA4C:  LDR.W           R4, [R9]
29BA50:  LDR.W           R11, [SP,#0x20+var_20]
29BA54:  STR.W           R6, [R8,#0x44]
29BA58:  STR.W           R10, [R8,#0x3C]
29BA5C:  B               loc_29BAE8
29BA5E:  MOV             R0, R8; this
29BA60:  BLX             j__ZN14MainMenuScreen9HasCPSaveEv; MainMenuScreen::HasCPSave(void)
29BA64:  CMP             R0, #0
29BA66:  BEQ.W           loc_29BD60
29BA6A:  LDR.W           R0, =(aMenuMainresume - 0x29BA72); "menu_mainresume"
29BA6E:  ADD             R0, PC; "menu_mainresume"
29BA70:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BA74:  MOV             R5, R0
29BA76:  MOV             R9, R8
29BA78:  LDR             R0, [R5,#0x54]
29BA7A:  ADDS            R0, #1
29BA7C:  STR             R0, [R5,#0x54]
29BA7E:  LDR.W           R4, [R9,#0x40]!
29BA82:  MOV             R11, R9
29BA84:  ADDS            R0, R4, #1
29BA86:  LDR.W           R1, [R11,#-4]!
29BA8A:  CMP             R1, R0
29BA8C:  BCS.W           loc_29BD6A
29BA90:  MOVW            R1, #0xAAAB
29BA94:  LSLS            R0, R0, #2
29BA96:  MOVT            R1, #0xAAAA
29BA9A:  STR.W           R11, [SP,#0x20+var_20]
29BA9E:  UMULL.W         R0, R1, R0, R1
29BAA2:  MOVS            R0, #3
29BAA4:  ADD.W           R10, R0, R1,LSR#1
29BAA8:  ADD.W           R0, R10, R10,LSL#1
29BAAC:  LSLS            R0, R0, #2; byte_count
29BAAE:  BLX             malloc
29BAB2:  LDR.W           R11, [R8,#0x44]
29BAB6:  MOV             R6, R0
29BAB8:  CMP.W           R11, #0
29BABC:  BEQ             loc_29BAD6
29BABE:  ADD.W           R0, R4, R4,LSL#1
29BAC2:  MOV             R1, R11; void *
29BAC4:  LSLS            R2, R0, #2; size_t
29BAC6:  MOV             R0, R6; void *
29BAC8:  BLX             memcpy_0
29BACC:  MOV             R0, R11; p
29BACE:  BLX             free
29BAD2:  LDR.W           R4, [R9]
29BAD6:  STR.W           R6, [R8,#0x44]
29BADA:  STR.W           R10, [R8,#0x3C]
29BADE:  LDR.W           R11, [SP,#0x20+var_20]
29BAE2:  B               loc_29BD6E
29BAE4:  LDR.W           R6, [R8,#0x44]
29BAE8:  LDR.W           R0, =(_ZN14MainMenuScreen8OnResumeEv_ptr - 0x29BAF8)
29BAEC:  ADD.W           R1, R4, R4,LSL#1
29BAF0:  ADR.W           R2, aFepRes; "FEP_RES"
29BAF4:  ADD             R0, PC; _ZN14MainMenuScreen8OnResumeEv_ptr
29BAF6:  STR.W           R5, [R6,R1,LSL#2]
29BAFA:  ADD.W           R1, R6, R1,LSL#2
29BAFE:  LDR             R0, [R0]; MainMenuScreen::OnResume(void)
29BB00:  STRD.W          R2, R0, [R1,#4]
29BB04:  LDR.W           R0, =(aMenuMainsettin - 0x29BB10); "menu_mainsettings"
29BB08:  LDR.W           R1, [R9]
29BB0C:  ADD             R0, PC; "menu_mainsettings"
29BB0E:  ADDS            R1, #1; char *
29BB10:  STR.W           R1, [R9]
29BB14:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BB18:  MOV             R5, R0
29BB1A:  LDR             R0, [R5,#0x54]
29BB1C:  ADDS            R0, #1
29BB1E:  STR             R0, [R5,#0x54]
29BB20:  LDR.W           R4, [R9]
29BB24:  LDR.W           R1, [R11]
29BB28:  ADDS            R0, R4, #1
29BB2A:  CMP             R1, R0
29BB2C:  BCS             loc_29BB7E
29BB2E:  MOVW            R1, #0xAAAB
29BB32:  LSLS            R0, R0, #2
29BB34:  MOVT            R1, #0xAAAA
29BB38:  UMULL.W         R0, R1, R0, R1
29BB3C:  MOVS            R0, #3
29BB3E:  ADD.W           R10, R0, R1,LSR#1
29BB42:  ADD.W           R0, R10, R10,LSL#1
29BB46:  LSLS            R0, R0, #2; byte_count
29BB48:  BLX             malloc
29BB4C:  LDR.W           R11, [R8,#0x44]
29BB50:  MOV             R6, R0
29BB52:  CMP.W           R11, #0
29BB56:  BEQ             loc_29BB70
29BB58:  ADD.W           R0, R4, R4,LSL#1
29BB5C:  MOV             R1, R11; void *
29BB5E:  LSLS            R2, R0, #2; size_t
29BB60:  MOV             R0, R6; void *
29BB62:  BLX             memcpy_0
29BB66:  MOV             R0, R11; p
29BB68:  BLX             free
29BB6C:  LDR.W           R4, [R9]
29BB70:  LDR.W           R11, [SP,#0x20+var_20]
29BB74:  STR.W           R6, [R8,#0x44]
29BB78:  STR.W           R10, [R8,#0x3C]
29BB7C:  B               loc_29BB82
29BB7E:  LDR.W           R6, [R8,#0x44]
29BB82:  LDR.W           R0, =(_ZN14MainMenuScreen10OnSettingsEv_ptr - 0x29BB92)
29BB86:  ADD.W           R1, R4, R4,LSL#1
29BB8A:  ADR.W           R2, aFepOpt; "FEP_OPT"
29BB8E:  ADD             R0, PC; _ZN14MainMenuScreen10OnSettingsEv_ptr
29BB90:  STR.W           R5, [R6,R1,LSL#2]
29BB94:  ADD.W           R1, R6, R1,LSL#2; char *
29BB98:  LDR             R0, [R0]; MainMenuScreen::OnSettings(void)
29BB9A:  STRD.W          R2, R0, [R1,#4]
29BB9E:  LDR.W           R0, [R9]
29BBA2:  ADDS            R0, #1
29BBA4:  STR.W           R0, [R9]
29BBA8:  ADR.W           R0, aMenuMainstats; "menu_mainstats"
29BBAC:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BBB0:  MOV             R5, R0
29BBB2:  LDR             R0, [R5,#0x54]
29BBB4:  ADDS            R0, #1
29BBB6:  STR             R0, [R5,#0x54]
29BBB8:  LDR.W           R4, [R9]
29BBBC:  LDR.W           R1, [R11]
29BBC0:  ADDS            R0, R4, #1
29BBC2:  CMP             R1, R0
29BBC4:  BCS             loc_29BC16
29BBC6:  MOVW            R1, #0xAAAB
29BBCA:  LSLS            R0, R0, #2
29BBCC:  MOVT            R1, #0xAAAA
29BBD0:  UMULL.W         R0, R1, R0, R1
29BBD4:  MOVS            R0, #3
29BBD6:  ADD.W           R10, R0, R1,LSR#1
29BBDA:  ADD.W           R0, R10, R10,LSL#1
29BBDE:  LSLS            R0, R0, #2; byte_count
29BBE0:  BLX             malloc
29BBE4:  LDR.W           R11, [R8,#0x44]
29BBE8:  MOV             R6, R0
29BBEA:  CMP.W           R11, #0
29BBEE:  BEQ             loc_29BC08
29BBF0:  ADD.W           R0, R4, R4,LSL#1
29BBF4:  MOV             R1, R11; void *
29BBF6:  LSLS            R2, R0, #2; size_t
29BBF8:  MOV             R0, R6; void *
29BBFA:  BLX             memcpy_0
29BBFE:  MOV             R0, R11; p
29BC00:  BLX             free
29BC04:  LDR.W           R4, [R9]
29BC08:  LDR.W           R11, [SP,#0x20+var_20]
29BC0C:  STR.W           R6, [R8,#0x44]
29BC10:  STR.W           R10, [R8,#0x3C]
29BC14:  B               loc_29BC1A
29BC16:  LDR.W           R6, [R8,#0x44]
29BC1A:  LDR             R0, =(_ZN10FlowScreen7OnStatsEv_ptr - 0x29BC26)
29BC1C:  ADD.W           R3, R4, R4,LSL#1
29BC20:  LDR             R2, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x29BC32)
29BC22:  ADD             R0, PC; _ZN10FlowScreen7OnStatsEv_ptr
29BC24:  LDR             R1, =(aFehSta_1 - 0x29BC36); "FEH_STA"
29BC26:  STR.W           R5, [R6,R3,LSL#2]
29BC2A:  ADD.W           R3, R6, R3,LSL#2
29BC2E:  ADD             R2, PC; _ZN9CMessages14PreviousBriefsE_ptr
29BC30:  LDR             R0, [R0]; FlowScreen::OnStats(void)
29BC32:  ADD             R1, PC; "FEH_STA"
29BC34:  LDR             R2, [R2]; CMessages::PreviousBriefs ...
29BC36:  STRD.W          R1, R0, [R3,#4]
29BC3A:  LDR.W           R0, [R9]
29BC3E:  NOP
29BC40:  STR.W           R0, [R9]
29BC44:  LDR             R0, [R2,#(dword_A00450 - 0xA00448)]
29BC46:  CMP             R0, #0
29BC48:  BEQ             loc_29BCDE
29BC4A:  ADR             R0, aMenuMainbriefs; "menu_mainbriefs"
29BC4C:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BC50:  MOV             R5, R0
29BC52:  LDR             R0, [R5,#0x54]
29BC54:  ADDS            R0, #1
29BC56:  STR             R0, [R5,#0x54]
29BC58:  LDR.W           R4, [R9]
29BC5C:  LDR.W           R1, [R11]
29BC60:  ADDS            R0, R4, #1
29BC62:  CMP             R1, R0
29BC64:  BCS             loc_29BCB6
29BC66:  MOVW            R1, #0xAAAB
29BC6A:  LSLS            R0, R0, #2
29BC6C:  MOVT            R1, #0xAAAA
29BC70:  UMULL.W         R0, R1, R0, R1
29BC74:  MOVS            R0, #3
29BC76:  ADD.W           R10, R0, R1,LSR#1
29BC7A:  ADD.W           R0, R10, R10,LSL#1
29BC7E:  LSLS            R0, R0, #2; byte_count
29BC80:  BLX             malloc
29BC84:  LDR.W           R11, [R8,#0x44]
29BC88:  MOV             R6, R0
29BC8A:  CMP.W           R11, #0
29BC8E:  BEQ             loc_29BCA8
29BC90:  ADD.W           R0, R4, R4,LSL#1
29BC94:  MOV             R1, R11; void *
29BC96:  LSLS            R2, R0, #2; size_t
29BC98:  MOV             R0, R6; void *
29BC9A:  BLX             memcpy_0
29BC9E:  MOV             R0, R11; p
29BCA0:  BLX             free
29BCA4:  LDR.W           R4, [R9]
29BCA8:  LDR.W           R11, [SP,#0x20+var_20]
29BCAC:  STR.W           R6, [R8,#0x44]
29BCB0:  STR.W           R10, [R8,#0x3C]
29BCB4:  B               loc_29BCBA
29BCB6:  LDR.W           R6, [R8,#0x44]
29BCBA:  LDR             R1, =(_ZN10FlowScreen8OnBriefsEv_ptr - 0x29BCC6)
29BCBC:  ADD.W           R2, R4, R4,LSL#1
29BCC0:  LDR             R0, =(aFehBri - 0x29BCD2); "FEH_BRI"
29BCC2:  ADD             R1, PC; _ZN10FlowScreen8OnBriefsEv_ptr
29BCC4:  STR.W           R5, [R6,R2,LSL#2]
29BCC8:  ADD.W           R2, R6, R2,LSL#2
29BCCC:  LDR             R1, [R1]; FlowScreen::OnBriefs(void) ; char *
29BCCE:  ADD             R0, PC; "FEH_BRI"
29BCD0:  STRD.W          R0, R1, [R2,#4]
29BCD4:  LDR.W           R0, [R9]
29BCD8:  ADDS            R0, #1
29BCDA:  STR.W           R0, [R9]
29BCDE:  LDR             R0, =(aMenuMainplay - 0x29BCE4); "menu_mainplay"
29BCE0:  ADD             R0, PC; "menu_mainplay"
29BCE2:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BCE6:  MOV             R5, R0
29BCE8:  LDR             R0, [R5,#0x54]
29BCEA:  ADDS            R0, #1
29BCEC:  STR             R0, [R5,#0x54]
29BCEE:  LDR.W           R4, [R9]
29BCF2:  LDR.W           R1, [R11]
29BCF6:  ADDS            R0, R4, #1
29BCF8:  CMP             R1, R0
29BCFA:  BCS             loc_29BD4C
29BCFC:  MOVW            R1, #0xAAAB
29BD00:  LSLS            R0, R0, #2
29BD02:  MOVT            R1, #0xAAAA
29BD06:  UMULL.W         R0, R1, R0, R1
29BD0A:  MOVS            R0, #3
29BD0C:  ADD.W           R10, R0, R1,LSR#1
29BD10:  ADD.W           R0, R10, R10,LSL#1
29BD14:  LSLS            R0, R0, #2; byte_count
29BD16:  BLX             malloc
29BD1A:  LDR.W           R11, [R8,#0x44]
29BD1E:  MOV             R6, R0
29BD20:  CMP.W           R11, #0
29BD24:  BEQ             loc_29BD3E
29BD26:  ADD.W           R0, R4, R4,LSL#1
29BD2A:  MOV             R1, R11; void *
29BD2C:  LSLS            R2, R0, #2; size_t
29BD2E:  MOV             R0, R6; void *
29BD30:  BLX             memcpy_0
29BD34:  MOV             R0, R11; p
29BD36:  BLX             free
29BD3A:  LDR.W           R4, [R9]
29BD3E:  LDR.W           R11, [SP,#0x20+var_20]
29BD42:  STR.W           R6, [R8,#0x44]
29BD46:  STR.W           R10, [R8,#0x3C]
29BD4A:  B               loc_29BD50
29BD4C:  LDR.W           R6, [R8,#0x44]
29BD50:  LDR             R0, =(_ZN14MainMenuScreen11OnStartGameEv_ptr - 0x29BD60)
29BD52:  ADD.W           R1, R4, R4,LSL#1
29BD56:  ADR             R2, aFepStg; "FEP_STG"
29BD58:  STR.W           R5, [R6,R1,LSL#2]
29BD5C:  ADD             R0, PC; _ZN14MainMenuScreen11OnStartGameEv_ptr
29BD5E:  B               loc_29BEA8
29BD60:  ADD.W           R11, R8, #0x3C ; '<'
29BD64:  ADD.W           R9, R8, #0x40 ; '@'
29BD68:  B               loc_29BD90
29BD6A:  LDR.W           R6, [R8,#0x44]
29BD6E:  LDR             R0, =(_ZN14MainMenuScreen8OnResumeEv_ptr - 0x29BD7A)
29BD70:  ADD.W           R1, R4, R4,LSL#1
29BD74:  ADR             R2, aFepRes; "FEP_RES"
29BD76:  ADD             R0, PC; _ZN14MainMenuScreen8OnResumeEv_ptr
29BD78:  STR.W           R5, [R6,R1,LSL#2]
29BD7C:  ADD.W           R1, R6, R1,LSL#2; char *
29BD80:  LDR             R0, [R0]; MainMenuScreen::OnResume(void)
29BD82:  STRD.W          R2, R0, [R1,#4]
29BD86:  LDR.W           R0, [R9]
29BD8A:  ADDS            R0, #1
29BD8C:  STR.W           R0, [R9]
29BD90:  LDR             R0, =(aMenuMainplay - 0x29BD96); "menu_mainplay"
29BD92:  ADD             R0, PC; "menu_mainplay"
29BD94:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BD98:  MOV             R5, R0
29BD9A:  LDR             R0, [R5,#0x54]
29BD9C:  ADDS            R0, #1
29BD9E:  STR             R0, [R5,#0x54]
29BDA0:  LDR.W           R4, [R9]
29BDA4:  LDR.W           R1, [R11]
29BDA8:  ADDS            R0, R4, #1
29BDAA:  STR.W           R11, [SP,#0x20+var_20]
29BDAE:  CMP             R1, R0
29BDB0:  BCS             loc_29BE02
29BDB2:  MOVW            R1, #0xAAAB
29BDB6:  LSLS            R0, R0, #2
29BDB8:  MOVT            R1, #0xAAAA
29BDBC:  UMULL.W         R0, R1, R0, R1
29BDC0:  MOVS            R0, #3
29BDC2:  ADD.W           R10, R0, R1,LSR#1
29BDC6:  ADD.W           R0, R10, R10,LSL#1
29BDCA:  LSLS            R0, R0, #2; byte_count
29BDCC:  BLX             malloc
29BDD0:  LDR.W           R11, [R8,#0x44]
29BDD4:  MOV             R6, R0
29BDD6:  CMP.W           R11, #0
29BDDA:  BEQ             loc_29BDF4
29BDDC:  ADD.W           R0, R4, R4,LSL#1
29BDE0:  MOV             R1, R11; void *
29BDE2:  LSLS            R2, R0, #2; size_t
29BDE4:  MOV             R0, R6; void *
29BDE6:  BLX             memcpy_0
29BDEA:  MOV             R0, R11; p
29BDEC:  BLX             free
29BDF0:  LDR.W           R4, [R9]
29BDF4:  LDR.W           R11, [SP,#0x20+var_20]
29BDF8:  STR.W           R6, [R8,#0x44]
29BDFC:  STR.W           R10, [R8,#0x3C]
29BE00:  B               loc_29BE06
29BE02:  LDR.W           R6, [R8,#0x44]
29BE06:  LDR             R0, =(_ZN14MainMenuScreen11OnStartGameEv_ptr - 0x29BE12)
29BE08:  ADD.W           R1, R4, R4,LSL#1
29BE0C:  ADR             R2, aFepStg; "FEP_STG"
29BE0E:  ADD             R0, PC; _ZN14MainMenuScreen11OnStartGameEv_ptr
29BE10:  STR.W           R5, [R6,R1,LSL#2]
29BE14:  ADD.W           R1, R6, R1,LSL#2
29BE18:  LDR             R0, [R0]; MainMenuScreen::OnStartGame(void)
29BE1A:  STRD.W          R2, R0, [R1,#4]
29BE1E:  LDR             R0, =(aMenuMainsettin - 0x29BE28); "menu_mainsettings"
29BE20:  LDR.W           R1, [R9]
29BE24:  ADD             R0, PC; "menu_mainsettings"
29BE26:  ADDS            R1, #1; char *
29BE28:  STR.W           R1, [R9]
29BE2C:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BE30:  MOV             R5, R0
29BE32:  LDR             R0, [R5,#0x54]
29BE34:  ADDS            R0, #1
29BE36:  STR             R0, [R5,#0x54]
29BE38:  LDR.W           R4, [R9]
29BE3C:  LDR.W           R1, [R11]
29BE40:  ADDS            R0, R4, #1
29BE42:  CMP             R1, R0
29BE44:  BCS             loc_29BE96
29BE46:  MOVW            R1, #0xAAAB
29BE4A:  LSLS            R0, R0, #2
29BE4C:  MOVT            R1, #0xAAAA
29BE50:  UMULL.W         R0, R1, R0, R1
29BE54:  MOVS            R0, #3
29BE56:  ADD.W           R10, R0, R1,LSR#1
29BE5A:  ADD.W           R0, R10, R10,LSL#1
29BE5E:  LSLS            R0, R0, #2; byte_count
29BE60:  BLX             malloc
29BE64:  LDR.W           R11, [R8,#0x44]
29BE68:  MOV             R6, R0
29BE6A:  CMP.W           R11, #0
29BE6E:  BEQ             loc_29BE88
29BE70:  ADD.W           R0, R4, R4,LSL#1
29BE74:  MOV             R1, R11; void *
29BE76:  LSLS            R2, R0, #2; size_t
29BE78:  MOV             R0, R6; void *
29BE7A:  BLX             memcpy_0
29BE7E:  MOV             R0, R11; p
29BE80:  BLX             free
29BE84:  LDR.W           R4, [R9]
29BE88:  LDR.W           R11, [SP,#0x20+var_20]
29BE8C:  STR.W           R6, [R8,#0x44]
29BE90:  STR.W           R10, [R8,#0x3C]
29BE94:  B               loc_29BE9A
29BE96:  LDR.W           R6, [R8,#0x44]
29BE9A:  LDR             R0, =(_ZN14MainMenuScreen10OnSettingsEv_ptr - 0x29BEAA)
29BE9C:  ADD.W           R1, R4, R4,LSL#1
29BEA0:  ADR             R2, aFepOpt; "FEP_OPT"
29BEA2:  STR.W           R5, [R6,R1,LSL#2]
29BEA6:  ADD             R0, PC; _ZN14MainMenuScreen10OnSettingsEv_ptr
29BEA8:  ADD.W           R1, R6, R1,LSL#2
29BEAC:  STR             R2, [R1,#4]
29BEAE:  ADDS            R1, #8; char *
29BEB0:  LDR             R0, [R0]; MainMenuScreen::OnSettings(void)
29BEB2:  STR             R0, [R1]
29BEB4:  LDR.W           R0, [R9]
29BEB8:  NOP
29BEBA:  STR.W           R0, [R9]
29BEBE:  ADR             R0, aMenuMainquit; "menu_mainquit"
29BEC0:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29BEC4:  MOV             R5, R0
29BEC6:  LDR             R0, [R5,#0x54]
29BEC8:  ADDS            R0, #1
29BECA:  STR             R0, [R5,#0x54]
29BECC:  LDR.W           R4, [R9]
29BED0:  LDR.W           R1, [R11]
29BED4:  ADDS            R0, R4, #1
29BED6:  CMP             R1, R0
29BED8:  BCS             loc_29BF26
29BEDA:  MOVW            R1, #0xAAAB
29BEDE:  LSLS            R0, R0, #2
29BEE0:  MOVT            R1, #0xAAAA
29BEE4:  UMULL.W         R0, R1, R0, R1
29BEE8:  MOVS            R0, #3
29BEEA:  ADD.W           R11, R0, R1,LSR#1
29BEEE:  ADD.W           R0, R11, R11,LSL#1
29BEF2:  LSLS            R0, R0, #2; byte_count
29BEF4:  BLX             malloc
29BEF8:  LDR.W           R10, [R8,#0x44]
29BEFC:  MOV             R6, R0
29BEFE:  CMP.W           R10, #0
29BF02:  BEQ             loc_29BF1C
29BF04:  ADD.W           R0, R4, R4,LSL#1
29BF08:  MOV             R1, R10; void *
29BF0A:  LSLS            R2, R0, #2; size_t
29BF0C:  MOV             R0, R6; void *
29BF0E:  BLX             memcpy_0
29BF12:  MOV             R0, R10; p
29BF14:  BLX             free
29BF18:  LDR.W           R4, [R9]
29BF1C:  STR.W           R6, [R8,#0x44]
29BF20:  STR.W           R11, [R8,#0x3C]
29BF24:  B               loc_29BF2A
29BF26:  LDR.W           R6, [R8,#0x44]
29BF2A:  LDR             R0, =(_ZN14MainMenuScreen6OnExitEv_ptr - 0x29BF36)
29BF2C:  ADD.W           R1, R4, R4,LSL#1
29BF30:  ADR             R2, aFepQui; "FEP_QUI"
29BF32:  ADD             R0, PC; _ZN14MainMenuScreen6OnExitEv_ptr
29BF34:  STR.W           R5, [R6,R1,LSL#2]
29BF38:  ADD.W           R1, R6, R1,LSL#2
29BF3C:  LDR             R0, [R0]; MainMenuScreen::OnExit(void)
29BF3E:  STRD.W          R2, R0, [R1,#4]
29BF42:  LDR.W           R0, [R9]
29BF46:  ADDS            R0, #1
29BF48:  STR.W           R0, [R9]
29BF4C:  ADD             SP, SP, #4
29BF4E:  POP.W           {R8-R11}
29BF52:  POP             {R4-R7,PC}
