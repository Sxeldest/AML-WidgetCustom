; =========================================================
; Game Engine Function: _ZN11YesNoScreen6NoFuncEP12SelectScreeni
; Address            : 0x2A889C - 0x2A88E2
; =========================================================

2A889C:  PUSH            {R4,R6,R7,LR}
2A889E:  ADD             R7, SP, #8
2A88A0:  LDR             R1, =(gMobileMenu_ptr - 0x2A88A8)
2A88A2:  LDR             R4, [R0,#0x50]
2A88A4:  ADD             R1, PC; gMobileMenu_ptr
2A88A6:  LDR             R1, [R1]; gMobileMenu
2A88A8:  LDR             R0, [R1,#(dword_6E0090 - 0x6E006C)]
2A88AA:  CMP             R0, #2
2A88AC:  BCC             loc_2A88C4
2A88AE:  LDR             R1, =(gMobileMenu_ptr - 0x2A88B4)
2A88B0:  ADD             R1, PC; gMobileMenu_ptr
2A88B2:  LDR             R1, [R1]; gMobileMenu
2A88B4:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A88B6:  ADD.W           R1, R1, R0,LSL#2
2A88BA:  LDRD.W          R0, R1, [R1,#-8]
2A88BE:  LDR             R2, [R0]
2A88C0:  LDR             R2, [R2,#0x14]
2A88C2:  BLX             R2
2A88C4:  LDR             R0, =(gMobileMenu_ptr - 0x2A88CE)
2A88C6:  MOVS            R1, #0; bool
2A88C8:  MOVS            R2, #0; bool
2A88CA:  ADD             R0, PC; gMobileMenu_ptr
2A88CC:  LDR             R0, [R0]; gMobileMenu ; this
2A88CE:  BLX             j__ZN10MobileMenu15RemoveTopScreenEbb; MobileMenu::RemoveTopScreen(bool,bool)
2A88D2:  CMP             R4, #0
2A88D4:  MOV             R1, R4
2A88D6:  IT EQ
2A88D8:  POPEQ           {R4,R6,R7,PC}
2A88DA:  MOVS            R0, #0
2A88DC:  POP.W           {R4,R6,R7,LR}
2A88E0:  BX              R1
