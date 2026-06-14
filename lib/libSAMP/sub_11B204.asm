; =========================================================
; Game Engine Function: sub_11B204
; Address            : 0x11B204 - 0x11B24C
; =========================================================

11B204:  PUSH            {R4,R5,R7,LR}
11B206:  ADD             R7, SP, #8
11B208:  MOV             R4, R0
11B20A:  LDR             R0, [R0,#0x10]
11B20C:  MOV             R5, R1
11B20E:  MOVS            R1, #0
11B210:  CMP             R4, R0
11B212:  STR             R1, [R4,#0x10]
11B214:  BEQ             loc_11B21C
11B216:  CBZ             R0, loc_11B226
11B218:  MOVS            R1, #5
11B21A:  B               loc_11B21E
11B21C:  MOVS            R1, #4
11B21E:  LDR             R2, [R0]
11B220:  LDR.W           R1, [R2,R1,LSL#2]
11B224:  BLX             R1
11B226:  LDR             R0, [R5,#0x10]
11B228:  CBZ             R0, loc_11B236
11B22A:  CMP             R5, R0
11B22C:  BEQ             loc_11B23C
11B22E:  STR             R0, [R4,#0x10]
11B230:  MOVS            R0, #0
11B232:  STR             R0, [R5,#0x10]
11B234:  B               loc_11B248
11B236:  MOVS            R0, #0
11B238:  STR             R0, [R4,#0x10]
11B23A:  B               loc_11B248
11B23C:  STR             R4, [R4,#0x10]
11B23E:  LDR             R0, [R5,#0x10]
11B240:  LDR             R1, [R0]
11B242:  LDR             R2, [R1,#0xC]
11B244:  MOV             R1, R4
11B246:  BLX             R2
11B248:  MOV             R0, R4
11B24A:  POP             {R4,R5,R7,PC}
