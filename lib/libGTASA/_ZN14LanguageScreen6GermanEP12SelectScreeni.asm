; =========================================================
; Game Engine Function: _ZN14LanguageScreen6GermanEP12SelectScreeni
; Address            : 0x2A5D88 - 0x2A5DAA
; =========================================================

2A5D88:  PUSH            {R7,LR}
2A5D8A:  MOV             R7, SP
2A5D8C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A5D94)
2A5D8E:  MOVS            R2, #2
2A5D90:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A5D92:  LDR             R1, [R0]; MobileSettings::settings ...
2A5D94:  LDR             R0, =(aSetlocale - 0x2A5D9E); "SetLocale"
2A5D96:  STR.W           R2, [R1,#(dword_6E061C - 0x6E03F4)]
2A5D9A:  ADD             R0, PC; "SetLocale"
2A5D9C:  ADR             R1, dword_2A5DB4; char *
2A5D9E:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
2A5DA2:  POP.W           {R7,LR}
2A5DA6:  B.W             j_j__Z18Menu_ApplyLanguagev; j_Menu_ApplyLanguage(void)
