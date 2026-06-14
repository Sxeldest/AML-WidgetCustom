; =========================================================
; Game Engine Function: sub_F42E6
; Address            : 0xF42E6 - 0xF4382
; =========================================================

F42E6:  PUSH            {R4-R7,LR}
F42E8:  ADD             R7, SP, #0xC
F42EA:  PUSH.W          {R7-R11}
F42EE:  MOV             R10, R0
F42F0:  LDR             R0, [R0]
F42F2:  MOV             R8, R2
F42F4:  CMP             R0, R1
F42F6:  BEQ             loc_F435E
F42F8:  LDR             R6, [R0]
F42FA:  MOV             R5, R3
F42FC:  LDR             R0, [R3]
F42FE:  MOV             R9, R1
F4300:  MOVS            R1, #0x40 ; '@'
F4302:  MOV             R2, R6
F4304:  LDR             R3, [R0,#0xC]
F4306:  MOV             R0, R5
F4308:  BLX             R3
F430A:  CBZ             R0, loc_F4364
F430C:  LDR             R0, [R5]
F430E:  MOV             R1, R6
F4310:  MOVS            R2, #0
F4312:  LDR.W           R11, [R7,#arg_0]
F4316:  LDR             R3, [R0,#0x34]
F4318:  MOV             R0, R5
F431A:  BLX             R3
F431C:  LDR.W           R1, [R10]
F4320:  SUB.W           R6, R0, #0x30 ; '0'
F4324:  ADDS            R1, #4
F4326:  STR.W           R1, [R10]
F432A:  CMP             R1, R9
F432C:  BEQ             loc_F437A
F432E:  CMP.W           R11, #2
F4332:  BLT             loc_F437A
F4334:  LDR             R0, [R5]
F4336:  LDR             R4, [R1]
F4338:  MOVS            R1, #0x40 ; '@'
F433A:  LDR             R3, [R0,#0xC]
F433C:  MOV             R0, R5
F433E:  MOV             R2, R4
F4340:  BLX             R3
F4342:  CBZ             R0, loc_F4372
F4344:  LDR             R0, [R5]
F4346:  MOV             R1, R4
F4348:  MOVS            R2, #0
F434A:  LDR             R3, [R0,#0x34]
F434C:  MOV             R0, R5
F434E:  BLX             R3
F4350:  ADD.W           R1, R6, R6,LSL#2
F4354:  SUB.W           R11, R11, #1
F4358:  ADD.W           R0, R0, R1,LSL#1
F435C:  B               loc_F431C
F435E:  MOVS            R6, #0
F4360:  MOVS            R0, #6
F4362:  B               loc_F4368
F4364:  MOVS            R6, #0
F4366:  MOVS            R0, #4
F4368:  LDR.W           R1, [R8]
F436C:  ORRS            R0, R1
F436E:  STR.W           R0, [R8]
F4372:  MOV             R0, R6
F4374:  POP.W           {R3,R8-R11}
F4378:  POP             {R4-R7,PC}
F437A:  CMP             R1, R9
F437C:  BNE             loc_F4372
F437E:  MOVS            R0, #2
F4380:  B               loc_F4368
