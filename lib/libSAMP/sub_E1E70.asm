; =========================================================
; Game Engine Function: sub_E1E70
; Address            : 0xE1E70 - 0xE1EC8
; =========================================================

E1E70:  PUSH            {R4-R7,LR}
E1E72:  ADD             R7, SP, #0xC
E1E74:  PUSH.W          {R8,R9,R11}
E1E78:  ADDS            R5, R1, R3
E1E7A:  MOV             R8, R2
E1E7C:  MOV             R2, R0
E1E7E:  MOV             R6, R1
E1E80:  MOV             R0, R1
E1E82:  MOV             R1, R5
E1E84:  BL              sub_DFAB8
E1E88:  LDR.W           R9, [R7,#arg_0]
E1E8C:  MOV             R4, R0
E1E8E:  CMP.W           R9, #0
E1E92:  BEQ             loc_E1EC0
E1E94:  LDRD.W          R0, R2, [R4,#8]
E1E98:  ADDS            R1, R0, #1
E1E9A:  CMP             R2, R1
E1E9C:  BCS             loc_E1EAA
E1E9E:  LDR             R0, [R4]
E1EA0:  LDR             R2, [R0]
E1EA2:  MOV             R0, R4
E1EA4:  BLX             R2
E1EA6:  LDR             R0, [R4,#8]
E1EA8:  ADDS            R1, R0, #1
E1EAA:  LDR             R2, [R4,#4]
E1EAC:  STR             R1, [R4,#8]
E1EAE:  ADD.W           R1, R6, R8
E1EB2:  STRB.W          R9, [R2,R0]
E1EB6:  MOV             R0, R5
E1EB8:  MOV             R2, R4
E1EBA:  BL              sub_DFAB8
E1EBE:  MOV             R4, R0
E1EC0:  MOV             R0, R4
E1EC2:  POP.W           {R8,R9,R11}
E1EC6:  POP             {R4-R7,PC}
