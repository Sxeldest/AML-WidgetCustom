; =========================================================
; Game Engine Function: sub_2232F4
; Address            : 0x2232F4 - 0x223388
; =========================================================

2232F4:  PUSH            {R4-R6,R10,R11,LR}
2232F8:  ADD             R11, SP, #0x10
2232FC:  SUB             SP, SP, #8
223300:  MOV             R5, R0
223304:  LDRB            R0, [R0,#0x180]
223308:  MOV             R4, #0
22330C:  CMP             R0, #0
223310:  BEQ             loc_223320
223314:  MOV             R0, R4
223318:  SUB             SP, R11, #0x10
22331C:  POP             {R4-R6,R10,R11,PC}
223320:  LDR             R0, [R5,#0x178]
223324:  ADD             R2, SP, #0x18+var_14
223328:  MOV             R4, #0
22332C:  MOV             R1, SP
223330:  STR             R4, [SP,#0x18+var_14]
223334:  STR             R4, [SP,#0x18+var_18]
223338:  BL              sub_2217D8
22333C:  MOV             R1, R0
223340:  LDMFD           SP, {R2,R3}
223344:  MOV             R0, R5
223348:  BL              sub_221858
22334C:  SUBS            R6, R0, #8
223350:  BNE             loc_223374
223354:  LDR             R0, [R5]
223358:  MOV             R1, #1
22335C:  LDR             R2, [R0,#0x34]
223360:  MOV             R0, R5
223364:  BLX             R2
223368:  LDRB            R0, [R5,#0x180]
22336C:  CMP             R0, #0
223370:  BNE             loc_223314
223374:  CLZ             R0, R6
223378:  MOV             R4, R0,LSR#5
22337C:  MOV             R0, R4
223380:  SUB             SP, R11, #0x10
223384:  POP             {R4-R6,R10,R11,PC}
