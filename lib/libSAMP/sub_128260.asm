; =========================================================
; Game Engine Function: sub_128260
; Address            : 0x128260 - 0x128300
; =========================================================

128260:  PUSH            {R4-R7,LR}
128262:  ADD             R7, SP, #0xC
128264:  PUSH.W          {R11}
128268:  SUB             SP, SP, #0x10
12826A:  CMP             R1, R0
12826C:  BEQ             loc_1282F8
12826E:  MOV             R5, R0
128270:  LDR             R0, [R0,#0x10]
128272:  MOV             R4, R1
128274:  CMP             R0, R5
128276:  BEQ             loc_128284
128278:  LDR             R1, [R4,#0x10]
12827A:  CMP             R4, R1
12827C:  BEQ             loc_1282A0
12827E:  STR             R1, [R5,#0x10]
128280:  STR             R0, [R4,#0x10]
128282:  B               loc_1282F8
128284:  LDR             R1, [R4,#0x10]
128286:  CMP             R1, R4
128288:  BEQ             loc_1282BA
12828A:  LDR             R1, [R0]
12828C:  LDR             R2, [R1,#0xC]
12828E:  MOV             R1, R4
128290:  BLX             R2
128292:  LDR             R0, [R5,#0x10]
128294:  LDR             R1, [R0]
128296:  LDR             R1, [R1,#0x10]
128298:  BLX             R1
12829A:  LDR             R0, [R4,#0x10]
12829C:  STR             R0, [R5,#0x10]
12829E:  B               loc_1282F6
1282A0:  LDR             R0, [R1]
1282A2:  LDR             R2, [R0,#0xC]
1282A4:  MOV             R0, R1
1282A6:  MOV             R1, R5
1282A8:  BLX             R2
1282AA:  LDR             R0, [R4,#0x10]
1282AC:  LDR             R1, [R0]
1282AE:  LDR             R1, [R1,#0x10]
1282B0:  BLX             R1
1282B2:  LDR             R0, [R5,#0x10]
1282B4:  STR             R0, [R4,#0x10]
1282B6:  STR             R5, [R5,#0x10]
1282B8:  B               loc_1282F8
1282BA:  LDR             R1, [R0]
1282BC:  LDR             R2, [R1,#0xC]
1282BE:  MOV             R1, SP
1282C0:  BLX             R2
1282C2:  LDR             R0, [R5,#0x10]
1282C4:  LDR             R1, [R0]
1282C6:  LDR             R1, [R1,#0x10]
1282C8:  BLX             R1
1282CA:  MOVS            R6, #0
1282CC:  STR             R6, [R5,#0x10]
1282CE:  LDR             R0, [R4,#0x10]
1282D0:  LDR             R1, [R0]
1282D2:  LDR             R2, [R1,#0xC]
1282D4:  MOV             R1, R5
1282D6:  BLX             R2
1282D8:  LDR             R0, [R4,#0x10]
1282DA:  LDR             R1, [R0]
1282DC:  LDR             R1, [R1,#0x10]
1282DE:  BLX             R1
1282E0:  LDR             R0, [SP,#0x20+var_20]
1282E2:  STR             R6, [R4,#0x10]
1282E4:  STR             R5, [R5,#0x10]
1282E6:  LDR             R2, [R0,#0xC]
1282E8:  MOV             R0, SP
1282EA:  MOV             R1, R4
1282EC:  BLX             R2
1282EE:  LDR             R0, [SP,#0x20+var_20]
1282F0:  LDR             R1, [R0,#0x10]
1282F2:  MOV             R0, SP
1282F4:  BLX             R1
1282F6:  STR             R4, [R4,#0x10]
1282F8:  ADD             SP, SP, #0x10
1282FA:  POP.W           {R11}
1282FE:  POP             {R4-R7,PC}
