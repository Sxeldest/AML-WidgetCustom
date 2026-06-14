; =========================================================
; Game Engine Function: _Z14PhonePutDownCBP21CAnimBlendAssociationPv
; Address            : 0x31C5F4 - 0x31C652
; =========================================================

31C5F4:  PUSH            {R4,R5,R7,LR}
31C5F6:  ADD             R7, SP, #8
31C5F8:  MOV             R5, R0
31C5FA:  MOV             R4, R1
31C5FC:  LDRH            R0, [R5,#0x2E]
31C5FE:  MOVS            R1, #0xC47A0000; int
31C604:  ORR.W           R0, R0, #4
31C608:  STR             R1, [R5,#0x1C]
31C60A:  STRH            R0, [R5,#0x2E]
31C60C:  MOVS            R0, #0; this
31C60E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
31C612:  VMOV.F32        S0, #0.5
31C616:  LDRH.W          R1, [R0,#0x110]
31C61A:  BIC.W           R1, R1, #0x40 ; '@'
31C61E:  STRH.W          R1, [R0,#0x110]
31C622:  VLDR            S2, [R5,#0x18]
31C626:  VCMPE.F32       S2, S0
31C62A:  VMRS            APSR_nzcv, FPSCR
31C62E:  ITTT GT
31C630:  LDRGT.W         R0, [R4,#0x484]
31C634:  ORRGT.W         R0, R0, #0x4000
31C638:  STRGT.W         R0, [R4,#0x484]
31C63C:  LDR.W           R0, [R4,#0x44C]
31C640:  CMP             R0, #0x13
31C642:  IT NE
31C644:  POPNE           {R4,R5,R7,PC}
31C646:  MOV             R0, R4
31C648:  MOVS            R1, #1
31C64A:  POP.W           {R4,R5,R7,LR}
31C64E:  B.W             sub_18D928
