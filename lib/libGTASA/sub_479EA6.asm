; =========================================================
; Game Engine Function: sub_479EA6
; Address            : 0x479EA6 - 0x479EF2
; =========================================================

479EA6:  PUSH            {R4,R5,R7,LR}
479EA8:  ADD             R7, SP, #8
479EAA:  MOV             R4, R0
479EAC:  LDR.W           R0, [R4,#0x15C]
479EB0:  LDR.W           R5, [R4,#0x13C]
479EB4:  LDR             R1, [R0,#8]
479EB6:  MOV             R0, R4
479EB8:  BLX             R1
479EBA:  LDR             R0, [R5,#0x10]
479EBC:  CMP             R0, #2
479EBE:  BEQ             loc_479ED2
479EC0:  CMP             R0, #1
479EC2:  BEQ             loc_479EE6
479EC4:  CBNZ            R0, loc_479EEA
479EC6:  MOVS            R0, #2
479EC8:  STR             R0, [R5,#0x10]
479ECA:  LDRB.W          R0, [R4,#0xB2]
479ECE:  CBNZ            R0, loc_479EEA
479ED0:  B               loc_479EDE
479ED2:  LDRB.W          R0, [R4,#0xB2]
479ED6:  CMP             R0, #0
479ED8:  ITT NE
479EDA:  MOVNE           R0, #1
479EDC:  STRNE           R0, [R5,#0x10]
479EDE:  LDR             R0, [R5,#0x1C]
479EE0:  ADDS            R0, #1
479EE2:  STR             R0, [R5,#0x1C]
479EE4:  B               loc_479EEA
479EE6:  MOVS            R0, #2
479EE8:  STR             R0, [R5,#0x10]
479EEA:  LDR             R0, [R5,#0x14]
479EEC:  ADDS            R0, #1
479EEE:  STR             R0, [R5,#0x14]
479EF0:  POP             {R4,R5,R7,PC}
