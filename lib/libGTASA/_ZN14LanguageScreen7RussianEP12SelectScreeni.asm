; =========================================================
; Game Engine Function: _ZN14LanguageScreen7RussianEP12SelectScreeni
; Address            : 0x2A5DE8 - 0x2A5E0A
; =========================================================

2A5DE8:  PUSH            {R7,LR}
2A5DEA:  MOV             R7, SP
2A5DEC:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A5DF4)
2A5DEE:  MOVS            R2, #5
2A5DF0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A5DF2:  LDR             R1, [R0]; MobileSettings::settings ...
2A5DF4:  LDR             R0, =(aSetlocale - 0x2A5DFE); "SetLocale"
2A5DF6:  STR.W           R2, [R1,#(dword_6E061C - 0x6E03F4)]
2A5DFA:  ADD             R0, PC; "SetLocale"
2A5DFC:  ADR             R1, dword_2A5E14; char *
2A5DFE:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
2A5E02:  POP.W           {R7,LR}
2A5E06:  B.W             j_j__Z18Menu_ApplyLanguagev; j_Menu_ApplyLanguage(void)
