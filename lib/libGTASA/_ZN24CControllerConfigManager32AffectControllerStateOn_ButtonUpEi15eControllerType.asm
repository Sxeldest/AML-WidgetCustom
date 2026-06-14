; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager32AffectControllerStateOn_ButtonUpEi15eControllerType
; Address            : 0x3E86A0 - 0x3E8760
; =========================================================

3E86A0:  PUSH            {R4-R7,LR}
3E86A2:  ADD             R7, SP, #0xC
3E86A4:  PUSH.W          {R8,R9,R11}
3E86A8:  MOV             R5, R2
3E86AA:  MOV             R8, R0
3E86AC:  CMP             R5, #1
3E86AE:  MOV.W           R0, #0
3E86B2:  MOV             R4, R1
3E86B4:  IT HI
3E86B6:  MOVHI           R0, #1
3E86B8:  CMP.W           R4, #0x420
3E86BC:  MOV.W           R1, #0
3E86C0:  IT NE
3E86C2:  MOVNE           R1, #1
3E86C4:  MOV.W           R9, #0
3E86C8:  ORRS            R0, R1
3E86CA:  EOR.W           R1, R5, #3
3E86CE:  ORRS            R1, R4
3E86D0:  IT NE
3E86D2:  MOVNE           R1, #1
3E86D4:  ANDS            R0, R1
3E86D6:  EOR.W           R1, R5, #2
3E86DA:  ORRS            R1, R4
3E86DC:  IT NE
3E86DE:  MOVNE           R1, #1; int
3E86E0:  CMP             R5, #2
3E86E2:  AND.W           R6, R0, R1
3E86E6:  BCC             loc_3E86FE
3E86E8:  BEQ             loc_3E870E
3E86EA:  CMP             R5, #3
3E86EC:  BNE             loc_3E8708
3E86EE:  MOVS            R0, #0; this
3E86F0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E86F4:  ADD.W           R9, R0, #0xAC
3E86F8:  CMP             R6, #1
3E86FA:  BEQ             loc_3E871C
3E86FC:  B               loc_3E875A
3E86FE:  MOVS            R0, #0; this
3E8700:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E8704:  ADD.W           R9, R0, #0x7C ; '|'
3E8708:  CMP             R6, #1
3E870A:  BEQ             loc_3E871C
3E870C:  B               loc_3E875A
3E870E:  MOVS            R0, #0; this
3E8710:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E8714:  ADD.W           R9, R0, #0xDC
3E8718:  CMP             R6, #1
3E871A:  BNE             loc_3E875A
3E871C:  MOVS            R0, #0; this
3E871E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E8722:  CBZ             R0, loc_3E875A
3E8724:  LDR             R0, =(gMobileMenu_ptr - 0x3E872A)
3E8726:  ADD             R0, PC; gMobileMenu_ptr
3E8728:  LDR             R0, [R0]; gMobileMenu
3E872A:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
3E872C:  CMP             R1, #0
3E872E:  ITT EQ
3E8730:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
3E8732:  CMPEQ           R0, #0
3E8734:  BNE             loc_3E875A
3E8736:  ADD.W           R0, R8, R5,LSL#3
3E873A:  MOVW            R1, #0x3ED0
3E873E:  LDR             R1, [R0,R1]
3E8740:  CMP             R1, R4
3E8742:  ITT EQ
3E8744:  MOVEQ           R1, #0
3E8746:  STRHEQ.W        R1, [R9,#0x28]
3E874A:  MOVW            R1, #0x3DB0
3E874E:  LDR             R0, [R0,R1]
3E8750:  CMP             R0, R4
3E8752:  ITT EQ
3E8754:  MOVEQ           R0, #0
3E8756:  STRHEQ.W        R0, [R9,#0x2C]
3E875A:  POP.W           {R8,R9,R11}
3E875E:  POP             {R4-R7,PC}
