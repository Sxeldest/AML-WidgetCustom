; =========================================================
; Game Engine Function: sub_148CAE
; Address            : 0x148CAE - 0x148D6A
; =========================================================

148CAE:  PUSH            {R4-R7,LR}
148CB0:  ADD             R7, SP, #0xC
148CB2:  PUSH.W          {R8-R10}
148CB6:  MOV             R5, R0
148CB8:  LSRS            R0, R1, #2
148CBA:  CMP             R0, #0xFA
148CBC:  BHI             loc_148D06
148CBE:  MOV             R4, R1
148CC0:  ADD             R1, R5
148CC2:  LDRB.W          R0, [R1,#0xFB4]
148CC6:  CBZ             R0, loc_148D06
148CC8:  ADD.W           R6, R5, R4,LSL#2
148CCC:  LDR.W           R0, [R6,#4]!
148CD0:  CBZ             R0, loc_148D06
148CD2:  MOVW            R2, #0x13BC
148CD6:  ADD.W           R8, R5, R2
148CDA:  ADDW            R9, R1, #0xFB4
148CDE:  LDR.W           R1, [R8]
148CE2:  CBZ             R1, loc_148D0E
148CE4:  LDRB.W          R2, [R1,#0x1B0]
148CE8:  CBZ             R2, loc_148D0E
148CEA:  LDR             R2, [R1,#4]
148CEC:  CMP             R2, R4
148CEE:  BNE             loc_148D0E
148CF0:  MOV             R0, R1
148CF2:  MOVS            R1, #0
148CF4:  MOV.W           R10, #0
148CF8:  BL              sub_13F01C
148CFC:  LDR             R0, [R6]
148CFE:  STRB.W          R10, [R9]
148D02:  CBNZ            R0, loc_148D14
148D04:  B               loc_148D1C
148D06:  MOVS            R0, #0
148D08:  POP.W           {R8-R10}
148D0C:  POP             {R4-R7,PC}
148D0E:  MOVS            R1, #0
148D10:  STRB.W          R1, [R9]
148D14:  BL              sub_13DF08
148D18:  BLX             j__ZdlPv; operator delete(void *)
148D1C:  ADDW            R1, R5, #0xFB4
148D20:  MOVS            R0, #0
148D22:  MOVS            R2, #0
148D24:  STR             R0, [R6]
148D26:  LDRB            R3, [R1,R0]
148D28:  CMP             R3, #0
148D2A:  IT NE
148D2C:  MOVNE           R2, R0
148D2E:  ADDS            R0, #1
148D30:  CMP.W           R0, #0x3EC
148D34:  BNE             loc_148D26
148D36:  LDRD.W          R6, R0, [R8,#0x3F8]
148D3A:  STR             R2, [R5]
148D3C:  CMP             R6, R0
148D3E:  BEQ             loc_148D4E
148D40:  LDR             R1, [R6]
148D42:  CMP             R1, R4
148D44:  BEQ             loc_148D4E
148D46:  ADDS            R6, #4
148D48:  CMP             R6, R0
148D4A:  BNE             loc_148D40
148D4C:  B               loc_148D66
148D4E:  CMP             R6, R0
148D50:  BEQ             loc_148D66
148D52:  ADDS            R1, R6, #4; src
148D54:  SUBS            R4, R0, R1
148D56:  ITTT NE
148D58:  MOVNE           R0, R6; dest
148D5A:  MOVNE           R2, R4; n
148D5C:  BLXNE           j_memmove
148D60:  ADDS            R0, R6, R4
148D62:  STR.W           R0, [R8,#0x3FC]
148D66:  MOVS            R0, #1
148D68:  B               loc_148D08
