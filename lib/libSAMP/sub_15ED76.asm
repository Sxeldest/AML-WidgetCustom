; =========================================================
; Game Engine Function: sub_15ED76
; Address            : 0x15ED76 - 0x15EE48
; =========================================================

15ED76:  PUSH            {R4-R7,LR}
15ED78:  ADD             R7, SP, #0xC
15ED7A:  PUSH.W          {R8-R11}
15ED7E:  SUB             SP, SP, #4
15ED80:  LDR             R4, [R0,#4]
15ED82:  CMP             R4, #0
15ED84:  BEQ             loc_15EE3C
15ED86:  LDR.W           R9, [R1]
15ED8A:  MOV             R6, R0
15ED8C:  MOVW            R0, #0xE995
15ED90:  MOVW            R2, #0xA654
15ED94:  MOVT            R0, #0x5BD1
15ED98:  MOVT            R2, #0x6F47
15ED9C:  MUL.W           R1, R9, R0
15EDA0:  EOR.W           R1, R1, R1,LSR#24
15EDA4:  MULS            R1, R0
15EDA6:  EORS            R1, R2
15EDA8:  EOR.W           R1, R1, R1,LSR#13
15EDAC:  MULS            R0, R1
15EDAE:  MOV.W           R1, #0x33333333
15EDB2:  EOR.W           R5, R0, R0,LSR#15
15EDB6:  MOV.W           R0, #0x55555555
15EDBA:  AND.W           R0, R0, R4,LSR#1
15EDBE:  SUBS            R0, R4, R0
15EDC0:  AND.W           R1, R1, R0,LSR#2
15EDC4:  BIC.W           R0, R0, #0xCCCCCCCC
15EDC8:  ADD             R0, R1
15EDCA:  MOV.W           R1, #0x1010101
15EDCE:  ADD.W           R0, R0, R0,LSR#4
15EDD2:  BIC.W           R0, R0, #0xF0F0F0F0
15EDD6:  MULS            R0, R1
15EDD8:  MOV.W           R10, R0,LSR#24
15EDDC:  CMP.W           R10, #1
15EDE0:  BHI             loc_15EDEA
15EDE2:  SUBS            R0, R4, #1
15EDE4:  AND.W           R8, R5, R0
15EDE8:  B               loc_15EDFC
15EDEA:  CMP             R5, R4
15EDEC:  BCS             loc_15EDF2
15EDEE:  MOV             R8, R5
15EDF0:  B               loc_15EDFC
15EDF2:  MOV             R0, R5
15EDF4:  MOV             R1, R4
15EDF6:  BLX             sub_221798
15EDFA:  MOV             R8, R1
15EDFC:  LDR             R0, [R6]
15EDFE:  LDR.W           R0, [R0,R8,LSL#2]
15EE02:  CBZ             R0, loc_15EE3C
15EE04:  LDR             R6, [R0]
15EE06:  CBZ             R6, loc_15EE3C
15EE08:  SUB.W           R11, R4, #1
15EE0C:  LDR             R0, [R6,#4]
15EE0E:  CMP             R0, R5
15EE10:  BNE             loc_15EE1A
15EE12:  LDR             R0, [R6,#8]
15EE14:  CMP             R0, R9
15EE16:  BNE             loc_15EE36
15EE18:  B               loc_15EE3E
15EE1A:  CMP.W           R10, #1
15EE1E:  BHI             loc_15EE26
15EE20:  AND.W           R0, R0, R11
15EE24:  B               loc_15EE32
15EE26:  CMP             R0, R4
15EE28:  BCC             loc_15EE32
15EE2A:  MOV             R1, R4
15EE2C:  BLX             sub_221798
15EE30:  MOV             R0, R1
15EE32:  CMP             R0, R8
15EE34:  BNE             loc_15EE3C
15EE36:  LDR             R6, [R6]
15EE38:  CMP             R6, #0
15EE3A:  BNE             loc_15EE0C
15EE3C:  MOVS            R6, #0
15EE3E:  MOV             R0, R6
15EE40:  ADD             SP, SP, #4
15EE42:  POP.W           {R8-R11}
15EE46:  POP             {R4-R7,PC}
