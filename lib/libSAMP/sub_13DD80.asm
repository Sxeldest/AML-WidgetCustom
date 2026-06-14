; =========================================================
; Game Engine Function: sub_13DD80
; Address            : 0x13DD80 - 0x13DDD0
; =========================================================

13DD80:  PUSH            {R7,LR}
13DD82:  MOV             R7, SP
13DD84:  SUB             SP, SP, #8
13DD86:  LDRD.W          R2, R3, [R0,#0x44]
13DD8A:  CMP             R2, R3
13DD8C:  BEQ             loc_13DDCC
13DD8E:  LDR             R2, [R2]
13DD90:  VMOV            S0, R1
13DD94:  VLDR            S2, [R0,#0x14]
13DD98:  MOV             R1, SP
13DD9A:  VLDR            S4, [R0,#0x18]
13DD9E:  VLDR            S8, [R2,#0x14]
13DDA2:  VLDR            S10, [R2,#0x18]
13DDA6:  VSUB.F32        S2, S8, S2
13DDAA:  VLDR            S6, [R0,#0x54]
13DDAE:  VSUB.F32        S4, S10, S4
13DDB2:  VSTR            S0, [R0,#0x58]
13DDB6:  MOV             R0, R2
13DDB8:  VNMUL.F32       S2, S6, S2
13DDBC:  VNMUL.F32       S0, S0, S4
13DDC0:  VSTR            S2, [SP,#0x10+var_10]
13DDC4:  VSTR            S0, [SP,#0x10+var_C]
13DDC8:  BL              sub_12BD92
13DDCC:  ADD             SP, SP, #8
13DDCE:  POP             {R7,PC}
