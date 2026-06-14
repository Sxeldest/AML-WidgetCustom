; =========================================================
; Game Engine Function: _ZN14LanguageScreen8JapeneseEP12SelectScreeni
; Address            : 0x2A5CF8 - 0x2A5D1A
; =========================================================

2A5CF8:  PUSH            {R7,LR}
2A5CFA:  MOV             R7, SP
2A5CFC:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A5D04)
2A5CFE:  MOVS            R2, #6
2A5D00:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A5D02:  LDR             R1, [R0]; MobileSettings::settings ...
2A5D04:  LDR             R0, =(aSetlocale - 0x2A5D0E); "SetLocale"
2A5D06:  STR.W           R2, [R1,#(dword_6E061C - 0x6E03F4)]
2A5D0A:  ADD             R0, PC; "SetLocale"
2A5D0C:  ADR             R1, dword_2A5D24; char *
2A5D0E:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
2A5D12:  POP.W           {R7,LR}
2A5D16:  B.W             j_j__Z18Menu_ApplyLanguagev; j_Menu_ApplyLanguage(void)
