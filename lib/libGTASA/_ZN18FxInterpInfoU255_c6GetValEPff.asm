; =========================================================
; Game Engine Function: _ZN18FxInterpInfoU255_c6GetValEPff
; Address            : 0x36C7F0 - 0x36C96C
; =========================================================

36C7F0:  PUSH            {R4,R6,R7,LR}
36C7F2:  ADD             R7, SP, #8
36C7F4:  LDRSB.W         R12, [R0,#5]
36C7F8:  CMP.W           R12, #1
36C7FC:  BNE             loc_36C832
36C7FE:  LDRSB.W         R2, [R0,#6]
36C802:  CMP             R2, #1
36C804:  BLT.W           locret_36C96A
36C808:  VLDR            S0, =0.0039062
36C80C:  MOVS            R2, #0
36C80E:  LDR             R3, [R0,#0xC]
36C810:  LDR.W           R3, [R3,R2,LSL#2]
36C814:  ADDS            R2, #1
36C816:  LDRH            R3, [R3]
36C818:  VMOV            S2, R3
36C81C:  VCVT.F32.U32    S2, S2
36C820:  VMUL.F32        S2, S2, S0
36C824:  VSTM            R1!, {S2}
36C828:  LDRSB.W         R3, [R0,#6]
36C82C:  CMP             R2, R3
36C82E:  BLT             loc_36C80E
36C830:  B               locret_36C96A
36C832:  VMOV            S2, R2
36C836:  LDRB            R2, [R0,#4]
36C838:  CBZ             R2, loc_36C868
36C83A:  LDR             R2, [R0,#8]
36C83C:  VLDR            S4, =0.0039062
36C840:  ADD.W           R2, R2, R12,LSL#1
36C844:  LDRH.W          R2, [R2,#-2]
36C848:  VMOV            S0, R2
36C84C:  VCVT.F32.U32    S0, S0
36C850:  VMUL.F32        S0, S0, S4
36C854:  VDIV.F32        S4, S2, S0
36C858:  VCVT.S32.F32    S4, S4
36C85C:  VCVT.F32.S32    S4, S4
36C860:  VMUL.F32        S0, S0, S4
36C864:  VSUB.F32        S2, S2, S0
36C868:  CMP.W           R12, #2
36C86C:  BLT             loc_36C89E
36C86E:  LDR.W           LR, [R0,#8]
36C872:  MOVS            R4, #0
36C874:  VLDR            S0, =0.0039062
36C878:  ADD.W           R3, LR, R4,LSL#1
36C87C:  LDRH            R3, [R3,#2]
36C87E:  VMOV            S4, R3
36C882:  VCVT.F32.U32    S4, S4
36C886:  VMUL.F32        S4, S4, S0
36C88A:  VCMPE.F32       S2, S4
36C88E:  VMRS            APSR_nzcv, FPSCR
36C892:  BLT             loc_36C900
36C894:  ADDS            R2, R4, #1
36C896:  ADDS            R3, R4, #2
36C898:  CMP             R3, R12
36C89A:  MOV             R4, R2
36C89C:  BLT             loc_36C878
36C89E:  LDRSB.W         R2, [R0,#6]
36C8A2:  CMP             R2, #1
36C8A4:  BLT             locret_36C96A
36C8A6:  LDR             R2, [R0,#0xC]
36C8A8:  LDR             R2, [R2]
36C8AA:  ADD.W           R2, R2, R12,LSL#1
36C8AE:  LDRH.W          R2, [R2,#-2]
36C8B2:  VMOV            S0, R2
36C8B6:  VCVT.F32.U32    S2, S0
36C8BA:  VLDR            S0, =0.0039062
36C8BE:  VMUL.F32        S2, S2, S0
36C8C2:  VSTR            S2, [R1]
36C8C6:  LDRSB.W         R2, [R0,#6]
36C8CA:  CMP             R2, #2
36C8CC:  BLT             locret_36C96A
36C8CE:  ADDS            R1, #4
36C8D0:  MOVS            R2, #1
36C8D2:  LDR             R3, [R0,#0xC]
36C8D4:  LDRSB.W         R4, [R0,#5]
36C8D8:  LDR.W           R3, [R3,R2,LSL#2]
36C8DC:  ADDS            R2, #1
36C8DE:  ADD.W           R3, R3, R4,LSL#1
36C8E2:  LDRH.W          R3, [R3,#-2]
36C8E6:  VMOV            S2, R3
36C8EA:  VCVT.F32.U32    S2, S2
36C8EE:  VMUL.F32        S2, S2, S0
36C8F2:  VSTM            R1!, {S2}
36C8F6:  LDRSB.W         R3, [R0,#6]
36C8FA:  CMP             R2, R3
36C8FC:  BLT             loc_36C8D2
36C8FE:  B               locret_36C96A
36C900:  LDRH.W          R3, [LR,R4,LSL#1]
36C904:  VMOV            S6, R3
36C908:  VCVT.F32.U32    S6, S6
36C90C:  LDRSB.W         R3, [R0,#6]
36C910:  CMP             R3, #1
36C912:  IT LT
36C914:  POPLT           {R4,R6,R7,PC}
36C916:  VMUL.F32        S6, S6, S0
36C91A:  MOVS            R3, #0
36C91C:  VSUB.F32        S4, S4, S6
36C920:  VSUB.F32        S2, S2, S6
36C924:  VDIV.F32        S2, S2, S4
36C928:  LDR             R2, [R0,#0xC]
36C92A:  LDR.W           R2, [R2,R3,LSL#2]
36C92E:  ADDS            R3, #1
36C930:  LDRH.W          R12, [R2,R4,LSL#1]
36C934:  ADD.W           R2, R2, R4,LSL#1
36C938:  LDRH            R2, [R2,#2]
36C93A:  VMOV            S4, R12
36C93E:  VMOV            S6, R2
36C942:  VCVT.F32.U32    S4, S4
36C946:  VCVT.F32.U32    S6, S6
36C94A:  VMUL.F32        S4, S4, S0
36C94E:  VMUL.F32        S6, S6, S0
36C952:  VSUB.F32        S6, S6, S4
36C956:  VMUL.F32        S6, S2, S6
36C95A:  VADD.F32        S4, S4, S6
36C95E:  VSTM            R1!, {S4}
36C962:  LDRSB.W         R2, [R0,#6]
36C966:  CMP             R3, R2
36C968:  BLT             loc_36C928
36C96A:  POP             {R4,R6,R7,PC}
