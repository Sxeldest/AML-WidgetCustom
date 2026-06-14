; =========================================================
; Game Engine Function: _Z15NvQuatFromEulerPffff
; Address            : 0x2794AC - 0x2795E8
; =========================================================

2794AC:  PUSH            {R4-R7,LR}
2794AE:  ADD             R7, SP, #0xC
2794B0:  PUSH.W          {R8,R9,R11}
2794B4:  VPUSH           {D8-D15}
2794B8:  VMOV.F32        S16, #0.5
2794BC:  MOV             R9, R0
2794BE:  VMOV            S0, R1
2794C2:  MOV             R8, R3
2794C4:  MOV             R6, R2
2794C6:  VMUL.F32        S0, S0, S16
2794CA:  VMOV            R5, S0
2794CE:  MOV             R0, R5; x
2794D0:  BLX             cosf
2794D4:  MOV             R4, R0
2794D6:  MOV             R0, R5; x
2794D8:  BLX             sinf
2794DC:  VMOV            S0, R6
2794E0:  MOV             R5, R0
2794E2:  VMUL.F32        S0, S0, S16
2794E6:  VMOV            R6, S0
2794EA:  MOV             R0, R6; x
2794EC:  BLX             sinf
2794F0:  VMOV            S0, R8
2794F4:  VMOV            S18, R0
2794F8:  MOV             R0, R6; x
2794FA:  VMOV            S20, R5
2794FE:  VMUL.F32        S16, S0, S16
279502:  VMOV            S22, R4
279506:  VMUL.F32        S24, S20, S18
27950A:  BLX             cosf
27950E:  VMOV            R4, S16
279512:  VLDR            S26, =0.0
279516:  VMOV            S4, R0
27951A:  VMUL.F32        S0, S18, S26
27951E:  VMUL.F32        S2, S22, S26
279522:  VMUL.F32        S6, S22, S18
279526:  VMUL.F32        S8, S20, S26
27952A:  VMUL.F32        S10, S22, S4
27952E:  VSUB.F32        S12, S26, S24
279532:  VMUL.F32        S14, S20, S4
279536:  VMUL.F32        S4, S4, S26
27953A:  VADD.F32        S1, S2, S0
27953E:  VADD.F32        S6, S8, S6
279542:  VSUB.F32        S0, S10, S0
279546:  VADD.F32        S2, S2, S12
27954A:  VADD.F32        S16, S14, S1
27954E:  VADD.F32        S18, S4, S6
279552:  MOV             R0, R4; x
279554:  VSUB.F32        S20, S0, S8
279558:  VADD.F32        S22, S4, S2
27955C:  BLX             cosf
279560:  VMOV            S24, R0
279564:  MOV             R0, R4; x
279566:  VMUL.F32        S28, S16, S26
27956A:  VMUL.F32        S30, S18, S26
27956E:  BLX             sinf
279572:  VMOV            S0, R0
279576:  VMUL.F32        S2, S24, S20
27957A:  VMUL.F32        S4, S0, S18
27957E:  VMUL.F32        S6, S22, S26
279582:  VMUL.F32        S8, S0, S16
279586:  VSUB.F32        S10, S28, S30
27958A:  VMUL.F32        S12, S24, S22
27958E:  VMUL.F32        S14, S24, S16
279592:  VSUB.F32        S2, S2, S30
279596:  VMUL.F32        S1, S24, S18
27959A:  VSUB.F32        S4, S4, S6
27959E:  VSUB.F32        S6, S6, S8
2795A2:  VMUL.F32        S8, S0, S20
2795A6:  VADD.F32        S10, S10, S12
2795AA:  VMUL.F32        S0, S0, S22
2795AE:  VSUB.F32        S2, S2, S28
2795B2:  VMUL.F32        S12, S20, S26
2795B6:  VADD.F32        S4, S14, S4
2795BA:  VADD.F32        S6, S1, S6
2795BE:  VADD.F32        S8, S8, S10
2795C2:  VSUB.F32        S0, S2, S0
2795C6:  VADD.F32        S2, S12, S4
2795CA:  VADD.F32        S4, S12, S6
2795CE:  VSTR            S4, [R9]
2795D2:  VSTR            S2, [R9,#4]
2795D6:  VSTR            S8, [R9,#8]
2795DA:  VSTR            S0, [R9,#0xC]
2795DE:  VPOP            {D8-D15}
2795E2:  POP.W           {R8,R9,R11}
2795E6:  POP             {R4-R7,PC}
