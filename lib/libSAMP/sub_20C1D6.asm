; =========================================================
; Game Engine Function: sub_20C1D6
; Address            : 0x20C1D6 - 0x20C272
; =========================================================

20C1D6:  PUSH            {R4-R7,LR}
20C1D8:  ADD             R7, SP, #0xC
20C1DA:  PUSH.W          {R7-R11}
20C1DE:  MOV             R10, R0
20C1E0:  LDR             R0, [R0]
20C1E2:  MOV             R8, R2
20C1E4:  CMP             R0, R1
20C1E6:  BEQ             loc_20C24E
20C1E8:  LDR             R6, [R0]
20C1EA:  MOV             R5, R3
20C1EC:  LDR             R0, [R3]
20C1EE:  MOV             R9, R1
20C1F0:  MOVS            R1, #0x40 ; '@'
20C1F2:  MOV             R2, R6
20C1F4:  LDR             R3, [R0,#0xC]
20C1F6:  MOV             R0, R5
20C1F8:  BLX             R3
20C1FA:  CBZ             R0, loc_20C254
20C1FC:  LDR             R0, [R5]
20C1FE:  MOV             R1, R6
20C200:  MOVS            R2, #0
20C202:  LDR.W           R11, [R7,#arg_0]
20C206:  LDR             R3, [R0,#0x34]
20C208:  MOV             R0, R5
20C20A:  BLX             R3
20C20C:  LDR.W           R1, [R10]
20C210:  SUB.W           R6, R0, #0x30 ; '0'
20C214:  ADDS            R1, #4
20C216:  STR.W           R1, [R10]
20C21A:  CMP             R1, R9
20C21C:  BEQ             loc_20C26A
20C21E:  CMP.W           R11, #2
20C222:  BLT             loc_20C26A
20C224:  LDR             R0, [R5]
20C226:  LDR             R4, [R1]
20C228:  MOVS            R1, #0x40 ; '@'
20C22A:  LDR             R3, [R0,#0xC]
20C22C:  MOV             R0, R5
20C22E:  MOV             R2, R4
20C230:  BLX             R3
20C232:  CBZ             R0, loc_20C262
20C234:  LDR             R0, [R5]
20C236:  MOV             R1, R4
20C238:  MOVS            R2, #0
20C23A:  LDR             R3, [R0,#0x34]
20C23C:  MOV             R0, R5
20C23E:  BLX             R3
20C240:  ADD.W           R1, R6, R6,LSL#2
20C244:  SUB.W           R11, R11, #1
20C248:  ADD.W           R0, R0, R1,LSL#1
20C24C:  B               loc_20C20C
20C24E:  MOVS            R6, #0
20C250:  MOVS            R0, #6
20C252:  B               loc_20C258
20C254:  MOVS            R6, #0
20C256:  MOVS            R0, #4
20C258:  LDR.W           R1, [R8]
20C25C:  ORRS            R0, R1
20C25E:  STR.W           R0, [R8]
20C262:  MOV             R0, R6
20C264:  POP.W           {R3,R8-R11}
20C268:  POP             {R4-R7,PC}
20C26A:  CMP             R1, R9
20C26C:  BNE             loc_20C262
20C26E:  MOVS            R0, #2
20C270:  B               loc_20C258
