; =========================================================
; Game Engine Function: sub_189D76
; Address            : 0x189D76 - 0x189E52
; =========================================================

189D76:  PUSH            {R4-R7,LR}
189D78:  ADD             R7, SP, #0xC
189D7A:  PUSH.W          {R8}
189D7E:  SUB             SP, SP, #0x18
189D80:  MOV             R8, R0
189D82:  MOVS            R0, #0
189D84:  LDR.W           R5, [R8,#0x10]
189D88:  CMP             R5, #0
189D8A:  BEQ             loc_189E4A
189D8C:  LDR.W           R3, [R8,#0x14]
189D90:  STR             R0, [SP,#0x28+var_14]
189D92:  CMP             R5, R3
189D94:  STRB.W          R0, [R7,#var_19]
189D98:  BEQ             loc_189DE2
189D9A:  ADD             R3, SP, #0x28+var_18
189D9C:  LDRH            R0, [R5,#8]
189D9E:  STR             R2, [SP,#0x28+var_20]
189DA0:  MOV             R2, R5
189DA2:  STRD.W          R0, R3, [SP,#0x28+var_28]
189DA6:  SUB.W           R3, R7, #-var_19
189DAA:  MOV             R0, R8
189DAC:  BL              sub_18AC96
189DB0:  CBZ             R0, loc_189E0E
189DB2:  LDRB.W          R0, [R7,#var_19]
189DB6:  CMP             R0, #0
189DB8:  BEQ             loc_189E48
189DBA:  LDR.W           R4, [R8,#0x10]
189DBE:  LDR             R0, [R4,#4]
189DC0:  CMP             R0, #0
189DC2:  BNE             loc_189E48
189DC4:  LDR.W           R0, [R4,#0xD0]
189DC8:  MOV             R1, R4
189DCA:  STR.W           R0, [R8,#0x10]
189DCE:  ADD.W           R0, R8, #4
189DD2:  BL              sub_18A206
189DD6:  MOV             R0, R4; int
189DD8:  MOV.W           R1, #0x154; n
189DDC:  BLX             sub_22178C
189DE0:  B               loc_189E48
189DE2:  LDR             R3, [R5,#4]
189DE4:  SUBS            R0, R3, #1
189DE6:  ADD.W           R3, R3, R3,LSR#31
189DEA:  ASRS            R4, R3, #1
189DEC:  MOVS            R3, #0
189DEE:  ADD.W           R6, R5, R4,LSL#1
189DF2:  LDRH            R6, [R6,#8]
189DF4:  CMP             R6, R1
189DF6:  BEQ             loc_189E12
189DF8:  IT HI
189DFA:  SUBHI           R0, R4, #1
189DFC:  CMP             R6, R1
189DFE:  IT LS
189E00:  ADDLS           R3, R4, #1
189E02:  SUBS            R6, R0, R3
189E04:  ADD.W           R6, R6, R6,LSR#31
189E08:  ADD.W           R4, R3, R6,ASR#1
189E0C:  BGE             loc_189DEE
189E0E:  MOVS            R0, #0
189E10:  B               loc_189E4A
189E12:  ADD.W           R0, R5, R4,LSL#2
189E16:  MOV             R1, R4
189E18:  LDR             R0, [R0,#0x48]
189E1A:  STR             R0, [R2]
189E1C:  MOV             R0, R8
189E1E:  LDR.W           R2, [R8,#0x10]
189E22:  BL              sub_18AC28
189E26:  LDR.W           R1, [R8,#0x10]
189E2A:  LDR             R0, [R1,#4]
189E2C:  CBNZ            R0, loc_189E48
189E2E:  ADD.W           R0, R8, #4
189E32:  BL              sub_18A206
189E36:  LDR.W           R0, [R8,#0x10]; int
189E3A:  MOV.W           R1, #0x154; n
189E3E:  BLX             sub_22178C
189E42:  MOVS            R0, #0
189E44:  STRD.W          R0, R0, [R8,#0x10]
189E48:  MOVS            R0, #1
189E4A:  ADD             SP, SP, #0x18
189E4C:  POP.W           {R8}
189E50:  POP             {R4-R7,PC}
