; =========================================================
; Game Engine Function: sub_77ED2
; Address            : 0x77ED2 - 0x77F90
; =========================================================

77ED2:  PUSH            {R4-R7,LR}
77ED4:  ADD             R7, SP, #0xC
77ED6:  PUSH.W          {R8-R11}
77EDA:  SUB             SP, SP, #4
77EDC:  MOV             R5, R0
77EDE:  LDR.W           R10, [R5,#4]!
77EE2:  CMP.W           R10, #0
77EE6:  BEQ             loc_77F7A
77EE8:  STR             R1, [SP,#0x20+var_20]
77EEA:  ADDS            R5, R0, #4
77EEC:  LDRB            R1, [R2]
77EEE:  LDRD.W          R11, R9, [R2,#4]
77EF2:  ANDS.W          R3, R1, #1
77EF6:  ITT EQ
77EF8:  ADDEQ.W         R9, R2, #1
77EFC:  MOVEQ.W         R11, R1,LSR#1
77F00:  B               loc_77F0C
77F02:  LDR.W           R0, [R10]
77F06:  CBZ             R0, loc_77F7E
77F08:  MOV             R5, R10
77F0A:  MOV             R10, R0
77F0C:  MOV             R0, R10
77F0E:  MOV             R4, R11
77F10:  LDRB.W          R2, [R0,#0x10]!
77F14:  LDR.W           R8, [R0,#4]
77F18:  ANDS.W          R1, R2, #1
77F1C:  IT EQ
77F1E:  MOVEQ.W         R8, R2,LSR#1
77F22:  CMP             R8, R11
77F24:  IT CC
77F26:  MOVCC           R4, R8
77F28:  CBZ             R4, loc_77F48
77F2A:  LDR.W           R6, [R10,#0x18]
77F2E:  CMP             R1, #0
77F30:  IT EQ
77F32:  ADDEQ           R6, R0, #1
77F34:  MOV             R0, R9; s1
77F36:  MOV             R1, R6; s2
77F38:  MOV             R2, R4; n
77F3A:  BLX             memcmp
77F3E:  CBZ             R0, loc_77F4E
77F40:  CMP.W           R0, #0xFFFFFFFF
77F44:  BLE             loc_77F02
77F46:  B               loc_77F52
77F48:  CMP             R11, R8
77F4A:  BCC             loc_77F02
77F4C:  B               loc_77F66
77F4E:  CMP             R11, R8
77F50:  BCC             loc_77F02
77F52:  MOV             R0, R6; s1
77F54:  MOV             R1, R9; s2
77F56:  MOV             R2, R4; n
77F58:  BLX             memcmp
77F5C:  CBZ             R0, loc_77F66
77F5E:  CMP.W           R0, #0xFFFFFFFF
77F62:  BLE             loc_77F6A
77F64:  B               loc_77F76
77F66:  CMP             R8, R11
77F68:  BCS             loc_77F76
77F6A:  MOV             R5, R10
77F6C:  LDR.W           R0, [R5,#4]!
77F70:  CBZ             R0, loc_77F76
77F72:  MOV             R10, R5
77F74:  B               loc_77F08
77F76:  LDR             R0, [SP,#0x20+var_20]
77F78:  B               loc_77F82
77F7A:  STR             R5, [R1]
77F7C:  B               loc_77F86
77F7E:  LDR             R0, [SP,#0x20+var_20]
77F80:  MOV             R5, R10
77F82:  STR.W           R10, [R0]
77F86:  MOV             R0, R5
77F88:  ADD             SP, SP, #4
77F8A:  POP.W           {R8-R11}
77F8E:  POP             {R4-R7,PC}
