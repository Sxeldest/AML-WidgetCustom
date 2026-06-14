; =========================================================
; Game Engine Function: sub_BF198
; Address            : 0xBF198 - 0xBF824
; =========================================================

BF198:  PUSH            {R4-R7,LR}
BF19A:  ADD             R7, SP, #0xC
BF19C:  PUSH.W          {R8-R11}
BF1A0:  SUB             SP, SP, #0x4C
BF1A2:  LDR.W           R11, [R7,#arg_0]
BF1A6:  MOV             R6, R2
BF1A8:  STR             R1, [SP,#0x68+var_2C]
BF1AA:  MOV             R8, R0
BF1AC:  MOV             R0, R6
BF1AE:  MOV             R4, R3
BF1B0:  MOV             R1, R11
BF1B2:  BLX             sub_108874
BF1B6:  LDR.W           R10, [R8]
BF1BA:  CMP.W           R11, #1
BF1BE:  LDR.W           R9, [R7,#arg_C]
BF1C2:  MOV             R5, R11
BF1C4:  IT NE
BF1C6:  MOVNE           R5, #0
BF1C8:  CMP             R6, #1
BF1CA:  BNE             loc_BF1F6
BF1CC:  LDRD.W          R0, R1, [R8,#0x1C]
BF1D0:  CMP.W           R10, #0
BF1D4:  BEQ             loc_BF226
BF1D6:  CMP             R1, #8
BF1D8:  BLT             loc_BF23E
BF1DA:  LDR             R4, [SP,#0x68+var_2C]
BF1DC:  MOVS            R2, #1
BF1DE:  LDRH            R1, [R4]
BF1E0:  LSRS            R5, R1, #0xF
BF1E2:  MOV             R1, R5
BF1E4:  BLX             j_ec_enc_bits
BF1E8:  LDR.W           R0, [R8,#0x20]
BF1EC:  MOV             R1, R4
BF1EE:  SUBS            R0, #8
BF1F0:  STR.W           R0, [R8,#0x20]
BF1F4:  B               loc_BF242
BF1F6:  STR             R4, [SP,#0x68+var_4C]
BF1F8:  LDR.W           R4, [R8,#0x18]
BF1FC:  LDR             R1, [R7,#src]; src
BF1FE:  CMP             R4, #0
BF200:  MOV             R2, R4
BF202:  IT LE
BF204:  MOVLE           R2, #0
BF206:  CMP             R1, #0
BF208:  STR             R2, [SP,#0x68+var_38]
BF20A:  STR             R0, [SP,#0x68+var_50]
BF20C:  BEQ             loc_BF27E
BF20E:  LDR.W           R9, [R7,#dest]
BF212:  CMP.W           R9, #0
BF216:  BEQ             loc_BF27E
BF218:  CMP             R4, #0
BF21A:  BLE             loc_BF260
BF21C:  LSLS            R2, R6, #1; n
BF21E:  MOV             R0, R9; dest
BF220:  BLX             j_memcpy
BF224:  B               loc_BF280
BF226:  CMP             R1, #8
BF228:  BLT.W           loc_BF55E
BF22C:  MOVS            R1, #1
BF22E:  BLX             j_ec_dec_bits
BF232:  LDR.W           R1, [R8,#0x20]
BF236:  SUBS            R1, #8
BF238:  STR.W           R1, [R8,#0x20]
BF23C:  B               loc_BF560
BF23E:  MOVS            R5, #0
BF240:  LDR             R1, [SP,#0x68+var_2C]
BF242:  LDR.W           R0, [R8,#4]
BF246:  CMP             R0, #0
BF248:  BEQ.W           loc_BF580
BF24C:  MOV.W           R0, #0x4000
BF250:  CMP             R5, #0
BF252:  ITT NE
BF254:  MOVWNE          R0, #0xC000
BF258:  MOVTNE          R0, #0xFFFF
BF25C:  STRH            R0, [R1]
BF25E:  B               loc_BF580
BF260:  LSLS            R2, R0, #0x1F
BF262:  MOV.W           R3, #0
BF266:  IT EQ
BF268:  MOVEQ           R3, #1
BF26A:  CMP             R4, #0
BF26C:  MOV             R2, R4
BF26E:  IT NE
BF270:  MOVNE           R2, #1
BF272:  CMP.W           R11, #1
BF276:  BGT             loc_BF21C
BF278:  ANDS            R2, R3
BF27A:  CMP             R2, #1
BF27C:  BEQ             loc_BF21C
BF27E:  MOV             R9, R1
BF280:  LDR             R3, [R7,#arg_18]
BF282:  CMP             R4, #1
BF284:  STR.W           R9, [SP,#0x68+var_30]
BF288:  STRD.W          R4, R6, [SP,#0x68+var_40]
BF28C:  STRD.W          R5, R8, [SP,#0x68+var_48]
BF290:  STR.W           R10, [SP,#0x68+var_54]
BF294:  BLT.W           loc_BF452
BF298:  CMP.W           R10, #0
BF29C:  BEQ.W           loc_BF3AE
BF2A0:  MOV.W           R11, #0
BF2A4:  MOVW            LR, #0x5A82
BF2A8:  MOVS            R0, #1
BF2AA:  LDR             R1, [SP,#0x68+var_2C]
BF2AC:  LSL.W           R0, R0, R11
BF2B0:  ASR.W           R2, R6, R11
BF2B4:  STR             R0, [SP,#0x68+var_24]
BF2B6:  ASRS            R0, R2, #1
BF2B8:  CMP.W           R11, #0x1F
BF2BC:  STR             R3, [SP,#0x68+var_34]
BF2BE:  STR             R0, [SP,#0x68+var_20]
BF2C0:  BEQ             loc_BF31E
BF2C2:  LDR             R0, [SP,#0x68+var_20]
BF2C4:  CMP             R0, #1
BF2C6:  BLT             loc_BF31E
BF2C8:  LDR             R0, [SP,#0x68+var_24]
BF2CA:  MOVS            R5, #0
BF2CC:  MOV             R2, R1
BF2CE:  MOV.W           R8, R0,LSL#2
BF2D2:  LDR             R6, [SP,#0x68+var_20]
BF2D4:  MOV.W           R12, #1
BF2D8:  MOV             R4, R2
BF2DA:  STR             R2, [SP,#0x68+var_28]
BF2DC:  LSL.W           R3, R12, R11
BF2E0:  LDRSH.W         R9, [R4]
BF2E4:  ADD             R3, R5
BF2E6:  MOV.W           R0, #0x4000
BF2EA:  ADD.W           R12, R12, #2
BF2EE:  SUBS            R6, #1
BF2F0:  LDRSH.W         R10, [R1,R3,LSL#1]
BF2F4:  SMLABB.W        R0, R9, LR, R0
BF2F8:  MLS.W           R2, R10, LR, R0
BF2FC:  SMLABB.W        R0, R10, LR, R0
BF300:  MOV.W           R0, R0,LSR#15
BF304:  STRH            R0, [R4]
BF306:  ADD             R4, R8
BF308:  MOV.W           R0, R2,LSR#15
BF30C:  STRH.W          R0, [R1,R3,LSL#1]
BF310:  BNE             loc_BF2DC
BF312:  LDR             R2, [SP,#0x68+var_28]
BF314:  ADDS            R5, #1
BF316:  LDR             R0, [SP,#0x68+var_24]
BF318:  ADDS            R2, #2
BF31A:  CMP             R5, R0
BF31C:  BNE             loc_BF2D2
BF31E:  LDR.W           R9, [SP,#0x68+var_30]
BF322:  CMP.W           R9, #0
BF326:  IT NE
BF328:  CMPNE.W         R11, #0x1F
BF32C:  BEQ             loc_BF38A
BF32E:  LDR             R0, [SP,#0x68+var_20]
BF330:  CMP             R0, #1
BF332:  BLT             loc_BF38A
BF334:  LDR             R0, [SP,#0x68+var_24]
BF336:  MOV.W           R8, #0
BF33A:  MOV             R1, R9
BF33C:  MOV.W           R12, R0,LSL#2
BF340:  LDR             R3, [SP,#0x68+var_20]
BF342:  MOVS            R4, #1
BF344:  MOV             R6, R1
BF346:  MOV.W           R10, #0x4000
BF34A:  STR             R1, [SP,#0x68+var_28]
BF34C:  LSL.W           R0, R4, R11
BF350:  LDRSH.W         R2, [R6]
BF354:  ADD             R0, R8
BF356:  ADDS            R4, #2
BF358:  SUBS            R3, #1
BF35A:  LDRSH.W         R5, [R9,R0,LSL#1]
BF35E:  SMLABB.W        R2, R2, LR, R10
BF362:  MLS.W           R1, R5, LR, R2
BF366:  SMLABB.W        R2, R5, LR, R2
BF36A:  MOV.W           R1, R1,LSR#15
BF36E:  MOV.W           R2, R2,LSR#15
BF372:  STRH            R2, [R6]
BF374:  ADD             R6, R12
BF376:  STRH.W          R1, [R9,R0,LSL#1]
BF37A:  BNE             loc_BF34C
BF37C:  LDR             R1, [SP,#0x68+var_28]
BF37E:  ADD.W           R8, R8, #1
BF382:  LDR             R0, [SP,#0x68+var_24]
BF384:  ADDS            R1, #2
BF386:  CMP             R8, R0
BF388:  BNE             loc_BF340
BF38A:  LDR             R1, [SP,#0x68+var_34]
BF38C:  ADR.W           R2, dword_BF824
BF390:  LDR             R6, [SP,#0x68+var_3C]
BF392:  ADD.W           R11, R11, #1
BF396:  ASRS            R0, R1, #4
BF398:  AND.W           R1, R1, #0xF
BF39C:  LDRB            R0, [R2,R0]
BF39E:  LDRB            R1, [R2,R1]
BF3A0:  ORR.W           R3, R1, R0,LSL#2
BF3A4:  LDR             R0, [SP,#0x68+var_38]
BF3A6:  CMP             R11, R0
BF3A8:  BLT.W           loc_BF2A8
BF3AC:  B               loc_BF452
BF3AE:  LDR.W           R8, [SP,#0x68+var_30]
BF3B2:  MOVS            R2, #0
BF3B4:  MOVW            R9, #0x5A82
BF3B8:  LDR             R0, [SP,#0x68+var_30]
BF3BA:  STR             R3, [SP,#0x68+var_34]
BF3BC:  CMP             R0, #0
BF3BE:  IT NE
BF3C0:  CMPNE           R2, #0x1F
BF3C2:  BEQ             loc_BF436
BF3C4:  LDR             R0, [SP,#0x68+var_3C]
BF3C6:  ASR.W           R1, R0, R2
BF3CA:  ASRS            R0, R1, #1
BF3CC:  CMP             R0, #1
BF3CE:  STR             R0, [SP,#0x68+var_24]
BF3D0:  BLT             loc_BF436
BF3D2:  MOVS            R0, #1
BF3D4:  LDR             R1, [SP,#0x68+var_30]
BF3D6:  LSLS            R0, R2
BF3D8:  MOV.W           R11, #0
BF3DC:  MOV.W           R10, R0,LSL#2
BF3E0:  STR             R0, [SP,#0x68+var_28]
BF3E2:  LDR             R6, [SP,#0x68+var_24]
BF3E4:  MOV.W           R12, #1
BF3E8:  MOV             R4, R1
BF3EA:  STR             R1, [SP,#0x68+var_20]
BF3EC:  LSL.W           LR, R12, R2
BF3F0:  ADD.W           R3, LR, R11
BF3F4:  LDRSH.W         R0, [R4]
BF3F8:  MOV.W           R1, #0x4000
BF3FC:  LDRSH.W         R5, [R8,R3,LSL#1]
BF400:  ADD.W           R12, R12, #2
BF404:  SUBS            R6, #1
BF406:  SMLABB.W        R0, R0, R9, R1
BF40A:  MOV             R1, R2
BF40C:  MLS.W           R2, R5, R9, R0
BF410:  SMLABB.W        R0, R5, R9, R0
BF414:  MOV.W           R0, R0,LSR#15
BF418:  STRH            R0, [R4]
BF41A:  ADD             R4, R10
BF41C:  MOV.W           R0, R2,LSR#15
BF420:  MOV             R2, R1
BF422:  STRH.W          R0, [R8,R3,LSL#1]
BF426:  BNE             loc_BF3EC
BF428:  LDR             R1, [SP,#0x68+var_20]
BF42A:  ADD.W           R11, R11, #1
BF42E:  LDR             R0, [SP,#0x68+var_28]
BF430:  ADDS            R1, #2
BF432:  CMP             R11, R0
BF434:  BNE             loc_BF3E2
BF436:  LDR             R1, [SP,#0x68+var_34]
BF438:  ADR.W           R3, dword_BF824
BF43C:  ADDS            R2, #1
BF43E:  ASRS            R0, R1, #4
BF440:  AND.W           R1, R1, #0xF
BF444:  LDRB            R0, [R3,R0]
BF446:  LDRB            R1, [R3,R1]
BF448:  ORR.W           R3, R1, R0,LSL#2
BF44C:  LDR             R0, [SP,#0x68+var_38]
BF44E:  CMP             R2, R0
BF450:  BLT             loc_BF3B8
BF452:  LDR             R0, [SP,#0x68+var_38]
BF454:  LDR             R1, [SP,#0x68+var_50]
BF456:  LSL.W           R9, R1, R0
BF45A:  LDR             R1, [R7,#arg_0]
BF45C:  TST.W           R9, #1
BF460:  ASR.W           R10, R1, R0
BF464:  MOV.W           R0, #0
BF468:  STR             R0, [SP,#0x68+var_20]
BF46A:  BNE.W           loc_BF636
BF46E:  LDR             R0, [SP,#0x68+var_40]
BF470:  CMP.W           R0, #0xFFFFFFFF
BF474:  BGT.W           loc_BF636
BF478:  LDR             R1, [SP,#0x68+var_54]
BF47A:  CMP             R1, #0
BF47C:  BEQ.W           loc_BF596
BF480:  MOVS            R1, #0
BF482:  MOV.W           R11, #0x4000
BF486:  STR             R1, [SP,#0x68+var_20]
BF488:  MOVW            R1, #0x5A82
BF48C:  MOV             R12, R0
BF48E:  CMP.W           R10, #1
BF492:  STR             R3, [SP,#0x68+var_34]
BF494:  MOV.W           R9, R9,ASR#1
BF498:  IT GE
BF49A:  CMPGE.W         R9, #1
BF49E:  BLT             loc_BF4E4
BF4A0:  LDR.W           R8, [SP,#0x68+var_2C]
BF4A4:  MOV.W           R3, R10,LSL#2
BF4A8:  MOV.W           LR, #0
BF4AC:  MOV             R2, R8
BF4AE:  MOV             R4, R9
BF4B0:  LDRSH.W         R6, [R2]
BF4B4:  SUBS            R4, #1
BF4B6:  LDRSH.W         R5, [R2,R10,LSL#1]
BF4BA:  SMLABB.W        R6, R6, R1, R11
BF4BE:  SMLABB.W        R0, R5, R1, R6
BF4C2:  MLS.W           R5, R5, R1, R6
BF4C6:  MOV.W           R0, R0,LSR#15
BF4CA:  STRH            R0, [R2]
BF4CC:  MOV.W           R0, R5,LSR#15
BF4D0:  STRH.W          R0, [R2,R10,LSL#1]
BF4D4:  ADD             R2, R3
BF4D6:  BNE             loc_BF4B0
BF4D8:  ADD.W           LR, LR, #1
BF4DC:  ADD.W           R8, R8, #2
BF4E0:  CMP             LR, R10
BF4E2:  BNE             loc_BF4AC
BF4E4:  LDR             R0, [SP,#0x68+var_30]
BF4E6:  CBZ             R0, loc_BF538
BF4E8:  CMP.W           R10, #1
BF4EC:  IT GE
BF4EE:  CMPGE.W         R9, #1
BF4F2:  BLT             loc_BF538
BF4F4:  LDR.W           R8, [SP,#0x68+var_30]
BF4F8:  MOV.W           R3, R10,LSL#2
BF4FC:  MOV.W           LR, #0
BF500:  MOV             R2, R8
BF502:  MOV             R4, R9
BF504:  LDRSH.W         R5, [R2]
BF508:  SUBS            R4, #1
BF50A:  LDRSH.W         R0, [R2,R10,LSL#1]
BF50E:  SMLABB.W        R5, R5, R1, R11
BF512:  SMLABB.W        R6, R0, R1, R5
BF516:  MLS.W           R0, R0, R1, R5
BF51A:  MOV.W           R5, R6,LSR#15
BF51E:  STRH            R5, [R2]
BF520:  MOV.W           R0, R0,LSR#15
BF524:  STRH.W          R0, [R2,R10,LSL#1]
BF528:  ADD             R2, R3
BF52A:  BNE             loc_BF504
BF52C:  ADD.W           LR, LR, #1
BF530:  ADD.W           R8, R8, #2
BF534:  CMP             LR, R10
BF536:  BNE             loc_BF500
BF538:  LDR             R3, [SP,#0x68+var_34]
BF53A:  LSL.W           R0, R3, R10
BF53E:  ORRS            R3, R0
BF540:  LDR             R0, [SP,#0x68+var_20]
BF542:  MOV.W           R10, R10,LSL#1
BF546:  ADDS            R0, #1
BF548:  STR             R0, [SP,#0x68+var_20]
BF54A:  MOVS.W          R0, R9,LSL#31
BF54E:  BNE             loc_BF636
BF550:  ADD.W           R0, R12, #1
BF554:  CMP.W           R12, #0xFFFFFFFF
BF558:  MOV             R12, R0
BF55A:  BLT             loc_BF48E
BF55C:  B               loc_BF636
BF55E:  MOVS            R0, #0
BF560:  LDR.W           R1, [R8,#4]
BF564:  CMP             R1, #0
BF566:  LDR             R1, [SP,#0x68+var_2C]
BF568:  BEQ             loc_BF580
BF56A:  MOV.W           R1, #0x4000
BF56E:  CMP             R0, #0
BF570:  ITT NE
BF572:  MOVWNE          R1, #0xC000
BF576:  MOVTNE          R1, #0xFFFF
BF57A:  LDR             R0, [SP,#0x68+var_2C]
BF57C:  STRH            R1, [R0]
BF57E:  LDR             R1, [SP,#0x68+var_2C]
BF580:  CMP.W           R9, #0
BF584:  MOV.W           R4, #1
BF588:  ITTT NE
BF58A:  LDRSHNE.W       R0, [R1]
BF58E:  LSRNE           R0, R0, #4
BF590:  STRHNE.W        R0, [R9]
BF594:  B               loc_BF81A
BF596:  LDR             R1, [SP,#0x68+var_30]
BF598:  MOVW            R2, #0x5A82
BF59C:  MOV             LR, R0
BF59E:  CMP             R1, #0
BF5A0:  IT NE
BF5A2:  MOVNE           R1, #1
BF5A4:  STR             R1, [SP,#0x68+var_24]
BF5A6:  MOVS            R1, #0
BF5A8:  STR             R1, [SP,#0x68+var_20]
BF5AA:  MOV.W           R1, #0x4000
BF5AE:  CMP.W           R10, #0
BF5B2:  MOV.W           R0, #0
BF5B6:  STR             R3, [SP,#0x68+var_34]
BF5B8:  IT GT
BF5BA:  MOVGT           R0, #1
BF5BC:  LDR             R3, [SP,#0x68+var_24]
BF5BE:  MOV.W           R9, R9,ASR#1
BF5C2:  ANDS            R0, R3
BF5C4:  CMP             R0, #1
BF5C6:  BNE             loc_BF612
BF5C8:  CMP.W           R9, #1
BF5CC:  BLT             loc_BF612
BF5CE:  LDR.W           R11, [SP,#0x68+var_30]
BF5D2:  MOV.W           R5, R10,LSL#2
BF5D6:  MOV.W           R8, #0
BF5DA:  MOV             R6, R11
BF5DC:  MOV             R4, R9
BF5DE:  LDRSH.W         R3, [R6]
BF5E2:  SUBS            R4, #1
BF5E4:  LDRSH.W         R0, [R6,R10,LSL#1]
BF5E8:  SMLABB.W        R3, R3, R2, R1
BF5EC:  SMLABB.W        R12, R0, R2, R3
BF5F0:  MLS.W           R0, R0, R2, R3
BF5F4:  MOV.W           R3, R12,LSR#15
BF5F8:  STRH            R3, [R6]
BF5FA:  MOV.W           R0, R0,LSR#15
BF5FE:  STRH.W          R0, [R6,R10,LSL#1]
BF602:  ADD             R6, R5
BF604:  BNE             loc_BF5DE
BF606:  ADD.W           R8, R8, #1
BF60A:  ADD.W           R11, R11, #2
BF60E:  CMP             R8, R10
BF610:  BNE             loc_BF5DA
BF612:  LDR             R3, [SP,#0x68+var_34]
BF614:  LSL.W           R0, R3, R10
BF618:  ORRS            R3, R0
BF61A:  LDR             R0, [SP,#0x68+var_20]
BF61C:  MOV.W           R10, R10,LSL#1
BF620:  ADDS            R0, #1
BF622:  STR             R0, [SP,#0x68+var_20]
BF624:  MOVS.W          R0, R9,LSL#31
BF628:  BNE             loc_BF636
BF62A:  ADD.W           R0, LR, #1
BF62E:  CMP.W           LR, #0xFFFFFFFF
BF632:  MOV             LR, R0
BF634:  BLT             loc_BF5AE
BF636:  LDR.W           R11, [R7,#arg_10]
BF63A:  CMP.W           R10, #2
BF63E:  LDR.W           R8, [R7,#arg_8]
BF642:  LDR             R1, [SP,#0x68+var_2C]
BF644:  LDR             R4, [SP,#0x68+var_3C]
BF646:  LDR             R6, [SP,#0x68+var_48]
BF648:  BLT             loc_BF682
BF64A:  LDR             R0, [SP,#0x68+var_54]
BF64C:  CBZ             R0, loc_BF666
BF64E:  LDR             R0, [SP,#0x68+var_38]
BF650:  MOV             R5, R3
BF652:  MOV             R3, R6
BF654:  ASR.W           R1, R9, R0
BF658:  LSL.W           R2, R10, R0
BF65C:  LDR             R0, [SP,#0x68+var_2C]
BF65E:  BL              sub_BFDD4
BF662:  LDR             R1, [SP,#0x68+var_2C]
BF664:  MOV             R3, R5
BF666:  LDR             R0, [SP,#0x68+var_30]
BF668:  CBZ             R0, loc_BF682
BF66A:  LDR             R0, [SP,#0x68+var_38]
BF66C:  MOV             R5, R3
BF66E:  MOV             R3, R6
BF670:  ASR.W           R1, R9, R0
BF674:  LSL.W           R2, R10, R0
BF678:  LDR             R0, [SP,#0x68+var_30]
BF67A:  BL              sub_BFDD4
BF67E:  LDR             R1, [SP,#0x68+var_2C]
BF680:  MOV             R3, R5
BF682:  LDR             R0, [SP,#0x68+var_30]
BF684:  ADD             R2, SP, #0x68+var_64
BF686:  STR.W           R10, [SP,#0x68+var_68]
BF68A:  STM.W           R2, {R0,R8,R11}
BF68E:  MOV             R2, R4
BF690:  LDR             R5, [SP,#0x68+var_44]
BF692:  STR             R3, [SP,#0x68+var_58]
BF694:  LDR             R3, [SP,#0x68+var_4C]
BF696:  MOV             R0, R5
BF698:  BL              sub_BFEBC
BF69C:  MOV             R4, R0
BF69E:  LDR             R0, [R5,#4]
BF6A0:  CMP             R0, #0
BF6A2:  BEQ.W           loc_BF81A
BF6A6:  CMP.W           R10, #2
BF6AA:  BLT             loc_BF6BE
BF6AC:  LDR             R0, [SP,#0x68+var_38]
BF6AE:  MOV             R3, R6
BF6B0:  ASR.W           R1, R9, R0
BF6B4:  LSL.W           R2, R10, R0
BF6B8:  LDR             R0, [SP,#0x68+var_2C]
BF6BA:  BL              sub_C0324
BF6BE:  LDR             R0, [SP,#0x68+var_20]
BF6C0:  CMP             R0, #1
BF6C2:  BLT             loc_BF740
BF6C4:  MOVS            R3, #0
BF6C6:  MOV.W           R1, #0x4000
BF6CA:  MOVW            R2, #0x5A82
BF6CE:  MOV.W           R10, R10,ASR#1
BF6D2:  STR             R3, [SP,#0x68+var_24]
BF6D4:  LSR.W           R0, R4, R10
BF6D8:  ORRS            R4, R0
BF6DA:  STR             R4, [SP,#0x68+var_30]
BF6DC:  SBFX.W          LR, R9, #0, #0x1F
BF6E0:  CMP.W           R10, #1
BF6E4:  MOV.W           R9, R9,LSL#1
BF6E8:  IT GE
BF6EA:  CMPGE.W         R9, #1
BF6EE:  BLT             loc_BF734
BF6F0:  LDR.W           R11, [SP,#0x68+var_2C]
BF6F4:  MOV.W           R6, R10,LSL#2
BF6F8:  MOV.W           R8, #0
BF6FC:  MOV             R0, R11
BF6FE:  MOV             R3, LR
BF700:  LDRSH.W         R4, [R0]
BF704:  SUBS            R3, #1
BF706:  LDRSH.W         R5, [R0,R10,LSL#1]
BF70A:  SMLABB.W        R4, R4, R2, R1
BF70E:  SMLABB.W        R12, R5, R2, R4
BF712:  MLS.W           R4, R5, R2, R4
BF716:  MOV.W           R5, R12,LSR#15
BF71A:  STRH            R5, [R0]
BF71C:  MOV.W           R5, R4,LSR#15
BF720:  STRH.W          R5, [R0,R10,LSL#1]
BF724:  ADD             R0, R6
BF726:  BNE             loc_BF700
BF728:  ADD.W           R8, R8, #1
BF72C:  ADD.W           R11, R11, #2
BF730:  CMP             R8, R10
BF732:  BNE             loc_BF6FC
BF734:  LDR             R3, [SP,#0x68+var_24]
BF736:  LDR             R0, [SP,#0x68+var_20]
BF738:  LDR             R4, [SP,#0x68+var_30]
BF73A:  ADDS            R3, #1
BF73C:  CMP             R3, R0
BF73E:  BNE             loc_BF6CE
BF740:  LDR             R0, [SP,#0x68+var_40]
BF742:  STR.W           R10, [SP,#0x68+var_34]
BF746:  CMP             R0, #1
BF748:  BLT             loc_BF7DA
BF74A:  MOV.W           R10, #0
BF74E:  MOVW            R5, #0x5A82
BF752:  ADR             R0, dword_BF834
BF754:  CMP.W           R10, #0x1F
BF758:  LDRB            R4, [R0,R4]
BF75A:  STR             R4, [SP,#0x68+var_30]
BF75C:  BEQ             loc_BF7CE
BF75E:  LDR             R0, [SP,#0x68+var_3C]
BF760:  ASR.W           R1, R0, R10
BF764:  ASRS            R0, R1, #1
BF766:  CMP             R0, #1
BF768:  STR             R0, [SP,#0x68+var_24]
BF76A:  BLT             loc_BF7CE
BF76C:  MOVS            R0, #1
BF76E:  LDR             R3, [SP,#0x68+var_2C]
BF770:  LSL.W           R0, R0, R10
BF774:  MOVS            R1, #0
BF776:  LSLS            R6, R0, #2
BF778:  STR             R0, [SP,#0x68+var_28]
BF77A:  LDR.W           R8, [SP,#0x68+var_24]
BF77E:  MOV.W           R12, #1
BF782:  LDR.W           R11, [SP,#0x68+var_2C]
BF786:  MOV             R4, R3
BF788:  STR             R3, [SP,#0x68+var_20]
BF78A:  LSL.W           R2, R12, R10
BF78E:  LDRSH.W         LR, [R4]
BF792:  ADD             R2, R1
BF794:  MOV.W           R0, #0x4000
BF798:  ADD.W           R12, R12, #2
BF79C:  SUBS.W          R8, R8, #1
BF7A0:  LDRSH.W         R9, [R11,R2,LSL#1]
BF7A4:  SMLABB.W        R3, LR, R5, R0
BF7A8:  MLS.W           R0, R9, R5, R3
BF7AC:  SMLABB.W        R3, R9, R5, R3
BF7B0:  MOV.W           R0, R0,LSR#15
BF7B4:  MOV.W           R3, R3,LSR#15
BF7B8:  STRH            R3, [R4]
BF7BA:  ADD             R4, R6
BF7BC:  STRH.W          R0, [R11,R2,LSL#1]
BF7C0:  BNE             loc_BF78A
BF7C2:  LDR             R3, [SP,#0x68+var_20]
BF7C4:  ADDS            R1, #1
BF7C6:  LDR             R0, [SP,#0x68+var_28]
BF7C8:  ADDS            R3, #2
BF7CA:  CMP             R1, R0
BF7CC:  BNE             loc_BF77A
BF7CE:  LDR             R0, [SP,#0x68+var_38]
BF7D0:  ADD.W           R10, R10, #1
BF7D4:  LDR             R4, [SP,#0x68+var_30]
BF7D6:  CMP             R10, R0
BF7D8:  BLT             loc_BF752
BF7DA:  LDR             R6, [R7,#arg_C]
BF7DC:  LDRD.W          R0, R1, [SP,#0x68+var_38]
BF7E0:  LDR             R5, [SP,#0x68+var_3C]
BF7E2:  MOV             R9, R6
BF7E4:  LDR             R6, [SP,#0x68+var_2C]
BF7E6:  LSL.W           R8, R1, R0
BF7EA:  CMP.W           R9, #0
BF7EE:  BEQ             loc_BF810
BF7F0:  LSLS            R0, R5, #0x16
BF7F2:  BLX             j_celt_sqrt
BF7F6:  CMP             R5, #1
BF7F8:  BLT             loc_BF810
BF7FA:  SXTH            R0, R0
BF7FC:  LDRSH.W         R1, [R6],#2
BF800:  SUBS            R5, #1
BF802:  SMULBB.W        R1, R0, R1
BF806:  MOV.W           R1, R1,LSR#15
BF80A:  STRH.W          R1, [R9],#2
BF80E:  BNE             loc_BF7FC
BF810:  MOVS            R0, #1
BF812:  LSL.W           R0, R0, R8
BF816:  SUBS            R0, #1
BF818:  ANDS            R4, R0
BF81A:  MOV             R0, R4
BF81C:  ADD             SP, SP, #0x4C ; 'L'
BF81E:  POP.W           {R8-R11}
BF822:  POP             {R4-R7,PC}
