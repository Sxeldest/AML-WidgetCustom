; =========================================================
; Game Engine Function: _ZN9CPhysical10ApplyForceE7CVectorS0_b
; Address            : 0x3FD5C8 - 0x3FD71E
; =========================================================

3FD5C8:  PUSH            {R4,R6,R7,LR}
3FD5CA:  ADD             R7, SP, #8
3FD5CC:  VPUSH           {D8}
3FD5D0:  SUB             SP, SP, #0x28
3FD5D2:  MOV             R4, R0
3FD5D4:  ADD             R0, SP, #0x38+var_1C
3FD5D6:  STM             R0!, {R1-R3}
3FD5D8:  LDR             R0, [R4,#0x44]
3FD5DA:  TST.W           R0, #0x60
3FD5DE:  BNE             loc_3FD634
3FD5E0:  VMOV.F32        S0, #1.0
3FD5E4:  VLDR            S8, [R4,#0x90]
3FD5E8:  VMOV            S10, R3
3FD5EC:  LSLS            R3, R0, #0x18
3FD5EE:  VLDR            S2, [R4,#0x48]
3FD5F2:  VMOV            S12, R2
3FD5F6:  VLDR            S4, [R4,#0x4C]
3FD5FA:  VLDR            S6, [R4,#0x50]
3FD5FE:  VDIV.F32        S0, S0, S8
3FD602:  VLDR            S8, =0.0
3FD606:  VMUL.F32        S12, S0, S12
3FD60A:  IT PL
3FD60C:  VMOVPL.F32      S8, S10
3FD610:  VMOV            S10, R1
3FD614:  VMUL.F32        S10, S0, S10
3FD618:  VMUL.F32        S0, S8, S0
3FD61C:  VADD.F32        S4, S12, S4
3FD620:  VADD.F32        S2, S2, S10
3FD624:  VADD.F32        S0, S0, S6
3FD628:  VSTR            S2, [R4,#0x48]
3FD62C:  VSTR            S4, [R4,#0x4C]
3FD630:  VSTR            S0, [R4,#0x50]
3FD634:  LSLS            R1, R0, #0x1B
3FD636:  BMI             loc_3FD716
3FD638:  LDR             R1, [R7,#arg_C]
3FD63A:  CMP             R1, #0
3FD63C:  BEQ             loc_3FD716
3FD63E:  VLDR            S16, [R4,#0x94]
3FD642:  LSLS            R1, R0, #0x19
3FD644:  BMI             loc_3FD662
3FD646:  LDR             R1, [R4,#0x14]; CVector *
3FD648:  ADD.W           R2, R4, #0xA8
3FD64C:  ADD             R0, SP, #0x38+var_28; CMatrix *
3FD64E:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FD652:  LDR             R0, [R4,#0x44]
3FD654:  VLDR            S2, [SP,#0x38+var_28]
3FD658:  VLDR            S4, [SP,#0x38+var_24]
3FD65C:  VLDR            S0, [SP,#0x38+var_20]
3FD660:  B               loc_3FD68A
3FD662:  VMOV.F32        S0, #0.5
3FD666:  VLDR            S2, [R4,#0x90]
3FD66A:  VLDR            S4, [R4,#0xB0]
3FD66E:  VMUL.F32        S0, S2, S0
3FD672:  VMUL.F32        S0, S0, S4
3FD676:  VMUL.F32        S0, S4, S0
3FD67A:  VADD.F32        S16, S16, S0
3FD67E:  VLDR            S0, =0.0
3FD682:  VMOV.F32        S4, S0
3FD686:  VMOV.F32        S2, S0
3FD68A:  LSLS            R0, R0, #0x1A
3FD68C:  LDRD.W          R2, R1, [R7,#arg_0]
3FD690:  ITTE MI
3FD692:  MOVMI           R0, #0
3FD694:  STRMI           R0, [SP,#0x38+var_14]
3FD696:  LDRPL           R0, [R7,#arg_8]
3FD698:  VMOV            S8, R1
3FD69C:  ADD             R1, SP, #0x38+var_34; CVector *
3FD69E:  VMOV            S6, R2
3FD6A2:  ADD             R2, SP, #0x38+var_1C
3FD6A4:  VMOV            S10, R0
3FD6A8:  ADD             R0, SP, #0x38+var_28; CVector *
3FD6AA:  VSUB.F32        S4, S8, S4
3FD6AE:  VSUB.F32        S2, S6, S2
3FD6B2:  VSUB.F32        S0, S10, S0
3FD6B6:  VSTR            S4, [SP,#0x38+var_30]
3FD6BA:  VSTR            S2, [SP,#0x38+var_34]
3FD6BE:  VSTR            S0, [SP,#0x38+var_2C]
3FD6C2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD6C6:  VMOV.F32        S0, #1.0
3FD6CA:  VLDR            S2, [SP,#0x38+var_28]
3FD6CE:  VLDR            S4, [SP,#0x38+var_24]
3FD6D2:  VLDR            S6, [SP,#0x38+var_20]
3FD6D6:  VDIV.F32        S0, S0, S16
3FD6DA:  VMUL.F32        S2, S0, S2
3FD6DE:  VMUL.F32        S4, S0, S4
3FD6E2:  VMUL.F32        S0, S0, S6
3FD6E6:  VSTR            S2, [SP,#0x38+var_1C]
3FD6EA:  VSTR            S4, [SP,#0x38+var_18]
3FD6EE:  VSTR            S0, [SP,#0x38+var_14]
3FD6F2:  VLDR            S6, [R4,#0x54]
3FD6F6:  VLDR            S8, [R4,#0x58]
3FD6FA:  VLDR            S10, [R4,#0x5C]
3FD6FE:  VADD.F32        S2, S2, S6
3FD702:  VADD.F32        S4, S4, S8
3FD706:  VADD.F32        S0, S0, S10
3FD70A:  VSTR            S2, [R4,#0x54]
3FD70E:  VSTR            S4, [R4,#0x58]
3FD712:  VSTR            S0, [R4,#0x5C]
3FD716:  ADD             SP, SP, #0x28 ; '('
3FD718:  VPOP            {D8}
3FD71C:  POP             {R4,R6,R7,PC}
