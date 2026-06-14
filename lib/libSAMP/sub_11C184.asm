; =========================================================
; Game Engine Function: sub_11C184
; Address            : 0x11C184 - 0x11C224
; =========================================================

11C184:  PUSH            {R4-R7,LR}
11C186:  ADD             R7, SP, #0xC
11C188:  PUSH.W          {R11}
11C18C:  SUB             SP, SP, #0x10
11C18E:  CMP             R1, R0
11C190:  BEQ             loc_11C21C
11C192:  MOV             R5, R0
11C194:  LDR             R0, [R0,#0x10]
11C196:  MOV             R4, R1
11C198:  CMP             R0, R5
11C19A:  BEQ             loc_11C1A8
11C19C:  LDR             R1, [R4,#0x10]
11C19E:  CMP             R4, R1
11C1A0:  BEQ             loc_11C1C4
11C1A2:  STR             R1, [R5,#0x10]
11C1A4:  STR             R0, [R4,#0x10]
11C1A6:  B               loc_11C21C
11C1A8:  LDR             R1, [R4,#0x10]
11C1AA:  CMP             R1, R4
11C1AC:  BEQ             loc_11C1DE
11C1AE:  LDR             R1, [R0]
11C1B0:  LDR             R2, [R1,#0xC]
11C1B2:  MOV             R1, R4
11C1B4:  BLX             R2
11C1B6:  LDR             R0, [R5,#0x10]
11C1B8:  LDR             R1, [R0]
11C1BA:  LDR             R1, [R1,#0x10]
11C1BC:  BLX             R1
11C1BE:  LDR             R0, [R4,#0x10]
11C1C0:  STR             R0, [R5,#0x10]
11C1C2:  B               loc_11C21A
11C1C4:  LDR             R0, [R1]
11C1C6:  LDR             R2, [R0,#0xC]
11C1C8:  MOV             R0, R1
11C1CA:  MOV             R1, R5
11C1CC:  BLX             R2
11C1CE:  LDR             R0, [R4,#0x10]
11C1D0:  LDR             R1, [R0]
11C1D2:  LDR             R1, [R1,#0x10]
11C1D4:  BLX             R1
11C1D6:  LDR             R0, [R5,#0x10]
11C1D8:  STR             R0, [R4,#0x10]
11C1DA:  STR             R5, [R5,#0x10]
11C1DC:  B               loc_11C21C
11C1DE:  LDR             R1, [R0]
11C1E0:  LDR             R2, [R1,#0xC]
11C1E2:  MOV             R1, SP
11C1E4:  BLX             R2
11C1E6:  LDR             R0, [R5,#0x10]
11C1E8:  LDR             R1, [R0]
11C1EA:  LDR             R1, [R1,#0x10]
11C1EC:  BLX             R1
11C1EE:  MOVS            R6, #0
11C1F0:  STR             R6, [R5,#0x10]
11C1F2:  LDR             R0, [R4,#0x10]
11C1F4:  LDR             R1, [R0]
11C1F6:  LDR             R2, [R1,#0xC]
11C1F8:  MOV             R1, R5
11C1FA:  BLX             R2
11C1FC:  LDR             R0, [R4,#0x10]
11C1FE:  LDR             R1, [R0]
11C200:  LDR             R1, [R1,#0x10]
11C202:  BLX             R1
11C204:  LDR             R0, [SP,#0x20+var_20]
11C206:  STR             R6, [R4,#0x10]
11C208:  STR             R5, [R5,#0x10]
11C20A:  LDR             R2, [R0,#0xC]
11C20C:  MOV             R0, SP
11C20E:  MOV             R1, R4
11C210:  BLX             R2
11C212:  LDR             R0, [SP,#0x20+var_20]
11C214:  LDR             R1, [R0,#0x10]
11C216:  MOV             R0, SP
11C218:  BLX             R1
11C21A:  STR             R4, [R4,#0x10]
11C21C:  ADD             SP, SP, #0x10
11C21E:  POP.W           {R11}
11C222:  POP             {R4-R7,PC}
