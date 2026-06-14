; =========================================================
; Game Engine Function: sub_9D838
; Address            : 0x9D838 - 0x9D896
; =========================================================

9D838:  PUSH            {R4-R7,LR}
9D83A:  ADD             R7, SP, #0xC
9D83C:  PUSH.W          {R11}
9D840:  SUB             SP, SP, #8; float
9D842:  CMP.W           R3, #0x1000000
9D846:  BCC             loc_9D88E
9D848:  MOV             R4, R0
9D84A:  LDR             R0, [R7,#arg_0]
9D84C:  CMP             R0, #3
9D84E:  BLT             loc_9D88E
9D850:  VMOV            S2, R0
9D854:  VLDR            S4, =6.2832
9D858:  VMOV.F32        S0, #-1.0
9D85C:  SUBS            R0, #1
9D85E:  VCVT.F32.S32    S2, S2
9D862:  MOV             R5, R3
9D864:  STR             R0, [SP,#0x18+var_14]; int
9D866:  MOV             R0, R4; int
9D868:  MOVS            R3, #0; int
9D86A:  MOVS            R6, #0
9D86C:  VADD.F32        S0, S2, S0
9D870:  VMUL.F32        S0, S0, S4
9D874:  VDIV.F32        S0, S0, S2
9D878:  VSTR            S0, [SP,#0x18+var_18]
9D87C:  BL              sub_9CF78
9D880:  LDR             R2, [R4,#0x58]
9D882:  MOV             R0, R4
9D884:  LDR             R1, [R4,#0x60]
9D886:  MOV             R3, R5
9D888:  BL              sub_9CA40
9D88C:  STR             R6, [R4,#0x58]
9D88E:  ADD             SP, SP, #8
9D890:  POP.W           {R11}
9D894:  POP             {R4-R7,PC}
