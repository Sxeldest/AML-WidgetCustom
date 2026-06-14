; =========================================================
; Game Engine Function: sub_13CBC8
; Address            : 0x13CBC8 - 0x13CC16
; =========================================================

13CBC8:  PUSH            {R4-R7,LR}
13CBCA:  ADD             R7, SP, #0xC
13CBCC:  PUSH.W          {R8}
13CBD0:  VPUSH           {D8}
13CBD4:  SUB             SP, SP, #8
13CBD6:  LDRD.W          R6, R5, [R0,#0x5C]
13CBDA:  CMP             R6, R5
13CBDC:  BEQ             loc_13CC0A
13CBDE:  VMOV.F32        S16, #0.5
13CBE2:  MOV             R4, R0
13CBE4:  MOV             R8, SP
13CBE6:  LDRD.W          R0, R1, [R6],#8
13CBEA:  VLDR            S0, [R4,#0x18]
13CBEE:  STR             R1, [SP,#0x20+var_20]
13CBF0:  MOV             R1, R8
13CBF2:  VLDR            S2, [R0,#0x18]
13CBF6:  VSUB.F32        S0, S0, S2
13CBFA:  VMUL.F32        S0, S0, S16
13CBFE:  VSTR            S0, [SP,#0x20+var_1C]
13CC02:  BL              sub_12BD92
13CC06:  CMP             R6, R5
13CC08:  BNE             loc_13CBE6
13CC0A:  ADD             SP, SP, #8
13CC0C:  VPOP            {D8}
13CC10:  POP.W           {R8}
13CC14:  POP             {R4-R7,PC}
