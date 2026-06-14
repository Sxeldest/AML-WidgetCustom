; =========================================================
; Game Engine Function: spreading_decision
; Address            : 0xBE252 - 0xBE41A
; =========================================================

BE252:  PUSH            {R4-R7,LR}
BE254:  ADD             R7, SP, #0xC
BE256:  PUSH.W          {R8-R11}
BE25A:  SUB             SP, SP, #0x2C
BE25C:  LDR.W           R12, [R7,#arg_C]
BE260:  MOV.W           LR, #0
BE264:  LDR.W           R10, [R0,#0x18]
BE268:  LDR.W           R11, [R7,#arg_14]
BE26C:  ADD.W           R5, R10, R12,LSL#1
BE270:  LDRSH.W         R6, [R10,R12,LSL#1]
BE274:  LDRSH.W         R5, [R5,#-2]
BE278:  SUBS            R6, R6, R5
BE27A:  MUL.W           R4, R6, R11
BE27E:  CMP             R4, #9
BE280:  BLT.W           loc_BE410
BE284:  STRD.W          R2, R3, [SP,#0x48+var_44]
BE288:  MOVS            R6, #0
BE28A:  STR             R0, [SP,#0x48+var_34]
BE28C:  MOVS            R3, #0
BE28E:  LDR             R0, [R0,#0x24]
BE290:  LDR             R2, [R7,#arg_18]
BE292:  MUL.W           R0, R0, R11
BE296:  LSLS            R0, R0, #1
BE298:  STR             R0, [SP,#0x48+var_2C]
BE29A:  SUBS            R0, R2, #4
BE29C:  STR             R0, [SP,#0x48+var_38]
BE29E:  MOVS            R0, #0
BE2A0:  STR             R0, [SP,#0x48+var_30]
BE2A2:  MOV.W           R8, #0
BE2A6:  B               loc_BE2DE
BE2A8:  LDR             R0, [SP,#0x48+var_38]
BE2AA:  MOV.W           R1, R9,LSL#1
BE2AE:  CMP             R1, R4
BE2B0:  MOV.W           R1, #0
BE2B4:  LDR             R3, [SP,#0x48+var_28]
BE2B6:  MOV.W           R2, R6,LSL#1
BE2BA:  LDR.W           R0, [R0,R8,LSL#2]
BE2BE:  IT GE
BE2C0:  MOVGE           R1, #1
BE2C2:  CMP             R2, R4
BE2C4:  IT GE
BE2C6:  ADDGE           R1, #1
BE2C8:  LSLS            R2, R5, #1
BE2CA:  CMP             R2, R4
BE2CC:  LDR.W           R12, [R7,#arg_C]
BE2D0:  IT GE
BE2D2:  ADDGE           R1, #1
BE2D4:  LDR             R6, [SP,#0x48+var_20]
BE2D6:  MLA.W           R6, R0, R1, R6
BE2DA:  ADD             LR, R0
BE2DC:  LDR             R1, [SP,#0x48+var_24]
BE2DE:  CMP             R8, R12
BE2E0:  BGE             loc_BE36A
BE2E2:  ADD.W           R2, R10, R8,LSL#1
BE2E6:  LDRSH.W         R0, [R10,R8,LSL#1]
BE2EA:  ADD.W           R8, R8, #1
BE2EE:  LDRSH.W         R2, [R2,#2]
BE2F2:  SUBS            R2, R2, R0
BE2F4:  MUL.W           R4, R2, R11
BE2F8:  CMP             R4, #9
BE2FA:  BLT             loc_BE2DE
BE2FC:  MUL.W           R0, R0, R11
BE300:  STR             R1, [SP,#0x48+var_24]
BE302:  SUB.W           R12, R8, #1
BE306:  STR             R3, [SP,#0x48+var_28]
BE308:  SXTH            R2, R4
BE30A:  STR             R6, [SP,#0x48+var_20]
BE30C:  MOVS            R5, #0
BE30E:  MOVS            R6, #0
BE310:  MOV.W           R9, #0
BE314:  MOVS            R3, #0
BE316:  ADD.W           R1, R1, R0,LSL#1
BE31A:  LDRSH.W         R0, [R1,R3,LSL#1]
BE31E:  ADDS            R3, #1
BE320:  SMULBB.W        R0, R0, R0
BE324:  LSLS            R0, R0, #1
BE326:  SMULTB.W        R0, R0, R2
BE32A:  CMP             R0, #0x80
BE32C:  IT LT
BE32E:  ADDLT.W         R9, R9, #1
BE332:  CMP.W           R0, #0x200
BE336:  IT LT
BE338:  ADDLT           R6, #1
BE33A:  CMP.W           R0, #0x800
BE33E:  IT LT
BE340:  ADDLT           R5, #1
BE342:  CMP             R3, R4
BE344:  BLT             loc_BE31A
BE346:  LDR             R0, [SP,#0x48+var_34]
BE348:  LDR             R0, [R0,#8]
BE34A:  SUBS            R0, #4
BE34C:  CMP             R12, R0
BE34E:  BLE             loc_BE2A8
BE350:  ADDS            R0, R5, R6
BE352:  MOV             R1, R4
BE354:  STR.W           LR, [SP,#0x48+var_3C]
BE358:  LSLS            R0, R0, #5
BE35A:  BLX             sub_108874
BE35E:  LDR.W           LR, [SP,#0x48+var_3C]
BE362:  LDR             R1, [SP,#0x48+var_30]
BE364:  ADD             R1, R0
BE366:  STR             R1, [SP,#0x48+var_30]
BE368:  B               loc_BE2A8
BE36A:  LDR             R0, [SP,#0x48+var_2C]
BE36C:  ADDS            R3, #1
BE36E:  ADD             R1, R0
BE370:  LDR             R0, [R7,#arg_10]
BE372:  CMP             R3, R0
BE374:  BLT             loc_BE2A2
BE376:  LDR             R0, [R7,#arg_8]
BE378:  LDR             R4, [SP,#0x48+var_40]
BE37A:  CBZ             R0, loc_BE3C8
BE37C:  LDR             R2, [SP,#0x48+var_30]
BE37E:  MOV             R5, LR
BE380:  CBZ             R2, loc_BE398
BE382:  LDR             R0, [SP,#0x48+var_34]
BE384:  ADD.W           R1, R12, #4
BE388:  LDR             R0, [R0,#8]
BE38A:  SUBS            R0, R1, R0
BE38C:  LDR             R1, [R7,#arg_10]
BE38E:  MULS            R1, R0
BE390:  MOV             R0, R2
BE392:  BLX             sub_108874
BE396:  B               loc_BE39A
BE398:  MOVS            R0, #0
BE39A:  LDRD.W          R3, R2, [R7,#arg_0]
BE39E:  LDR             R1, [R3]
BE3A0:  ADD             R0, R1
BE3A2:  ASRS            R0, R0, #1
BE3A4:  STR             R0, [R3]
BE3A6:  LDR             R1, [R2]
BE3A8:  CBZ             R1, loc_BE3B4
BE3AA:  CMP             R1, #2
BE3AC:  MOV             LR, R5
BE3AE:  IT EQ
BE3B0:  ADDEQ           R0, #4
BE3B2:  B               loc_BE3B8
BE3B4:  SUBS            R0, #4
BE3B6:  MOV             LR, R5
BE3B8:  MOVS            R1, #0
BE3BA:  CMP             R0, #0x12
BE3BC:  IT GT
BE3BE:  MOVGT           R1, #1
BE3C0:  CMP             R0, #0x16
BE3C2:  IT GT
BE3C4:  MOVGT           R1, #2
BE3C6:  STR             R1, [R2]
BE3C8:  LSLS            R0, R6, #8
BE3CA:  MOV             R1, LR
BE3CC:  BLX             sub_108874
BE3D0:  LDR             R2, [SP,#0x48+var_44]
BE3D2:  LDR             R1, [R2]
BE3D4:  ADD             R0, R1
BE3D6:  RSB.W           R1, R4, #3
BE3DA:  ASRS            R0, R0, #1
BE3DC:  STR             R0, [R2]
BE3DE:  MOVS            R2, #0x42 ; 'B'
BE3E0:  ORR.W           R1, R2, R1,LSL#7
BE3E4:  ADD.W           R0, R0, R0,LSL#1
BE3E8:  ADD             R0, R1
BE3EA:  ASRS            R0, R0, #2
BE3EC:  CMP             R0, #0x50 ; 'P'
BE3EE:  BGE             loc_BE3F6
BE3F0:  MOV.W           LR, #3
BE3F4:  B               loc_BE410
BE3F6:  CMP.W           R0, #0x100
BE3FA:  BGE             loc_BE402
BE3FC:  MOV.W           LR, #2
BE400:  B               loc_BE410
BE402:  MOV.W           LR, #0
BE406:  CMP.W           R0, #0x180
BE40A:  IT LT
BE40C:  MOVLT.W         LR, #1
BE410:  MOV             R0, LR
BE412:  ADD             SP, SP, #0x2C ; ','
BE414:  POP.W           {R8-R11}
BE418:  POP             {R4-R7,PC}
