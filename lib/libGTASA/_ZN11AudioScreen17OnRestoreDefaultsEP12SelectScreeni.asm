; =========================================================
; Game Engine Function: _ZN11AudioScreen17OnRestoreDefaultsEP12SelectScreeni
; Address            : 0x2A4F54 - 0x2A4F78
; =========================================================

2A4F54:  PUSH            {R7,LR}
2A4F56:  MOV             R7, SP
2A4F58:  BLX             j__ZN12SelectScreen17OnRestoreDefaultsEPS_i; SelectScreen::OnRestoreDefaults(SelectScreen*,int)
2A4F5C:  BLX             j__Z23Menu_ApplyAudioSettingsv; Menu_ApplyAudioSettings(void)
2A4F60:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4F68)
2A4F62:  LDR             R1, =(AudioEngine_ptr - 0x2A4F6A)
2A4F64:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A4F66:  ADD             R1, PC; AudioEngine_ptr
2A4F68:  LDR             R2, [R0]; MobileSettings::settings ...
2A4F6A:  LDR             R0, [R1]; AudioEngine ; this
2A4F6C:  LDRSB.W         R1, [R2,#(dword_6E05BC - 0x6E03F4)]; signed __int8
2A4F70:  POP.W           {R7,LR}
2A4F74:  B.W             j_j__ZN12CAudioEngine11RetuneRadioEa; j_CAudioEngine::RetuneRadio(signed char)
