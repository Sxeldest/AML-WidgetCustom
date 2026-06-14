; =========================================================
; Game Engine Function: sub_13BF74
; Address            : 0x13BF74 - 0x13BFC2
; =========================================================

13BF74:  PUSH            {R4-R7,LR}
13BF76:  ADD             R7, SP, #0xC
13BF78:  PUSH.W          {R8}
13BF7C:  VPUSH           {D8}
13BF80:  SUB             SP, SP, #8
13BF82:  LDRD.W          R6, R5, [R0,#0x5C]
13BF86:  CMP             R6, R5
13BF88:  BEQ             loc_13BFB6
13BF8A:  VMOV.F32        S16, #0.5
13BF8E:  MOV             R4, R0
13BF90:  MOV             R8, SP
13BF92:  LDRD.W          R0, R1, [R6],#8
13BF96:  VLDR            S0, [R4,#0x18]
13BF9A:  STR             R1, [SP,#0x20+var_20]
13BF9C:  MOV             R1, R8
13BF9E:  VLDR            S2, [R0,#0x18]
13BFA2:  VSUB.F32        S0, S0, S2
13BFA6:  VMUL.F32        S0, S0, S16
13BFAA:  VSTR            S0, [SP,#0x20+var_1C]
13BFAE:  BL              sub_12BD92
13BFB2:  CMP             R6, R5
13BFB4:  BNE             loc_13BF92
13BFB6:  ADD             SP, SP, #8
13BFB8:  VPOP            {D8}
13BFBC:  POP.W           {R8}
13BFC0:  POP             {R4-R7,PC}
