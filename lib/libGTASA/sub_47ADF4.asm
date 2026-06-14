; =========================================================
; Game Engine Function: sub_47ADF4
; Address            : 0x47ADF4 - 0x47AE9E
; =========================================================

47ADF4:  PUSH            {R4-R7,LR}
47ADF6:  ADD             R7, SP, #0xC
47ADF8:  PUSH.W          {R8-R11}
47ADFC:  SUB             SP, SP, #4
47ADFE:  MOV             R11, R1
47AE00:  LDR.W           R5, [R0,#0xDC]
47AE04:  LDR.W           R1, [R11,#0x1C]
47AE08:  MOV             R8, R3
47AE0A:  STR             R1, [SP,#0x20+var_20]
47AE0C:  CMP             R5, #1
47AE0E:  ITTTT GE
47AE10:  LDRGE           R6, [R0,#0x1C]
47AE12:  LDRGE           R0, [SP,#0x20+var_20]
47AE14:  RSBGE.W         R0, R6, R0,LSL#4
47AE18:  CMPGE           R0, #1
47AE1A:  MOV             R9, R2
47AE1C:  BLT             loc_47AE4E
47AE1E:  LDR             R0, [SP,#0x20+var_20]
47AE20:  MOV             R10, R9
47AE22:  LSLS            R0, R0, #4
47AE24:  MVNS            R1, R0
47AE26:  ORR.W           R0, R0, #2
47AE2A:  ADD             R1, R6
47AE2C:  SUBS            R0, R0, R6
47AE2E:  CMP.W           R1, #0xFFFFFFFF
47AE32:  IT LT
47AE34:  MOVLT           R1, #0xFFFFFFFE
47AE38:  ADDS            R4, R0, R1
47AE3A:  LDR.W           R0, [R10],#4
47AE3E:  MOV             R1, R4
47AE40:  ADD             R0, R6
47AE42:  LDRB.W          R2, [R0,#-1]
47AE46:  BLX             j___aeabi_memset8
47AE4A:  SUBS            R5, #1
47AE4C:  BNE             loc_47AE3A
47AE4E:  LDR.W           R0, [R11,#0xC]
47AE52:  CMP             R0, #1
47AE54:  BLT             loc_47AE96
47AE56:  LDR             R1, [SP,#0x20+var_20]
47AE58:  MOV.W           R12, R1,LSL#3
47AE5C:  MOVS            R1, #0
47AE5E:  CMP.W           R12, #0
47AE62:  BEQ             loc_47AE90
47AE64:  LDR.W           R2, [R8,R1,LSL#2]
47AE68:  MOVS            R6, #0
47AE6A:  LDR.W           R3, [R9,R1,LSL#2]
47AE6E:  MOV             R0, R12
47AE70:  LDRB            R4, [R3]
47AE72:  SUBS            R0, #1
47AE74:  LDRB            R5, [R3,#1]
47AE76:  ADD.W           R3, R3, #2
47AE7A:  ADD             R4, R6
47AE7C:  EOR.W           R6, R6, #1
47AE80:  ADD             R5, R4
47AE82:  MOV.W           R5, R5,LSR#1
47AE86:  STRB.W          R5, [R2],#1
47AE8A:  BNE             loc_47AE70
47AE8C:  LDR.W           R0, [R11,#0xC]
47AE90:  ADDS            R1, #1
47AE92:  CMP             R1, R0
47AE94:  BLT             loc_47AE5E
47AE96:  ADD             SP, SP, #4
47AE98:  POP.W           {R8-R11}
47AE9C:  POP             {R4-R7,PC}
