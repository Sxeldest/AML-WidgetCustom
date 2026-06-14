; =========================================================
; Game Engine Function: sub_73A6C
; Address            : 0x73A6C - 0x73AF0
; =========================================================

73A6C:  PUSH            {R4-R7,LR}
73A6E:  ADD             R7, SP, #0xC
73A70:  PUSH.W          {R8-R10}
73A74:  MOV             R4, R0
73A76:  LDR             R0, =(byte_1A44C8 - 0x73A7C)
73A78:  ADD             R0, PC; byte_1A44C8
73A7A:  LDRB            R0, [R0]
73A7C:  CMP             R0, #0
73A7E:  ITTT NE
73A80:  LDRNE           R0, [R4,#4]
73A82:  LDRBNE          R0, [R0,#8]
73A84:  CMPNE           R0, #0
73A86:  BNE             loc_73A8E
73A88:  POP.W           {R8-R10}
73A8C:  POP             {R4-R7,PC}
73A8E:  LDR             R0, =(off_114AB0 - 0x73A9C)
73A90:  MOV             R1, #0x23DEF4
73A98:  ADD             R0, PC; off_114AB0
73A9A:  LDR.W           R9, [R0]; dword_1A4408
73A9E:  LDR.W           R0, [R9]
73AA2:  LDR             R5, [R0,R1]
73AA4:  LDR             R6, =(dword_1A44CC - 0x73AAA)
73AA6:  ADD             R6, PC; dword_1A44CC
73AA8:  LDR.W           R0, [R5,#0x3B0]
73AAC:  LDR             R1, [R6]
73AAE:  LDR.W           R8, [R0,#0x18]
73AB2:  CBZ             R1, loc_73AC2
73AB4:  MOVS            R0, #0
73AB6:  MOV.W           R10, #0
73ABA:  BL              sub_74070
73ABE:  STR.W           R10, [R6]
73AC2:  CMP             R5, #0
73AC4:  BEQ             loc_73A88
73AC6:  LDR             R0, [R4,#4]
73AC8:  LDRB            R0, [R0,#8]
73ACA:  CMP             R0, #0
73ACC:  IT NE
73ACE:  CMPNE.W         R8, #0
73AD2:  BEQ             loc_73A88
73AD4:  LDR.W           R0, [R9]
73AD8:  MOV             R1, #0x14F47D
73AE0:  MOVS            R2, #0
73AE2:  ADDS            R3, R0, R1
73AE4:  MOV             R0, R8
73AE6:  MOVS            R1, #0
73AE8:  BLX             R3
73AEA:  POP.W           {R8-R10}
73AEE:  POP             {R4-R7,PC}
