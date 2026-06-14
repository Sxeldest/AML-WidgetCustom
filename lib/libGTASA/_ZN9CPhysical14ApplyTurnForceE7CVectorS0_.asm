; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyTurnForceE7CVectorS0_
; Address            : 0x3FD4F0 - 0x3FD5C4
; =========================================================

3FD4F0:  PUSH            {R4,R6,R7,LR}
3FD4F2:  ADD             R7, SP, #8
3FD4F4:  SUB             SP, SP, #0x28
3FD4F6:  MOV             R4, R0
3FD4F8:  ADD             R0, SP, #0x30+var_14
3FD4FA:  STM             R0!, {R1-R3}
3FD4FC:  LDR             R0, [R4,#0x44]
3FD4FE:  TST.W           R0, #0x10
3FD502:  BNE             loc_3FD5C0
3FD504:  LSLS            R1, R0, #0x19
3FD506:  BMI             loc_3FD524
3FD508:  LDR             R1, [R4,#0x14]; CVector *
3FD50A:  ADD.W           R2, R4, #0xA8
3FD50E:  ADD             R0, SP, #0x30+var_20; CMatrix *
3FD510:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FD514:  LDR             R0, [R4,#0x44]
3FD516:  VLDR            S0, [SP,#0x30+var_20]
3FD51A:  VLDR            S2, [SP,#0x30+var_1C]
3FD51E:  VLDR            S4, [SP,#0x30+var_18]
3FD522:  B               loc_3FD530
3FD524:  VLDR            S0, =0.0
3FD528:  VMOV.F32        S2, S0
3FD52C:  VMOV.F32        S4, S0
3FD530:  LSLS            R0, R0, #0x1A
3FD532:  LDRD.W          R2, R1, [R7,#arg_0]
3FD536:  ITTE MI
3FD538:  MOVMI           R0, #0
3FD53A:  STRMI           R0, [SP,#0x30+var_C]
3FD53C:  LDRPL           R0, [R7,#arg_8]
3FD53E:  VMOV            S8, R1
3FD542:  ADD             R1, SP, #0x30+var_2C; CVector *
3FD544:  VMOV            S6, R2
3FD548:  ADD             R2, SP, #0x30+var_14
3FD54A:  VMOV            S10, R0
3FD54E:  ADD             R0, SP, #0x30+var_20; CVector *
3FD550:  VSUB.F32        S2, S8, S2
3FD554:  VSUB.F32        S0, S6, S0
3FD558:  VSUB.F32        S4, S10, S4
3FD55C:  VSTR            S2, [SP,#0x30+var_28]
3FD560:  VSTR            S0, [SP,#0x30+var_2C]
3FD564:  VSTR            S4, [SP,#0x30+var_24]
3FD568:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD56C:  VMOV.F32        S0, #1.0
3FD570:  VLDR            S2, [R4,#0x94]
3FD574:  VLDR            S4, [SP,#0x30+var_1C]
3FD578:  VLDR            S6, [SP,#0x30+var_18]
3FD57C:  VDIV.F32        S0, S0, S2
3FD580:  VLDR            S2, [SP,#0x30+var_20]
3FD584:  VMUL.F32        S4, S0, S4
3FD588:  VMUL.F32        S2, S0, S2
3FD58C:  VMUL.F32        S0, S0, S6
3FD590:  VSTR            S2, [SP,#0x30+var_14]
3FD594:  VSTR            S4, [SP,#0x30+var_10]
3FD598:  VSTR            S0, [SP,#0x30+var_C]
3FD59C:  VLDR            S6, [R4,#0x54]
3FD5A0:  VLDR            S8, [R4,#0x58]
3FD5A4:  VLDR            S10, [R4,#0x5C]
3FD5A8:  VADD.F32        S2, S2, S6
3FD5AC:  VADD.F32        S4, S4, S8
3FD5B0:  VADD.F32        S0, S0, S10
3FD5B4:  VSTR            S2, [R4,#0x54]
3FD5B8:  VSTR            S4, [R4,#0x58]
3FD5BC:  VSTR            S0, [R4,#0x5C]
3FD5C0:  ADD             SP, SP, #0x28 ; '('
3FD5C2:  POP             {R4,R6,R7,PC}
