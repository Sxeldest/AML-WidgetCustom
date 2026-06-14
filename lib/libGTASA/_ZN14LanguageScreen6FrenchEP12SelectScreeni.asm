; =========================================================
; Game Engine Function: _ZN14LanguageScreen6FrenchEP12SelectScreeni
; Address            : 0x2A5D28 - 0x2A5D4A
; =========================================================

2A5D28:  PUSH            {R7,LR}
2A5D2A:  MOV             R7, SP
2A5D2C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A5D34)
2A5D2E:  MOVS            R2, #1
2A5D30:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A5D32:  LDR             R1, [R0]; MobileSettings::settings ...
2A5D34:  LDR             R0, =(aSetlocale - 0x2A5D3E); "SetLocale"
2A5D36:  STR.W           R2, [R1,#(dword_6E061C - 0x6E03F4)]
2A5D3A:  ADD             R0, PC; "SetLocale"
2A5D3C:  ADR             R1, dword_2A5D54; char *
2A5D3E:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
2A5D42:  POP.W           {R7,LR}
2A5D46:  B.W             j_j__Z18Menu_ApplyLanguagev; j_Menu_ApplyLanguage(void)
