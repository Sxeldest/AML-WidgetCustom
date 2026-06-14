; =========================================================
; Game Engine Function: sub_116850
; Address            : 0x116850 - 0x116934
; =========================================================

116850:  PUSH            {R4-R7,LR}
116852:  ADD             R7, SP, #0xC
116854:  PUSH.W          {R8-R11}
116858:  SUB             SP, SP, #4
11685A:  VPUSH           {D8-D11}
11685E:  SUB             SP, SP, #0x18
116860:  MOV             R5, R0
116862:  LDR             R0, [R0]
116864:  MOV             R9, R1
116866:  LDR             R1, [R0,#0x18]
116868:  MOV             R0, R5
11686A:  BLX             R1
11686C:  MOV             R6, R0
11686E:  LDR             R0, [R5]
116870:  LDR             R1, [R0,#0x18]
116872:  MOV             R0, R5
116874:  BLX             R1
116876:  MOV             R11, R0
116878:  LDR             R0, [R5]
11687A:  ADD.W           R8, SP, #0x58+var_48
11687E:  MOV             R1, R5
116880:  LDR             R2, [R0,#0x5C]
116882:  MOV             R0, R8
116884:  BLX             R2
116886:  LDR             R0, [R5]
116888:  VLDR            S16, [SP,#0x58+var_48]
11688C:  LDR             R1, [R0,#0x18]
11688E:  MOV             R0, R5
116890:  BLX             R1
116892:  MOV             R4, R0
116894:  LDR             R0, [R5]
116896:  MOV             R1, R5
116898:  LDR             R2, [R0,#0x5C]
11689A:  ADD             R0, SP, #0x58+var_50
11689C:  BLX             R2
11689E:  MOV             R10, R5
1168A0:  VLDR            S22, [SP,#0x58+var_4C]
1168A4:  LDR.W           R0, [R10],#0x24
1168A8:  LDR             R1, [R0,#0x18]
1168AA:  MOV             R0, R5
1168AC:  BLX             R1
1168AE:  VMOV            S2, R11
1168B2:  VLDR            S0, =44.0
1168B6:  VMOV            S8, R0
1168BA:  VLDR            S10, =489.0
1168BE:  VMUL.F32        S18, S2, S0
1168C2:  VLDR            S0, =88.0
1168C6:  VMOV            S2, R6
1168CA:  VLDR            S6, =50.0
1168CE:  VMLA.F32        S22, S8, S10
1168D2:  MOVS            R6, #0
1168D4:  VMUL.F32        S0, S2, S0
1168D8:  MOV.W           R11, #0x94000000
1168DC:  VMOV            S2, R4
1168E0:  VMOV.F32        S4, #0.4375
1168E4:  VMLA.F32        S16, S2, S6
1168E8:  VMOV.F32        S20, S18
1168EC:  VMOV            R5, S22
1168F0:  VMOV            R4, S0
1168F4:  VMLA.F32        S20, S18, S4
1168F8:  VMOV            R1, S16
1168FC:  CMP             R6, R9
1168FE:  ITEE GE
116900:  STRGE.W         R11, [SP,#0x58+var_48]
116904:  MOVLT.W         R0, #0xFFFFFFFF
116908:  STRLT           R0, [SP,#0x58+var_48]
11690A:  MOV             R2, R5
11690C:  MOV             R0, R10
11690E:  MOV             R3, R4
116910:  STR.W           R8, [SP,#0x58+var_54]
116914:  VSTR            S18, [SP,#0x58+var_58]
116918:  BL              sub_163176
11691C:  VADD.F32        S16, S20, S16
116920:  ADDS            R6, #1
116922:  CMP             R6, #6
116924:  BNE             loc_1168F8
116926:  ADD             SP, SP, #0x18
116928:  VPOP            {D8-D11}
11692C:  ADD             SP, SP, #4
11692E:  POP.W           {R8-R11}
116932:  POP             {R4-R7,PC}
