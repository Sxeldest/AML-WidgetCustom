; =========================================================
; Game Engine Function: sub_1B8124
; Address            : 0x1B8124 - 0x1B8A6E
; =========================================================

1B8124:  PUSH            {R4-R7,LR}
1B8126:  ADD             R7, SP, #0xC
1B8128:  PUSH.W          {R8-R11}
1B812C:  SUB             SP, SP, #0x64
1B812E:  STR.W           R1, [R7,#var_2C]
1B8132:  MOV             R6, R3
1B8134:  LDR             R1, [R7,#arg_4]
1B8136:  LSLS            R3, R2, #1
1B8138:  STR.W           R0, [R7,#var_7C]
1B813C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B814A)
1B8140:  MULS            R1, R3
1B8142:  STR.W           R3, [R7,#var_58]
1B8146:  ADD             R0, PC; __stack_chk_guard_ptr
1B8148:  LDR             R3, [R0]; __stack_chk_guard
1B814A:  LDR             R0, [R7,#arg_8]; int
1B814C:  ADDS            R1, #7
1B814E:  LDR             R3, [R3]
1B8150:  BIC.W           R1, R1, #7
1B8154:  STR.W           R3, [R7,#var_24]
1B8158:  SUB.W           R3, SP, R1
1B815C:  STR.W           R3, [R7,#var_28]
1B8160:  MOV             SP, R3
1B8162:  SUB.W           R10, SP, R1
1B8166:  MOV             SP, R10
1B8168:  LSLS            R1, R2, #2; n
1B816A:  STR.W           R2, [R7,#var_60]
1B816E:  BLX             sub_22178C
1B8172:  LDR.W           LR, [R7,#arg_0]
1B8176:  STRD.W          R6, R10, [R7,#var_78]
1B817A:  CMP.W           LR, #1
1B817E:  BLT.W           loc_1B8306
1B8182:  LDR.W           R5, =(eMeans_ptr - 0x1B8196)
1B8186:  MOV.W           R2, #0x200
1B818A:  LDRD.W          R1, R12, [R7,#arg_C]
1B818E:  MOV.W           R3, #0x50000
1B8192:  ADD             R5, PC; eMeans_ptr
1B8194:  LDR.W           R8, [R7,#arg_3C]
1B8198:  RSB.W           R1, R1, #9
1B819C:  LDR             R5, [R5]; eMeans
1B819E:  ORR.W           R1, R2, R1,LSL#10
1B81A2:  MOVS            R2, #0
1B81A4:  ADDS            R4, R2, #5
1B81A6:  LDRH.W          R6, [R12,R2,LSL#1]
1B81AA:  LDRSB           R0, [R5,R2]
1B81AC:  MULS            R4, R3
1B81AE:  ADD.W           R3, R3, #0x10000
1B81B2:  LSRS            R4, R4, #0x10
1B81B4:  ADD.W           R4, R4, R4,LSL#1
1B81B8:  ADD.W           R4, R1, R4,LSL#1
1B81BC:  ADD.W           R6, R4, R6,LSL#6
1B81C0:  SUB.W           R0, R6, R0,LSL#6
1B81C4:  STRH.W          R0, [R10,R2,LSL#1]
1B81C8:  ADDS            R2, #1
1B81CA:  CMP             LR, R2
1B81CC:  BNE             loc_1B81A4
1B81CE:  LDR.W           R6, [R7,#var_78]
1B81D2:  CMP.W           LR, #1
1B81D6:  BLT.W           loc_1B8306
1B81DA:  LDR.W           R1, [R7,#var_7C]
1B81DE:  MOVW            R2, #0x8066
1B81E2:  MOVS            R0, #0
1B81E4:  MOVT            R2, #0xFFFF
1B81E8:  MOVS            R3, #0
1B81EA:  LDRSH.W         R5, [R10,R3,LSL#1]
1B81EE:  SXTH            R2, R2
1B81F0:  LDRSH.W         R4, [R1,R3,LSL#1]
1B81F4:  ADDS            R3, #1
1B81F6:  SUB.W           R9, R4, R5
1B81FA:  CMP             R9, R2
1B81FC:  IT LT
1B81FE:  MOVLT           R9, R2
1B8200:  CMP             LR, R3
1B8202:  MOV             R2, R9
1B8204:  BNE             loc_1B81EA
1B8206:  LDR.W           R2, [R7,#var_58]
1B820A:  ADDS            R0, #1
1B820C:  ADD             R1, R2
1B820E:  LDR             R2, [R7,#arg_4]
1B8210:  CMP             R0, R2
1B8212:  MOV             R2, R9
1B8214:  BLT             loc_1B81E8
1B8216:  LDR.W           R0, [R7,#var_58]
1B821A:  ADDS            R0, #7
1B821C:  BIC.W           R0, R0, #7
1B8220:  SUB.W           R11, SP, R0
1B8224:  MOV             SP, R11
1B8226:  SUB.W           R10, SP, R0
1B822A:  MOV             SP, R10
1B822C:  CMP.W           LR, #1
1B8230:  BLT             loc_1B8320
1B8232:  LDR.W           R3, [R7,#var_7C]
1B8236:  MOVS            R0, #0
1B8238:  LDR.W           R6, [R7,#var_74]
1B823C:  LDRH.W          R1, [R6,R0,LSL#1]
1B8240:  LDRH.W          R2, [R3,R0,LSL#1]
1B8244:  SUBS            R1, R2, R1
1B8246:  STRH.W          R1, [R11,R0,LSL#1]
1B824A:  ADDS            R0, #1
1B824C:  CMP             LR, R0
1B824E:  BNE             loc_1B823C
1B8250:  LDR             R0, [R7,#arg_4]
1B8252:  MOVS            R1, #0
1B8254:  CMP             R0, #2
1B8256:  IT EQ
1B8258:  MOVEQ           R1, #1
1B825A:  STR.W           R1, [R7,#var_80]
1B825E:  BNE             loc_1B8296
1B8260:  CMP.W           LR, #1
1B8264:  BLT             loc_1B8296
1B8266:  LDR.W           R1, [R7,#var_60]
1B826A:  MOV             R3, R11
1B826C:  LDR.W           R0, [R7,#var_7C]
1B8270:  LDR.W           R2, [R7,#var_74]
1B8274:  ADD.W           R0, R0, R1,LSL#1
1B8278:  MOV             R1, LR
1B827A:  LDRSH.W         R6, [R2],#2
1B827E:  LDRSH.W         R5, [R0],#2
1B8282:  LDRSH.W         R4, [R3]
1B8286:  SUBS            R6, R5, R6
1B8288:  CMP             R6, R4
1B828A:  IT LT
1B828C:  MOVLT           R6, R4
1B828E:  SUBS            R1, #1
1B8290:  STRH.W          R6, [R3],#2
1B8294:  BNE             loc_1B827A
1B8296:  MOV.W           R2, LR,LSL#1; n
1B829A:  MOV             R0, R10; dest
1B829C:  MOV             R1, R11; src
1B829E:  BLX             j_memcpy
1B82A2:  LDR             R4, [R7,#arg_0]
1B82A4:  MOV             LR, R4
1B82A6:  CMP.W           LR, #1
1B82AA:  BLE             loc_1B834A
1B82AC:  MOV             R1, R11
1B82AE:  SUB.W           R0, LR, #1
1B82B2:  LDRH.W          R2, [R1],#2
1B82B6:  MOV             R3, R0
1B82B8:  SXTH            R2, R2
1B82BA:  LDRSH.W         R6, [R1]
1B82BE:  SUB.W           R2, R2, #0x800
1B82C2:  CMP             R2, R6
1B82C4:  IT LT
1B82C6:  MOVLT           R2, R6
1B82C8:  SUBS            R3, #1
1B82CA:  STRH.W          R2, [R1],#2
1B82CE:  BNE             loc_1B82B8
1B82D0:  SUBS.W          R1, LR, #2
1B82D4:  STR.W           R1, [R7,#var_5C]
1B82D8:  BLT             loc_1B8352
1B82DA:  ADD.W           R1, R11, LR,LSL#1
1B82DE:  LDR.W           R6, [R7,#var_78]
1B82E2:  SUBS            R1, #4
1B82E4:  LDRSH.W         R3, [R1,#2]
1B82E8:  SUBS            R0, #1
1B82EA:  LDRSH.W         R2, [R1]
1B82EE:  SUB.W           R3, R3, #0xC00
1B82F2:  CMP             R3, R2
1B82F4:  IT LT
1B82F6:  MOVLT           R3, R2
1B82F8:  CMP             R0, #0
1B82FA:  STRH            R3, [R1]
1B82FC:  SUB.W           R1, R1, #2
1B8300:  BGT             loc_1B82E4
1B8302:  MOVS            R0, #1
1B8304:  B               loc_1B8358
1B8306:  LDR.W           R0, [R7,#var_58]
1B830A:  ADDS            R0, #7
1B830C:  BIC.W           R0, R0, #7
1B8310:  SUB.W           R11, SP, R0
1B8314:  MOV             SP, R11
1B8316:  SUB.W           R10, SP, R0
1B831A:  MOV             SP, R10
1B831C:  MOVW            R9, #0x8066
1B8320:  MOV.W           R2, LR,LSL#1; n
1B8324:  MOV             R0, R10; dest
1B8326:  MOV             R1, R11; src
1B8328:  BLX             j_memcpy
1B832C:  MOVS            R0, #0
1B832E:  LDR             R4, [R7,#arg_0]
1B8330:  STR.W           R0, [R7,#var_64]
1B8334:  MOVS            R1, #0
1B8336:  LDR             R0, [R7,#arg_4]
1B8338:  MOV             LR, R4
1B833A:  CMP             R0, #2
1B833C:  SUB.W           R0, LR, #2
1B8340:  IT EQ
1B8342:  MOVEQ           R1, #1
1B8344:  STR.W           R0, [R7,#var_5C]
1B8348:  B               loc_1B83B8
1B834A:  SUB.W           R0, LR, #2
1B834E:  STR.W           R0, [R7,#var_5C]
1B8352:  LDR.W           R6, [R7,#var_78]
1B8356:  MOVS            R0, #0
1B8358:  STR.W           R0, [R7,#var_64]
1B835C:  CMP.W           LR, #1
1B8360:  BLT             loc_1B83B4
1B8362:  SXTH.W          R0, R9
1B8366:  MOVW            R1, #0xEC00
1B836A:  SUBS.W          R0, R0, #0x3000
1B836E:  MOVT            R1, #0xFFFF
1B8372:  IT LT
1B8374:  MOVLT           R0, #0
1B8376:  MOV.W           R12, #0
1B837A:  MOVS            R3, #0x20 ; ' '
1B837C:  MOV             R2, LR
1B837E:  LDRSH.W         R6, [R11],#2
1B8382:  LDRH.W          R5, [R10],#2
1B8386:  CMP             R0, R6
1B8388:  IT GT
1B838A:  MOVGT           R6, R0
1B838C:  SUBS            R6, R5, R6
1B838E:  LSLS            R5, R6, #0x10
1B8390:  SXTH            R6, R6
1B8392:  AND.W           R6, R6, R5,ASR#31
1B8396:  CMP             R6, R1
1B8398:  IT LE
1B839A:  MOVLE           R6, R1
1B839C:  SUBS            R2, #1
1B839E:  ADD.W           R6, R6, #0x200
1B83A2:  SUB.W           R6, R12, R6,ASR#10
1B83A6:  LSR.W           R6, R3, R6
1B83AA:  STR.W           R6, [R8],#4
1B83AE:  BNE             loc_1B837E
1B83B0:  LDR.W           R6, [R7,#var_78]
1B83B4:  LDR.W           R1, [R7,#var_80]
1B83B8:  LDR             R0, [R7,#arg_24]
1B83BA:  LDR             R2, [R7,#arg_38]
1B83BC:  CMP             R0, #1
1B83BE:  ITT GE
1B83C0:  LDRGE           R0, [R7,#arg_28]
1B83C2:  CMPGE           R0, #0x33 ; '3'
1B83C4:  BLT.W           loc_1B8730
1B83C8:  LDR             R0, [R7,#arg_30]
1B83CA:  CMP             R0, #0
1B83CC:  BNE.W           loc_1B8730
1B83D0:  LDR.W           R0, [R7,#var_5C]
1B83D4:  SUB.W           R12, LR, #1
1B83D8:  LDR.W           R2, [R7,#var_2C]
1B83DC:  MOVS            R4, #0
1B83DE:  SUBS            R0, #2
1B83E0:  STR.W           R0, [R7,#var_68]
1B83E4:  LDR.W           R0, [R7,#var_28]
1B83E8:  SUB.W           R8, R2, #2
1B83EC:  STR.W           R1, [R7,#var_80]
1B83F0:  MOV             R1, R2
1B83F2:  SUBS            R3, R0, #2
1B83F4:  ADD.W           R10, R0, #2
1B83F8:  MOV.W           R11, #0
1B83FC:  MOVS            R2, #0
1B83FE:  SUB.W           R0, LR, #3
1B8402:  STR.W           R0, [R7,#var_70]
1B8406:  STR.W           R12, [R7,#var_6C]
1B840A:  LDR.W           R0, [R7,#var_60]
1B840E:  STR.W           R2, [R7,#var_48]
1B8412:  MULS            R2, R0
1B8414:  LDR.W           R0, [R7,#var_2C]
1B8418:  LDRSH.W         R5, [R0,R2,LSL#1]
1B841C:  LDR.W           R0, [R7,#var_28]
1B8420:  STR.W           R2, [R7,#var_30]
1B8424:  STR.W           R5, [R7,#var_4C]
1B8428:  STRH.W          R5, [R0,R2,LSL#1]
1B842C:  LDR.W           R0, [R7,#var_64]
1B8430:  CMP             R0, #1
1B8432:  BNE             loc_1B8466
1B8434:  MOVS            R0, #0
1B8436:  MOV             R2, R5
1B8438:  ADD.W           R6, R1, R0,LSL#1
1B843C:  SXTH            R2, R2
1B843E:  LDRSH.W         R5, [R1,R0,LSL#1]
1B8442:  ADD.W           R2, R2, #0x600
1B8446:  LDRSH.W         R6, [R6,#2]
1B844A:  CMP             R2, R6
1B844C:  ADD.W           R5, R5, #0x200
1B8450:  IT GE
1B8452:  MOVGE           R2, R6
1B8454:  CMP             R5, R6
1B8456:  STRH.W          R2, [R10,R0,LSL#1]
1B845A:  ADD.W           R0, R0, #1
1B845E:  IT LT
1B8460:  MOVLT           R11, R0
1B8462:  CMP             R12, R0
1B8464:  BNE             loc_1B8438
1B8466:  STR.W           R1, [R7,#var_44]
1B846A:  CMP.W           R11, #1
1B846E:  STR.W           R10, [R7,#var_3C]
1B8472:  LDRD.W          R1, R0, [R7,#var_30]
1B8476:  ADD.W           R0, R0, R1,LSL#1
1B847A:  STR.W           R0, [R7,#var_54]
1B847E:  LDR.W           R0, [R7,#var_28]
1B8482:  ADD.W           R1, R0, R1,LSL#1
1B8486:  BLT             loc_1B84B2
1B8488:  LDRH.W          R6, [R1,R11,LSL#1]
1B848C:  MOV             R0, R11
1B848E:  LDRSH.W         R2, [R8,R0,LSL#1]
1B8492:  SXTH            R6, R6
1B8494:  ADD.W           R6, R6, #0x800
1B8498:  LDRSH.W         R5, [R3,R0,LSL#1]
1B849C:  CMP             R6, R2
1B849E:  IT LT
1B84A0:  MOVLT           R2, R6
1B84A2:  CMP             R2, R5
1B84A4:  IT GT
1B84A6:  MOVGT           R2, R5
1B84A8:  STRH.W          R2, [R3,R0,LSL#1]
1B84AC:  SUBS            R0, #1
1B84AE:  MOV             R6, R2
1B84B0:  BGT             loc_1B848E
1B84B2:  STR.W           R1, [R7,#var_50]
1B84B6:  CMP.W           LR, #5
1B84BA:  STRD.W          R8, R3, [R7,#var_38]
1B84BE:  MOV             R12, R4
1B84C0:  LDR.W           LR, [R7,#var_68]
1B84C4:  STR.W           R4, [R7,#var_40]
1B84C8:  BLT             loc_1B859A
1B84CA:  LDR.W           R1, [R7,#var_2C]
1B84CE:  ADD.W           R0, R1, R12
1B84D2:  LDRSH.W         R1, [R1,R12]
1B84D6:  LDRSH.W         R3, [R0,#2]
1B84DA:  LDRSH.W         R8, [R0,#4]
1B84DE:  LDRSH.W         R6, [R0,#6]
1B84E2:  CMP             R1, R3
1B84E4:  LDRSH.W         R4, [R0,#8]
1B84E8:  MOV             R2, R3
1B84EA:  LDR.W           R0, [R7,#var_28]
1B84EE:  ADD             R0, R12
1B84F0:  LDRSH.W         R5, [R0,#4]
1B84F4:  ITT GT
1B84F6:  MOVGT           R2, R1
1B84F8:  MOVGT           R1, R3
1B84FA:  CMP             R6, R4
1B84FC:  MOV             R3, R4
1B84FE:  ITT GT
1B8500:  MOVGT           R3, R6
1B8502:  MOVGT           R6, R4
1B8504:  MOV             R10, R2
1B8506:  CMP             R1, R6
1B8508:  ITT GT
1B850A:  MOVGT           R10, R3
1B850C:  MOVGT           R3, R2
1B850E:  IT GT
1B8510:  MOVGT           R6, R1
1B8512:  SXTH            R6, R6
1B8514:  SXTH            R4, R3
1B8516:  CMP             R8, R10
1B8518:  BLE             loc_1B8528
1B851A:  SXTH.W          R2, R10
1B851E:  CMP             R2, R6
1B8520:  BGE             loc_1B853A
1B8522:  CMP             R8, R6
1B8524:  MOV             R2, R6
1B8526:  B               loc_1B8548
1B8528:  CMP             R8, R6
1B852A:  BGE             loc_1B8544
1B852C:  SXTH.W          R1, R10
1B8530:  CMP             R1, R6
1B8532:  MOV             R2, R6
1B8534:  IT LT
1B8536:  MOVLT           R2, R10
1B8538:  B               loc_1B854C
1B853A:  CMP             R4, R2
1B853C:  MOV             R2, R10
1B853E:  IT LT
1B8540:  MOVLT           R2, R4
1B8542:  B               loc_1B854C
1B8544:  CMP             R8, R4
1B8546:  MOV             R2, R4
1B8548:  IT LT
1B854A:  MOVLT           R2, R8
1B854C:  SXTH            R1, R2
1B854E:  SUB.W           R1, R1, #0x400
1B8552:  CMP             R1, R5
1B8554:  BLT             loc_1B858E
1B8556:  SXTH.W          R2, R10
1B855A:  CMP             R8, R2
1B855C:  BLE             loc_1B856A
1B855E:  CMP             R2, R6
1B8560:  BGE             loc_1B8576
1B8562:  CMP             R8, R6
1B8564:  IT LT
1B8566:  MOVLT           R6, R8
1B8568:  B               loc_1B8588
1B856A:  CMP             R8, R6
1B856C:  BGE             loc_1B8580
1B856E:  CMP             R2, R6
1B8570:  IT LT
1B8572:  MOVLT           R6, R10
1B8574:  B               loc_1B8588
1B8576:  CMP             R4, R2
1B8578:  IT LT
1B857A:  MOVLT           R10, R4
1B857C:  MOV             R6, R10
1B857E:  B               loc_1B8588
1B8580:  CMP             R8, R4
1B8582:  IT LT
1B8584:  MOVLT           R4, R8
1B8586:  MOV             R6, R4
1B8588:  SXTH            R1, R6
1B858A:  SUB.W           R5, R1, #0x400
1B858E:  SUBS.W          LR, LR, #1
1B8592:  ADD.W           R12, R12, #2
1B8596:  STRH            R5, [R0,#4]
1B8598:  BNE             loc_1B84CA
1B859A:  LDR.W           R0, [R7,#var_54]
1B859E:  MOV.W           R12, #0xFC00
1B85A2:  LDR.W           R4, [R7,#var_50]
1B85A6:  LDR.W           R5, [R7,#var_4C]
1B85AA:  LDRSH.W         R6, [R0,#2]
1B85AE:  LDRSH.W         R1, [R0,#4]
1B85B2:  CMP             R5, R6
1B85B4:  LDRSH.W         R2, [R4]
1B85B8:  MOV             R0, R6
1B85BA:  LDRSH.W         R3, [R4,#2]
1B85BE:  ITT GT
1B85C0:  MOVGT           R0, R5
1B85C2:  MOVGT           R5, R6
1B85C4:  CMP             R5, R1
1B85C6:  IT LT
1B85C8:  MOVLT           R5, R1
1B85CA:  CMP             R0, R1
1B85CC:  IT LT
1B85CE:  MOVLT           R5, R0
1B85D0:  UXTAH.W         R0, R12, R5
1B85D4:  SXTH            R1, R0
1B85D6:  CMP             R1, R2
1B85D8:  IT GE
1B85DA:  MOVGE           R2, R0
1B85DC:  CMP             R1, R3
1B85DE:  STRH            R2, [R4]
1B85E0:  IT LT
1B85E2:  MOVLT           R0, R3
1B85E4:  STRH            R0, [R4,#2]
1B85E6:  LDR.W           R0, [R7,#var_70]
1B85EA:  LDR.W           R1, [R7,#var_30]
1B85EE:  LDR.W           R2, [R7,#var_2C]
1B85F2:  ADD             R0, R1
1B85F4:  LDR.W           R5, [R7,#var_5C]
1B85F8:  LDRSH.W         R1, [R2,R0,LSL#1]
1B85FC:  ADD.W           R0, R2, R0,LSL#1
1B8600:  LDRSH.W         R3, [R4,R5,LSL#1]
1B8604:  LDRSH.W         R6, [R0,#2]
1B8608:  LDRSH.W         R0, [R0,#4]
1B860C:  CMP             R1, R6
1B860E:  MOV             R2, R6
1B8610:  ITT GT
1B8612:  MOVGT           R2, R1
1B8614:  MOVGT           R1, R6
1B8616:  CMP             R1, R0
1B8618:  IT LT
1B861A:  MOVLT           R1, R0
1B861C:  CMP             R2, R0
1B861E:  IT LT
1B8620:  MOVLT           R1, R2
1B8622:  UXTAH.W         R0, R12, R1
1B8626:  SXTH            R1, R0
1B8628:  CMP             R1, R3
1B862A:  IT GE
1B862C:  MOVGE           R3, R0
1B862E:  LDR.W           R12, [R7,#var_6C]
1B8632:  STRH.W          R3, [R4,R5,LSL#1]
1B8636:  LDRSH.W         R2, [R4,R12,LSL#1]
1B863A:  CMP             R1, R2
1B863C:  IT LT
1B863E:  MOVLT           R0, R2
1B8640:  STRH.W          R0, [R4,R12,LSL#1]
1B8644:  LDR             R4, [R7,#arg_0]
1B8646:  MOV             LR, R4
1B8648:  LDR.W           R4, [R7,#var_40]
1B864C:  CMP.W           LR, #1
1B8650:  BLT             loc_1B8672
1B8652:  LDR.W           R2, [R7,#var_74]
1B8656:  MOV             R0, LR
1B8658:  LDR.W           R6, [R7,#var_28]
1B865C:  LDRSH.W         R1, [R2],#2
1B8660:  LDRSH           R3, [R6,R4]
1B8662:  CMP             R3, R1
1B8664:  IT GT
1B8666:  MOVGT           R1, R3
1B8668:  SUBS            R0, #1
1B866A:  STRH            R1, [R6,R4]
1B866C:  ADD.W           R6, R6, #2
1B8670:  BNE             loc_1B865C
1B8672:  LDR.W           R0, [R7,#var_58]
1B8676:  LDR.W           R3, [R7,#var_34]
1B867A:  LDR.W           R8, [R7,#var_38]
1B867E:  ADD             R4, R0
1B8680:  LDR.W           R1, [R7,#var_44]
1B8684:  ADD             R3, R0
1B8686:  LDR.W           R10, [R7,#var_3C]
1B868A:  ADD             R8, R0
1B868C:  LDR.W           R2, [R7,#var_48]
1B8690:  ADD             R1, R0
1B8692:  ADD             R10, R0
1B8694:  LDR             R0, [R7,#arg_4]
1B8696:  ADDS            R2, #1
1B8698:  CMP             R2, R0
1B869A:  BLT.W           loc_1B840A
1B869E:  LDR.W           R0, [R7,#var_80]
1B86A2:  CMP             R0, #0
1B86A4:  BEQ             loc_1B874A
1B86A6:  LDR.W           R6, [R7,#var_78]
1B86AA:  CMP             R6, LR
1B86AC:  BGE.W           loc_1B886E
1B86B0:  LDR.W           R0, [R7,#var_28]
1B86B4:  MOV             R4, LR
1B86B6:  LDR.W           R3, [R7,#var_60]
1B86BA:  SUB.W           LR, R4, R6
1B86BE:  ADD.W           R1, R0, R6,LSL#1
1B86C2:  LDR.W           R0, [R7,#var_7C]
1B86C6:  MOV.W           R12, #0
1B86CA:  MOVS            R4, #0
1B86CC:  ADD.W           R10, R0, R6,LSL#1
1B86D0:  ADD.W           R2, R1, R3,LSL#1
1B86D4:  ADD.W           R8, R10, R3,LSL#1
1B86D8:  LDRSH.W         R5, [R1,R4,LSL#1]
1B86DC:  LDRSH.W         R0, [R2,R4,LSL#1]
1B86E0:  SUB.W           R5, R5, #0x1000
1B86E4:  CMP             R5, R0
1B86E6:  IT LT
1B86E8:  MOVLT           R5, R0
1B86EA:  STRH.W          R5, [R2,R4,LSL#1]
1B86EE:  SXTH            R5, R5
1B86F0:  SUB.W           R5, R5, #0x1000
1B86F4:  LDRSH.W         R0, [R1,R4,LSL#1]
1B86F8:  CMP             R5, R0
1B86FA:  IT LT
1B86FC:  MOVLT           R5, R0
1B86FE:  STRH.W          R5, [R1,R4,LSL#1]
1B8702:  SXTH            R5, R5
1B8704:  LDRSH.W         R0, [R2,R4,LSL#1]
1B8708:  LDRSH.W         R3, [R8,R4,LSL#1]
1B870C:  LDRSH.W         R6, [R10,R4,LSL#1]
1B8710:  SUBS            R0, R3, R0
1B8712:  CMP             R0, #0
1B8714:  SUB.W           R5, R6, R5
1B8718:  IT LE
1B871A:  MOVLE           R0, R12
1B871C:  CMP             R5, #0
1B871E:  IT GT
1B8720:  ADDGT           R0, R0, R5
1B8722:  LSRS            R0, R0, #1
1B8724:  STRH.W          R0, [R1,R4,LSL#1]
1B8728:  ADDS            R4, #1
1B872A:  CMP             LR, R4
1B872C:  BNE             loc_1B86D8
1B872E:  B               loc_1B8780
1B8730:  CMP             R6, LR
1B8732:  BGE.W           loc_1B89AA
1B8736:  ADD.W           R1, R2, R6,LSL#2
1B873A:  SUB.W           R0, LR, R6
1B873E:  MOVS            R2, #0xD
1B8740:  STR.W           R2, [R1],#4
1B8744:  SUBS            R0, #1
1B8746:  BNE             loc_1B8740
1B8748:  B               loc_1B89AA
1B874A:  LDR.W           R6, [R7,#var_78]
1B874E:  CMP             R6, LR
1B8750:  BGE.W           loc_1B886E
1B8754:  LDR.W           R1, [R7,#var_28]
1B8758:  SUB.W           R0, LR, R6
1B875C:  LDR.W           R2, [R7,#var_7C]
1B8760:  ADD.W           R1, R1, R6,LSL#1
1B8764:  ADD.W           R2, R2, R6,LSL#1
1B8768:  LDRSH.W         R3, [R1]
1B876C:  LDRSH.W         R6, [R2],#2
1B8770:  SUBS            R3, R6, R3
1B8772:  CMP             R3, #0
1B8774:  IT LE
1B8776:  MOVLE           R3, #0
1B8778:  SUBS            R0, #1
1B877A:  STRH.W          R3, [R1],#2
1B877E:  BNE             loc_1B8768
1B8780:  LDR             R4, [R7,#arg_0]
1B8782:  LDR.W           R6, [R7,#var_78]
1B8786:  MOV             LR, R4
1B8788:  CMP             R6, LR
1B878A:  BGE             loc_1B886E
1B878C:  LDR             R1, [R7,#arg_34]
1B878E:  SUB.W           R0, LR, R6
1B8792:  ADD.W           R2, R1, R6,LSL#1
1B8796:  LDR.W           R1, [R7,#var_28]
1B879A:  MOV             R3, R0
1B879C:  ADD.W           R12, R1, R6,LSL#1
1B87A0:  MOV             R1, R12
1B87A2:  LDRSH.W         R6, [R2],#2
1B87A6:  LDRSH.W         R5, [R1]
1B87AA:  CMP             R5, R6
1B87AC:  IT GT
1B87AE:  MOVGT           R6, R5
1B87B0:  SUBS            R3, #1
1B87B2:  STRH.W          R6, [R1],#2
1B87B6:  BNE             loc_1B87A2
1B87B8:  LDR.W           R6, [R7,#var_78]
1B87BC:  CMP             R6, LR
1B87BE:  BGE             loc_1B886E
1B87C0:  LDR             R1, [R7,#arg_38]
1B87C2:  MOVW            R10, #0
1B87C6:  MOVS            R3, #0xD
1B87C8:  MOVW            R8, #0xFFFF
1B87CC:  ADD.W           R2, R1, R6,LSL#2
1B87D0:  MOVT            R10, #0x3FFF
1B87D4:  MOV             R11, #0xFFFFFFFE
1B87D8:  LDRSH.W         LR, [R12]
1B87DC:  CMP.W           LR, #0x1000
1B87E0:  IT GE
1B87E2:  MOVGE.W         LR, #0x1000
1B87E6:  MOV.W           R1, LR,ASR#10
1B87EA:  CMP             R1, #0xE
1B87EC:  BLE             loc_1B87F4
1B87EE:  MOV.W           R1, #0x7F000000
1B87F2:  B               loc_1B8854
1B87F4:  CMN.W           R1, #0xF
1B87F8:  BGE             loc_1B87FE
1B87FA:  MOVS            R1, #0
1B87FC:  B               loc_1B8854
1B87FE:  MOVW            R4, #0x3FF0
1B8802:  MOVS            R6, #0
1B8804:  AND.W           R4, R4, LR,LSL#4
1B8808:  MOVT            R6, #0x39E3
1B880C:  MOVW            R5, #0x4FB8
1B8810:  SMLABB.W        R6, R4, R5, R6
1B8814:  MOVS            R5, #0x7FFF0000
1B881A:  LSRS            R6, R6, #0x10
1B881C:  SMULBB.W        R6, R6, R4
1B8820:  AND.W           R6, R5, R6,LSL#1
1B8824:  MOVS            R5, #0x59140000
1B882A:  ADD             R6, R5
1B882C:  SMULTB.W        R6, R6, R4
1B8830:  SUB.W           R4, R11, R1
1B8834:  NEGS            R1, R4
1B8836:  CMP             R4, #0
1B8838:  MOV.W           R6, R6,LSL#1
1B883C:  BIC.W           R6, R6, R8
1B8840:  ADD             R6, R10
1B8842:  MOV.W           R6, R6,ASR#16
1B8846:  LSL.W           R1, R6, R1
1B884A:  IT GT
1B884C:  ASRGT.W         R1, R6, R4
1B8850:  LDR.W           R6, [R7,#var_78]
1B8854:  MULS            R1, R3
1B8856:  LDR             R4, [R7,#arg_0]
1B8858:  SUBS            R0, #1
1B885A:  ADD.W           R12, R12, #2
1B885E:  MOV             LR, R4
1B8860:  ADD.W           R1, R1, #0x8000
1B8864:  MOV.W           R1, R1,ASR#16
1B8868:  STR.W           R1, [R2],#4
1B886C:  BNE             loc_1B87D8
1B886E:  LDR             R1, [R7,#arg_1C]
1B8870:  MOVS            R0, #0
1B8872:  CMP             R1, #0
1B8874:  LDR             R1, [R7,#arg_18]
1B8876:  IT EQ
1B8878:  MOVEQ           R0, #1
1B887A:  CMP             R1, #0
1B887C:  IT NE
1B887E:  MOVNE           R1, #1
1B8880:  CMP             R6, LR
1B8882:  BGE             loc_1B88AC
1B8884:  LDR             R2, [R7,#arg_14]
1B8886:  CMP             R2, #0
1B8888:  IT EQ
1B888A:  ANDSEQ.W        R0, R0, R1
1B888E:  BNE             loc_1B88AC
1B8890:  LDR.W           R1, [R7,#var_28]
1B8894:  SUB.W           R0, LR, R6
1B8898:  ADD.W           R1, R1, R6,LSL#1
1B889C:  LDRSH.W         R2, [R1]
1B88A0:  SUBS            R0, #1
1B88A2:  MOV.W           R2, R2,LSR#1
1B88A6:  STRH.W          R2, [R1],#2
1B88AA:  BNE             loc_1B889C
1B88AC:  LDR.W           R11, [R7,#arg_24]
1B88B0:  CMP             R6, LR
1B88B2:  LDR.W           R10, [R7,#arg_8]
1B88B6:  BGE             loc_1B89AA
1B88B8:  MOV             R0, R6
1B88BA:  CMP             R0, #7
1B88BC:  BGT             loc_1B88CA
1B88BE:  LDR.W           R2, [R7,#var_28]
1B88C2:  LDRH.W          R1, [R2,R0,LSL#1]
1B88C6:  LSLS            R1, R1, #1
1B88C8:  B               loc_1B88D8
1B88CA:  CMP             R0, #0xC
1B88CC:  BLT             loc_1B88DC
1B88CE:  LDR.W           R2, [R7,#var_28]
1B88D2:  LDRSH.W         R1, [R2,R0,LSL#1]
1B88D6:  LSRS            R1, R1, #1
1B88D8:  STRH.W          R1, [R2,R0,LSL#1]
1B88DC:  ADDS            R0, #1
1B88DE:  CMP             LR, R0
1B88E0:  BNE             loc_1B88BA
1B88E2:  MOVS            R0, #0
1B88E4:  CMP             R6, LR
1B88E6:  MOV             R4, R6
1B88E8:  BGE             loc_1B89AC
1B88EA:  LDR             R1, [R7,#arg_20]
1B88EC:  MOV             R3, R4
1B88EE:  LDR             R2, [R7,#arg_18]
1B88F0:  LDRH.W          LR, [R1,R4,LSL#1]
1B88F4:  LDR             R1, [R7,#arg_1C]
1B88F6:  CMP             R1, #0
1B88F8:  LDR             R1, [R7,#arg_14]
1B88FA:  IT EQ
1B88FC:  MOVEQ           R0, #1
1B88FE:  CMP             R1, #0
1B8900:  IT NE
1B8902:  MOVNE           R1, #1
1B8904:  CMP             R2, #0
1B8906:  IT NE
1B8908:  ORRSNE.W        R0, R0, R1
1B890C:  BNE             loc_1B89D6
1B890E:  LDR             R0, [R7,#arg_28]
1B8910:  MOV             R1, #0x55555556
1B8918:  MOVW            R12, #0xAAAB
1B891C:  MOVS            R6, #0
1B891E:  MOVT            R12, #0x2AAA
1B8922:  LSLS            R0, R0, #1
1B8924:  SMMUL.W         R0, R0, R1
1B8928:  MOV             R1, R3
1B892A:  ADD.W           R2, R0, R0,LSR#31
1B892E:  LDR.W           R3, [R7,#var_28]
1B8932:  LDR             R4, [R7,#arg_20]
1B8934:  LDRSH.W         R0, [R3,R1,LSL#1]
1B8938:  CMP.W           R0, #0x1000
1B893C:  IT GE
1B893E:  MOVGE.W         R0, #0x1000
1B8942:  STRH.W          R0, [R3,R1,LSL#1]
1B8946:  MOV             R3, R1
1B8948:  ADD.W           R1, R4, R1,LSL#1
1B894C:  LDR             R4, [R7,#arg_4]
1B894E:  LDRSH.W         R5, [R1,#2]
1B8952:  SXTH.W          R1, LR
1B8956:  SUBS            R1, R5, R1
1B8958:  MULS            R1, R4
1B895A:  LSL.W           R1, R1, R11
1B895E:  CMP             R1, #5
1B8960:  BGT             loc_1B896C
1B8962:  ASRS            R4, R0, #0xA
1B8964:  MUL.W           R0, R4, R1
1B8968:  LSLS            R0, R0, #3
1B896A:  B               loc_1B898E
1B896C:  CMP             R1, #0x31 ; '1'
1B896E:  BLT             loc_1B897C
1B8970:  ASRS            R4, R0, #7
1B8972:  MUL.W           R0, R4, R1
1B8976:  SBFX.W          R0, R0, #0, #0x1D
1B897A:  B               loc_1B898E
1B897C:  MULS            R0, R1
1B897E:  SMMUL.W         R0, R0, R12
1B8982:  ADD.W           R0, R0, R0,LSR#31
1B8986:  ASRS            R4, R0, #0xA
1B8988:  ADD.W           R0, R4, R4,LSL#1
1B898C:  LSLS            R0, R0, #4
1B898E:  ADD             R0, R6
1B8990:  ASRS            R1, R0, #6
1B8992:  CMP             R1, R2
1B8994:  BGT             loc_1B8A62
1B8996:  ADDS            R1, R3, #1
1B8998:  STR.W           R4, [R10,R3,LSL#2]
1B899C:  UXTH.W          LR, R5
1B89A0:  LDR             R3, [R7,#arg_0]
1B89A2:  MOV             R6, R0
1B89A4:  CMP             R1, R3
1B89A6:  BLT             loc_1B892E
1B89A8:  B               loc_1B89AC
1B89AA:  MOVS            R0, #0
1B89AC:  LDR             R1, [R7,#arg_2C]
1B89AE:  STR             R0, [R1]
1B89B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B89BA)
1B89B2:  LDR.W           R1, [R7,#var_24]
1B89B6:  ADD             R0, PC; __stack_chk_guard_ptr
1B89B8:  LDR             R0, [R0]; __stack_chk_guard
1B89BA:  LDR             R0, [R0]
1B89BC:  SUBS            R0, R0, R1
1B89BE:  ITTTT EQ
1B89C0:  SXTHEQ.W        R0, R9
1B89C4:  SUBEQ.W         R4, R7, #-var_1C
1B89C8:  MOVEQ           SP, R4
1B89CA:  POPEQ.W         {R8-R11}
1B89CE:  IT EQ
1B89D0:  POPEQ           {R4-R7,PC}
1B89D2:  BLX             __stack_chk_fail
1B89D6:  LDR.W           R0, [R7,#var_28]
1B89DA:  MOVW            R12, #0xAAAB
1B89DE:  ADD.W           R10, R10, R3,LSL#2
1B89E2:  MOVT            R12, #0x2AAA
1B89E6:  ADD.W           R2, R0, R3,LSL#1
1B89EA:  LDR             R0, [R7,#arg_0]
1B89EC:  SUB.W           R8, R0, R3
1B89F0:  LDR             R0, [R7,#arg_20]
1B89F2:  ADD.W           R0, R0, R3,LSL#1
1B89F6:  ADDS            R5, R0, #2
1B89F8:  MOVS            R0, #0
1B89FA:  LDRSH.W         R1, [R2]
1B89FE:  SXTH.W          R3, LR
1B8A02:  LDR             R6, [R7,#arg_4]
1B8A04:  CMP.W           R1, #0x1000
1B8A08:  IT GE
1B8A0A:  MOVGE.W         R1, #0x1000
1B8A0E:  STRH            R1, [R2]
1B8A10:  LDRSH.W         R4, [R5]
1B8A14:  SUBS            R3, R4, R3
1B8A16:  UXTH.W          LR, R4
1B8A1A:  MULS            R3, R6
1B8A1C:  LSL.W           R3, R3, R11
1B8A20:  CMP             R3, #6
1B8A22:  BGE             loc_1B8A2E
1B8A24:  ASRS            R4, R1, #0xA
1B8A26:  MUL.W           R1, R4, R3
1B8A2A:  LSLS            R1, R1, #3
1B8A2C:  B               loc_1B8A50
1B8A2E:  CMP             R3, #0x30 ; '0'
1B8A30:  BLE             loc_1B8A3E
1B8A32:  ASRS            R4, R1, #7
1B8A34:  MUL.W           R1, R4, R3
1B8A38:  SBFX.W          R1, R1, #0, #0x1D
1B8A3C:  B               loc_1B8A50
1B8A3E:  MULS            R1, R3
1B8A40:  SMMUL.W         R1, R1, R12
1B8A44:  ADD.W           R1, R1, R1,LSR#31
1B8A48:  ASRS            R4, R1, #0xA
1B8A4A:  ADD.W           R1, R4, R4,LSL#1
1B8A4E:  LSLS            R1, R1, #4
1B8A50:  STR.W           R4, [R10],#4
1B8A54:  ADD             R0, R1
1B8A56:  ADDS            R2, #2
1B8A58:  ADDS            R5, #2
1B8A5A:  SUBS.W          R8, R8, #1
1B8A5E:  BNE             loc_1B89FA
1B8A60:  B               loc_1B89AC
1B8A62:  RSB.W           R0, R6, R2,LSL#6
1B8A66:  STR.W           R0, [R10,R3,LSL#2]
1B8A6A:  LSLS            R0, R2, #6
1B8A6C:  B               loc_1B89AC
