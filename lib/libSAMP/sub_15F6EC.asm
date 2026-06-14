; =========================================================
; Game Engine Function: sub_15F6EC
; Address            : 0x15F6EC - 0x15F8EA
; =========================================================

15F6EC:  PUSH            {R4-R7,LR}
15F6EE:  ADD             R7, SP, #0xC
15F6F0:  PUSH.W          {R8-R11}
15F6F4:  SUB             SP, SP, #0xC
15F6F6:  LDR             R4, [R2]
15F6F8:  MOV             R5, R0
15F6FA:  MOVW            R0, #0xE995
15F6FE:  MOV             R9, R1
15F700:  MOVT            R0, #0x5BD1
15F704:  MOVW            R2, #0xA654
15F708:  MUL.W           R1, R4, R0
15F70C:  MOVT            R2, #0x6F47
15F710:  LDR.W           R8, [R9,#4]
15F714:  CMP.W           R8, #0
15F718:  EOR.W           R1, R1, R1,LSR#24
15F71C:  MUL.W           R1, R0, R1
15F720:  EOR.W           R1, R1, R2
15F724:  EOR.W           R1, R1, R1,LSR#13
15F728:  MUL.W           R0, R1, R0
15F72C:  EOR.W           R11, R0, R0,LSR#15
15F730:  BEQ             loc_15F76C
15F732:  MOV.W           R0, #0x55555555
15F736:  MOV.W           R1, #0x33333333
15F73A:  AND.W           R0, R0, R8,LSR#1
15F73E:  STR             R5, [SP,#0x28+var_20]
15F740:  SUB.W           R0, R8, R0
15F744:  AND.W           R1, R1, R0,LSR#2
15F748:  BIC.W           R0, R0, #0xCCCCCCCC
15F74C:  ADD             R0, R1
15F74E:  MOV.W           R1, #0x1010101
15F752:  ADD.W           R0, R0, R0,LSR#4
15F756:  BIC.W           R0, R0, #0xF0F0F0F0
15F75A:  MULS            R0, R1
15F75C:  LSRS            R5, R0, #0x18
15F75E:  CMP             R5, #1
15F760:  BHI             loc_15F76E
15F762:  SUB.W           R0, R8, #1
15F766:  AND.W           R10, R11, R0
15F76A:  B               loc_15F77E
15F76C:  B               loc_15F7CC
15F76E:  CMP             R11, R8
15F770:  MOV             R10, R11
15F772:  BCC             loc_15F77E
15F774:  MOV             R0, R11
15F776:  MOV             R1, R8
15F778:  BLX             sub_221798
15F77C:  MOV             R10, R1
15F77E:  LDR.W           R0, [R9]
15F782:  LDR.W           R6, [R0,R10,LSL#2]
15F786:  CBZ             R6, loc_15F7CA
15F788:  SUB.W           R1, R8, #1
15F78C:  STR             R5, [SP,#0x28+var_24]
15F78E:  LDR             R6, [R6]
15F790:  CBZ             R6, loc_15F7CA
15F792:  LDR             R0, [R6,#4]
15F794:  CMP             R0, R11
15F796:  BEQ             loc_15F7BE
15F798:  CMP             R5, #1
15F79A:  BHI             loc_15F7A0
15F79C:  ANDS            R0, R1
15F79E:  B               loc_15F7BA
15F7A0:  CMP             R0, R8
15F7A2:  BCC             loc_15F7BA
15F7A4:  MOV             R5, R10
15F7A6:  MOV             R10, R9
15F7A8:  MOV             R9, R1
15F7AA:  MOV             R1, R8
15F7AC:  BLX             sub_221798
15F7B0:  MOV             R0, R1
15F7B2:  MOV             R1, R9
15F7B4:  MOV             R9, R10
15F7B6:  MOV             R10, R5
15F7B8:  LDR             R5, [SP,#0x28+var_24]
15F7BA:  CMP             R0, R10
15F7BC:  BNE             loc_15F7CA
15F7BE:  LDR             R0, [R6,#8]
15F7C0:  CMP             R0, R4
15F7C2:  BNE             loc_15F78E
15F7C4:  MOVS            R0, #0
15F7C6:  LDR             R5, [SP,#0x28+var_20]
15F7C8:  B               loc_15F8DE
15F7CA:  LDR             R5, [SP,#0x28+var_20]
15F7CC:  MOVS            R0, #0x68 ; 'h'; unsigned int
15F7CE:  LDR             R4, [R7,#arg_0]
15F7D0:  BLX             j__Znwj; operator new(uint)
15F7D4:  MOV             R6, R0
15F7D6:  LDR             R0, [R4]
15F7D8:  MOVS            R1, #0x5C ; '\'; n
15F7DA:  LDR             R0, [R0]
15F7DC:  STR             R0, [R6,#8]
15F7DE:  ADD.W           R0, R6, #0xC; int
15F7E2:  BLX             sub_22178C
15F7E6:  LDR.W           R0, [R9,#0xC]
15F7EA:  CMP.W           R8, #0
15F7EE:  VLDR            S0, [R9,#0x10]
15F7F2:  ADD.W           R0, R0, #1
15F7F6:  VMOV            S2, R0
15F7FA:  MOV.W           R0, #0
15F7FE:  STRD.W          R0, R11, [R6]
15F802:  VCVT.F32.U32    S2, S2
15F806:  BEQ             loc_15F822
15F808:  VMOV            S4, R8
15F80C:  VCVT.F32.U32    S4, S4
15F810:  VMUL.F32        S4, S0, S4
15F814:  VCMP.F32        S4, S2
15F818:  VMRS            APSR_nzcv, FPSCR
15F81C:  BMI             loc_15F822
15F81E:  MOV             R11, R10
15F820:  B               loc_15F88A
15F822:  MOV             R10, R5
15F824:  MOV.W           R4, R8,LSL#1
15F828:  CMP.W           R8, #3
15F82C:  BCC             loc_15F83C
15F82E:  SUB.W           R0, R8, #1
15F832:  ANDS.W          R5, R8, R0
15F836:  IT NE
15F838:  MOVNE           R5, #1
15F83A:  B               loc_15F83E
15F83C:  MOVS            R5, #1
15F83E:  VDIV.F32        S0, S2, S0
15F842:  VMOV            R0, S0; x
15F846:  BLX             ceilf
15F84A:  VMOV            S0, R0
15F84E:  ORR.W           R1, R5, R4
15F852:  VCVT.U32.F32    S0, S0
15F856:  VMOV            R0, S0
15F85A:  CMP             R1, R0
15F85C:  IT CC
15F85E:  MOVCC           R1, R0; this
15F860:  MOV             R0, R9; int
15F862:  BL              sub_15F8F4
15F866:  LDR.W           R8, [R9,#4]
15F86A:  MOV             R5, R10
15F86C:  SUB.W           R0, R8, #1
15F870:  TST.W           R8, R0
15F874:  BNE             loc_15F87C
15F876:  AND.W           R11, R11, R0
15F87A:  B               loc_15F88A
15F87C:  CMP             R11, R8
15F87E:  BCC             loc_15F88A
15F880:  MOV             R0, R11
15F882:  MOV             R1, R8
15F884:  BLX             sub_221798
15F888:  MOV             R11, R1
15F88A:  LDR.W           R0, [R9]
15F88E:  LDR.W           R1, [R0,R11,LSL#2]
15F892:  CBZ             R1, loc_15F89C
15F894:  LDR             R0, [R1]
15F896:  STR             R0, [R6]
15F898:  STR             R6, [R1]
15F89A:  B               loc_15F8D2
15F89C:  MOV             R1, R9
15F89E:  LDR.W           R2, [R1,#8]!
15F8A2:  STR             R2, [R6]
15F8A4:  STR             R6, [R1]
15F8A6:  STR.W           R1, [R0,R11,LSL#2]
15F8AA:  LDR             R0, [R6]
15F8AC:  CBZ             R0, loc_15F8D2
15F8AE:  LDR             R0, [R0,#4]
15F8B0:  SUB.W           R1, R8, #1
15F8B4:  TST.W           R8, R1
15F8B8:  BNE             loc_15F8BE
15F8BA:  ANDS            R0, R1
15F8BC:  B               loc_15F8CA
15F8BE:  CMP             R0, R8
15F8C0:  BCC             loc_15F8CA
15F8C2:  MOV             R1, R8
15F8C4:  BLX             sub_221798
15F8C8:  MOV             R0, R1
15F8CA:  LDR.W           R1, [R9]
15F8CE:  STR.W           R6, [R1,R0,LSL#2]
15F8D2:  LDR.W           R0, [R9,#0xC]
15F8D6:  ADDS            R0, #1
15F8D8:  STR.W           R0, [R9,#0xC]
15F8DC:  MOVS            R0, #1
15F8DE:  STRB            R0, [R5,#4]
15F8E0:  STR             R6, [R5]
15F8E2:  ADD             SP, SP, #0xC
15F8E4:  POP.W           {R8-R11}
15F8E8:  POP             {R4-R7,PC}
