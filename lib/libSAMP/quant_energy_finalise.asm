; =========================================================
; Game Engine Function: quant_energy_finalise
; Address            : 0x19A278 - 0x19A3C6
; =========================================================

19A278:  PUSH            {R4-R7,LR}
19A27A:  ADD             R7, SP, #0xC
19A27C:  PUSH.W          {R8-R11}
19A280:  SUB             SP, SP, #0xC
19A282:  MOV             R11, R1
19A284:  MOV             R10, R3
19A286:  MOV             R4, R2
19A288:  CMP             R11, R2
19A28A:  BGE.W           loc_19A3BE
19A28E:  LDRD.W          R2, R1, [R7,#arg_10]
19A292:  LDRD.W          R5, R3, [R7,#arg_8]
19A296:  CMP             R3, R1
19A298:  LDRD.W          R9, R12, [R7,#arg_0]
19A29C:  STRD.W          R4, R0, [SP,#0x28+var_24]
19A2A0:  BLT             loc_19A332
19A2A2:  MOV.W           LR, #1
19A2A6:  MOV             R6, R11
19A2A8:  MOV             R8, R4
19A2AA:  LDR.W           R4, [R12,R6,LSL#2]
19A2AE:  CMP             R4, #7
19A2B0:  BGT             loc_19A328
19A2B2:  LDR.W           R4, [R5,R6,LSL#2]
19A2B6:  CBNZ            R4, loc_19A328
19A2B8:  STR             R3, [SP,#0x28+var_28]
19A2BA:  MOV.W           R8, #0
19A2BE:  LDR             R4, [R0,#8]
19A2C0:  MLA.W           R0, R4, R8, R6
19A2C4:  LDRH.W          R0, [R9,R0,LSL#1]
19A2C8:  EOR.W           R5, LR, R0,LSR#15
19A2CC:  MOV             R0, R2
19A2CE:  MOVS            R2, #1
19A2D0:  MOV             R1, R5
19A2D2:  BLX             j_ec_enc_bits
19A2D6:  LDR             R4, [R7,#arg_4]
19A2D8:  MOVW            R3, #0xFE00
19A2DC:  LDR             R0, [SP,#0x28+var_20]
19A2DE:  MOVT            R3, #0xFFFF
19A2E2:  ADD.W           R3, R3, R5,LSL#10
19A2E6:  MOV.W           LR, #1
19A2EA:  MOV             R12, R4
19A2EC:  LDR             R4, [R0,#8]
19A2EE:  LDR.W           R2, [R12,R6,LSL#2]
19A2F2:  MLA.W           R1, R4, R8, R6
19A2F6:  ADDS            R2, #1
19A2F8:  ADD.W           R8, R8, #1
19A2FC:  ASR.W           R2, R3, R2
19A300:  LDRH.W          R5, [R10,R1,LSL#1]
19A304:  ADDS            R3, R2, R5
19A306:  STRH.W          R3, [R10,R1,LSL#1]
19A30A:  LDRH.W          R3, [R9,R1,LSL#1]
19A30E:  SUBS            R2, R3, R2
19A310:  STRH.W          R2, [R9,R1,LSL#1]
19A314:  LDRD.W          R2, R1, [R7,#arg_10]
19A318:  CMP             R8, R1
19A31A:  BLT             loc_19A2C0
19A31C:  LDR             R3, [SP,#0x28+var_28]
19A31E:  LDR             R5, [R7,#arg_8]
19A320:  SUB.W           R3, R3, R8
19A324:  LDR.W           R8, [SP,#0x28+var_24]
19A328:  ADDS            R6, #1
19A32A:  CMP             R6, R8
19A32C:  BGE             loc_19A332
19A32E:  CMP             R3, R1
19A330:  BGE             loc_19A2AA
19A332:  CMP             R3, R1
19A334:  BLT             loc_19A3BE
19A336:  MOVW            R8, #0xFE00
19A33A:  MOV.W           LR, #1
19A33E:  MOVT            R8, #0xFFFF
19A342:  LDR.W           R6, [R12,R11,LSL#2]
19A346:  CMP             R6, #7
19A348:  BGT             loc_19A3B0
19A34A:  LDR.W           R6, [R5,R11,LSL#2]
19A34E:  CMP             R6, #1
19A350:  BNE             loc_19A3B0
19A352:  STR             R3, [SP,#0x28+var_28]
19A354:  MOVS            R6, #0
19A356:  LDR             R4, [R0,#8]
19A358:  MLA.W           R0, R4, R6, R11
19A35C:  LDRH.W          R0, [R9,R0,LSL#1]
19A360:  EOR.W           R5, LR, R0,LSR#15
19A364:  MOV             R0, R2
19A366:  MOVS            R2, #1
19A368:  MOV             R1, R5
19A36A:  BLX             j_ec_enc_bits
19A36E:  LDR             R4, [R7,#arg_4]
19A370:  ADD.W           R3, R8, R5,LSL#10
19A374:  LDR             R0, [SP,#0x28+var_20]
19A376:  MOV.W           LR, #1
19A37A:  MOV             R12, R4
19A37C:  LDR             R4, [R0,#8]
19A37E:  LDR.W           R2, [R12,R11,LSL#2]
19A382:  MLA.W           R1, R4, R6, R11
19A386:  ADDS            R2, #1
19A388:  ADDS            R6, #1
19A38A:  ASR.W           R2, R3, R2
19A38E:  LDRH.W          R5, [R10,R1,LSL#1]
19A392:  ADDS            R3, R2, R5
19A394:  STRH.W          R3, [R10,R1,LSL#1]
19A398:  LDRH.W          R3, [R9,R1,LSL#1]
19A39C:  SUBS            R2, R3, R2
19A39E:  STRH.W          R2, [R9,R1,LSL#1]
19A3A2:  LDRD.W          R2, R1, [R7,#arg_10]
19A3A6:  CMP             R6, R1
19A3A8:  BLT             loc_19A358
19A3AA:  LDR             R3, [SP,#0x28+var_28]
19A3AC:  LDR             R5, [R7,#arg_8]
19A3AE:  SUBS            R3, R3, R6
19A3B0:  LDR             R4, [SP,#0x28+var_24]
19A3B2:  ADD.W           R11, R11, #1
19A3B6:  CMP             R11, R4
19A3B8:  BGE             loc_19A3BE
19A3BA:  CMP             R3, R1
19A3BC:  BGE             loc_19A342
19A3BE:  ADD             SP, SP, #0xC
19A3C0:  POP.W           {R8-R11}
19A3C4:  POP             {R4-R7,PC}
