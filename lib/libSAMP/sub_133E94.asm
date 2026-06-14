; =========================================================
; Game Engine Function: sub_133E94
; Address            : 0x133E94 - 0x133EE8
; =========================================================

133E94:  PUSH            {R4,R5,R7,LR}
133E96:  ADD             R7, SP, #8
133E98:  MOV             R4, R0
133E9A:  MOVS            R5, #0x88
133E9C:  ADDS            R0, R4, R5
133E9E:  MOVS            R1, #0
133EA0:  BL              sub_134570
133EA4:  SUBS            R5, #4
133EA6:  CMP             R5, #0x60 ; '`'
133EA8:  BNE             loc_133E9C
133EAA:  LDR             R0, [R4,#0x60]
133EAC:  MOVS            R5, #0
133EAE:  STR             R5, [R4,#0x60]
133EB0:  CBZ             R0, loc_133EB8
133EB2:  LDR             R1, [R0]
133EB4:  LDR             R1, [R1,#0x2C]
133EB6:  BLX             R1
133EB8:  LDR             R0, [R4,#0x5C]
133EBA:  STR             R5, [R4,#0x5C]
133EBC:  CBZ             R0, loc_133EC4
133EBE:  LDR             R1, [R0]
133EC0:  LDR             R1, [R1,#0x2C]
133EC2:  BLX             R1
133EC4:  LDR             R0, [R4,#0x58]
133EC6:  MOVS            R5, #0
133EC8:  STR             R5, [R4,#0x58]
133ECA:  CBZ             R0, loc_133ED2
133ECC:  LDR             R1, [R0]
133ECE:  LDR             R1, [R1,#0x2C]
133ED0:  BLX             R1
133ED2:  LDR             R0, [R4,#0x54]
133ED4:  STR             R5, [R4,#0x54]
133ED6:  CBZ             R0, loc_133EDE
133ED8:  LDR             R1, [R0]
133EDA:  LDR             R1, [R1,#0x2C]
133EDC:  BLX             R1
133EDE:  MOV             R0, R4
133EE0:  POP.W           {R4,R5,R7,LR}
133EE4:  B.W             sub_12BCE4
