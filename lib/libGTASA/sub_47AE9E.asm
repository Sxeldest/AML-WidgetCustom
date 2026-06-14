; =========================================================
; Game Engine Function: sub_47AE9E
; Address            : 0x47AE9E - 0x47AF68
; =========================================================

47AE9E:  PUSH            {R4-R7,LR}
47AEA0:  ADD             R7, SP, #0xC
47AEA2:  PUSH.W          {R8-R11}
47AEA6:  SUB             SP, SP, #0xC
47AEA8:  STR             R3, [SP,#0x28+var_24]
47AEAA:  MOV             R9, R2
47AEAC:  LDR.W           R6, [R0,#0xDC]
47AEB0:  STR             R1, [SP,#0x28+var_20]
47AEB2:  LDR.W           R8, [R1,#0x1C]
47AEB6:  CMP             R6, #1
47AEB8:  ITTT GE
47AEBA:  LDRGE           R5, [R0,#0x1C]
47AEBC:  RSBGE.W         R0, R5, R8,LSL#4
47AEC0:  CMPGE           R0, #1
47AEC2:  BLT             loc_47AEF4
47AEC4:  MOV.W           R0, R8,LSL#4
47AEC8:  MOV             R11, R9
47AECA:  MVNS            R1, R0
47AECC:  ORR.W           R0, R0, #2
47AED0:  ADD             R1, R5
47AED2:  SUBS            R0, R0, R5
47AED4:  CMP.W           R1, #0xFFFFFFFF
47AED8:  IT LT
47AEDA:  MOVLT           R1, #0xFFFFFFFE
47AEDE:  ADDS            R4, R0, R1
47AEE0:  LDR.W           R0, [R11],#4
47AEE4:  MOV             R1, R4
47AEE6:  ADD             R0, R5
47AEE8:  LDRB.W          R2, [R0,#-1]
47AEEC:  BLX             j___aeabi_memset8
47AEF0:  SUBS            R6, #1
47AEF2:  BNE             loc_47AEE0
47AEF4:  LDR             R0, [SP,#0x28+var_20]
47AEF6:  LDR             R0, [R0,#0xC]
47AEF8:  CMP             R0, #1
47AEFA:  BLT             loc_47AF60
47AEFC:  MOV.W           R12, R8,LSL#3
47AF00:  MOV.W           LR, #0
47AF04:  MOV.W           R11, #0
47AF08:  CMP.W           R12, #0
47AF0C:  BEQ             loc_47AF54
47AF0E:  LDR             R0, [SP,#0x28+var_24]
47AF10:  MOVS            R5, #1
47AF12:  LDR.W           R6, [R9,LR,LSL#2]
47AF16:  LDR.W           R3, [R0,R11,LSL#2]
47AF1A:  ORR.W           R0, LR, #1
47AF1E:  LDR.W           R4, [R9,R0,LSL#2]
47AF22:  MOV             R0, R12
47AF24:  LDRB            R1, [R6]
47AF26:  SUBS            R0, #1
47AF28:  LDRB            R2, [R6,#1]
47AF2A:  ADD.W           R6, R6, #2
47AF2E:  ADD             R1, R5
47AF30:  LDRB.W          R8, [R4]
47AF34:  ADD             R1, R2
47AF36:  LDRB.W          R10, [R4,#1]
47AF3A:  ADD             R1, R8
47AF3C:  ADD.W           R4, R4, #2
47AF40:  ADD             R1, R10
47AF42:  EOR.W           R5, R5, #3
47AF46:  MOV.W           R1, R1,LSR#2
47AF4A:  STRB.W          R1, [R3],#1
47AF4E:  BNE             loc_47AF24
47AF50:  LDR             R0, [SP,#0x28+var_20]
47AF52:  LDR             R0, [R0,#0xC]
47AF54:  ADD.W           R11, R11, #1
47AF58:  ADD.W           LR, LR, #2
47AF5C:  CMP             R11, R0
47AF5E:  BLT             loc_47AF08
47AF60:  ADD             SP, SP, #0xC
47AF62:  POP.W           {R8-R11}
47AF66:  POP             {R4-R7,PC}
