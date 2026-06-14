; =========================================================
; Game Engine Function: _ZN14SettingsScreen14OnSoundOptionsEv
; Address            : 0x29E324 - 0x29E37C
; =========================================================

29E324:  PUSH            {R4,R6,R7,LR}
29E326:  ADD             R7, SP, #8
29E328:  MOVS            R0, #0xC
29E32A:  MOVS            R1, #1
29E32C:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29E330:  MOVS            R0, #0x44 ; 'D'; unsigned int
29E332:  BLX             _Znwj; operator new(uint)
29E336:  MOV             R4, R0
29E338:  BLX             j__ZN11AudioScreenC2Ev; AudioScreen::AudioScreen(void)
29E33C:  LDR             R0, =(gMobileMenu_ptr - 0x29E342)
29E33E:  ADD             R0, PC; gMobileMenu_ptr
29E340:  LDR             R0, [R0]; gMobileMenu
29E342:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29E344:  CBZ             R0, loc_29E35E
29E346:  LDR             R1, =(gMobileMenu_ptr - 0x29E34E)
29E348:  LDR             R2, [R4]
29E34A:  ADD             R1, PC; gMobileMenu_ptr
29E34C:  LDR             R1, [R1]; gMobileMenu
29E34E:  LDR             R2, [R2,#0x14]
29E350:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29E352:  ADD.W           R0, R1, R0,LSL#2
29E356:  LDR.W           R1, [R0,#-4]
29E35A:  MOV             R0, R4
29E35C:  BLX             R2
29E35E:  LDR             R0, =(gMobileMenu_ptr - 0x29E364)
29E360:  ADD             R0, PC; gMobileMenu_ptr
29E362:  LDR             R0, [R0]; gMobileMenu
29E364:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29E366:  CBZ             R0, loc_29E372
29E368:  LDR             R0, =(gMobileMenu_ptr - 0x29E36E)
29E36A:  ADD             R0, PC; gMobileMenu_ptr
29E36C:  LDR             R0, [R0]; gMobileMenu ; this
29E36E:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29E372:  LDR             R0, =(gMobileMenu_ptr - 0x29E378)
29E374:  ADD             R0, PC; gMobileMenu_ptr
29E376:  LDR             R0, [R0]; gMobileMenu
29E378:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29E37A:  POP             {R4,R6,R7,PC}
