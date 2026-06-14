; =========================================================
; Game Engine Function: sub_26463C
; Address            : 0x26463C - 0x2646DC
; =========================================================

26463C:  PUSH            {R4,R6,R7,LR}
26463E:  ADD             R7, SP, #8
264640:  MOV             R4, R1
264642:  CMP             R2, #1
264644:  BNE             loc_2646A0
264646:  VMOV            S0, R3
26464A:  VCMPE.F32       S0, #0.0
26464E:  VMRS            APSR_nzcv, FPSCR
264652:  BLT             loc_26466C
264654:  VABS.F32        S2, S0
264658:  VLDR            S4, =+Inf
26465C:  VCMP.F32        S2, S4
264660:  VMRS            APSR_nzcv, FPSCR
264664:  ITT NE
264666:  VSTRNE          S0, [R0,#0x90]
26466A:  POPNE           {R4,R6,R7,PC}
26466C:  LDR             R0, =(TrapALError_ptr - 0x264672)
26466E:  ADD             R0, PC; TrapALError_ptr
264670:  LDR             R0, [R0]; TrapALError
264672:  LDRB            R0, [R0]
264674:  CMP             R0, #0
264676:  ITT NE
264678:  MOVNE           R0, #5; sig
26467A:  BLXNE           raise
26467E:  LDREX.W         R0, [R4,#0x50]
264682:  CBNZ            R0, loc_2646D2
264684:  ADD.W           R0, R4, #0x50 ; 'P'
264688:  MOVW            R1, #0xA003
26468C:  DMB.W           ISH
264690:  STREX.W         R2, R1, [R0]
264694:  CBZ             R2, loc_2646D6
264696:  LDREX.W         R2, [R0]
26469A:  CMP             R2, #0
26469C:  BEQ             loc_264690
26469E:  B               loc_2646D2
2646A0:  LDR             R0, =(TrapALError_ptr - 0x2646A6)
2646A2:  ADD             R0, PC; TrapALError_ptr
2646A4:  LDR             R0, [R0]; TrapALError
2646A6:  LDRB            R0, [R0]
2646A8:  CMP             R0, #0
2646AA:  ITT NE
2646AC:  MOVNE           R0, #5; sig
2646AE:  BLXNE           raise
2646B2:  LDREX.W         R0, [R4,#0x50]
2646B6:  CBNZ            R0, loc_2646D2
2646B8:  ADD.W           R0, R4, #0x50 ; 'P'
2646BC:  MOVW            R1, #0xA002
2646C0:  DMB.W           ISH
2646C4:  STREX.W         R2, R1, [R0]
2646C8:  CBZ             R2, loc_2646D6
2646CA:  LDREX.W         R2, [R0]
2646CE:  CMP             R2, #0
2646D0:  BEQ             loc_2646C4
2646D2:  CLREX.W
2646D6:  DMB.W           ISH
2646DA:  POP             {R4,R6,R7,PC}
