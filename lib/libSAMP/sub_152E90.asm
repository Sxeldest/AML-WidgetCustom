; =========================================================
; Game Engine Function: sub_152E90
; Address            : 0x152E90 - 0x152EC6
; =========================================================

152E90:  PUSH            {R4,R6,R7,LR}
152E92:  ADD             R7, SP, #8
152E94:  SUB.W           SP, SP, #0x810
152E98:  MOV             R12, R0
152E9A:  LDR             R0, [R7,#arg_0]
152E9C:  LDRH            R1, [R1]
152E9E:  ADD.W           R4, SP, #0x818+var_807
152EA2:  LDRH            R3, [R3]
152EA4:  LDR             R2, [R2]
152EA6:  LDR             R0, [R0]
152EA8:  STRD.W          R2, R3, [SP,#0x818+var_818]
152EAC:  MOV             R2, R12
152EAE:  STR             R0, [SP,#0x818+var_810]
152EB0:  MOV             R0, R4
152EB2:  MOV             R3, R1
152EB4:  BL              sub_1544A0
152EB8:  MOVS            R0, #3; int
152EBA:  MOV             R1, R4; s
152EBC:  BL              sub_159B70
152EC0:  ADD.W           SP, SP, #0x810
152EC4:  POP             {R4,R6,R7,PC}
