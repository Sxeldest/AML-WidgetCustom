; =========================================================
; Game Engine Function: _ZN19FxInterpInfoFloat_c6GetValEiff
; Address            : 0x36C5B8 - 0x36C7CA
; =========================================================

36C5B8:  PUSH            {R4,R5,R7,LR}
36C5BA:  ADD             R7, SP, #8
36C5BC:  LDRSB.W         R12, [R0,#5]
36C5C0:  VMOV            S6, R3
36C5C4:  CMP.W           R12, #1
36C5C8:  BNE             loc_36C5D6
36C5CA:  LDR             R0, [R0,#0xC]
36C5CC:  LDR.W           R0, [R0,R1,LSL#2]
36C5D0:  VLDR            S0, [R0]
36C5D4:  B               loc_36C622
36C5D6:  VMOV            S2, R2
36C5DA:  CMP.W           R12, #1
36C5DE:  VSUB.F32        S0, S2, S6
36C5E2:  BLT             loc_36C62C
36C5E4:  LDR             R2, [R0,#8]
36C5E6:  MOVS            R3, #0
36C5E8:  VLDR            S8, =0.0039062
36C5EC:  MOVS            R5, #0
36C5EE:  LDRH            R4, [R2]
36C5F0:  VMOV            S4, R4
36C5F4:  VCVT.F32.U32    S4, S4
36C5F8:  VMUL.F32        S4, S4, S8
36C5FC:  VCMPE.F32       S0, S4
36C600:  VMRS            APSR_nzcv, FPSCR
36C604:  BLT             loc_36C6AA
36C606:  ADDS            R5, #1
36C608:  ADDS            R3, #4
36C60A:  ADDS            R2, #2
36C60C:  CMP             R5, R12
36C60E:  BLT             loc_36C5EE
36C610:  CMP             R5, R12
36C612:  BNE             loc_36C632
36C614:  LDR             R0, [R0,#0xC]
36C616:  LDR.W           R0, [R0,R1,LSL#2]
36C61A:  ADD.W           R0, R0, R12,LSL#2
36C61E:  VLDR            S0, [R0,#-4]
36C622:  VMUL.F32        S6, S0, S6
36C626:  VMOV            R0, S6
36C62A:  POP             {R4,R5,R7,PC}
36C62C:  MOVS            R5, #0
36C62E:  CMP             R5, R12
36C630:  BEQ             loc_36C614
36C632:  BGE             loc_36C6EC
36C634:  VMOV.F32        S8, #0.5
36C638:  LDR             R2, [R0,#8]
36C63A:  VLDR            S6, =0.0
36C63E:  MOV.W           LR, R5,LSL#2
36C642:  ADD.W           R3, R2, R5,LSL#1
36C646:  VLDR            S10, =0.0039062
36C64A:  LDRH            R2, [R3]
36C64C:  VMOV            S12, R2
36C650:  VCVT.F32.U32    S12, S12
36C654:  VMUL.F32        S12, S12, S10
36C658:  VCMP.F32        S12, S2
36C65C:  VMRS            APSR_nzcv, FPSCR
36C660:  BEQ             loc_36C752
36C662:  VCMPE.F32       S12, S2
36C666:  VMRS            APSR_nzcv, FPSCR
36C66A:  BGE             loc_36C69A
36C66C:  LDR             R2, [R0,#0xC]
36C66E:  VSUB.F32        S0, S12, S0
36C672:  LDR.W           R2, [R2,R1,LSL#2]
36C676:  ADD             R2, LR
36C678:  VLDR            S14, [R2]
36C67C:  VSUB.F32        S1, S14, S4
36C680:  VMUL.F32        S1, S1, S8
36C684:  VADD.F32        S4, S4, S1
36C688:  VMUL.F32        S0, S0, S4
36C68C:  VMOV.F32        S4, S14
36C690:  VADD.F32        S6, S6, S0
36C694:  VMOV.F32        S0, S12
36C698:  B               loc_36C69C
36C69A:  BGT             loc_36C774
36C69C:  ADDS            R5, #1
36C69E:  ADDS            R3, #2
36C6A0:  ADD.W           LR, LR, #4
36C6A4:  CMP             R5, R12
36C6A6:  BLT             loc_36C64A
36C6A8:  B               loc_36C6F0
36C6AA:  CMP             R5, #1
36C6AC:  BLT             loc_36C73E
36C6AE:  LDRH.W          R2, [R2,#-2]
36C6B2:  VMOV            S10, R2
36C6B6:  VCVT.F32.U32    S10, S10
36C6BA:  LDR             R2, [R0,#0xC]
36C6BC:  LDR.W           R2, [R2,R1,LSL#2]
36C6C0:  ADD             R2, R3
36C6C2:  VMUL.F32        S8, S10, S8
36C6C6:  VLDR            S10, [R2]
36C6CA:  VSUB.F32        S4, S4, S8
36C6CE:  VSUB.F32        S8, S0, S8
36C6D2:  VDIV.F32        S4, S8, S4
36C6D6:  VLDR            S8, [R2,#-4]
36C6DA:  VSUB.F32        S10, S10, S8
36C6DE:  VMUL.F32        S4, S4, S10
36C6E2:  VADD.F32        S4, S8, S4
36C6E6:  CMP             R5, R12
36C6E8:  BEQ             loc_36C614
36C6EA:  B               loc_36C632
36C6EC:  VLDR            S6, =0.0
36C6F0:  CMP             R5, R12
36C6F2:  BNE             loc_36C738
36C6F4:  LDRD.W          R2, R0, [R0,#8]
36C6F8:  VMOV.F32        S10, #0.5
36C6FC:  LDR.W           R0, [R0,R1,LSL#2]
36C700:  SUB.W           R1, R12, #1
36C704:  VLDR            S12, =0.0039062
36C708:  LDRH.W          R2, [R2,R1,LSL#1]
36C70C:  ADD.W           R0, R0, R1,LSL#2
36C710:  VLDR            S8, [R0]
36C714:  VMOV            S2, R2
36C718:  VSUB.F32        S8, S8, S4
36C71C:  VCVT.F32.U32    S2, S2
36C720:  VMUL.F32        S8, S8, S10
36C724:  VMUL.F32        S2, S2, S12
36C728:  VSUB.F32        S0, S2, S0
36C72C:  VADD.F32        S2, S4, S8
36C730:  VMUL.F32        S0, S2, S0
36C734:  VADD.F32        S6, S6, S0
36C738:  VMOV            R0, S6
36C73C:  POP             {R4,R5,R7,PC}
36C73E:  LDR             R2, [R0,#0xC]
36C740:  LDR.W           R2, [R2,R1,LSL#2]
36C744:  ADD             R2, R3
36C746:  VLDR            S4, [R2]
36C74A:  CMP             R5, R12
36C74C:  BEQ.W           loc_36C614
36C750:  B               loc_36C632
36C752:  LDR             R2, [R0,#0xC]
36C754:  LDR.W           R2, [R2,R1,LSL#2]
36C758:  ADD             R2, LR
36C75A:  VLDR            S2, [R2]
36C75E:  VSUB.F32        S2, S2, S4
36C762:  VMUL.F32        S2, S2, S8
36C766:  VSUB.F32        S8, S12, S0
36C76A:  VADD.F32        S2, S4, S2
36C76E:  VMUL.F32        S2, S8, S2
36C772:  B               loc_36C7C0
36C774:  LDRH.W          R2, [R3,#-2]
36C778:  VMOV            S14, R2
36C77C:  VCVT.F32.U32    S14, S14
36C780:  LDR             R2, [R0,#0xC]
36C782:  LDR.W           R2, [R2,R1,LSL#2]
36C786:  ADD             R2, LR
36C788:  VMUL.F32        S10, S14, S10
36C78C:  VLDR            S14, [R2]
36C790:  VSUB.F32        S12, S12, S10
36C794:  VSUB.F32        S10, S2, S10
36C798:  VSUB.F32        S2, S2, S0
36C79C:  VDIV.F32        S10, S10, S12
36C7A0:  VLDR            S12, [R2,#-4]
36C7A4:  VSUB.F32        S14, S14, S12
36C7A8:  VMUL.F32        S10, S10, S14
36C7AC:  VADD.F32        S10, S12, S10
36C7B0:  VSUB.F32        S10, S10, S4
36C7B4:  VMUL.F32        S8, S10, S8
36C7B8:  VADD.F32        S8, S4, S8
36C7BC:  VMUL.F32        S2, S2, S8
36C7C0:  VADD.F32        S6, S6, S2
36C7C4:  CMP             R5, R12
36C7C6:  BEQ             loc_36C6F4
36C7C8:  B               loc_36C738
