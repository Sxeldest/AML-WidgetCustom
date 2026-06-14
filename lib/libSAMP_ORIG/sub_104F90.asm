; =========================================================
; Game Engine Function: sub_104F90
; Address            : 0x104F90 - 0x104FCE
; =========================================================

104F90:  PUSH            {R4-R7,LR}
104F92:  ADD             R7, SP, #0xC
104F94:  PUSH.W          {R11}
104F98:  MOV             R4, R1
104F9A:  LDR             R1, =(asc_4F675 - 0x104FA4); "(" ...
104F9C:  LDR             R6, =(sub_FFB40+1 - 0x104FAA)
104F9E:  MOV             R5, R0
104FA0:  ADD             R1, PC; "("
104FA2:  MOV             R0, R4
104FA4:  ADDS            R2, R1, #1
104FA6:  ADD             R6, PC; sub_FFB40
104FA8:  BLX             R6; sub_FFB40
104FAA:  LDR             R0, [R5,#8]
104FAC:  MOV             R1, R4
104FAE:  BL              sub_FE074
104FB2:  LDR             R1, =(asc_50037 - 0x104FBA); ")" ...
104FB4:  MOV             R0, R4
104FB6:  ADD             R1, PC; ")"
104FB8:  ADDS            R2, R1, #1
104FBA:  BLX             R6; sub_FFB40
104FBC:  LDRD.W          R1, R2, [R5,#0xC]
104FC0:  MOV             R0, R4
104FC2:  MOV             R3, R6
104FC4:  POP.W           {R11}
104FC8:  POP.W           {R4-R7,LR}
104FCC:  BX              R3; sub_FFB40
