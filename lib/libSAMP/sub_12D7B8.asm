; =========================================================
; Game Engine Function: sub_12D7B8
; Address            : 0x12D7B8 - 0x12D95A
; =========================================================

12D7B8:  PUSH            {R4-R7,LR}
12D7BA:  ADD             R7, SP, #0xC
12D7BC:  PUSH.W          {R8-R11}
12D7C0:  SUB             SP, SP, #4
12D7C2:  VPUSH           {D8-D13}
12D7C6:  SUB             SP, SP, #0x28
12D7C8:  MOV             R8, R0
12D7CA:  LDR             R0, =(off_234980 - 0x12D7D2)
12D7CC:  MOV             R10, R1
12D7CE:  ADD             R0, PC; off_234980
12D7D0:  LDR             R0, [R0]; dword_238EC0
12D7D2:  VLDR            S16, [R0]
12D7D6:  BL              sub_E4F58
12D7DA:  LDR             R1, =(aY_0 - 0x12D7E6); "Y" ...
12D7DC:  ADD.W           R9, SP, #0x78+var_70
12D7E0:  MOV             R6, R0
12D7E2:  ADD             R1, PC; "Y"
12D7E4:  MOV             R0, R9; int
12D7E6:  BL              sub_DC6DC
12D7EA:  VMOV.F32        S0, #0.5
12D7EE:  VMOV            S2, R6
12D7F2:  VMUL.F32        S0, S16, S0
12D7F6:  VMUL.F32        S16, S0, S2
12D7FA:  VMOV            R3, S16
12D7FE:  ADD             R0, SP, #0x78+var_58
12D800:  MOV             R1, R10
12D802:  MOV             R2, R9
12D804:  BL              sub_12B090
12D808:  LDR             R0, =(off_234A5C - 0x12D816)
12D80A:  ADDW            R4, R8, #0x8DC
12D80E:  VLDR            S0, [SP,#0x78+var_54]
12D812:  ADD             R0, PC; off_234A5C
12D814:  LDR             R5, [R0]; dword_238EC4
12D816:  LDRB.W          R0, [SP,#0x78+var_70]
12D81A:  VLDR            S2, [R5]
12D81E:  LSLS            R0, R0, #0x1F
12D820:  VADD.F32        S0, S0, S2
12D824:  VSTR            S0, [R4]
12D828:  ITT NE
12D82A:  LDRNE           R0, [SP,#0x78+var_68]; void *
12D82C:  BLXNE           j__ZdlPv; operator delete(void *)
12D830:  BL              sub_E4F28
12D834:  MOV             R11, R0
12D836:  LDR.W           R6, [R8,#0x8D0]
12D83A:  VMOV            S0, R11
12D83E:  VLDR            S26, [R4,#4]
12D842:  ADDS            R0, R6, #1
12D844:  VMOV.F32        S4, #4.0
12D848:  VCVT.F32.U32    S24, S0
12D84C:  VLDR            S0, [R4]
12D850:  CMP             R0, R11
12D852:  IT CS
12D854:  MOVCS           R0, R11
12D856:  VMOV            S2, R0
12D85A:  VLDR            S6, [R5]
12D85E:  VLDR            S18, [R8,#0x10]
12D862:  ADR             R0, dword_12D970
12D864:  VCVT.F32.U32    S2, S2
12D868:  VLDR            S20, [R8,#0xC]
12D86C:  VLD1.64         {D16-D17}, [R0]
12D870:  MOV.W           R0, #0x3F800000
12D874:  VMUL.F32        S22, S6, S4
12D878:  MOVS            R1, #1
12D87A:  VMUL.F32        S0, S0, S24
12D87E:  STRD.W          R1, R0, [SP,#0x78+var_78]; int
12D882:  VMOV.F32        S4, S18
12D886:  ADD             R1, SP, #0x78+var_58; int
12D888:  ADD             R2, SP, #0x78+var_60; int
12D88A:  MOV             R0, R10; int
12D88C:  MOV             R3, R9; int
12D88E:  VSTR            S20, [SP,#0x78+var_58]
12D892:  VST1.64         {D16-D17}, [R9]
12D896:  VDIV.F32        S2, S0, S2
12D89A:  VSUB.F32        S0, S0, S2
12D89E:  VMLA.F32        S4, S26, S0
12D8A2:  VADD.F32        S0, S20, S22
12D8A6:  VADD.F32        S2, S2, S4
12D8AA:  VSTR            S4, [SP,#0x78+var_54]
12D8AE:  VSTR            S0, [SP,#0x78+var_60]
12D8B2:  VSTR            S2, [SP,#0x78+var_5C]
12D8B6:  BL              sub_12AB98
12D8BA:  VMOV            S0, R6
12D8BE:  SUBS            R1, R6, #1
12D8C0:  VCVT.F32.U32    S0, S0
12D8C4:  VNMLS.F32       S24, S26, S0
12D8C8:  VCVT.U32.F32    S0, S24
12D8CC:  VMOV            R0, S0
12D8D0:  CMP             R1, R0
12D8D2:  IT CC
12D8D4:  MOVCC           R0, R1
12D8D6:  ADD.W           R1, R0, R11
12D8DA:  CMP             R1, R6
12D8DC:  IT HI
12D8DE:  MOVHI           R1, R6
12D8E0:  CMP             R0, R1
12D8E2:  BEQ             loc_12D94C
12D8E4:  VLDR            S0, [R5]
12D8E8:  MOV             R9, R4
12D8EA:  LDR.W           R2, [R8,#0x8D4]
12D8EE:  SUBS            R4, R1, R0
12D8F0:  VADD.F32        S0, S0, S0
12D8F4:  ADDS            R5, R2, R0
12D8F6:  ADD.W           R0, R5, R5,LSL#3
12D8FA:  ADD.W           R0, R8, R0,LSL#3
12D8FE:  MOVW            R8, #0xF790
12D902:  ADD.W           R6, R0, #0x60 ; '`'
12D906:  MOVT            R8, #0xFFFF
12D90A:  VADD.F32        S0, S0, S22
12D90E:  VADD.F32        S0, S20, S0
12D912:  VMOV            R11, S0
12D916:  MOVW            R0, #0x8889
12D91A:  MOV             R3, R11; int
12D91C:  MOVT            R0, #0x8888
12D920:  VSTR            S18, [SP,#0x78+var_78]
12D924:  UMULL.W         R0, R1, R5, R0
12D928:  VSTR            S16, [SP,#0x78+var_74]
12D92C:  LSRS            R0, R1, #4; int
12D92E:  MOV             R1, R10; int
12D930:  MLA.W           R2, R0, R8, R6; int
12D934:  BL              sub_12D98C
12D938:  VLDR            S0, [R9]
12D93C:  SUBS            R4, #1
12D93E:  ADD.W           R5, R5, #1
12D942:  ADD.W           R6, R6, #0x48 ; 'H'
12D946:  VADD.F32        S18, S18, S0
12D94A:  BNE             loc_12D916
12D94C:  ADD             SP, SP, #0x28 ; '('
12D94E:  VPOP            {D8-D13}
12D952:  ADD             SP, SP, #4
12D954:  POP.W           {R8-R11}
12D958:  POP             {R4-R7,PC}
