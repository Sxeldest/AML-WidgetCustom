; =========================================================
; Game Engine Function: _ZN10FlowScreen7OnStatsEv
; Address            : 0x29DA4C - 0x29DA9C
; =========================================================

29DA4C:  PUSH            {R4,R6,R7,LR}
29DA4E:  ADD             R7, SP, #8
29DA50:  MOVS            R0, #0x44 ; 'D'; unsigned int
29DA52:  BLX             _Znwj; operator new(uint)
29DA56:  MOV             R4, R0
29DA58:  BLX             j__ZN11StatsScreenC2Ev; StatsScreen::StatsScreen(void)
29DA5C:  LDR             R0, =(gMobileMenu_ptr - 0x29DA62)
29DA5E:  ADD             R0, PC; gMobileMenu_ptr
29DA60:  LDR             R0, [R0]; gMobileMenu
29DA62:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29DA64:  CBZ             R0, loc_29DA7E
29DA66:  LDR             R1, =(gMobileMenu_ptr - 0x29DA6E)
29DA68:  LDR             R2, [R4]
29DA6A:  ADD             R1, PC; gMobileMenu_ptr
29DA6C:  LDR             R1, [R1]; gMobileMenu
29DA6E:  LDR             R2, [R2,#0x14]
29DA70:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29DA72:  ADD.W           R0, R1, R0,LSL#2
29DA76:  LDR.W           R1, [R0,#-4]
29DA7A:  MOV             R0, R4
29DA7C:  BLX             R2
29DA7E:  LDR             R0, =(gMobileMenu_ptr - 0x29DA84)
29DA80:  ADD             R0, PC; gMobileMenu_ptr
29DA82:  LDR             R0, [R0]; gMobileMenu
29DA84:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29DA86:  CBZ             R0, loc_29DA92
29DA88:  LDR             R0, =(gMobileMenu_ptr - 0x29DA8E)
29DA8A:  ADD             R0, PC; gMobileMenu_ptr
29DA8C:  LDR             R0, [R0]; gMobileMenu ; this
29DA8E:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29DA92:  LDR             R0, =(gMobileMenu_ptr - 0x29DA98)
29DA94:  ADD             R0, PC; gMobileMenu_ptr
29DA96:  LDR             R0, [R0]; gMobileMenu
29DA98:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29DA9A:  POP             {R4,R6,R7,PC}
