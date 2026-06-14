; =========================================================
; Game Engine Function: _ZN14SettingsScreen16OnAdjustControlsEv
; Address            : 0x29E1E0 - 0x29E238
; =========================================================

29E1E0:  PUSH            {R4,R6,R7,LR}
29E1E2:  ADD             R7, SP, #8
29E1E4:  MOVS            R0, #9
29E1E6:  MOVS            R1, #1
29E1E8:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29E1EC:  MOVS            R0, #0x44 ; 'D'; unsigned int
29E1EE:  BLX             _Znwj; operator new(uint)
29E1F2:  MOV             R4, R0
29E1F4:  BLX             j__ZN14ControlsScreenC2Ev; ControlsScreen::ControlsScreen(void)
29E1F8:  LDR             R0, =(gMobileMenu_ptr - 0x29E1FE)
29E1FA:  ADD             R0, PC; gMobileMenu_ptr
29E1FC:  LDR             R0, [R0]; gMobileMenu
29E1FE:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29E200:  CBZ             R0, loc_29E21A
29E202:  LDR             R1, =(gMobileMenu_ptr - 0x29E20A)
29E204:  LDR             R2, [R4]
29E206:  ADD             R1, PC; gMobileMenu_ptr
29E208:  LDR             R1, [R1]; gMobileMenu
29E20A:  LDR             R2, [R2,#0x14]
29E20C:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29E20E:  ADD.W           R0, R1, R0,LSL#2
29E212:  LDR.W           R1, [R0,#-4]
29E216:  MOV             R0, R4
29E218:  BLX             R2
29E21A:  LDR             R0, =(gMobileMenu_ptr - 0x29E220)
29E21C:  ADD             R0, PC; gMobileMenu_ptr
29E21E:  LDR             R0, [R0]; gMobileMenu
29E220:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29E222:  CBZ             R0, loc_29E22E
29E224:  LDR             R0, =(gMobileMenu_ptr - 0x29E22A)
29E226:  ADD             R0, PC; gMobileMenu_ptr
29E228:  LDR             R0, [R0]; gMobileMenu ; this
29E22A:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29E22E:  LDR             R0, =(gMobileMenu_ptr - 0x29E234)
29E230:  ADD             R0, PC; gMobileMenu_ptr
29E232:  LDR             R0, [R0]; gMobileMenu
29E234:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29E236:  POP             {R4,R6,R7,PC}
