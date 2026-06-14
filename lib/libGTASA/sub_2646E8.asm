; =========================================================
; Game Engine Function: sub_2646E8
; Address            : 0x2646E8 - 0x264788
; =========================================================

2646E8:  PUSH            {R4,R6,R7,LR}
2646EA:  ADD             R7, SP, #8
2646EC:  MOV             R4, R1
2646EE:  CMP             R2, #1
2646F0:  BNE             loc_26474C
2646F2:  VLDR            S0, [R3]
2646F6:  VCMPE.F32       S0, #0.0
2646FA:  VMRS            APSR_nzcv, FPSCR
2646FE:  BLT             loc_264718
264700:  VABS.F32        S2, S0
264704:  VLDR            S4, =+Inf
264708:  VCMP.F32        S2, S4
26470C:  VMRS            APSR_nzcv, FPSCR
264710:  ITT NE
264712:  VSTRNE          S0, [R0,#0x90]
264716:  POPNE           {R4,R6,R7,PC}
264718:  LDR             R0, =(TrapALError_ptr - 0x26471E)
26471A:  ADD             R0, PC; TrapALError_ptr
26471C:  LDR             R0, [R0]; TrapALError
26471E:  LDRB            R0, [R0]
264720:  CMP             R0, #0
264722:  ITT NE
264724:  MOVNE           R0, #5; sig
264726:  BLXNE           raise
26472A:  LDREX.W         R0, [R4,#0x50]
26472E:  CBNZ            R0, loc_26477E
264730:  ADD.W           R0, R4, #0x50 ; 'P'
264734:  MOVW            R1, #0xA003
264738:  DMB.W           ISH
26473C:  STREX.W         R2, R1, [R0]
264740:  CBZ             R2, loc_264782
264742:  LDREX.W         R2, [R0]
264746:  CMP             R2, #0
264748:  BEQ             loc_26473C
26474A:  B               loc_26477E
26474C:  LDR             R0, =(TrapALError_ptr - 0x264752)
26474E:  ADD             R0, PC; TrapALError_ptr
264750:  LDR             R0, [R0]; TrapALError
264752:  LDRB            R0, [R0]
264754:  CMP             R0, #0
264756:  ITT NE
264758:  MOVNE           R0, #5; sig
26475A:  BLXNE           raise
26475E:  LDREX.W         R0, [R4,#0x50]
264762:  CBNZ            R0, loc_26477E
264764:  ADD.W           R0, R4, #0x50 ; 'P'
264768:  MOVW            R1, #0xA002
26476C:  DMB.W           ISH
264770:  STREX.W         R2, R1, [R0]
264774:  CBZ             R2, loc_264782
264776:  LDREX.W         R2, [R0]
26477A:  CMP             R2, #0
26477C:  BEQ             loc_264770
26477E:  CLREX.W
264782:  DMB.W           ISH
264786:  POP             {R4,R6,R7,PC}
