; =========================================================
; Game Engine Function: sub_65E7C
; Address            : 0x65E7C - 0x65EF4
; =========================================================

65E7C:  PUSH            {R4-R7,LR}
65E7E:  ADD             R7, SP, #0xC
65E80:  PUSH.W          {R11}
65E84:  LDR             R1, =(off_1A3AA0 - 0x65E8A)
65E86:  ADD             R1, PC; off_1A3AA0
65E88:  LDR             R1, [R1]
65E8A:  BLX             R1
65E8C:  LDR             R0, =(off_114AD8 - 0x65E92)
65E8E:  ADD             R0, PC; off_114AD8
65E90:  LDR             R0, [R0]; dword_1A4434
65E92:  LDR             R0, [R0]
65E94:  LDR.W           R0, [R0,#0x3B0]
65E98:  LDR             R4, [R0]
65E9A:  CBZ             R4, loc_65EEE
65E9C:  ADD.W           R1, R4, #0x13A0
65EA0:  LDR             R0, [R1,#0x1C]
65EA2:  CMP             R0, #0
65EA4:  ITTTT NE
65EA6:  LDRNE           R0, [R0,#0x1C]
65EA8:  CMPNE           R0, #0
65EAA:  LDRHNE          R1, [R1]
65EAC:  BLNE            sub_671A4
65EB0:  MOVW            R6, #0xF050
65EB4:  ADDW            R4, R4, #0xFB4
65EB8:  MOVS            R5, #0
65EBA:  MOVT            R6, #0xFFFF
65EBE:  B               loc_65EC8
65EC0:  ADDS            R5, #1
65EC2:  CMP.W           R5, #0x3EC
65EC6:  BEQ             loc_65EEE
65EC8:  ADD.W           R0, R4, R5,LSL#2
65ECC:  LDR             R0, [R0,R6]
65ECE:  CMP             R0, #0
65ED0:  BEQ             loc_65EC0
65ED2:  LDRB            R1, [R4,R5]
65ED4:  CMP             R1, #0
65ED6:  ITT NE
65ED8:  LDRNE           R0, [R0]
65EDA:  CMPNE           R0, #0
65EDC:  BEQ             loc_65EC0
65EDE:  LDR.W           R0, [R0,#0x128]
65EE2:  CMP             R0, #0
65EE4:  ITT NE
65EE6:  UXTHNE          R1, R5
65EE8:  BLNE            sub_671A4
65EEC:  B               loc_65EC0
65EEE:  POP.W           {R11}
65EF2:  POP             {R4-R7,PC}
