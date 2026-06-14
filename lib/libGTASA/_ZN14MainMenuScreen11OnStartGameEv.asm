; =========================================================
; Game Engine Function: _ZN14MainMenuScreen11OnStartGameEv
; Address            : 0x29DB14 - 0x29DD8A
; =========================================================

29DB14:  PUSH            {R4-R7,LR}
29DB16:  ADD             R7, SP, #0xC
29DB18:  PUSH.W          {R8-R10}
29DB1C:  MOVS            R0, #5
29DB1E:  MOVS            R1, #1
29DB20:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29DB24:  MOVS            R0, #0; bool
29DB26:  MOVS            R4, #0
29DB28:  BLX             j__Z18Menu_PopulateSavesb; Menu_PopulateSaves(bool)
29DB2C:  MOVS            R0, #1; bool
29DB2E:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29DB32:  LDR             R1, =(gMobileMenu_ptr - 0x29DB3A)
29DB34:  LDR             R2, =(GameToSKip_ptr - 0x29DB3C)
29DB36:  ADD             R1, PC; gMobileMenu_ptr
29DB38:  ADD             R2, PC; GameToSKip_ptr
29DB3A:  LDR             R1, [R1]; gMobileMenu
29DB3C:  LDR             R2, [R2]; GameToSKip
29DB3E:  LDRB.W          R3, [R1,#(word_6E00C0 - 0x6E006C)]
29DB42:  LDR             R1, [R2]
29DB44:  CMP             R3, #0
29DB46:  IT EQ
29DB48:  MOVEQ           R4, #1
29DB4A:  CMP             R1, #8
29DB4C:  BGT             loc_29DB66
29DB4E:  LDR             R3, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x29DB5A)
29DB50:  RSB.W           R1, R1, #9
29DB54:  MOVS            R2, #0
29DB56:  ADD             R3, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
29DB58:  LDR             R3, [R3]; CGenericGameStorage::ms_Slots ...
29DB5A:  LDR.W           R6, [R3,R2,LSL#2]
29DB5E:  CBZ             R6, loc_29DB6C
29DB60:  ADDS            R2, #1
29DB62:  CMP             R2, R1
29DB64:  BLT             loc_29DB5A
29DB66:  ANDS            R0, R4
29DB68:  CMP             R0, #1
29DB6A:  BNE             loc_29DBEC
29DB6C:  MOVS            R0, #0x58 ; 'X'; unsigned int
29DB6E:  BLX             _Znwj; operator new(uint)
29DB72:  MOVS            R1, #1; bool
29DB74:  MOVS            R2, #0; bool
29DB76:  MOV             R4, R0
29DB78:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
29DB7C:  LDR             R0, =(_ZTV15StartGameScreen_ptr - 0x29DB82)
29DB7E:  ADD             R0, PC; _ZTV15StartGameScreen_ptr
29DB80:  LDR             R1, [R0]; `vtable for'StartGameScreen ...
29DB82:  LDR             R0, =(aMenuMainplay - 0x29DB8C); "menu_mainplay"
29DB84:  ADDS            R1, #8; char *
29DB86:  STR             R1, [R4]
29DB88:  ADD             R0, PC; "menu_mainplay"
29DB8A:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DB8E:  MOV             R9, R0
29DB90:  LDR.W           R0, [R9,#0x54]
29DB94:  ADDS            R0, #1
29DB96:  STR.W           R0, [R9,#0x54]
29DB9A:  LDRD.W          R1, R5, [R4,#0x3C]
29DB9E:  ADDS            R0, R5, #1
29DBA0:  CMP             R1, R0
29DBA2:  BCS             loc_29DC4C
29DBA4:  MOVW            R1, #0xAAAB
29DBA8:  LSLS            R0, R0, #2
29DBAA:  MOVT            R1, #0xAAAA
29DBAE:  UMULL.W         R0, R1, R0, R1
29DBB2:  MOVS            R0, #3
29DBB4:  ADD.W           R10, R0, R1,LSR#1
29DBB8:  ADD.W           R0, R10, R10,LSL#1
29DBBC:  LSLS            R0, R0, #2; byte_count
29DBBE:  BLX             malloc
29DBC2:  LDR.W           R8, [R4,#0x44]
29DBC6:  MOV             R6, R0
29DBC8:  CMP.W           R8, #0
29DBCC:  BEQ             loc_29DBE4
29DBCE:  ADD.W           R0, R5, R5,LSL#1
29DBD2:  MOV             R1, R8; void *
29DBD4:  LSLS            R2, R0, #2; size_t
29DBD6:  MOV             R0, R6; void *
29DBD8:  BLX             memcpy_0
29DBDC:  MOV             R0, R8; p
29DBDE:  BLX             free
29DBE2:  LDR             R5, [R4,#0x40]
29DBE4:  STR             R6, [R4,#0x44]
29DBE6:  STR.W           R10, [R4,#0x3C]
29DBEA:  B               loc_29DC4E
29DBEC:  BLX             j__Z12Menu_NewGamev; Menu_NewGame(void)
29DBF0:  LDR             R0, =(gMobileMenu_ptr - 0x29DBF6)
29DBF2:  ADD             R0, PC; gMobileMenu_ptr
29DBF4:  LDR             R4, [R0]; gMobileMenu
29DBF6:  MOV             R0, R4; this
29DBF8:  BLX             j__ZN10MobileMenu6UnloadEv; MobileMenu::Unload(void)
29DBFC:  LDR             R1, [R4,#(dword_6E0090 - 0x6E006C)]
29DBFE:  MOVS            R0, #0
29DC00:  STR             R0, [R4,#(dword_6E0098 - 0x6E006C)]
29DC02:  CMP             R1, #0
29DC04:  STRB.W          R0, [R4,#(byte_6E00D9 - 0x6E006C)]
29DC08:  BEQ             loc_29DC2E
29DC0A:  LDR             R0, =(gMobileMenu_ptr - 0x29DC10)
29DC0C:  ADD             R0, PC; gMobileMenu_ptr
29DC0E:  LDR             R4, [R0]; gMobileMenu
29DC10:  LDR             R0, =(gMobileMenu_ptr - 0x29DC16)
29DC12:  ADD             R0, PC; gMobileMenu_ptr
29DC14:  LDR             R5, [R0]; gMobileMenu
29DC16:  LDR             R0, [R4,#(dword_6E0094 - 0x6E006C)]
29DC18:  SUBS            R1, #1
29DC1A:  LDR.W           R0, [R0,R1,LSL#2]
29DC1E:  STR             R1, [R4,#(dword_6E0090 - 0x6E006C)]
29DC20:  CBZ             R0, loc_29DC2A
29DC22:  LDR             R1, [R0]
29DC24:  LDR             R1, [R1,#4]
29DC26:  BLX             R1
29DC28:  LDR             R1, [R5,#(dword_6E0090 - 0x6E006C)]
29DC2A:  CMP             R1, #0
29DC2C:  BNE             loc_29DC16
29DC2E:  BLX             j__Z20Menu_SwitchOffToGamev; Menu_SwitchOffToGame(void)
29DC32:  MOVS            R0, #1; bool
29DC34:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29DC38:  CMP             R0, #1
29DC3A:  BNE             loc_29DC46
29DC3C:  LDR             R0, =(skipFrame_ptr - 0x29DC44)
29DC3E:  MOVS            R1, #2
29DC40:  ADD             R0, PC; skipFrame_ptr
29DC42:  LDR             R0, [R0]; skipFrame
29DC44:  STR             R1, [R0]
29DC46:  POP.W           {R8-R10}
29DC4A:  POP             {R4-R7,PC}
29DC4C:  LDR             R6, [R4,#0x44]
29DC4E:  LDR             R0, =(_ZN15StartGameScreen14OnNewGameCheckEv_ptr - 0x29DC5A)
29DC50:  ADD.W           R1, R5, R5,LSL#1
29DC54:  ADR             R2, aFesNga; "FES_NGA"
29DC56:  ADD             R0, PC; _ZN15StartGameScreen14OnNewGameCheckEv_ptr
29DC58:  STR.W           R9, [R6,R1,LSL#2]
29DC5C:  ADD.W           R1, R6, R1,LSL#2
29DC60:  LDR             R0, [R0]; StartGameScreen::OnNewGameCheck(void)
29DC62:  STRD.W          R2, R0, [R1,#4]
29DC66:  LDR             R0, =(aMenuMainresume - 0x29DC6E); "menu_mainresume"
29DC68:  LDR             R1, [R4,#0x40]
29DC6A:  ADD             R0, PC; "menu_mainresume"
29DC6C:  ADDS            R1, #1; char *
29DC6E:  STR             R1, [R4,#0x40]
29DC70:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DC74:  MOV             R9, R0
29DC76:  LDR.W           R0, [R9,#0x54]
29DC7A:  ADDS            R0, #1
29DC7C:  STR.W           R0, [R9,#0x54]
29DC80:  LDRD.W          R1, R5, [R4,#0x3C]
29DC84:  ADDS            R0, R5, #1
29DC86:  CMP             R1, R0
29DC88:  BCS             loc_29DCD2
29DC8A:  MOVW            R1, #0xAAAB
29DC8E:  LSLS            R0, R0, #2
29DC90:  MOVT            R1, #0xAAAA
29DC94:  UMULL.W         R0, R1, R0, R1
29DC98:  MOVS            R0, #3
29DC9A:  ADD.W           R10, R0, R1,LSR#1
29DC9E:  ADD.W           R0, R10, R10,LSL#1
29DCA2:  LSLS            R0, R0, #2; byte_count
29DCA4:  BLX             malloc
29DCA8:  LDR.W           R8, [R4,#0x44]
29DCAC:  MOV             R6, R0
29DCAE:  CMP.W           R8, #0
29DCB2:  BEQ             loc_29DCCA
29DCB4:  ADD.W           R0, R5, R5,LSL#1
29DCB8:  MOV             R1, R8; void *
29DCBA:  LSLS            R2, R0, #2; size_t
29DCBC:  MOV             R0, R6; void *
29DCBE:  BLX             memcpy_0
29DCC2:  MOV             R0, R8; p
29DCC4:  BLX             free
29DCC8:  LDR             R5, [R4,#0x40]
29DCCA:  STR             R6, [R4,#0x44]
29DCCC:  STR.W           R10, [R4,#0x3C]
29DCD0:  B               loc_29DCD4
29DCD2:  LDR             R6, [R4,#0x44]
29DCD4:  LDR             R1, =(_ZN15StartGameScreen10OnLoadGameEv_ptr - 0x29DCE0)
29DCD6:  ADD.W           R2, R5, R5,LSL#1
29DCDA:  LDR             R0, =(aFetLg_0 - 0x29DCEC); "FET_LG"
29DCDC:  ADD             R1, PC; _ZN15StartGameScreen10OnLoadGameEv_ptr
29DCDE:  STR.W           R9, [R6,R2,LSL#2]
29DCE2:  ADD.W           R2, R6, R2,LSL#2
29DCE6:  LDR             R1, [R1]; StartGameScreen::OnLoadGame(void) ; char *
29DCE8:  ADD             R0, PC; "FET_LG"
29DCEA:  STRD.W          R0, R1, [R2,#4]
29DCEE:  LDR             R0, [R4,#0x40]
29DCF0:  ADDS            R0, #1
29DCF2:  STR             R0, [R4,#0x40]
29DCF4:  ADR             R0, aMenuMaindelete; "menu_maindelete"
29DCF6:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DCFA:  MOV             R9, R0
29DCFC:  LDR.W           R0, [R9,#0x54]
29DD00:  ADDS            R0, #1
29DD02:  STR.W           R0, [R9,#0x54]
29DD06:  LDRD.W          R1, R5, [R4,#0x3C]
29DD0A:  ADDS            R0, R5, #1
29DD0C:  CMP             R1, R0
29DD0E:  BCS             loc_29DD58
29DD10:  MOVW            R1, #0xAAAB
29DD14:  LSLS            R0, R0, #2
29DD16:  MOVT            R1, #0xAAAA
29DD1A:  UMULL.W         R0, R1, R0, R1
29DD1E:  MOVS            R0, #3
29DD20:  ADD.W           R10, R0, R1,LSR#1
29DD24:  ADD.W           R0, R10, R10,LSL#1
29DD28:  LSLS            R0, R0, #2; byte_count
29DD2A:  BLX             malloc
29DD2E:  LDR.W           R8, [R4,#0x44]
29DD32:  MOV             R6, R0
29DD34:  CMP.W           R8, #0
29DD38:  BEQ             loc_29DD50
29DD3A:  ADD.W           R0, R5, R5,LSL#1
29DD3E:  MOV             R1, R8; void *
29DD40:  LSLS            R2, R0, #2; size_t
29DD42:  MOV             R0, R6; void *
29DD44:  BLX             memcpy_0
29DD48:  MOV             R0, R8; p
29DD4A:  BLX             free
29DD4E:  LDR             R5, [R4,#0x40]
29DD50:  STR             R6, [R4,#0x44]
29DD52:  STR.W           R10, [R4,#0x3C]
29DD56:  B               loc_29DD5A
29DD58:  LDR             R6, [R4,#0x44]
29DD5A:  LDR             R1, =(_ZN15StartGameScreen12OnDeleteGameEv_ptr - 0x29DD66)
29DD5C:  ADD.W           R2, R5, R5,LSL#1
29DD60:  LDR             R0, =(aFesDel - 0x29DD72); "FES_DEL"
29DD62:  ADD             R1, PC; _ZN15StartGameScreen12OnDeleteGameEv_ptr
29DD64:  STR.W           R9, [R6,R2,LSL#2]
29DD68:  ADD.W           R2, R6, R2,LSL#2
29DD6C:  LDR             R1, [R1]; StartGameScreen::OnDeleteGame(void)
29DD6E:  ADD             R0, PC; "FES_DEL"
29DD70:  STRD.W          R0, R1, [R2,#4]
29DD74:  MOVS            R1, #1
29DD76:  LDR             R0, [R4,#0x40]
29DD78:  ADDS            R0, #1
29DD7A:  STR             R0, [R4,#0x40]
29DD7C:  MOV             R0, R4
29DD7E:  POP.W           {R8-R10}
29DD82:  POP.W           {R4-R7,LR}
29DD86:  B.W             sub_19721C
