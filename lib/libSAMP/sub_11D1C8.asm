; =========================================================
; Game Engine Function: sub_11D1C8
; Address            : 0x11D1C8 - 0x11D268
; =========================================================

11D1C8:  PUSH            {R4-R7,LR}
11D1CA:  ADD             R7, SP, #0xC
11D1CC:  PUSH.W          {R11}
11D1D0:  SUB             SP, SP, #0x10
11D1D2:  CMP             R1, R0
11D1D4:  BEQ             loc_11D260
11D1D6:  MOV             R5, R0
11D1D8:  LDR             R0, [R0,#0x10]
11D1DA:  MOV             R4, R1
11D1DC:  CMP             R0, R5
11D1DE:  BEQ             loc_11D1EC
11D1E0:  LDR             R1, [R4,#0x10]
11D1E2:  CMP             R4, R1
11D1E4:  BEQ             loc_11D208
11D1E6:  STR             R1, [R5,#0x10]
11D1E8:  STR             R0, [R4,#0x10]
11D1EA:  B               loc_11D260
11D1EC:  LDR             R1, [R4,#0x10]
11D1EE:  CMP             R1, R4
11D1F0:  BEQ             loc_11D222
11D1F2:  LDR             R1, [R0]
11D1F4:  LDR             R2, [R1,#0xC]
11D1F6:  MOV             R1, R4
11D1F8:  BLX             R2
11D1FA:  LDR             R0, [R5,#0x10]
11D1FC:  LDR             R1, [R0]
11D1FE:  LDR             R1, [R1,#0x10]
11D200:  BLX             R1
11D202:  LDR             R0, [R4,#0x10]
11D204:  STR             R0, [R5,#0x10]
11D206:  B               loc_11D25E
11D208:  LDR             R0, [R1]
11D20A:  LDR             R2, [R0,#0xC]
11D20C:  MOV             R0, R1
11D20E:  MOV             R1, R5
11D210:  BLX             R2
11D212:  LDR             R0, [R4,#0x10]
11D214:  LDR             R1, [R0]
11D216:  LDR             R1, [R1,#0x10]
11D218:  BLX             R1
11D21A:  LDR             R0, [R5,#0x10]
11D21C:  STR             R0, [R4,#0x10]
11D21E:  STR             R5, [R5,#0x10]
11D220:  B               loc_11D260
11D222:  LDR             R1, [R0]
11D224:  LDR             R2, [R1,#0xC]
11D226:  MOV             R1, SP
11D228:  BLX             R2
11D22A:  LDR             R0, [R5,#0x10]
11D22C:  LDR             R1, [R0]
11D22E:  LDR             R1, [R1,#0x10]
11D230:  BLX             R1
11D232:  MOVS            R6, #0
11D234:  STR             R6, [R5,#0x10]
11D236:  LDR             R0, [R4,#0x10]
11D238:  LDR             R1, [R0]
11D23A:  LDR             R2, [R1,#0xC]
11D23C:  MOV             R1, R5
11D23E:  BLX             R2
11D240:  LDR             R0, [R4,#0x10]
11D242:  LDR             R1, [R0]
11D244:  LDR             R1, [R1,#0x10]
11D246:  BLX             R1
11D248:  LDR             R0, [SP,#0x20+var_20]
11D24A:  STR             R6, [R4,#0x10]
11D24C:  STR             R5, [R5,#0x10]
11D24E:  LDR             R2, [R0,#0xC]
11D250:  MOV             R0, SP
11D252:  MOV             R1, R4
11D254:  BLX             R2
11D256:  LDR             R0, [SP,#0x20+var_20]
11D258:  LDR             R1, [R0,#0x10]
11D25A:  MOV             R0, SP
11D25C:  BLX             R1
11D25E:  STR             R4, [R4,#0x10]
11D260:  ADD             SP, SP, #0x10
11D262:  POP.W           {R11}
11D266:  POP             {R4-R7,PC}
