; =========================================================
; Game Engine Function: sub_177EE8
; Address            : 0x177EE8 - 0x177F96
; =========================================================

177EE8:  PUSH            {R4-R7,LR}
177EEA:  ADD             R7, SP, #0xC
177EEC:  PUSH.W          {R8-R10}
177EF0:  SUB             SP, SP, #0x10
177EF2:  LDR             R5, [R0,#0x40]
177EF4:  MOVS            R6, #0
177EF6:  MOV             R8, R1
177EF8:  MOV             R10, R0
177EFA:  CMP             R5, #1
177EFC:  STR             R6, [SP,#0x28+var_1C]
177EFE:  STRD.W          R6, R6, [SP,#0x28+var_24]
177F02:  BLT             loc_177F1C
177F04:  MOV             R9, R5
177F06:  CMP             R5, #8
177F08:  IT LS
177F0A:  MOVLS.W         R9, #8
177F0E:  MOV.W           R0, R9,LSL#4
177F12:  BL              sub_1654B0
177F16:  MOV             R6, R0
177F18:  STRD.W          R9, R0, [SP,#0x28+var_20]
177F1C:  LSLS            R1, R5, #4; n
177F1E:  MOV             R0, R6; int
177F20:  STR             R5, [SP,#0x28+var_24]
177F22:  BLX             sub_22178C
177F26:  LDR.W           R0, [R10,#0x40]
177F2A:  CMP             R0, #1
177F2C:  BLT             loc_177F42
177F2E:  LDR.W           R2, [R10,#0x48]
177F32:  ADDS            R1, R6, #4
177F34:  ADDS            R2, #4
177F36:  LDR.W           R3, [R2],#0x1C
177F3A:  SUBS            R0, #1
177F3C:  STR.W           R3, [R1],#0x10
177F40:  BNE             loc_177F36
177F42:  MOV             R0, R8; int
177F44:  MOV             R1, R6; base
177F46:  MOV             R2, R5; nmemb
177F48:  BL              sub_177FA4
177F4C:  LDR             R0, [SP,#0x28+var_1C]
177F4E:  CMP             R5, #1
177F50:  BLT             loc_177F88
177F52:  ADDS            R0, #6
177F54:  MOVS            R1, #0
177F56:  LDR.W           R2, [R0,#6]
177F5A:  CBZ             R2, loc_177F7E
177F5C:  LDRH            R6, [R0,#4]
177F5E:  LDRH            R4, [R0]
177F60:  LDR.W           R2, [R10,#0x20]
177F64:  ADD             R4, R6
177F66:  LDR.W           R12, [R10,#0x48]
177F6A:  LDRH            R3, [R0,#2]
177F6C:  CMP             R2, R4
177F6E:  IT LT
177F70:  MOVLT           R2, R4
177F72:  STR.W           R2, [R10,#0x20]
177F76:  ADD.W           R2, R12, R1
177F7A:  STRH            R3, [R2,#8]
177F7C:  STRH            R6, [R2,#0xA]
177F7E:  ADDS            R1, #0x1C
177F80:  ADDS            R0, #0x10
177F82:  SUBS            R5, #1
177F84:  BNE             loc_177F56
177F86:  LDR             R0, [SP,#0x28+var_1C]
177F88:  CBZ             R0, loc_177F8E
177F8A:  BL              sub_165578
177F8E:  ADD             SP, SP, #0x10
177F90:  POP.W           {R8-R10}
177F94:  POP             {R4-R7,PC}
