; =========================================================
; Game Engine Function: _ZN14SettingsScreen6OnBackEv
; Address            : 0x29E40C - 0x29E448
; =========================================================

29E40C:  PUSH            {R7,LR}
29E40E:  MOV             R7, SP
29E410:  BLX             j__Z17Menu_SaveSettingsv; Menu_SaveSettings(void)
29E414:  LDR             R0, =(gMobileMenu_ptr - 0x29E41A)
29E416:  ADD             R0, PC; gMobileMenu_ptr
29E418:  LDR             R0, [R0]; gMobileMenu
29E41A:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29E41C:  CMP             R0, #2
29E41E:  BCC             loc_29E436
29E420:  LDR             R1, =(gMobileMenu_ptr - 0x29E426)
29E422:  ADD             R1, PC; gMobileMenu_ptr
29E424:  LDR             R1, [R1]; gMobileMenu
29E426:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29E428:  ADD.W           R1, R1, R0,LSL#2
29E42C:  LDRD.W          R0, R1, [R1,#-8]
29E430:  LDR             R2, [R0]
29E432:  LDR             R2, [R2,#0x14]
29E434:  BLX             R2
29E436:  LDR             R0, =(gMobileMenu_ptr - 0x29E440)
29E438:  MOVS            R1, #0; bool
29E43A:  MOVS            R2, #0; bool
29E43C:  ADD             R0, PC; gMobileMenu_ptr
29E43E:  LDR             R0, [R0]; gMobileMenu ; this
29E440:  POP.W           {R7,LR}
29E444:  B.W             j_j__ZN10MobileMenu15RemoveTopScreenEbb; j_MobileMenu::RemoveTopScreen(bool,bool)
