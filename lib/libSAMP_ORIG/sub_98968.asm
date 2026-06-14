; =========================================================
; Game Engine Function: sub_98968
; Address            : 0x98968 - 0x989E4
; =========================================================

98968:  PUSH            {R4,R5,R7,LR}
9896A:  ADD             R7, SP, #8
9896C:  LDR             R0, =(dword_1ACF68 - 0x98976)
9896E:  MOVW            R1, #0x1AA8
98972:  ADD             R0, PC; dword_1ACF68
98974:  LDR             R0, [R0]
98976:  LDR             R1, [R0,R1]
98978:  CMP             R1, #1
9897A:  BLT             locret_989E2
9897C:  MOVW            R2, #0x1A9C
98980:  ADDS            R4, R0, R2
98982:  LDR             R0, [R4]
98984:  CMP             R1, R0
98986:  BGT             locret_989E2
98988:  SUBS            R0, R1, #1
9898A:  LDR.W           R12, [R4,#8]
9898E:  LDR             R5, [R4,#0x14]
98990:  ADD.W           R3, R0, R0,LSL#3
98994:  LDR.W           R2, [R12,R3,LSL#2]
98998:  LDR.W           R5, [R5,R3,LSL#2]
9899C:  CMP             R5, R2
9899E:  IT NE
989A0:  POPNE           {R4,R5,R7,PC}
989A2:  CMP             R1, #2
989A4:  BCC             loc_989CE
989A6:  ADD.W           R1, R12, R3,LSL#2
989AA:  LDR             R2, [R1,#4]
989AC:  SUBS            R1, #0x20 ; ' '
989AE:  B               loc_989B8
989B0:  SUBS            R0, #1
989B2:  SUB.W           R1, R1, #0x24 ; '$'
989B6:  BEQ             loc_989CE
989B8:  CBZ             R2, loc_989D0
989BA:  LDRB            R2, [R2,#0xB]
989BC:  LSLS            R2, R2, #0x1B
989BE:  BPL             loc_989D0
989C0:  LDR             R2, [R1]
989C2:  CMP             R2, #0
989C4:  BEQ             loc_989B0
989C6:  LDRB            R3, [R2,#0xB]
989C8:  LSLS            R3, R3, #0x1C
989CA:  BPL             loc_989B0
989CC:  B               loc_989D0
989CE:  MOVS            R0, #0
989D0:  MOVS            R1, #1
989D2:  MOVS            R5, #1
989D4:  BL              sub_98854
989D8:  LDR             R0, [R4,#0x18]
989DA:  CMP             R0, #0
989DC:  IT NE
989DE:  STRBNE.W        R5, [R0,#0x140]
989E2:  POP             {R4,R5,R7,PC}
