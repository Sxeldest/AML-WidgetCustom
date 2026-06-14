; =========================================================
; Game Engine Function: sub_9962C
; Address            : 0x9962C - 0x9972E
; =========================================================

9962C:  PUSH            {R4-R7,LR}
9962E:  ADD             R7, SP, #0xC
99630:  PUSH.W          {R11}
99634:  LDR             R2, =(dword_1ACF68 - 0x99646)
99636:  MOVW            R12, #0x157C
9963A:  VMOV            S8, R1
9963E:  VLDR            S6, =0.0
99642:  ADD             R2, PC; dword_1ACF68
99644:  LDR             R3, [R2]
99646:  MOVW            R2, #0x19AC
9964A:  ADD.W           R1, R3, R12
9964E:  LDR             R2, [R3,R2]
99650:  LDR.W           R2, [R2,#0x1C0]
99654:  VLDR            S0, [R2,#0x14]
99658:  VLDR            S2, [R2,#0x18]
9965C:  LDR             R4, [R2,#4]
9965E:  VSUB.F32        S4, S2, S0
99662:  LDR             R3, [R2,#0x44]
99664:  AND.W           R12, R4, #8
99668:  AND.W           LR, R4, #4
9966C:  CMP.W           R0, #0xFFFFFFFF
99670:  IT LE
99672:  LDRLE           R0, [R2,#0xC]
99674:  CMP.W           LR, #0
99678:  BNE             loc_996C6
9967A:  LDR             R4, [R2,#0x10]
9967C:  SUBS            R4, #1
9967E:  CMP             R0, R4
99680:  BGE             loc_996C6
99682:  MOV             R4, R0
99684:  CMP.W           R0, #0xFFFFFFFF
99688:  IT LE
9968A:  LDRLE           R4, [R2,#0xC]
9968C:  LDRB            R5, [R2,#9]
9968E:  RSB.W           R4, R4, R4,LSL#3
99692:  CMP             R5, #0
99694:  ADD.W           R4, R3, R4,LSL#2
99698:  ADD.W           R6, R4, #0x20 ; ' '
9969C:  MOV             R5, R4
9969E:  IT NE
996A0:  ADDNE           R5, #4
996A2:  VLDR            S10, [R5]
996A6:  IT EQ
996A8:  ADDEQ.W         R6, R4, #0x1C
996AC:  VLDR            S12, [R6]
996B0:  MOVS            R4, #1
996B2:  VSUB.F32        S10, S12, S10
996B6:  VMUL.F32        S10, S10, S4
996BA:  CMP.W           R12, #0
996BE:  BEQ             loc_996D2
996C0:  VMOV.F32        S12, S8
996C4:  B               loc_996F8
996C6:  MOVS            R4, #0
996C8:  VMOV.F32        S10, S6
996CC:  CMP.W           R12, #0
996D0:  BNE             loc_996C0
996D2:  LDR             R5, [R2,#0x10]
996D4:  VLDR            S1, [R1]
996D8:  SUBS            R5, R5, R0
996DA:  VMOV            S12, R5
996DE:  VCVT.F32.S32    S14, S12
996E2:  VMOV.F32        S12, S2
996E6:  VMLS.F32        S12, S1, S14
996EA:  VCMP.F32        S12, S8
996EE:  VMRS            APSR_nzcv, FPSCR
996F2:  IT GT
996F4:  VMOVGT.F32      S12, S8
996F8:  VSUB.F32        S8, S12, S0
996FC:  RSB.W           R5, R0, R0,LSL#3
99700:  ADD.W           R5, R3, R5,LSL#2
99704:  VDIV.F32        S8, S8, S4
99708:  VSTR            S8, [R5]
9970C:  CBZ             R4, loc_99728
9970E:  VLDR            S8, [R1]
99712:  ADDS            R0, #1
99714:  VCMP.F32        S8, S10
99718:  VMRS            APSR_nzcv, FPSCR
9971C:  IT GE
9971E:  VMOVGE.F32      S10, S8
99722:  VADD.F32        S8, S12, S10
99726:  B               loc_9966C
99728:  POP.W           {R11}
9972C:  POP             {R4-R7,PC}
