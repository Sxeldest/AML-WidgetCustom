; =========================================================
; Game Engine Function: _ZN14SettingsScreen13OnGameOptionsEv
; Address            : 0x29E24C - 0x29E2A4
; =========================================================

29E24C:  PUSH            {R4,R6,R7,LR}
29E24E:  ADD             R7, SP, #8
29E250:  MOVS            R0, #0xA
29E252:  MOVS            R1, #1
29E254:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29E258:  MOVS            R0, #0x44 ; 'D'; unsigned int
29E25A:  BLX             _Znwj; operator new(uint)
29E25E:  MOV             R4, R0
29E260:  BLX             j__ZN10GameScreenC2Ev; GameScreen::GameScreen(void)
29E264:  LDR             R0, =(gMobileMenu_ptr - 0x29E26A)
29E266:  ADD             R0, PC; gMobileMenu_ptr
29E268:  LDR             R0, [R0]; gMobileMenu
29E26A:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29E26C:  CBZ             R0, loc_29E286
29E26E:  LDR             R1, =(gMobileMenu_ptr - 0x29E276)
29E270:  LDR             R2, [R4]
29E272:  ADD             R1, PC; gMobileMenu_ptr
29E274:  LDR             R1, [R1]; gMobileMenu
29E276:  LDR             R2, [R2,#0x14]
29E278:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29E27A:  ADD.W           R0, R1, R0,LSL#2
29E27E:  LDR.W           R1, [R0,#-4]
29E282:  MOV             R0, R4
29E284:  BLX             R2
29E286:  LDR             R0, =(gMobileMenu_ptr - 0x29E28C)
29E288:  ADD             R0, PC; gMobileMenu_ptr
29E28A:  LDR             R0, [R0]; gMobileMenu
29E28C:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29E28E:  CBZ             R0, loc_29E29A
29E290:  LDR             R0, =(gMobileMenu_ptr - 0x29E296)
29E292:  ADD             R0, PC; gMobileMenu_ptr
29E294:  LDR             R0, [R0]; gMobileMenu ; this
29E296:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29E29A:  LDR             R0, =(gMobileMenu_ptr - 0x29E2A0)
29E29C:  ADD             R0, PC; gMobileMenu_ptr
29E29E:  LDR             R0, [R0]; gMobileMenu
29E2A0:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29E2A2:  POP             {R4,R6,R7,PC}
