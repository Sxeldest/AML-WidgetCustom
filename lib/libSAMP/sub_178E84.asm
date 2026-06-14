; =========================================================
; Game Engine Function: sub_178E84
; Address            : 0x178E84 - 0x178F3A
; =========================================================

178E84:  PUSH            {R4-R7,LR}
178E86:  ADD             R7, SP, #0xC
178E88:  PUSH.W          {R11}
178E8C:  LDRD.W          R12, LR, [R1,#4]
178E90:  MOVS            R3, #0
178E92:  MOVS            R4, #2
178E94:  MOV             R2, R12
178E96:  CMP             R2, LR
178E98:  BGE             loc_178EA6
178E9A:  LDR             R5, [R1]
178E9C:  ADDS            R6, R2, #1
178E9E:  STR             R6, [R1,#4]
178EA0:  LDRB            R5, [R5,R2]
178EA2:  MOV             R2, R6
178EA4:  B               loc_178EA8
178EA6:  MOVS            R5, #0
178EA8:  LSLS            R3, R3, #8
178EAA:  SUBS            R4, #1
178EAC:  ORR.W           R3, R3, R5
178EB0:  BNE             loc_178E96
178EB2:  CBZ             R3, loc_178F12
178EB4:  CMP             R2, LR
178EB6:  BGE             loc_178EC4
178EB8:  LDR             R4, [R1]
178EBA:  ADDS            R5, R2, #1
178EBC:  STR             R5, [R1,#4]
178EBE:  LDRB            R4, [R4,R2]
178EC0:  MOV             R2, R5
178EC2:  B               loc_178EC6
178EC4:  MOVS            R4, #0
178EC6:  MLA.W           R3, R4, R3, R2
178ECA:  CMP             LR, R3
178ECC:  MOV             R2, R3
178ECE:  IT LT
178ED0:  MOVLT           R2, LR
178ED2:  CMP             R3, #0
178ED4:  IT MI
178ED6:  MOVMI           R2, LR
178ED8:  CBZ             R4, loc_178EFC
178EDA:  MOVS            R3, #0
178EDC:  CMP             R2, LR
178EDE:  BGE             loc_178EEC
178EE0:  LDR             R5, [R1]
178EE2:  ADDS            R6, R2, #1
178EE4:  STR             R6, [R1,#4]
178EE6:  LDRB            R5, [R5,R2]
178EE8:  MOV             R2, R6
178EEA:  B               loc_178EEE
178EEC:  MOVS            R5, #0
178EEE:  LSLS            R3, R3, #8
178EF0:  SUBS            R4, #1
178EF2:  ORR.W           R3, R3, R5
178EF6:  BNE             loc_178EDC
178EF8:  SUBS            R3, #1
178EFA:  B               loc_178F00
178EFC:  MOV.W           R3, #0xFFFFFFFF
178F00:  ADD             R3, R2
178F02:  CMP             LR, R3
178F04:  MOV             R2, R3
178F06:  IT LT
178F08:  MOVLT           R2, LR
178F0A:  CMP             R3, #0
178F0C:  IT MI
178F0E:  MOVMI           R2, LR
178F10:  STR             R2, [R1,#4]
178F12:  MOVS            R3, #0
178F14:  STRD.W          R3, R3, [R0]
178F18:  STR             R3, [R0,#8]
178F1A:  SUB.W           R3, R2, R12
178F1E:  ORRS.W          R4, R3, R12
178F22:  BMI             loc_178F34
178F24:  CMP             LR, R12
178F26:  ITTTT GE
178F28:  CMPGE           LR, R2
178F2A:  LDRGE           R1, [R1]
178F2C:  STRGE           R3, [R0,#8]
178F2E:  ADDGE           R1, R12
178F30:  IT GE
178F32:  STRGE           R1, [R0]
178F34:  POP.W           {R11}
178F38:  POP             {R4-R7,PC}
