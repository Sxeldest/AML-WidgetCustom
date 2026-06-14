; =========================================================
; Game Engine Function: sub_6F20E
; Address            : 0x6F20E - 0x6F3A8
; =========================================================

6F20E:  PUSH            {R4-R7,LR}
6F210:  ADD             R7, SP, #0xC
6F212:  PUSH.W          {R8,R9,R11}
6F216:  MOV             R4, R2
6F218:  MOV             R5, R1
6F21A:  LDRD.W          R2, R1, [R1,#0xC]
6F21E:  MOV             R9, R0
6F220:  CMP             R1, R2
6F222:  BCS             loc_6F22A
6F224:  ADDS            R1, #1
6F226:  STR             R1, [R5,#0x10]
6F228:  B               loc_6F26C
6F22A:  LDRB            R0, [R5,#0x1C]
6F22C:  CBNZ            R0, loc_6F26C
6F22E:  LDRD.W          R1, R6, [R5,#0x14]
6F232:  MOV.W           R8, #1
6F236:  LDRD.W          R3, R0, [R5]; stream
6F23A:  LDR             R2, [R5,#8]; n
6F23C:  ADD             R1, R6
6F23E:  STR             R1, [R5,#0x18]
6F240:  MOVS            R1, #1; size
6F242:  BLX             fread
6F246:  LDRD.W          R1, R6, [R5,#4]
6F24A:  CMP             R0, R6
6F24C:  STR             R0, [R5,#0x14]
6F24E:  ADD.W           R3, R1, R0
6F252:  SUB.W           R2, R3, #1
6F256:  STRD.W          R2, R1, [R5,#0xC]
6F25A:  BCS             loc_6F26C
6F25C:  MOVS            R0, #0
6F25E:  STRB            R0, [R3]
6F260:  LDRD.W          R0, R1, [R5,#0xC]
6F264:  STRB.W          R8, [R5,#0x1C]
6F268:  ADDS            R2, R0, #1
6F26A:  STR             R2, [R5,#0xC]
6F26C:  LDRB            R0, [R1]
6F26E:  CMP             R0, #0x72 ; 'r'
6F270:  BNE.W           loc_6F386
6F274:  CMP             R1, R2
6F276:  BCS             loc_6F27E
6F278:  ADDS            R1, #1
6F27A:  STR             R1, [R5,#0x10]
6F27C:  B               loc_6F2C0
6F27E:  LDRB            R0, [R5,#0x1C]
6F280:  CBNZ            R0, loc_6F2C0
6F282:  LDRD.W          R1, R6, [R5,#0x14]
6F286:  MOV.W           R8, #1
6F28A:  LDRD.W          R3, R0, [R5]; stream
6F28E:  LDR             R2, [R5,#8]; n
6F290:  ADD             R1, R6
6F292:  STR             R1, [R5,#0x18]
6F294:  MOVS            R1, #1; size
6F296:  BLX             fread
6F29A:  LDRD.W          R1, R6, [R5,#4]
6F29E:  CMP             R0, R6
6F2A0:  STR             R0, [R5,#0x14]
6F2A2:  ADD.W           R3, R1, R0
6F2A6:  SUB.W           R2, R3, #1
6F2AA:  STRD.W          R2, R1, [R5,#0xC]
6F2AE:  BCS             loc_6F2C0
6F2B0:  MOVS            R0, #0
6F2B2:  STRB            R0, [R3]
6F2B4:  LDRD.W          R0, R1, [R5,#0xC]
6F2B8:  STRB.W          R8, [R5,#0x1C]
6F2BC:  ADDS            R2, R0, #1
6F2BE:  STR             R2, [R5,#0xC]
6F2C0:  LDRB            R0, [R1]
6F2C2:  CMP             R0, #0x75 ; 'u'
6F2C4:  BNE             loc_6F386
6F2C6:  CMP             R1, R2
6F2C8:  BCS             loc_6F2D0
6F2CA:  ADDS            R1, #1
6F2CC:  STR             R1, [R5,#0x10]
6F2CE:  B               loc_6F312
6F2D0:  LDRB            R0, [R5,#0x1C]
6F2D2:  CBNZ            R0, loc_6F312
6F2D4:  LDRD.W          R1, R6, [R5,#0x14]
6F2D8:  MOV.W           R8, #1
6F2DC:  LDRD.W          R3, R0, [R5]; stream
6F2E0:  LDR             R2, [R5,#8]; n
6F2E2:  ADD             R1, R6
6F2E4:  STR             R1, [R5,#0x18]
6F2E6:  MOVS            R1, #1; size
6F2E8:  BLX             fread
6F2EC:  LDRD.W          R1, R6, [R5,#4]
6F2F0:  CMP             R0, R6
6F2F2:  STR             R0, [R5,#0x14]
6F2F4:  ADD.W           R3, R1, R0
6F2F8:  SUB.W           R2, R3, #1
6F2FC:  STRD.W          R2, R1, [R5,#0xC]
6F300:  BCS             loc_6F312
6F302:  MOVS            R0, #0
6F304:  STRB            R0, [R3]
6F306:  LDRD.W          R0, R1, [R5,#0xC]
6F30A:  STRB.W          R8, [R5,#0x1C]
6F30E:  ADDS            R2, R0, #1
6F310:  STR             R2, [R5,#0xC]
6F312:  LDRB            R0, [R1]
6F314:  CMP             R0, #0x65 ; 'e'
6F316:  BNE             loc_6F386
6F318:  CMP             R1, R2
6F31A:  BCS             loc_6F322
6F31C:  ADDS            R0, R1, #1
6F31E:  STR             R0, [R5,#0x10]
6F320:  B               loc_6F362
6F322:  LDRB            R0, [R5,#0x1C]
6F324:  CBNZ            R0, loc_6F362
6F326:  LDRD.W          R1, R6, [R5,#0x14]
6F32A:  MOV.W           R8, #1
6F32E:  LDRD.W          R3, R0, [R5]; stream
6F332:  LDR             R2, [R5,#8]; n
6F334:  ADD             R1, R6
6F336:  STR             R1, [R5,#0x18]
6F338:  MOVS            R1, #1; size
6F33A:  BLX             fread
6F33E:  LDRD.W          R2, R3, [R5,#4]
6F342:  CMP             R0, R3
6F344:  STR             R0, [R5,#0x14]
6F346:  ADD.W           R1, R2, R0
6F34A:  SUB.W           R6, R1, #1
6F34E:  STRD.W          R6, R2, [R5,#0xC]
6F352:  BCS             loc_6F362
6F354:  MOVS            R0, #0
6F356:  STRB            R0, [R1]
6F358:  LDR             R0, [R5,#0xC]
6F35A:  STRB.W          R8, [R5,#0x1C]
6F35E:  ADDS            R0, #1
6F360:  STR             R0, [R5,#0xC]
6F362:  LDRD.W          R0, R1, [R4,#0x24]
6F366:  SUBS            R1, R1, R0
6F368:  CMP             R1, #0xF
6F36A:  BLE             loc_6F39A
6F36C:  ADD.W           R1, R0, #0x10
6F370:  STR             R1, [R4,#0x24]
6F372:  VMOV.I32        Q8, #0
6F376:  MOVS            R1, #0xE
6F378:  VST1.64         {D16-D17}, [R0],R1
6F37C:  MOVS            R1, #0xA
6F37E:  STRH            R1, [R0]
6F380:  POP.W           {R8,R9,R11}
6F384:  POP             {R4-R7,PC}
6F386:  LDR             R3, [R5,#0x18]
6F388:  MOVS            R0, #3
6F38A:  LDR             R2, [R5,#4]
6F38C:  ADD             R1, R3
6F38E:  SUBS            R1, R1, R2
6F390:  STRD.W          R0, R1, [R9,#0x18]
6F394:  POP.W           {R8,R9,R11}
6F398:  POP             {R4-R7,PC}
6F39A:  ADD.W           R0, R4, #0x18
6F39E:  MOVS            R1, #1
6F3A0:  BL              sub_70EA2
6F3A4:  LDR             R0, [R4,#0x24]
6F3A6:  B               loc_6F36C
