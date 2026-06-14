; =========================================================
; Game Engine Function: sub_17EB84
; Address            : 0x17EB84 - 0x17EEC0
; =========================================================

17EB84:  PUSH            {R4-R7,LR}
17EB86:  ADD             R7, SP, #0xC
17EB88:  PUSH.W          {R8-R11}
17EB8C:  SUB.W           SP, SP, #0x24C
17EB90:  MOV             R10, R0
17EB92:  BL              sub_180978
17EB96:  CMP             R0, #0
17EB98:  BEQ             loc_17EC4A
17EB9A:  LDR             R2, [R0,#0xC]; size
17EB9C:  MOV             R9, R0
17EB9E:  LDR             R1, [R0,#0x14]; src
17EBA0:  ADD             R0, SP, #0x268+var_130; int
17EBA2:  MOVS            R3, #0
17EBA4:  BL              sub_17D4F2
17EBA8:  LDR.W           R1, [R9,#0x14]; src
17EBAC:  LDRB            R2, [R1]
17EBAE:  SUB.W           R0, R2, #0x22 ; '"'; switch 13 cases
17EBB2:  CMP             R0, #0xC
17EBB4:  BHI             def_17EBBE; jumptable 0017EBBE default case
17EBB6:  MOVW            R2, #0x2F68
17EBBA:  ADD.W           R5, R10, R2
17EBBE:  TBH.W           [PC,R0,LSL#1]; switch jump
17EBC2:  DCW 0xF0; jump table for switch statement
17EBC4:  DCW 0x176
17EBC6:  DCW 0x176
17EBC8:  DCW 0x176
17EBCA:  DCW 0x176
17EBCC:  DCW 0x176
17EBCE:  DCW 0x112
17EBD0:  DCW 0x176
17EBD2:  DCW 0xD
17EBD4:  DCW 0xD
17EBD6:  DCW 0xD
17EBD8:  DCW 0xD
17EBDA:  DCW 0xB7
17EBDC:  ADD             R0, SP, #0x268+var_130; jumptable 0017EBBE cases 42-45
17EBDE:  MOVS            R1, #8
17EBE0:  BL              sub_17DA96
17EBE4:  ADD.W           R5, R9, #4
17EBE8:  ADD             R0, SP, #0x268+var_130; int
17EBEA:  MOV             R1, R5; int
17EBEC:  MOVS            R2, #0x20 ; ' '
17EBEE:  MOVS            R3, #1
17EBF0:  BL              sub_17D786
17EBF4:  ADD.W           R6, R9, #8
17EBF8:  ADD             R0, SP, #0x268+var_130; int
17EBFA:  MOV             R1, R6; int
17EBFC:  MOVS            R2, #0x10
17EBFE:  MOVS            R3, #1
17EC00:  BL              sub_17D786
17EC04:  ADD             R0, SP, #0x268+var_130; int
17EC06:  MOV             R1, R9; int
17EC08:  MOVS            R2, #0x10
17EC0A:  MOVS            R3, #1
17EC0C:  BL              sub_17D786
17EC10:  CBZ             R0, loc_17EC50
17EC12:  LDR.W           R0, [R9,#0x14]
17EC16:  LDRB            R0, [R0]
17EC18:  AND.W           R0, R0, #0xFE
17EC1C:  CMP             R0, #0x2A ; '*'
17EC1E:  BNE.W           loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EC22:  LDR             R1, [R6]
17EC24:  ADD             R6, SP, #0x268+var_244
17EC26:  LDR             R0, [R5]
17EC28:  ADDW            R5, R10, #0xAE8
17EC2C:  MOVS            R4, #0x20 ; ' '
17EC2E:  STRD.W          R0, R1, [SP,#0x268+var_244]
17EC32:  MOV             R0, R5
17EC34:  MOV             R1, R6
17EC36:  BL              sub_17E580
17EC3A:  CMP             R0, #0
17EC3C:  BNE.W           loc_17EEA8
17EC40:  SUBS            R4, #1
17EC42:  ADD.W           R5, R5, #0x124
17EC46:  BNE             loc_17EC32
17EC48:  B               loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EC4A:  MOV.W           R9, #0
17EC4E:  B               loc_17EEB4
17EC50:  LDR.W           R0, [R10]
17EC54:  LDR             R2, [R0,#0x40]
17EC56:  MOV             R0, R10
17EC58:  MOV             R1, R9
17EC5A:  BLX             R2
17EC5C:  B               loc_17ED2A
17EC5E:  CMP             R2, #0xE; jumptable 0017EBBE default case
17EC60:  BNE.W           loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EC64:  ADD             R0, SP, #0x268+var_130
17EC66:  MOVS            R1, #8
17EC68:  BL              sub_17DA96
17EC6C:  ADDW            R0, R10, #0xAE8
17EC70:  STR             R0, [SP,#0x268+var_264]
17EC72:  ADD.W           R0, R10, #0xAF0
17EC76:  ADD.W           R11, SP, #0x268+var_130
17EC7A:  ADD             R5, SP, #0x268+var_244
17EC7C:  STR             R0, [SP,#0x268+var_260]
17EC7E:  ADD             R0, SP, #0x268+var_24C
17EC80:  MOV.W           R8, #0
17EC84:  ADDS            R0, #4
17EC86:  STR             R0, [SP,#0x268+var_25C]
17EC88:  ADD             R1, SP, #0x268+var_24C; int
17EC8A:  MOV             R0, R11; int
17EC8C:  MOVS            R2, #0x20 ; ' '
17EC8E:  MOVS            R3, #1
17EC90:  BL              sub_17D786
17EC94:  CMP             R0, #0
17EC96:  BEQ             loc_17ED1E
17EC98:  LDR             R1, [SP,#0x268+var_25C]; int
17EC9A:  MOV             R0, R11; int
17EC9C:  MOVS            R2, #0x10
17EC9E:  MOVS            R3, #1
17ECA0:  BL              sub_17D786
17ECA4:  LDR             R6, [SP,#0x268+var_260]
17ECA6:  MOVS            R4, #0x20 ; ' '
17ECA8:  LDRD.W          R0, R1, [SP,#0x268+var_24C]
17ECAC:  STRD.W          R0, R1, [SP,#0x268+var_244]
17ECB0:  SUB.W           R0, R6, #8
17ECB4:  MOV             R1, R5
17ECB6:  BL              sub_17E580
17ECBA:  CBNZ            R0, loc_17ECE0
17ECBC:  SUBS            R4, #1
17ECBE:  ADD.W           R6, R6, #0x124
17ECC2:  BNE             loc_17ECB0
17ECC4:  LDR             R6, [SP,#0x268+var_264]
17ECC6:  MOVS            R0, #0x20 ; ' '
17ECC8:  LDRB.W          R1, [R6,#0x120]
17ECCC:  CBZ             R1, loc_17ECEE
17ECCE:  SUBS            R0, #1
17ECD0:  ADD.W           R6, R6, #0x124
17ECD4:  BNE             loc_17ECC8
17ECD6:  MOV             R0, R11
17ECD8:  MOVS            R1, #0x10
17ECDA:  BL              sub_17DA96
17ECDE:  B               loc_17ED14
17ECE0:  MOV             R0, R11; int
17ECE2:  MOV             R1, R6; int
17ECE4:  MOVS            R2, #0x10
17ECE6:  MOVS            R3, #1
17ECE8:  BL              sub_17D786
17ECEC:  B               loc_17ED14
17ECEE:  MOVS            R0, #1
17ECF0:  STRB.W          R0, [R6,#0x120]
17ECF4:  ADD.W           R1, R6, #8; int
17ECF8:  MOV             R0, R11; int
17ECFA:  MOVS            R2, #0x10
17ECFC:  MOVS            R3, #1
17ECFE:  BL              sub_17D786
17ED02:  LDRH.W          R0, [SP,#0x268+var_248]
17ED06:  LDR             R1, [SP,#0x268+var_24C]
17ED08:  STR             R1, [R6]
17ED0A:  STRH            R0, [R6,#4]
17ED0C:  ADD.W           R0, R6, #0xC
17ED10:  BL              sub_17D55E
17ED14:  ADD.W           R8, R8, #1
17ED18:  CMP.W           R8, #0x20 ; ' '
17ED1C:  BNE             loc_17EC88
17ED1E:  LDR.W           R0, [R10]
17ED22:  LDR             R2, [R0,#0x40]
17ED24:  MOV             R0, R10
17ED26:  MOV             R1, R9
17ED28:  BLX             R2
17ED2A:  MOV.W           R9, #0
17ED2E:  B               loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17ED30:  ADD             R0, SP, #0x268+var_130; jumptable 0017EBBE case 46
17ED32:  MOVS            R1, #8
17ED34:  BL              sub_17DA96
17ED38:  ADD.W           R8, R9, #4
17ED3C:  ADD             R0, SP, #0x268+var_130; int
17ED3E:  MOV             R1, R8; int
17ED40:  MOVS            R2, #0x20 ; ' '
17ED42:  MOVS            R3, #1
17ED44:  BL              sub_17D786
17ED48:  ADD.W           R11, R9, #8
17ED4C:  ADD             R0, SP, #0x268+var_130; int
17ED4E:  MOV             R1, R11; int
17ED50:  MOVS            R2, #0x10
17ED52:  MOVS            R3, #1
17ED54:  BL              sub_17D786
17ED58:  ADD             R0, SP, #0x268+var_130; int
17ED5A:  MOV             R1, R9; int
17ED5C:  MOVS            R2, #0x10
17ED5E:  MOVS            R3, #1
17ED60:  BL              sub_17D786
17ED64:  ADDW            R5, R10, #0xAE8
17ED68:  ADD             R6, SP, #0x268+var_244
17ED6A:  LDRD.W          R0, R1, [R9,#4]
17ED6E:  MOVS            R4, #0
17ED70:  STRD.W          R0, R1, [SP,#0x268+var_244]
17ED74:  MOV             R0, R5
17ED76:  MOV             R1, R6
17ED78:  BL              sub_17E580
17ED7C:  CMP             R0, #0
17ED7E:  BNE             loc_17EE64
17ED80:  ADDS            R4, #1
17ED82:  ADD.W           R5, R5, #0x124
17ED86:  CMP             R4, #0x20 ; ' '
17ED88:  BNE             loc_17ED74
17ED8A:  ADDW            R0, R10, #0xC08
17ED8E:  MOVS            R4, #0
17ED90:  LDRB            R1, [R0]
17ED92:  CMP             R1, #0
17ED94:  BEQ             loc_17EE64
17ED96:  ADDS            R4, #1
17ED98:  ADD.W           R0, R0, #0x124
17ED9C:  CMP             R4, #0x20 ; ' '
17ED9E:  BNE             loc_17ED90
17EDA0:  B               loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EDA2:  LDR.W           R2, [R9,#0xC]; jumptable 0017EBBE case 34
17EDA6:  ADD             R0, SP, #0x268+var_244; int
17EDA8:  MOVS            R3, #0
17EDAA:  BL              sub_17D4F2
17EDAE:  ADD             R0, SP, #0x268+var_244
17EDB0:  MOVS            R1, #8
17EDB2:  BL              sub_17DA96
17EDB6:  ADD             R0, SP, #0x268+var_244
17EDB8:  MOVS            R1, #0x10
17EDBA:  BL              sub_17DA96
17EDBE:  ADD             R0, SP, #0x268+var_244
17EDC0:  MOVS            R1, #0x20 ; ' '
17EDC2:  BL              sub_17DA96
17EDC6:  ADD             R0, SP, #0x268+var_244
17EDC8:  MOVS            R1, #0x10
17EDCA:  BL              sub_17DA96
17EDCE:  ADD             R0, SP, #0x268+var_244; int
17EDD0:  ADD             R1, SP, #0x268+var_24C; int
17EDD2:  MOVS            R2, #0x10
17EDD4:  MOVS            R3, #1
17EDD6:  BL              sub_17D786
17EDDA:  LDRH.W          R0, [SP,#0x268+var_24C]
17EDDE:  STRH            R0, [R5,#0xC]
17EDE0:  STRH.W          R0, [R9]
17EDE4:  B               loc_17EE5C
17EDE6:  LDR.W           R0, [R9,#0xC]; jumptable 0017EBBE case 40
17EDEA:  CMP             R0, #0xE
17EDEC:  BNE             loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EDEE:  ADD             R0, SP, #0x268+var_244; int
17EDF0:  MOVS            R2, #0xE; size
17EDF2:  MOVS            R3, #0
17EDF4:  BL              sub_17D4F2
17EDF8:  ADD             R0, SP, #0x268+var_244
17EDFA:  MOVS            R1, #8
17EDFC:  BL              sub_17DA96
17EE00:  ADD             R0, SP, #0x268+var_244; int
17EE02:  ADD             R1, SP, #0x268+var_24C; int
17EE04:  MOVS            R2, #0x20 ; ' '
17EE06:  MOVS            R3, #1
17EE08:  BL              sub_17D786
17EE0C:  ADD             R0, SP, #0x268+var_244; int
17EE0E:  ADD.W           R1, SP, #0x268+var_24D; int
17EE12:  MOVS            R2, #8
17EE14:  MOVS            R3, #1
17EE16:  BL              sub_17D786
17EE1A:  LDRB.W          R0, [SP,#0x268+var_24D]
17EE1E:  CMP             R0, #0x13
17EE20:  BNE             loc_17EE5C
17EE22:  ADD             R0, SP, #0x268+var_244; int
17EE24:  ADD             R1, SP, #0x268+var_254; int
17EE26:  MOVS            R2, #0x20 ; ' '
17EE28:  MOVS            R3, #1
17EE2A:  BL              sub_17D786
17EE2E:  ADD             R0, SP, #0x268+var_244; int
17EE30:  ADD             R1, SP, #0x268+var_258; int
17EE32:  MOVS            R2, #0x20 ; ' '
17EE34:  MOVS            R3, #1
17EE36:  BL              sub_17D786
17EE3A:  LDRD.W          R0, R2, [SP,#0x268+var_258]
17EE3E:  MOVW            R6, #0x2328
17EE42:  LDR             R1, [SP,#0x268+var_24C]
17EE44:  LDR.W           R3, [R10]
17EE48:  ADD             R1, R6
17EE4A:  STRD.W          R2, R0, [R5]
17EE4E:  STR             R1, [R5,#8]
17EE50:  LDR             R2, [R3,#0x40]
17EE52:  MOV             R0, R10
17EE54:  MOV             R1, R9
17EE56:  BLX             R2
17EE58:  MOV.W           R9, #0
17EE5C:  ADD             R0, SP, #0x268+var_244
17EE5E:  BL              sub_17D542
17EE62:  B               loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EE64:  MOV.W           R0, #0x124
17EE68:  LDR.W           R1, [R8]
17EE6C:  MLA.W           R0, R4, R0, R10
17EE70:  LDRH.W          R2, [R11]
17EE74:  ADDW            R5, R0, #0xAF4
17EE78:  STR.W           R1, [R0,#0xAE8]
17EE7C:  MOVS            R1, #1
17EE7E:  STRH.W          R2, [R0,#0xAEC]
17EE82:  STRB.W          R1, [R0,#0xC08]
17EE86:  MOV             R0, R5
17EE88:  BL              sub_17D55E
17EE8C:  LDRD.W          R1, R2, [SP,#0x268+var_128]
17EE90:  LDR             R0, [SP,#0x268+var_130]
17EE92:  ADDS            R3, R1, #7
17EE94:  ADDS            R0, #7
17EE96:  ADD.W           R1, R2, R3,ASR#3
17EE9A:  ASRS            R0, R0, #3
17EE9C:  SUB.W           R2, R0, R3,ASR#3
17EEA0:  MOV             R0, R5
17EEA2:  BL              sub_17D566
17EEA6:  B               loc_17EEAE; jumptable 0017EBBE cases 35-39,41
17EEA8:  MOVS            R0, #0
17EEAA:  STRB.W          R0, [R5,#0x120]
17EEAE:  ADD             R0, SP, #0x268+var_130; jumptable 0017EBBE cases 35-39,41
17EEB0:  BL              sub_17D542
17EEB4:  MOV             R0, R9
17EEB6:  ADD.W           SP, SP, #0x24C
17EEBA:  POP.W           {R8-R11}
17EEBE:  POP             {R4-R7,PC}
