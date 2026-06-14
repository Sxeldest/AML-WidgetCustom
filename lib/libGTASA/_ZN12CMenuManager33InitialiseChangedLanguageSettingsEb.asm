; =========================================================
; Game Engine Function: _ZN12CMenuManager33InitialiseChangedLanguageSettingsEb
; Address            : 0x42EAA4 - 0x42EB7A
; =========================================================

42EAA4:  PUSH            {R4,R5,R7,LR}
42EAA6:  ADD             R7, SP, #8
42EAA8:  SUB             SP, SP, #0x10
42EAAA:  MOV             R5, R0
42EAAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x42EAB4)
42EAAE:  MOV             R4, R1
42EAB0:  ADD             R0, PC; __stack_chk_guard_ptr
42EAB2:  LDR             R0, [R0]; __stack_chk_guard
42EAB4:  LDR             R0, [R0]
42EAB6:  STR             R0, [SP,#0x18+var_C]
42EAB8:  LDRB.W          R0, [R5,#0xB7]
42EABC:  CMP             R0, #0
42EABE:  BEQ             loc_42EB64
42EAC0:  MOVS            R0, #0; this
42EAC2:  STRB.W          R0, [R5,#0xB7]
42EAC6:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
42EACA:  LDR             R0, =(TheText_ptr - 0x42EAD2)
42EACC:  ADD             R1, SP, #0x18+var_14; char *
42EACE:  ADD             R0, PC; TheText_ptr
42EAD0:  LDR             R0, [R0]; TheText ; this
42EAD2:  BLX             j__ZN5CText26GetNameOfLoadedMissionTextEPc; CText::GetNameOfLoadedMissionText(char *)
42EAD6:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x42EADC)
42EAD8:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
42EADA:  LDR             R0, [R0]; CGame::bMissionPackGame ...
42EADC:  LDRB            R0, [R0]; CGame::bMissionPackGame
42EADE:  CBZ             R0, loc_42EAE8
42EAE0:  LDR             R0, =(TheText_ptr - 0x42EAE8)
42EAE2:  MOVS            R1, #1
42EAE4:  ADD             R0, PC; TheText_ptr
42EAE6:  B               loc_42EAEE
42EAE8:  LDR             R0, =(TheText_ptr - 0x42EAF0)
42EAEA:  MOVS            R1, #0; unsigned __int8
42EAEC:  ADD             R0, PC; TheText_ptr
42EAEE:  LDR             R0, [R0]; TheText ; this
42EAF0:  BLX             j__ZN5CText4LoadEh; CText::Load(uchar)
42EAF4:  LDRB.W          R0, [SP,#0x18+var_14]
42EAF8:  CBZ             R0, loc_42EB06
42EAFA:  LDR             R0, =(TheText_ptr - 0x42EB02)
42EAFC:  ADD             R1, SP, #0x18+var_14; char *
42EAFE:  ADD             R0, PC; TheText_ptr
42EB00:  LDR             R0, [R0]; TheText ; this
42EB02:  BLX             j__ZN5CText15LoadMissionTextEPc; CText::LoadMissionText(char *)
42EB06:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
42EB0A:  LDR             R0, [R5,#0x4C]
42EB0C:  SUBS            R0, #1
42EB0E:  CMP             R0, #2
42EB10:  BCC             def_42EB1A; jumptable 0042EB1A default case
42EB12:  LDRSB.W         R0, [R5,#0x48]; this
42EB16:  CMP             R0, #6; switch 7 cases
42EB18:  BHI             def_42EB1A; jumptable 0042EB1A default case
42EB1A:  TBB.W           [PC,R0]; switch jump
42EB1E:  DCB 4; jump table for switch statement
42EB1F:  DCB 7
42EB20:  DCB 4
42EB21:  DCB 4
42EB22:  DCB 4
42EB23:  DCB 0xA
42EB24:  DCB 0xD
42EB25:  ALIGN 2
42EB26:  BLX             j__ZN13CLocalisation13SetNormalGameEv; jumptable 0042EB1A cases 0,2-4
42EB2A:  B               def_42EB1A; jumptable 0042EB1A default case
42EB2C:  BLX             j__ZN13CLocalisation13SetFrenchGameEv; jumptable 0042EB1A case 1
42EB30:  B               def_42EB1A; jumptable 0042EB1A default case
42EB32:  BLX             j__ZN5CFont17AddRussianTextureEv; jumptable 0042EB1A case 5
42EB36:  B               def_42EB1A; jumptable 0042EB1A default case
42EB38:  BLX             j__ZN5CFont18AddJapaneseTextureEv; jumptable 0042EB1A case 6
42EB3C:  LDRB.W          R0, [R5,#0x48]; jumptable 0042EB1A default case
42EB40:  SUBS            R0, #5
42EB42:  UXTB            R0, R0; this
42EB44:  CMP             R0, #3
42EB46:  IT CS
42EB48:  BLXCS           j__ZN5CFont12AddEFIGSFontEv; CFont::AddEFIGSFont(void)
42EB4C:  LDR             R0, [R5,#0x4C]; this
42EB4E:  CMP             R0, #1
42EB50:  IT EQ
42EB52:  BLXEQ           j__ZN13CLocalisation13SetFrenchGameEv; CLocalisation::SetFrenchGame(void)
42EB56:  CMP             R4, #1
42EB58:  BNE             loc_42EB64
42EB5A:  LDR             R0, =(ControlsManager_ptr - 0x42EB60)
42EB5C:  ADD             R0, PC; ControlsManager_ptr
42EB5E:  LDR             R0, [R0]; ControlsManager ; this
42EB60:  BLX             j__ZN24CControllerConfigManager14ReinitControlsEv; CControllerConfigManager::ReinitControls(void)
42EB64:  LDR             R0, =(__stack_chk_guard_ptr - 0x42EB6C)
42EB66:  LDR             R1, [SP,#0x18+var_C]
42EB68:  ADD             R0, PC; __stack_chk_guard_ptr
42EB6A:  LDR             R0, [R0]; __stack_chk_guard
42EB6C:  LDR             R0, [R0]
42EB6E:  SUBS            R0, R0, R1
42EB70:  ITT EQ
42EB72:  ADDEQ           SP, SP, #0x10
42EB74:  POPEQ           {R4,R5,R7,PC}
42EB76:  BLX             __stack_chk_fail
