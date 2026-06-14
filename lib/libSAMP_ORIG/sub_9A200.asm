; =========================================================
; Game Engine Function: sub_9A200
; Address            : 0x9A200 - 0x9A3DC
; =========================================================

9A200:  PUSH            {R4-R7,LR}
9A202:  ADD             R7, SP, #0xC
9A204:  PUSH.W          {R8-R11}
9A208:  SUB             SP, SP, #0x14
9A20A:  MOV             R5, R0
9A20C:  LDR             R0, =(dword_1ACF68 - 0x9A214)
9A20E:  MOV             R4, R1
9A210:  ADD             R0, PC; dword_1ACF68
9A212:  STR             R0, [SP,#0x30+var_24]
9A214:  LDR             R1, [R0]
9A216:  STR             R1, [SP,#0x30+var_20]
9A218:  MOV             R0, R1
9A21A:  CBNZ            R4, loc_9A228
9A21C:  MOV             R0, R5; s
9A21E:  BLX             strlen
9A222:  MOV             R4, R0
9A224:  LDR             R0, [SP,#0x30+var_24]
9A226:  LDR             R1, [R0]
9A228:  CMP             R1, #0
9A22A:  ITTT NE
9A22C:  LDRNE.W         R2, [R1,#0x370]
9A230:  ADDNE           R2, #1
9A232:  STRNE.W         R2, [R1,#0x370]
9A236:  LDR             R1, =(dword_1ACF70 - 0x9A240)
9A238:  ADDS            R0, R4, #1
9A23A:  LDR             R2, =(off_117248 - 0x9A244)
9A23C:  ADD             R1, PC; dword_1ACF70
9A23E:  STR             R1, [SP,#0x30+var_28]
9A240:  ADD             R2, PC; off_117248
9A242:  LDR             R1, [R1]
9A244:  LDR             R2, [R2]; sub_9A720
9A246:  BLX             R2; sub_9A720
9A248:  MOV             R1, R5; src
9A24A:  MOV             R2, R4; n
9A24C:  MOV             R6, R0
9A24E:  BLX             j_memcpy
9A252:  MOV.W           R11, #0
9A256:  CMP             R4, #1
9A258:  STRB.W          R11, [R6,R4]
9A25C:  BLT.W           loc_9A3AA
9A260:  ADD.W           R8, R6, R4
9A264:  MOVS            R5, #0
9A266:  SUB.W           R9, R8, #1
9A26A:  MOV             R3, R6
9A26C:  MOVS            R4, #0
9A26E:  STR             R6, [SP,#0x30+var_2C]
9A270:  B               loc_9A284
9A272:  CMP             R4, #0
9A274:  IT NE
9A276:  CMPNE           R5, #0
9A278:  BNE             loc_9A2C6
9A27A:  ADD.W           R3, R10, #1
9A27E:  CMP             R3, R8
9A280:  BCS.W           loc_9A3A6
9A284:  SUB.W           R1, R9, R3
9A288:  NEGS            R0, R3
9A28A:  B               loc_9A292
9A28C:  SUBS            R1, #1
9A28E:  SUBS            R0, #1
9A290:  ADDS            R3, #1
9A292:  LDRB            R2, [R3]
9A294:  CMP             R2, #0xA
9A296:  IT NE
9A298:  CMPNE           R2, #0xD
9A29A:  BEQ             loc_9A28C
9A29C:  CMP             R3, R8
9A29E:  MOV             R10, R3
9A2A0:  BCS             loc_9A2D4
9A2A2:  ADD.W           R6, R3, R8
9A2A6:  MOV             R10, R3
9A2A8:  ADD.W           R12, R6, R0
9A2AC:  UXTB            R2, R2
9A2AE:  CMP             R2, #0xA
9A2B0:  IT NE
9A2B2:  CMPNE           R2, #0xD
9A2B4:  BEQ             loc_9A2D4
9A2B6:  CBZ             R1, loc_9A2D2
9A2B8:  ADD.W           R6, R10, #1
9A2BC:  LDRB.W          R2, [R10,#1]
9A2C0:  SUBS            R1, #1
9A2C2:  MOV             R10, R6
9A2C4:  B               loc_9A2AC
9A2C6:  LDR             R6, [R4,#0xC]
9A2C8:  MOV             R1, R4
9A2CA:  LDR             R0, [SP,#0x30+var_20]
9A2CC:  MOV             R2, R5
9A2CE:  BLX             R6
9A2D0:  B               loc_9A27A
9A2D2:  MOV             R10, R12
9A2D4:  STRB.W          R11, [R10]
9A2D8:  LDRB            R1, [R3]
9A2DA:  CMP             R1, #0x3B ; ';'
9A2DC:  BEQ             loc_9A27A
9A2DE:  CMP             R1, #0x5B ; '['
9A2E0:  BNE             loc_9A272
9A2E2:  CMP             R10, R3
9A2E4:  BLS             loc_9A272
9A2E6:  MOV             R6, R10
9A2E8:  LDRB.W          R1, [R6,#-1]!
9A2EC:  CMP             R1, #0x5D ; ']'
9A2EE:  BNE             loc_9A272
9A2F0:  ADD             R0, R6
9A2F2:  MOVS            R1, #0x5D ; ']'; c
9A2F4:  SUBS            R2, R0, #1; n
9A2F6:  ADDS            R0, R3, #1; s
9A2F8:  STRB.W          R11, [R6]
9A2FC:  MOV             R5, R0
9A2FE:  BLX             memchr
9A302:  CBZ             R0, loc_9A31E
9A304:  MOV             R4, R0
9A306:  ADDS            R0, #1; s
9A308:  SUBS            R2, R6, R0; n
9A30A:  MOVS            R1, #0x5B ; '['; c
9A30C:  BLX             memchr
9A310:  CBZ             R0, loc_9A31E
9A312:  ADD.W           R12, R0, #1
9A316:  MOV             R1, R5
9A318:  STRB.W          R11, [R4]
9A31C:  B               loc_9A324
9A31E:  LDR             R1, =(aWindow - 0x9A326); "Window" ...
9A320:  MOV             R12, R5
9A322:  ADD             R1, PC; "Window"
9A324:  LDR             R0, [SP,#0x30+var_24]
9A326:  LDRB            R3, [R1]; "Window"
9A328:  LDR             R0, [R0]
9A32A:  CBZ             R3, loc_9A368
9A32C:  ADDS            R2, R1, #1
9A32E:  MOV.W           R1, #0xFFFFFFFF
9A332:  B               loc_9A348
9A334:  LDR             R4, =(unk_52D88 - 0x9A340)
9A336:  UXTB            R5, R1
9A338:  EORS            R6, R5
9A33A:  ADDS            R2, #1
9A33C:  ADD             R4, PC; unk_52D88
9A33E:  LDR.W           R6, [R4,R6,LSL#2]
9A342:  EOR.W           R1, R6, R1,LSR#8
9A346:  CBZ             R3, loc_9A364
9A348:  MOV             R6, R3
9A34A:  LDRB            R3, [R2]
9A34C:  CMP             R6, #0x23 ; '#'
9A34E:  IT EQ
9A350:  CMPEQ           R3, #0x23 ; '#'
9A352:  BNE             loc_9A334
9A354:  LDRB            R3, [R2,#1]
9A356:  CMP             R3, #0x23 ; '#'
9A358:  MOV.W           R3, #0x23 ; '#'
9A35C:  IT EQ
9A35E:  MOVEQ.W         R1, #0xFFFFFFFF
9A362:  B               loc_9A334
9A364:  MVNS            R1, R1
9A366:  B               loc_9A36A
9A368:  MOVS            R1, #0
9A36A:  MOVW            R2, #0x2D08
9A36E:  ADD             R2, R0
9A370:  LDR             R0, [R2]
9A372:  CMP             R0, #1
9A374:  BLT             loc_9A390
9A376:  LDR             R6, [R2,#8]
9A378:  LDR             R2, [R6,#4]
9A37A:  CMP             R2, R1
9A37C:  BEQ             loc_9A396
9A37E:  SUBS            R0, #1
9A380:  ADD.W           R6, R6, #0x18
9A384:  MOV.W           R4, #0
9A388:  MOV.W           R5, #0
9A38C:  BNE             loc_9A378
9A38E:  B               loc_9A27A
9A390:  MOVS            R4, #0
9A392:  MOVS            R5, #0
9A394:  B               loc_9A27A
9A396:  LDR             R3, [R6,#8]
9A398:  MOV             R1, R6
9A39A:  LDR             R0, [SP,#0x30+var_20]
9A39C:  MOV             R2, R12
9A39E:  BLX             R3
9A3A0:  MOV             R5, R0
9A3A2:  MOV             R4, R6
9A3A4:  B               loc_9A27A
9A3A6:  LDR             R6, [SP,#0x30+var_2C]
9A3A8:  CBZ             R6, loc_9A3BC
9A3AA:  LDR             R0, [SP,#0x30+var_24]
9A3AC:  LDR             R0, [R0]
9A3AE:  CMP             R0, #0
9A3B0:  ITTT NE
9A3B2:  LDRNE.W         R1, [R0,#0x370]
9A3B6:  SUBNE           R1, #1
9A3B8:  STRNE.W         R1, [R0,#0x370]
9A3BC:  LDR             R0, =(off_11724C - 0x9A3C4)
9A3BE:  LDR             R1, [SP,#0x30+var_28]
9A3C0:  ADD             R0, PC; off_11724C
9A3C2:  LDR             R2, [R0]; j_opus_decoder_destroy_0
9A3C4:  MOV             R0, R6
9A3C6:  LDR             R1, [R1]
9A3C8:  BLX             R2; j_opus_decoder_destroy_0
9A3CA:  LDR             R2, [SP,#0x30+var_20]
9A3CC:  MOVW            R0, #0x2CF4
9A3D0:  MOVS            R1, #1
9A3D2:  STRB            R1, [R2,R0]
9A3D4:  ADD             SP, SP, #0x14
9A3D6:  POP.W           {R8-R11}
9A3DA:  POP             {R4-R7,PC}
