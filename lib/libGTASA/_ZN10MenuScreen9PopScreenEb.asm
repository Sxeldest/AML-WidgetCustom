; =========================================================
; Game Engine Function: _ZN10MenuScreen9PopScreenEb
; Address            : 0x2984F4 - 0x29852C
; =========================================================

2984F4:  PUSH            {R4,R6,R7,LR}
2984F6:  ADD             R7, SP, #8
2984F8:  MOV             R4, R0
2984FA:  LDR             R0, =(gMobileMenu_ptr - 0x298500)
2984FC:  ADD             R0, PC; gMobileMenu_ptr
2984FE:  LDR             R0, [R0]; gMobileMenu
298500:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
298502:  CMP             R0, #2
298504:  BCC             loc_29851C
298506:  LDR             R1, =(gMobileMenu_ptr - 0x29850C)
298508:  ADD             R1, PC; gMobileMenu_ptr
29850A:  LDR             R1, [R1]; gMobileMenu
29850C:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
29850E:  ADD.W           R1, R1, R0,LSL#2
298512:  LDRD.W          R0, R1, [R1,#-8]
298516:  LDR             R2, [R0]
298518:  LDR             R2, [R2,#0x14]
29851A:  BLX             R2
29851C:  LDR             R0, =(gMobileMenu_ptr - 0x298526)
29851E:  MOV             R1, R4; bool
298520:  MOVS            R2, #0; bool
298522:  ADD             R0, PC; gMobileMenu_ptr
298524:  LDR             R0, [R0]; gMobileMenu ; this
298526:  POP.W           {R4,R6,R7,LR}
29852A:  B               _ZN10MobileMenu15RemoveTopScreenEbb; MobileMenu::RemoveTopScreen(bool,bool)
