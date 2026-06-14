; =========================================================
; Game Engine Function: _ZN14SettingsScreen17OnLanguageOptionsEv
; Address            : 0x29E390 - 0x29E3E8
; =========================================================

29E390:  PUSH            {R4,R6,R7,LR}
29E392:  ADD             R7, SP, #8
29E394:  MOVS            R0, #0xD
29E396:  MOVS            R1, #1
29E398:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29E39C:  MOVS            R0, #0x44 ; 'D'; unsigned int
29E39E:  BLX             _Znwj; operator new(uint)
29E3A2:  MOV             R4, R0
29E3A4:  BLX             j__ZN14LanguageScreenC2Ev; LanguageScreen::LanguageScreen(void)
29E3A8:  LDR             R0, =(gMobileMenu_ptr - 0x29E3AE)
29E3AA:  ADD             R0, PC; gMobileMenu_ptr
29E3AC:  LDR             R0, [R0]; gMobileMenu
29E3AE:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29E3B0:  CBZ             R0, loc_29E3CA
29E3B2:  LDR             R1, =(gMobileMenu_ptr - 0x29E3BA)
29E3B4:  LDR             R2, [R4]
29E3B6:  ADD             R1, PC; gMobileMenu_ptr
29E3B8:  LDR             R1, [R1]; gMobileMenu
29E3BA:  LDR             R2, [R2,#0x14]
29E3BC:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29E3BE:  ADD.W           R0, R1, R0,LSL#2
29E3C2:  LDR.W           R1, [R0,#-4]
29E3C6:  MOV             R0, R4
29E3C8:  BLX             R2
29E3CA:  LDR             R0, =(gMobileMenu_ptr - 0x29E3D0)
29E3CC:  ADD             R0, PC; gMobileMenu_ptr
29E3CE:  LDR             R0, [R0]; gMobileMenu
29E3D0:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29E3D2:  CBZ             R0, loc_29E3DE
29E3D4:  LDR             R0, =(gMobileMenu_ptr - 0x29E3DA)
29E3D6:  ADD             R0, PC; gMobileMenu_ptr
29E3D8:  LDR             R0, [R0]; gMobileMenu ; this
29E3DA:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29E3DE:  LDR             R0, =(gMobileMenu_ptr - 0x29E3E4)
29E3E0:  ADD             R0, PC; gMobileMenu_ptr
29E3E2:  LDR             R0, [R0]; gMobileMenu
29E3E4:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29E3E6:  POP             {R4,R6,R7,PC}
