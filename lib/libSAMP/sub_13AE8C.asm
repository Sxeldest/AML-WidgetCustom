; =========================================================
; Game Engine Function: sub_13AE8C
; Address            : 0x13AE8C - 0x13AEB4
; =========================================================

13AE8C:  PUSH            {R4,R5,R7,LR}
13AE8E:  ADD             R7, SP, #8
13AE90:  SUB             SP, SP, #0x10
13AE92:  ADD             R5, SP, #0x18+var_14
13AE94:  MOV             R2, R1
13AE96:  MOV             R1, R0
13AE98:  LDR             R4, [R2]
13AE9A:  MOV             R0, R5
13AE9C:  BL              sub_13AEB4
13AEA0:  LDR             R1, [SP,#0x18+var_14]
13AEA2:  MOVS            R0, #0
13AEA4:  STR             R0, [SP,#0x18+var_14]
13AEA6:  CBZ             R1, loc_13AEAE
13AEA8:  ADDS            R0, R5, #4
13AEAA:  BL              sub_13AFEA
13AEAE:  MOV             R0, R4
13AEB0:  ADD             SP, SP, #0x10
13AEB2:  POP             {R4,R5,R7,PC}
