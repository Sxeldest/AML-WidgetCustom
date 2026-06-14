; =========================================================
; Game Engine Function: _ZN14SettingsScreenC2Ev
; Address            : 0x29DE98 - 0x29E156
; =========================================================

29DE98:  PUSH            {R4-R7,LR}
29DE9A:  ADD             R7, SP, #0xC
29DE9C:  PUSH.W          {R8-R10}
29DEA0:  MOVS            R1, #1; bool
29DEA2:  MOVS            R2, #0; bool
29DEA4:  MOV             R4, R0
29DEA6:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
29DEAA:  LDR             R0, =(_ZTV14SettingsScreen_ptr - 0x29DEB0)
29DEAC:  ADD             R0, PC; _ZTV14SettingsScreen_ptr
29DEAE:  LDR             R0, [R0]; `vtable for'SettingsScreen ...
29DEB0:  ADDS            R0, #8
29DEB2:  STR             R0, [R4]
29DEB4:  ADR             R0, aMenuMaincontro; "menu_maincontrols"
29DEB6:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DEBA:  MOV             R9, R0
29DEBC:  LDR.W           R0, [R9,#0x54]
29DEC0:  ADDS            R0, #1
29DEC2:  STR.W           R0, [R9,#0x54]
29DEC6:  LDRD.W          R1, R5, [R4,#0x3C]
29DECA:  ADDS            R0, R5, #1
29DECC:  CMP             R1, R0
29DECE:  BCS             loc_29DF18
29DED0:  MOVW            R1, #0xAAAB
29DED4:  LSLS            R0, R0, #2
29DED6:  MOVT            R1, #0xAAAA
29DEDA:  UMULL.W         R0, R1, R0, R1
29DEDE:  MOVS            R0, #3
29DEE0:  ADD.W           R10, R0, R1,LSR#1
29DEE4:  ADD.W           R0, R10, R10,LSL#1
29DEE8:  LSLS            R0, R0, #2; byte_count
29DEEA:  BLX             malloc
29DEEE:  LDR.W           R8, [R4,#0x44]
29DEF2:  MOV             R6, R0
29DEF4:  CMP.W           R8, #0
29DEF8:  BEQ             loc_29DF10
29DEFA:  ADD.W           R0, R5, R5,LSL#1
29DEFE:  MOV             R1, R8; void *
29DF00:  LSLS            R2, R0, #2; size_t
29DF02:  MOV             R0, R6; void *
29DF04:  BLX             memcpy_0
29DF08:  MOV             R0, R8; p
29DF0A:  BLX             free
29DF0E:  LDR             R5, [R4,#0x40]
29DF10:  STR             R6, [R4,#0x44]
29DF12:  STR.W           R10, [R4,#0x3C]
29DF16:  B               loc_29DF1A
29DF18:  LDR             R6, [R4,#0x44]
29DF1A:  LDR             R1, =(_ZN14SettingsScreen16OnAdjustControlsEv_ptr - 0x29DF26)
29DF1C:  ADD.W           R2, R5, R5,LSL#1
29DF20:  LDR             R0, =(aFecRed - 0x29DF32); "FEC_RED"
29DF22:  ADD             R1, PC; _ZN14SettingsScreen16OnAdjustControlsEv_ptr
29DF24:  STR.W           R9, [R6,R2,LSL#2]
29DF28:  ADD.W           R2, R6, R2,LSL#2
29DF2C:  LDR             R1, [R1]; SettingsScreen::OnAdjustControls(void)
29DF2E:  ADD             R0, PC; "FEC_RED"
29DF30:  STRD.W          R0, R1, [R2,#4]
29DF34:  LDR             R0, =(aMenuMainsettin - 0x29DF3C); "menu_mainsettings"
29DF36:  LDR             R1, [R4,#0x40]
29DF38:  ADD             R0, PC; "menu_mainsettings"
29DF3A:  ADDS            R1, #1; char *
29DF3C:  STR             R1, [R4,#0x40]
29DF3E:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DF42:  MOV             R9, R0
29DF44:  LDR.W           R0, [R9,#0x54]
29DF48:  ADDS            R0, #1
29DF4A:  STR.W           R0, [R9,#0x54]
29DF4E:  LDRD.W          R1, R5, [R4,#0x3C]
29DF52:  ADDS            R0, R5, #1
29DF54:  CMP             R1, R0
29DF56:  BCS             loc_29DFA0
29DF58:  MOVW            R1, #0xAAAB
29DF5C:  LSLS            R0, R0, #2
29DF5E:  MOVT            R1, #0xAAAA
29DF62:  UMULL.W         R0, R1, R0, R1
29DF66:  MOVS            R0, #3
29DF68:  ADD.W           R10, R0, R1,LSR#1
29DF6C:  ADD.W           R0, R10, R10,LSL#1
29DF70:  LSLS            R0, R0, #2; byte_count
29DF72:  BLX             malloc
29DF76:  LDR.W           R8, [R4,#0x44]
29DF7A:  MOV             R6, R0
29DF7C:  CMP.W           R8, #0
29DF80:  BEQ             loc_29DF98
29DF82:  ADD.W           R0, R5, R5,LSL#1
29DF86:  MOV             R1, R8; void *
29DF88:  LSLS            R2, R0, #2; size_t
29DF8A:  MOV             R0, R6; void *
29DF8C:  BLX             memcpy_0
29DF90:  MOV             R0, R8; p
29DF92:  BLX             free
29DF96:  LDR             R5, [R4,#0x40]
29DF98:  STR             R6, [R4,#0x44]
29DF9A:  STR.W           R10, [R4,#0x3C]
29DF9E:  B               loc_29DFA2
29DFA0:  LDR             R6, [R4,#0x44]
29DFA2:  LDR             R1, =(_ZN14SettingsScreen13OnGameOptionsEv_ptr - 0x29DFAE)
29DFA4:  ADD.W           R2, R5, R5,LSL#1
29DFA8:  LDR             R0, =(aFehLoa - 0x29DFBA); "FEH_LOA"
29DFAA:  ADD             R1, PC; _ZN14SettingsScreen13OnGameOptionsEv_ptr
29DFAC:  STR.W           R9, [R6,R2,LSL#2]
29DFB0:  ADD.W           R2, R6, R2,LSL#2
29DFB4:  LDR             R1, [R1]; SettingsScreen::OnGameOptions(void) ; char *
29DFB6:  ADD             R0, PC; "FEH_LOA"
29DFB8:  STRD.W          R0, R1, [R2,#4]
29DFBC:  LDR             R0, [R4,#0x40]
29DFBE:  ADDS            R0, #1
29DFC0:  STR             R0, [R4,#0x40]
29DFC2:  ADR             R0, aMenuMaindispla; "menu_maindisplay"
29DFC4:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29DFC8:  MOV             R9, R0
29DFCA:  LDR.W           R0, [R9,#0x54]
29DFCE:  ADDS            R0, #1
29DFD0:  STR.W           R0, [R9,#0x54]
29DFD4:  LDRD.W          R1, R5, [R4,#0x3C]
29DFD8:  ADDS            R0, R5, #1
29DFDA:  CMP             R1, R0
29DFDC:  BCS             loc_29E026
29DFDE:  MOVW            R1, #0xAAAB
29DFE2:  LSLS            R0, R0, #2
29DFE4:  MOVT            R1, #0xAAAA
29DFE8:  UMULL.W         R0, R1, R0, R1
29DFEC:  MOVS            R0, #3
29DFEE:  ADD.W           R10, R0, R1,LSR#1
29DFF2:  ADD.W           R0, R10, R10,LSL#1
29DFF6:  LSLS            R0, R0, #2; byte_count
29DFF8:  BLX             malloc
29DFFC:  LDR.W           R8, [R4,#0x44]
29E000:  MOV             R6, R0
29E002:  CMP.W           R8, #0
29E006:  BEQ             loc_29E01E
29E008:  ADD.W           R0, R5, R5,LSL#1
29E00C:  MOV             R1, R8; void *
29E00E:  LSLS            R2, R0, #2; size_t
29E010:  MOV             R0, R6; void *
29E012:  BLX             memcpy_0
29E016:  MOV             R0, R8; p
29E018:  BLX             free
29E01C:  LDR             R5, [R4,#0x40]
29E01E:  STR             R6, [R4,#0x44]
29E020:  STR.W           R10, [R4,#0x3C]
29E024:  B               loc_29E028
29E026:  LDR             R6, [R4,#0x44]
29E028:  LDR             R0, =(_ZN14SettingsScreen16OnDisplayOptionsEv_ptr - 0x29E034)
29E02A:  ADD.W           R1, R5, R5,LSL#1
29E02E:  ADR             R2, aFeoDis; "FEO_DIS"
29E030:  ADD             R0, PC; _ZN14SettingsScreen16OnDisplayOptionsEv_ptr
29E032:  STR.W           R9, [R6,R1,LSL#2]
29E036:  ADD.W           R1, R6, R1,LSL#2; char *
29E03A:  LDR             R0, [R0]; SettingsScreen::OnDisplayOptions(void)
29E03C:  STRD.W          R2, R0, [R1,#4]
29E040:  LDR             R0, [R4,#0x40]
29E042:  ADDS            R0, #1
29E044:  STR             R0, [R4,#0x40]
29E046:  ADR             R0, aMenuMainaudio; "menu_mainaudio"
29E048:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29E04C:  MOV             R9, R0
29E04E:  LDR.W           R0, [R9,#0x54]
29E052:  ADDS            R0, #1
29E054:  STR.W           R0, [R9,#0x54]
29E058:  LDRD.W          R1, R5, [R4,#0x3C]
29E05C:  ADDS            R0, R5, #1
29E05E:  CMP             R1, R0
29E060:  BCS             loc_29E0AA
29E062:  MOVW            R1, #0xAAAB
29E066:  LSLS            R0, R0, #2
29E068:  MOVT            R1, #0xAAAA
29E06C:  UMULL.W         R0, R1, R0, R1
29E070:  MOVS            R0, #3
29E072:  ADD.W           R10, R0, R1,LSR#1
29E076:  ADD.W           R0, R10, R10,LSL#1
29E07A:  LSLS            R0, R0, #2; byte_count
29E07C:  BLX             malloc
29E080:  LDR.W           R8, [R4,#0x44]
29E084:  MOV             R6, R0
29E086:  CMP.W           R8, #0
29E08A:  BEQ             loc_29E0A2
29E08C:  ADD.W           R0, R5, R5,LSL#1
29E090:  MOV             R1, R8; void *
29E092:  LSLS            R2, R0, #2; size_t
29E094:  MOV             R0, R6; void *
29E096:  BLX             memcpy_0
29E09A:  MOV             R0, R8; p
29E09C:  BLX             free
29E0A0:  LDR             R5, [R4,#0x40]
29E0A2:  STR             R6, [R4,#0x44]
29E0A4:  STR.W           R10, [R4,#0x3C]
29E0A8:  B               loc_29E0AC
29E0AA:  LDR             R6, [R4,#0x44]
29E0AC:  LDR             R0, =(_ZN14SettingsScreen14OnSoundOptionsEv_ptr - 0x29E0B8)
29E0AE:  ADD.W           R1, R5, R5,LSL#1
29E0B2:  ADR             R2, aFeoAud; "FEO_AUD"
29E0B4:  ADD             R0, PC; _ZN14SettingsScreen14OnSoundOptionsEv_ptr
29E0B6:  STR.W           R9, [R6,R1,LSL#2]
29E0BA:  ADD.W           R1, R6, R1,LSL#2; char *
29E0BE:  LDR             R0, [R0]; SettingsScreen::OnSoundOptions(void)
29E0C0:  STRD.W          R2, R0, [R1,#4]
29E0C4:  LDR             R0, [R4,#0x40]
29E0C6:  ADDS            R0, #1
29E0C8:  STR             R0, [R4,#0x40]
29E0CA:  ADR             R0, aMenuMainlangua; "menu_mainlanguage"
29E0CC:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29E0D0:  MOV             R9, R0
29E0D2:  LDR.W           R0, [R9,#0x54]
29E0D6:  ADDS            R0, #1
29E0D8:  STR.W           R0, [R9,#0x54]
29E0DC:  LDRD.W          R1, R5, [R4,#0x3C]
29E0E0:  ADDS            R0, R5, #1
29E0E2:  CMP             R1, R0
29E0E4:  BCS             loc_29E12E
29E0E6:  MOVW            R1, #0xAAAB
29E0EA:  LSLS            R0, R0, #2
29E0EC:  MOVT            R1, #0xAAAA
29E0F0:  UMULL.W         R0, R1, R0, R1
29E0F4:  MOVS            R0, #3
29E0F6:  ADD.W           R10, R0, R1,LSR#1
29E0FA:  ADD.W           R0, R10, R10,LSL#1
29E0FE:  LSLS            R0, R0, #2; byte_count
29E100:  BLX             malloc
29E104:  LDR.W           R8, [R4,#0x44]
29E108:  MOV             R6, R0
29E10A:  CMP.W           R8, #0
29E10E:  BEQ             loc_29E126
29E110:  ADD.W           R0, R5, R5,LSL#1
29E114:  MOV             R1, R8; void *
29E116:  LSLS            R2, R0, #2; size_t
29E118:  MOV             R0, R6; void *
29E11A:  BLX             memcpy_0
29E11E:  MOV             R0, R8; p
29E120:  BLX             free
29E124:  LDR             R5, [R4,#0x40]
29E126:  STR             R6, [R4,#0x44]
29E128:  STR.W           R10, [R4,#0x3C]
29E12C:  B               loc_29E130
29E12E:  LDR             R6, [R4,#0x44]
29E130:  LDR             R0, =(_ZN14SettingsScreen17OnLanguageOptionsEv_ptr - 0x29E13C)
29E132:  ADD.W           R1, R5, R5,LSL#1
29E136:  ADR             R2, aFeoLan; "FEO_LAN"
29E138:  ADD             R0, PC; _ZN14SettingsScreen17OnLanguageOptionsEv_ptr
29E13A:  STR.W           R9, [R6,R1,LSL#2]
29E13E:  ADD.W           R1, R6, R1,LSL#2
29E142:  LDR             R0, [R0]; SettingsScreen::OnLanguageOptions(void)
29E144:  STRD.W          R2, R0, [R1,#4]
29E148:  LDR             R0, [R4,#0x40]
29E14A:  NOP
29E14C:  STR             R0, [R4,#0x40]
29E14E:  MOV             R0, R4
29E150:  POP.W           {R8-R10}
29E154:  POP             {R4-R7,PC}
