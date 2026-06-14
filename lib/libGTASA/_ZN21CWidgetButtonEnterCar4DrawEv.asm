; =========================================================
; Game Engine Function: _ZN21CWidgetButtonEnterCar4DrawEv
; Address            : 0x2B64CC - 0x2B6534
; =========================================================

2B64CC:  PUSH            {R4,R6,R7,LR}
2B64CE:  ADD             R7, SP, #8
2B64D0:  MOV             R4, R0
2B64D2:  BLX             j__ZN13CWidgetButton4DrawEv; CWidgetButton::Draw(void)
2B64D6:  VLDR            S0, [R4,#0xAC]
2B64DA:  VCMP.F32        S0, #0.0
2B64DE:  VMRS            APSR_nzcv, FPSCR
2B64E2:  ITTT EQ
2B64E4:  VLDREQ          S0, [R4,#0xB8]
2B64E8:  VCMPEQ.F32      S0, #0.0
2B64EC:  VMRSEQ          APSR_nzcv, FPSCR
2B64F0:  BNE             loc_2B650E
2B64F2:  VLDR            S0, [R4,#0xB4]
2B64F6:  VCMP.F32        S0, #0.0
2B64FA:  VMRS            APSR_nzcv, FPSCR
2B64FE:  ITTT EQ
2B6500:  VLDREQ          S0, [R4,#0xB0]
2B6504:  VCMPEQ.F32      S0, #0.0
2B6508:  VMRSEQ          APSR_nzcv, FPSCR
2B650C:  BEQ             locret_2B6532
2B650E:  VLDR            S0, =-1.5708
2B6512:  ADD.W           R1, R4, #0xAC; int
2B6516:  VLDR            S2, [R4,#0xA8]
2B651A:  ADD.W           R0, R4, #0xBC; int
2B651E:  ADD.W           R3, R4, #0x49 ; 'I'
2B6522:  VADD.F32        S0, S2, S0
2B6526:  VMOV            R2, S0; x
2B652A:  POP.W           {R4,R6,R7,LR}
2B652E:  B.W             sub_196D94
2B6532:  POP             {R4,R6,R7,PC}
