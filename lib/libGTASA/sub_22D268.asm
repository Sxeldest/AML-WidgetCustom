; =========================================================
; Game Engine Function: sub_22D268
; Address            : 0x22D268 - 0x22D3A8
; =========================================================

22D268:  PUSH            {R4-R7,LR}
22D26A:  ADD             R7, SP, #0xC
22D26C:  PUSH.W          {R8-R11}
22D270:  SUB             SP, SP, #0x14
22D272:  MOV             R4, R1
22D274:  LDRD.W          R1, R6, [R2,#0xC]
22D278:  LDR.W           LR, =(unk_6D5558 - 0x22D28A)
22D27C:  MOV             R5, #0xFFFFFFFC
22D280:  LDR.W           R12, =(unk_6D5958 - 0x22D290)
22D284:  CMP             R3, #0
22D286:  ADD             LR, PC; unk_6D5558
22D288:  AND.W           R5, R5, R1,LSL#1
22D28C:  ADD             R12, PC; unk_6D5958
22D28E:  ADD             R5, LR
22D290:  IT EQ
22D292:  ADDEQ.W         R5, R12, R1,LSL#2
22D296:  CMP             R6, #2
22D298:  LDR.W           R12, [R5]
22D29C:  UBFX.W          R1, R12, #0xF, #1
22D2A0:  STR             R1, [R2,#0x40]
22D2A2:  BNE             loc_22D2B0
22D2A4:  LDR             R1, [R2,#0x14]
22D2A6:  MOVS            R3, #2
22D2A8:  CMP             R1, #0
22D2AA:  IT EQ
22D2AC:  MOVEQ           R3, #1
22D2AE:  B               loc_22D2B2
22D2B0:  MOVS            R3, #0
22D2B2:  MOVW            R1, #0x9338
22D2B6:  ADD.W           R11, R0, R1
22D2BA:  MOVW            R1, #0x9330
22D2BE:  ADD.W           R10, R0, R1
22D2C2:  MOVW            R1, #0x9334
22D2C6:  ADD.W           R8, R0, R1
22D2CA:  UBFX.W          R0, R12, #0xC, #3
22D2CE:  STR             R0, [SP,#0x30+var_24]
22D2D0:  MOVS            R0, #0
22D2D2:  MOV.W           LR, #0
22D2D6:  STR             R0, [SP,#0x30+var_20]
22D2D8:  STR             R3, [SP,#0x30+var_28]
22D2DA:  LDR             R2, =(unk_5F26D0 - 0x22D2E6)
22D2DC:  ADD.W           R1, R3, R3,LSL#1
22D2E0:  MOV             R0, R12
22D2E2:  ADD             R2, PC; unk_5F26D0
22D2E4:  MOV.W           R12, R0,LSR#3
22D2E8:  ADD.W           R1, R2, R1,LSL#3
22D2EC:  LDR             R2, [SP,#0x30+var_24]
22D2EE:  ANDS.W          R0, R0, #7
22D2F2:  ADD.W           R1, R1, R2,LSL#2
22D2F6:  LDRB.W          R9, [R1,LR]
22D2FA:  BEQ             loc_22D356
22D2FC:  CMP.W           R9, #0
22D300:  BEQ             loc_22D34A
22D302:  MOVS            R1, #0
22D304:  LDR.W           R2, [R8]
22D308:  ADDS            R1, #1
22D30A:  LDR.W           R3, [R10]
22D30E:  CMP             R1, R9
22D310:  LDRB            R6, [R2]
22D312:  LSL.W           R6, R6, R3
22D316:  UXTB            R6, R6
22D318:  STR.W           R6, [R11]
22D31C:  LDRB            R5, [R2,#1]
22D31E:  LSL.W           R5, R5, R3
22D322:  ADD             R3, R0
22D324:  ORR.W           R6, R6, R5,LSR#8
22D328:  ADD.W           R2, R2, R3,ASR#3
22D32C:  LSL.W           R6, R6, R0
22D330:  MOV.W           R6, R6,LSR#8
22D334:  STR.W           R6, [R11]
22D338:  STR.W           R2, [R8]
22D33C:  AND.W           R2, R3, #7
22D340:  STR.W           R2, [R10]
22D344:  STR.W           R6, [R4],#4
22D348:  BLT             loc_22D304
22D34A:  LDR             R1, [SP,#0x30+var_20]
22D34C:  LDR             R3, [SP,#0x30+var_28]
22D34E:  SMLABB.W        R1, R0, R9, R1
22D352:  STR             R1, [SP,#0x30+var_20]
22D354:  B               loc_22D388
22D356:  CMP.W           R9, #0
22D35A:  BEQ             loc_22D388
22D35C:  CMP.W           R9, #1
22D360:  MOV             R0, R9
22D362:  STR.W           LR, [SP,#0x30+var_2C]
22D366:  IT LS
22D368:  MOVLS           R0, #1
22D36A:  LSLS            R1, R0, #2
22D36C:  MOV             R0, R4
22D36E:  MOV             R6, R3
22D370:  MOV             R5, R12
22D372:  BLX             j___aeabi_memclr8_0
22D376:  MOVS            R0, #0
22D378:  ADDS            R0, #1
22D37A:  ADDS            R4, #4
22D37C:  CMP             R0, R9
22D37E:  BLT             loc_22D378
22D380:  LDR.W           LR, [SP,#0x30+var_2C]
22D384:  MOV             R12, R5
22D386:  MOV             R3, R6
22D388:  ADD.W           LR, LR, #1
22D38C:  CMP.W           LR, #4
22D390:  BNE             loc_22D2DA
22D392:  MOVS            R0, #4
22D394:  ORR.W           R1, R0, R3,LSL#3
22D398:  MOV             R0, R4
22D39A:  BLX             j___aeabi_memclr8_0
22D39E:  LDR             R0, [SP,#0x30+var_20]
22D3A0:  ADD             SP, SP, #0x14
22D3A2:  POP.W           {R8-R11}
22D3A6:  POP             {R4-R7,PC}
