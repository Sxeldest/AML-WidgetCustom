; =========================================================
; Game Engine Function: _ZN10FlowScreen8OnBriefsEv
; Address            : 0x29DAB0 - 0x29DB00
; =========================================================

29DAB0:  PUSH            {R4,R6,R7,LR}
29DAB2:  ADD             R7, SP, #8
29DAB4:  MOVS            R0, #0x54 ; 'T'; unsigned int
29DAB6:  BLX             _Znwj; operator new(uint)
29DABA:  MOV             R4, R0
29DABC:  BLX             j__ZN11BriefScreenC2Ev; BriefScreen::BriefScreen(void)
29DAC0:  LDR             R0, =(gMobileMenu_ptr - 0x29DAC6)
29DAC2:  ADD             R0, PC; gMobileMenu_ptr
29DAC4:  LDR             R0, [R0]; gMobileMenu
29DAC6:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
29DAC8:  CBZ             R0, loc_29DAE2
29DACA:  LDR             R1, =(gMobileMenu_ptr - 0x29DAD2)
29DACC:  LDR             R2, [R4]
29DACE:  ADD             R1, PC; gMobileMenu_ptr
29DAD0:  LDR             R1, [R1]; gMobileMenu
29DAD2:  LDR             R2, [R2,#0x14]
29DAD4:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29DAD6:  ADD.W           R0, R1, R0,LSL#2
29DADA:  LDR.W           R1, [R0,#-4]
29DADE:  MOV             R0, R4
29DAE0:  BLX             R2
29DAE2:  LDR             R0, =(gMobileMenu_ptr - 0x29DAE8)
29DAE4:  ADD             R0, PC; gMobileMenu_ptr
29DAE6:  LDR             R0, [R0]; gMobileMenu
29DAE8:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29DAEA:  CBZ             R0, loc_29DAF6
29DAEC:  LDR             R0, =(gMobileMenu_ptr - 0x29DAF2)
29DAEE:  ADD             R0, PC; gMobileMenu_ptr
29DAF0:  LDR             R0, [R0]; gMobileMenu ; this
29DAF2:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29DAF6:  LDR             R0, =(gMobileMenu_ptr - 0x29DAFC)
29DAF8:  ADD             R0, PC; gMobileMenu_ptr
29DAFA:  LDR             R0, [R0]; gMobileMenu
29DAFC:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
29DAFE:  POP             {R4,R6,R7,PC}
