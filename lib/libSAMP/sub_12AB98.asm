; =========================================================
; Game Engine Function: sub_12AB98
; Address            : 0x12AB98 - 0x12ABEA
; =========================================================

12AB98:  PUSH            {R4-R7,LR}
12AB9A:  ADD             R7, SP, #0xC
12AB9C:  PUSH.W          {R11}
12ABA0:  SUB             SP, SP, #0x10
12ABA2:  LDR             R6, [R0,#4]
12ABA4:  MOV             R0, R3
12ABA6:  MOV             R4, R2
12ABA8:  MOV             R5, R1
12ABAA:  BL              sub_165778
12ABAE:  MOV             R3, R0; int
12ABB0:  LDR             R0, [R7,#arg_0]
12ABB2:  CBZ             R0, loc_12ABC8
12ABB4:  MOVS            R0, #0xF
12ABB6:  MOVS            R1, #0
12ABB8:  STRD.W          R1, R0, [SP,#0x20+var_20]; float
12ABBC:  MOV             R0, R6; int
12ABBE:  MOV             R1, R5; int
12ABC0:  MOV             R2, R4; int
12ABC2:  BL              sub_174194
12ABC6:  B               loc_12ABE2
12ABC8:  VLDR            S0, [R7,#arg_4]
12ABCC:  MOVS            R0, #0xF
12ABCE:  MOVS            R1, #0
12ABD0:  MOV             R2, R4
12ABD2:  STRD.W          R1, R0, [SP,#0x20+var_20]
12ABD6:  MOV             R0, R6
12ABD8:  MOV             R1, R5
12ABDA:  VSTR            S0, [SP,#0x20+var_18]
12ABDE:  BL              sub_1740F8
12ABE2:  ADD             SP, SP, #0x10
12ABE4:  POP.W           {R11}
12ABE8:  POP             {R4-R7,PC}
