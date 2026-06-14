; =========================================================
; Game Engine Function: sub_DE9E0
; Address            : 0xDE9E0 - 0xDEA6E
; =========================================================

DE9E0:  PUSH            {R4-R7,LR}
DE9E2:  ADD             R7, SP, #0xC
DE9E4:  PUSH.W          {R11}
DE9E8:  SUB             SP, SP, #8
DE9EA:  MOV             R4, R0
DE9EC:  LDR             R0, [R0]
DE9EE:  MOV             R5, R1
DE9F0:  LDR             R1, [R0]
DE9F2:  CBZ             R1, loc_DEA16
DE9F4:  LDR             R2, =(unk_91D45 - 0xDE9FE)
DE9F6:  LDRD.W          R0, R3, [R5,#8]
DE9FA:  ADD             R2, PC; unk_91D45
DE9FC:  LDRB            R6, [R2,R1]
DE9FE:  ADDS            R1, R0, #1
DEA00:  CMP             R3, R1
DEA02:  BCS             loc_DEA10
DEA04:  LDR             R0, [R5]
DEA06:  LDR             R2, [R0]
DEA08:  MOV             R0, R5
DEA0A:  BLX             R2
DEA0C:  LDR             R0, [R5,#8]
DEA0E:  ADDS            R1, R0, #1
DEA10:  LDR             R2, [R5,#4]
DEA12:  STR             R1, [R5,#8]
DEA14:  STRB            R6, [R2,R0]
DEA16:  ADDS            R6, R4, #4
DEA18:  LDM             R6, {R0-R2,R6}
DEA1A:  LDR             R3, [R2,#4]
DEA1C:  LDR             R2, [R1]
DEA1E:  LDR             R1, [R0]
DEA20:  MOV             R0, R5
DEA22:  STR             R6, [SP,#0x18+var_18]
DEA24:  BL              sub_DEA74
DEA28:  MOV             R5, R0
DEA2A:  LDR             R0, [R4,#0x14]
DEA2C:  LDRB            R0, [R0,#6]
DEA2E:  LSLS            R0, R0, #0x1C
DEA30:  BPL             loc_DEA64
DEA32:  LDRD.W          R0, R2, [R5,#8]
DEA36:  LDR             R6, [R4,#0x18]
DEA38:  ADDS            R1, R0, #1
DEA3A:  CMP             R2, R1
DEA3C:  BCS             loc_DEA4A
DEA3E:  LDR             R0, [R5]
DEA40:  LDR             R2, [R0]
DEA42:  MOV             R0, R5
DEA44:  BLX             R2
DEA46:  LDR             R0, [R5,#8]
DEA48:  ADDS            R1, R0, #1
DEA4A:  LDR             R2, [R5,#4]
DEA4C:  LDRB            R3, [R6]
DEA4E:  STR             R1, [R5,#8]
DEA50:  STRB            R3, [R2,R0]
DEA52:  LDR             R0, [R4,#0x1C]
DEA54:  LDR             R1, [R0]
DEA56:  CMP             R1, #1
DEA58:  BLT             loc_DEA64
DEA5A:  LDR             R2, [R4,#0x20]
DEA5C:  MOV             R0, R5
DEA5E:  BL              sub_DE834
DEA62:  MOV             R5, R0
DEA64:  MOV             R0, R5
DEA66:  ADD             SP, SP, #8
DEA68:  POP.W           {R11}
DEA6C:  POP             {R4-R7,PC}
