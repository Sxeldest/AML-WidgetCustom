; =========================================================
; Game Engine Function: sub_112250
; Address            : 0x112250 - 0x1122F0
; =========================================================

112250:  PUSH            {R4-R7,LR}
112252:  ADD             R7, SP, #0xC
112254:  PUSH.W          {R11}
112258:  SUB             SP, SP, #0x10
11225A:  CMP             R1, R0
11225C:  BEQ             loc_1122E8
11225E:  MOV             R5, R0
112260:  LDR             R0, [R0,#0x10]
112262:  MOV             R4, R1
112264:  CMP             R0, R5
112266:  BEQ             loc_112274
112268:  LDR             R1, [R4,#0x10]
11226A:  CMP             R4, R1
11226C:  BEQ             loc_112290
11226E:  STR             R1, [R5,#0x10]
112270:  STR             R0, [R4,#0x10]
112272:  B               loc_1122E8
112274:  LDR             R1, [R4,#0x10]
112276:  CMP             R1, R4
112278:  BEQ             loc_1122AA
11227A:  LDR             R1, [R0]
11227C:  LDR             R2, [R1,#0xC]
11227E:  MOV             R1, R4
112280:  BLX             R2
112282:  LDR             R0, [R5,#0x10]
112284:  LDR             R1, [R0]
112286:  LDR             R1, [R1,#0x10]
112288:  BLX             R1
11228A:  LDR             R0, [R4,#0x10]
11228C:  STR             R0, [R5,#0x10]
11228E:  B               loc_1122E6
112290:  LDR             R0, [R1]
112292:  LDR             R2, [R0,#0xC]
112294:  MOV             R0, R1
112296:  MOV             R1, R5
112298:  BLX             R2
11229A:  LDR             R0, [R4,#0x10]
11229C:  LDR             R1, [R0]
11229E:  LDR             R1, [R1,#0x10]
1122A0:  BLX             R1
1122A2:  LDR             R0, [R5,#0x10]
1122A4:  STR             R0, [R4,#0x10]
1122A6:  STR             R5, [R5,#0x10]
1122A8:  B               loc_1122E8
1122AA:  LDR             R1, [R0]
1122AC:  LDR             R2, [R1,#0xC]
1122AE:  MOV             R1, SP
1122B0:  BLX             R2
1122B2:  LDR             R0, [R5,#0x10]
1122B4:  LDR             R1, [R0]
1122B6:  LDR             R1, [R1,#0x10]
1122B8:  BLX             R1
1122BA:  MOVS            R6, #0
1122BC:  STR             R6, [R5,#0x10]
1122BE:  LDR             R0, [R4,#0x10]
1122C0:  LDR             R1, [R0]
1122C2:  LDR             R2, [R1,#0xC]
1122C4:  MOV             R1, R5
1122C6:  BLX             R2
1122C8:  LDR             R0, [R4,#0x10]
1122CA:  LDR             R1, [R0]
1122CC:  LDR             R1, [R1,#0x10]
1122CE:  BLX             R1
1122D0:  LDR             R0, [SP,#0x20+var_20]
1122D2:  STR             R6, [R4,#0x10]
1122D4:  STR             R5, [R5,#0x10]
1122D6:  LDR             R2, [R0,#0xC]
1122D8:  MOV             R0, SP
1122DA:  MOV             R1, R4
1122DC:  BLX             R2
1122DE:  LDR             R0, [SP,#0x20+var_20]
1122E0:  LDR             R1, [R0,#0x10]
1122E2:  MOV             R0, SP
1122E4:  BLX             R1
1122E6:  STR             R4, [R4,#0x10]
1122E8:  ADD             SP, SP, #0x10
1122EA:  POP.W           {R11}
1122EE:  POP             {R4-R7,PC}
