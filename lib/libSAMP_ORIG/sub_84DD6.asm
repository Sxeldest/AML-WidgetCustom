; =========================================================
; Game Engine Function: sub_84DD6
; Address            : 0x84DD6 - 0x84E92
; =========================================================

84DD6:  PUSH            {R4-R7,LR}
84DD8:  ADD             R7, SP, #0xC
84DDA:  PUSH.W          {R8-R10}
84DDE:  MOV             R9, R0
84DE0:  MOVS            R0, #0xC; unsigned int
84DE2:  MOV             R5, R2
84DE4:  MOV             R10, R1
84DE6:  BLX             j__Znwj; operator new(uint)
84DEA:  MOV             R1, R10
84DEC:  MOV             R2, R5
84DEE:  MOV             R8, R0
84DF0:  BL              sub_83928
84DF4:  MOV             R4, R9
84DF6:  LDR.W           R6, [R4,#0x44]!
84DFA:  CBZ             R6, loc_84E1E
84DFC:  ADD.W           R4, R9, #0x44 ; 'D'
84E00:  B               loc_84E0A
84E02:  LDR             R0, [R6]
84E04:  CBZ             R0, loc_84E22
84E06:  MOV             R4, R6
84E08:  MOV             R6, R0
84E0A:  LDRB            R0, [R6,#0x10]
84E0C:  CMP             R0, R10
84E0E:  BHI             loc_84E02
84E10:  BCS             loc_84E24
84E12:  MOV             R4, R6
84E14:  LDR.W           R0, [R4,#4]!
84E18:  CBZ             R0, loc_84E24
84E1A:  MOV             R6, R4
84E1C:  B               loc_84E06
84E1E:  MOV             R6, R4
84E20:  B               loc_84E24
84E22:  MOV             R4, R6
84E24:  LDR             R5, [R4]
84E26:  CBNZ            R5, loc_84E64
84E28:  MOVS            R0, #0x18; unsigned int
84E2A:  BLX             j__Znwj; operator new(uint)
84E2E:  MOV             R5, R0
84E30:  MOVS            R0, #0
84E32:  STR             R0, [R5,#0x14]
84E34:  STRD.W          R0, R0, [R5]
84E38:  STR             R6, [R5,#8]
84E3A:  STR             R5, [R4]
84E3C:  LDR.W           R0, [R9,#0x40]
84E40:  STRB.W          R10, [R5,#0x10]
84E44:  LDR             R0, [R0]
84E46:  CMP             R0, #0
84E48:  ITTE NE
84E4A:  STRNE.W         R0, [R9,#0x40]
84E4E:  LDRNE           R1, [R4]
84E50:  MOVEQ           R1, R5
84E52:  LDR.W           R0, [R9,#0x44]
84E56:  BL              sub_77D8A
84E5A:  LDR.W           R0, [R9,#0x48]
84E5E:  ADDS            R0, #1
84E60:  STR.W           R0, [R9,#0x48]
84E64:  LDR             R0, [R5,#0x14]
84E66:  STR.W           R8, [R5,#0x14]
84E6A:  CMP             R0, #0
84E6C:  ITTT NE
84E6E:  LDRNE           R1, [R0]
84E70:  LDRNE           R1, [R1,#4]
84E72:  BLXNE           R1
84E74:  LDRD.W          R4, R6, [R9,#0x1C]
84E78:  CMP             R4, R6
84E7A:  BEQ             loc_84E8C
84E7C:  LDR             R0, [R5,#0x14]
84E7E:  LDR.W           R1, [R4],#4
84E82:  LDR             R2, [R0]
84E84:  LDR             R2, [R2,#8]
84E86:  BLX             R2
84E88:  CMP             R4, R6
84E8A:  BNE             loc_84E7C
84E8C:  POP.W           {R8-R10}
84E90:  POP             {R4-R7,PC}
