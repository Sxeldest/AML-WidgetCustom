; =========================================================
; Game Engine Function: silk_stereo_find_predictor
; Address            : 0x1AA190 - 0x1AA5B0
; =========================================================

1AA190:  PUSH            {R4-R7,LR}
1AA192:  ADD             R7, SP, #0xC
1AA194:  PUSH.W          {R8-R11}
1AA198:  SUB             SP, SP, #0x2C
1AA19A:  STR             R0, [SP,#0x48+var_3C]
1AA19C:  MOV             R6, R1
1AA19E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1AA1AC)
1AA1A2:  MOV             R4, R2
1AA1A4:  LDR.W           R10, [R7,#arg_0]
1AA1A8:  ADD             R0, PC; __stack_chk_guard_ptr
1AA1AA:  STR             R3, [SP,#0x48+var_34]
1AA1AC:  LDR             R1, [R0]; __stack_chk_guard
1AA1AE:  ADD             R0, SP, #0x48+var_2C
1AA1B0:  MOV             R3, R10
1AA1B2:  LDR             R2, [R1]
1AA1B4:  ADD             R1, SP, #0x48+var_24
1AA1B6:  STR             R2, [SP,#0x48+var_20]
1AA1B8:  MOV             R2, R6
1AA1BA:  BLX             j_silk_sum_sqr_shift
1AA1BE:  ADD             R0, SP, #0x48+var_30
1AA1C0:  ADD             R1, SP, #0x48+var_28
1AA1C2:  MOV             R2, R4
1AA1C4:  MOV             R3, R10
1AA1C6:  BLX             j_silk_sum_sqr_shift
1AA1CA:  LDRD.W          R0, R1, [SP,#0x48+var_28]
1AA1CE:  LDR             R2, [SP,#0x48+var_30]
1AA1D0:  CMP             R1, R0
1AA1D2:  MOV             R3, R0
1AA1D4:  IT GT
1AA1D6:  MOVGT           R3, R1
1AA1D8:  AND.W           R5, R3, #1
1AA1DC:  ADD.W           R8, R5, R3
1AA1E0:  MOV             R3, R10
1AA1E2:  SUB.W           R0, R8, R0
1AA1E6:  SUB.W           R1, R8, R1
1AA1EA:  ASR.W           R0, R2, R0
1AA1EE:  MOV             R2, R8
1AA1F0:  STR             R0, [SP,#0x48+var_30]
1AA1F2:  LDR             R0, [SP,#0x48+var_2C]
1AA1F4:  ASRS            R0, R1
1AA1F6:  CMP             R0, #1
1AA1F8:  IT LE
1AA1FA:  MOVLE           R0, #1
1AA1FC:  MOV             R1, R4
1AA1FE:  STR             R0, [SP,#0x48+var_2C]
1AA200:  MOV             R0, R6
1AA202:  BLX             j_silk_inner_prod_aligned_scale
1AA206:  CMP             R0, #0
1AA208:  MOV             R1, R0
1AA20A:  IT MI
1AA20C:  NEGMI           R1, R0
1AA20E:  LDR.W           R10, [SP,#0x48+var_2C]
1AA212:  CLZ.W           R9, R1
1AA216:  STR             R0, [SP,#0x48+var_40]
1AA218:  SUB.W           R1, R9, #1
1AA21C:  CMP.W           R10, #0
1AA220:  LSL.W           R5, R0, R1
1AA224:  MOV             R0, R10
1AA226:  IT MI
1AA228:  RSBMI.W         R0, R10, #0
1AA22C:  UXTH.W          R11, R5
1AA230:  CLZ.W           R4, R0
1AA234:  SUBS            R0, R4, #1
1AA236:  LSL.W           R6, R10, R0
1AA23A:  MOV             R0, #0x1FFFFFFF
1AA23E:  ASRS            R1, R6, #0x10
1AA240:  BLX             sub_220A40
1AA244:  SXTH            R1, R0
1AA246:  MUL.W           R2, R11, R1
1AA24A:  MOV             R11, #0xFFFFC000
1AA252:  ASRS            R2, R2, #0x10
1AA254:  SMLATB.W        R2, R5, R0, R2
1AA258:  SMMUL.W         R3, R2, R6
1AA25C:  SUB.W           R3, R5, R3,LSL#3
1AA260:  UXTH            R6, R3
1AA262:  SMLABT.W        R0, R0, R3, R2
1AA266:  MULS            R1, R6
1AA268:  ADD.W           R0, R0, R1,ASR#16
1AA26C:  RSB.W           R1, R4, #1
1AA270:  ADD             R1, R9
1AA272:  ADD.W           R2, R1, #0xF
1AA276:  CMP.W           R2, #0xFFFFFFFF
1AA27A:  BLE             loc_1AA288
1AA27C:  MOVS            R1, #0
1AA27E:  CMP             R2, #0x20 ; ' '
1AA280:  IT LT
1AA282:  ASRLT.W         R1, R0, R2
1AA286:  B               loc_1AA2BA
1AA288:  NEGS            R1, R2
1AA28A:  MOV             R2, #0x7FFFFFFF
1AA28E:  MOV.W           R3, #0x80000000
1AA292:  LSRS            R2, R1
1AA294:  ASRS            R3, R1
1AA296:  CMP             R3, R2
1AA298:  BLE             loc_1AA2A8
1AA29A:  CMP             R0, R3
1AA29C:  MOV             R6, R3
1AA29E:  BGT             loc_1AA2B6
1AA2A0:  CMP             R0, R2
1AA2A2:  IT LT
1AA2A4:  MOVLT           R0, R2
1AA2A6:  B               loc_1AA2B4
1AA2A8:  CMP             R0, R2
1AA2AA:  MOV             R6, R2
1AA2AC:  BGT             loc_1AA2B6
1AA2AE:  CMP             R0, R3
1AA2B0:  IT LT
1AA2B2:  MOVLT           R0, R3
1AA2B4:  MOV             R6, R0
1AA2B6:  LSL.W           R1, R6, R1
1AA2BA:  CMP             R1, R11
1AA2BC:  LDR             R6, [R7,#arg_4]
1AA2BE:  IT GT
1AA2C0:  MOVGT           R11, R1
1AA2C2:  MOV.W           R4, R8,ASR#1
1AA2C6:  CMP.W           R11, #0x4000
1AA2CA:  IT GE
1AA2CC:  MOVGE.W         R11, #0x4000
1AA2D0:  UXTH.W          R0, R11
1AA2D4:  SXTH.W          LR, R11
1AA2D8:  MUL.W           R0, LR, R0
1AA2DC:  ASRS            R0, R0, #0x10
1AA2DE:  SMLABT.W        R1, R11, R11, R0
1AA2E2:  LDR             R0, [SP,#0x48+var_34]
1AA2E4:  LDR             R0, [R0]
1AA2E6:  CMP             R1, #0
1AA2E8:  MOV             R3, R1
1AA2EA:  IT MI
1AA2EC:  NEGMI           R3, R1
1AA2EE:  CMP             R3, R6
1AA2F0:  IT LT
1AA2F2:  MOVLT           R3, R6
1AA2F4:  CMP.W           R10, #0
1AA2F8:  BLE             loc_1AA318
1AA2FA:  CLZ.W           R5, R10
1AA2FE:  STR             R4, [SP,#0x48+var_44]
1AA300:  RSBS.W          R8, R5, #0x18
1AA304:  MOV             R4, R10
1AA306:  RSB.W           R2, R8, #0
1AA30A:  BEQ             loc_1AA334
1AA30C:  CMP.W           R8, #0xFFFFFFFF
1AA310:  BLE             loc_1AA326
1AA312:  ROR.W           R4, R10, R8
1AA316:  B               loc_1AA334
1AA318:  NEGS            R6, R0
1AA31A:  SXTH.W          R12, R3
1AA31E:  SMULTB.W        R6, R6, R3
1AA322:  MOVS            R3, #0
1AA324:  B               loc_1AA3D0
1AA326:  ADD.W           R4, R8, #0x20 ; ' '
1AA32A:  LSL.W           R6, R10, R2
1AA32E:  LSR.W           R4, R10, R4
1AA332:  ORRS            R4, R6
1AA334:  AND.W           R6, R4, #0x7F
1AA338:  STR             R2, [SP,#0x48+var_48]
1AA33A:  MOV.W           R2, #0xD50000
1AA33E:  TST.W           R5, #1
1AA342:  MUL.W           R6, R2, R6
1AA346:  MOV.W           R4, #0x8000
1AA34A:  IT EQ
1AA34C:  MOVWEQ          R4, #0xB486
1AA350:  MOV.W           R12, R5,LSR#1
1AA354:  LSR.W           R4, R4, R12
1AA358:  MOV.W           R9, #0x8000
1AA35C:  UXTH            R2, R4
1AA35E:  CMP.W           R8, #0
1AA362:  MOV.W           R6, R6,LSR#16
1AA366:  MUL.W           R2, R6, R2
1AA36A:  SMLABT.W        R4, R6, R4, R4
1AA36E:  SXTH            R6, R3
1AA370:  STR             R6, [SP,#0x48+var_38]
1AA372:  ADD.W           R2, R4, R2,LSR#16
1AA376:  LDR             R4, [SP,#0x48+var_44]
1AA378:  LSL.W           R2, R2, R4
1AA37C:  SUB.W           R2, R2, R0
1AA380:  SMULTB.W        R6, R2, R3
1AA384:  MOV             R3, R10
1AA386:  BEQ             loc_1AA3A4
1AA388:  CMP.W           R8, #0xFFFFFFFF
1AA38C:  BLE             loc_1AA394
1AA38E:  ROR.W           R3, R10, R8
1AA392:  B               loc_1AA3A4
1AA394:  LDR             R2, [SP,#0x48+var_48]
1AA396:  ADD.W           R3, R8, #0x20 ; ' '
1AA39A:  LSR.W           R3, R10, R3
1AA39E:  LSL.W           R2, R10, R2
1AA3A2:  ORRS            R3, R2
1AA3A4:  AND.W           R2, R3, #0x7F
1AA3A8:  MOV.W           R3, #0xD50000
1AA3AC:  TST.W           R5, #1
1AA3B0:  MUL.W           R2, R3, R2
1AA3B4:  IT EQ
1AA3B6:  MOVWEQ          R9, #0xB486
1AA3BA:  LSR.W           R3, R9, R12
1AA3BE:  UXTH            R5, R3
1AA3C0:  LDR.W           R12, [SP,#0x48+var_38]
1AA3C4:  LSRS            R2, R2, #0x10
1AA3C6:  MULS            R5, R2
1AA3C8:  SMLABT.W        R2, R2, R3, R3
1AA3CC:  ADD.W           R3, R2, R5,LSR#16
1AA3D0:  SXTH            R2, R1
1AA3D2:  UXTH.W          R5, R10
1AA3D6:  MULS            R2, R5
1AA3D8:  LDR             R5, [SP,#0x48+var_40]
1AA3DA:  ADD             R6, R0
1AA3DC:  LSLS            R3, R4
1AA3DE:  SUBS            R0, R3, R0
1AA3E0:  UXTH            R3, R5
1AA3E2:  UXTH            R0, R0
1AA3E4:  MUL.W           R3, LR, R3
1AA3E8:  MUL.W           R0, R0, R12
1AA3EC:  ASRS            R2, R2, #0x10
1AA3EE:  SMLATB.W        R1, R10, R1, R2
1AA3F2:  ASRS            R3, R3, #0x10
1AA3F4:  SMLABT.W        R3, LR, R5, R3
1AA3F8:  ADD.W           R2, R6, R0,ASR#16
1AA3FC:  LDR             R6, [SP,#0x48+var_34]
1AA3FE:  STR             R2, [R6]
1AA400:  LDR             R0, [SP,#0x48+var_30]
1AA402:  SUB.W           R0, R0, R3,LSL#4
1AA406:  ADD.W           R3, R0, R1,LSL#6
1AA40A:  STR             R3, [SP,#0x48+var_30]
1AA40C:  LDR             R0, [R6,#4]
1AA40E:  CMP             R3, #1
1AA410:  BLT             loc_1AA434
1AA412:  MOV             R10, R4
1AA414:  CLZ.W           R4, R3
1AA418:  RSBS.W          R1, R4, #0x18
1AA41C:  MOV             R5, R3
1AA41E:  RSB.W           R8, R1, #0
1AA422:  STR.W           R12, [SP,#0x48+var_38]
1AA426:  BEQ             loc_1AA448
1AA428:  CMP.W           R1, #0xFFFFFFFF
1AA42C:  BLE             loc_1AA43A
1AA42E:  ROR.W           R5, R3, R1
1AA432:  B               loc_1AA448
1AA434:  MOVS            R5, #0
1AA436:  MOVS            R1, #0
1AA438:  B               loc_1AA4BE
1AA43A:  ADD.W           R5, R1, #0x20 ; ' '
1AA43E:  LSL.W           R6, R3, R8
1AA442:  LSR.W           R5, R3, R5
1AA446:  ORRS            R5, R6
1AA448:  AND.W           R6, R5, #0x7F
1AA44C:  MOV.W           R12, #0xD50000
1AA450:  TST.W           R4, #1
1AA454:  MOV.W           R4, R4,LSR#1
1AA458:  MUL.W           R5, R6, R12
1AA45C:  MOV.W           R6, #0x8000
1AA460:  IT EQ
1AA462:  MOVWEQ          R6, #0xB486
1AA466:  CMP             R1, #0
1AA468:  LSR.W           R4, R6, R4
1AA46C:  UXTH.W          LR, R4
1AA470:  MOV.W           R9, R4,ASR#16
1AA474:  MOV.W           R5, R5,LSR#16
1AA478:  MUL.W           R6, R5, LR
1AA47C:  SMLABT.W        R5, R5, R4, R4
1AA480:  ADD.W           R5, R5, R6,LSR#16
1AA484:  LSL.W           R5, R5, R10
1AA488:  BEQ             loc_1AA4A2
1AA48A:  CMP.W           R1, #0xFFFFFFFF
1AA48E:  BLE             loc_1AA494
1AA490:  RORS            R3, R1
1AA492:  B               loc_1AA4A2
1AA494:  ADDS            R1, #0x20 ; ' '
1AA496:  LSL.W           R6, R3, R8
1AA49A:  LSR.W           R1, R3, R1
1AA49E:  ORR.W           R3, R1, R6
1AA4A2:  AND.W           R1, R3, #0x7F
1AA4A6:  MUL.W           R1, R1, R12
1AA4AA:  LDR.W           R12, [SP,#0x48+var_38]
1AA4AE:  LSRS            R1, R1, #0x10
1AA4B0:  MUL.W           R3, R1, LR
1AA4B4:  SMLABB.W        R1, R1, R9, R4
1AA4B8:  MOV             R4, R10
1AA4BA:  ADD.W           R1, R1, R3,LSR#16
1AA4BE:  LSLS            R1, R4
1AA4C0:  SUBS            R3, R5, R0
1AA4C2:  SUBS            R1, R1, R0
1AA4C4:  SMLABT.W        R0, R12, R3, R0
1AA4C8:  UXTH            R1, R1
1AA4CA:  MUL.W           R1, R1, R12
1AA4CE:  ADD.W           R4, R0, R1,ASR#16
1AA4D2:  CMP             R4, #0
1AA4D4:  MOV             R0, R4
1AA4D6:  IT MI
1AA4D8:  NEGMI           R0, R4
1AA4DA:  CMP             R2, #1
1AA4DC:  CLZ.W           R9, R0
1AA4E0:  IT LE
1AA4E2:  MOVLE           R2, #1
1AA4E4:  SUB.W           R0, R9, #1
1AA4E8:  CMP             R2, #0
1AA4EA:  LSL.W           R6, R4, R0
1AA4EE:  MOV             R0, R2
1AA4F0:  IT MI
1AA4F2:  NEGMI           R0, R2
1AA4F4:  UXTH.W          R8, R6
1AA4F8:  CLZ.W           R10, R0
1AA4FC:  SUB.W           R0, R10, #1
1AA500:  LSL.W           R5, R2, R0
1AA504:  MOV             R0, #0x1FFFFFFF
1AA508:  ASRS            R1, R5, #0x10
1AA50A:  BLX             sub_220A40
1AA50E:  SXTH            R1, R0
1AA510:  MUL.W           R2, R8, R1
1AA514:  ASRS            R2, R2, #0x10
1AA516:  SMLATB.W        R2, R6, R0, R2
1AA51A:  SMMUL.W         R3, R2, R5
1AA51E:  SUB.W           R3, R6, R3,LSL#3
1AA522:  UXTH            R6, R3
1AA524:  SMLABT.W        R0, R0, R3, R2
1AA528:  MULS            R1, R6
1AA52A:  LDR             R2, [SP,#0x48+var_34]
1AA52C:  STR             R4, [R2,#4]
1AA52E:  ADD.W           R0, R0, R1,ASR#16
1AA532:  RSB.W           R1, R10, #1
1AA536:  ADD             R1, R9
1AA538:  ADD.W           R2, R1, #0xE
1AA53C:  CMP.W           R2, #0xFFFFFFFF
1AA540:  BLE             loc_1AA54E
1AA542:  MOVS            R1, #0
1AA544:  CMP             R2, #0x20 ; ' '
1AA546:  IT LT
1AA548:  ASRLT.W         R1, R0, R2
1AA54C:  B               loc_1AA580
1AA54E:  NEGS            R1, R2
1AA550:  MOV             R2, #0x7FFFFFFF
1AA554:  MOV.W           R3, #0x80000000
1AA558:  LSRS            R2, R1
1AA55A:  ASRS            R3, R1
1AA55C:  CMP             R3, R2
1AA55E:  BLE             loc_1AA56E
1AA560:  CMP             R0, R3
1AA562:  MOV             R6, R3
1AA564:  BGT             loc_1AA57C
1AA566:  CMP             R0, R2
1AA568:  IT LT
1AA56A:  MOVLT           R0, R2
1AA56C:  B               loc_1AA57A
1AA56E:  CMP             R0, R2
1AA570:  MOV             R6, R2
1AA572:  BGT             loc_1AA57C
1AA574:  CMP             R0, R3
1AA576:  IT LT
1AA578:  MOVLT           R0, R3
1AA57A:  MOV             R6, R0
1AA57C:  LSL.W           R1, R6, R1
1AA580:  CMP             R1, #0
1AA582:  MOVW            R0, #0x7FFF
1AA586:  IT LE
1AA588:  MOVLE           R1, #0
1AA58A:  CMP             R1, R0
1AA58C:  IT GE
1AA58E:  MOVGE           R1, R0
1AA590:  LDR             R0, [SP,#0x48+var_3C]
1AA592:  STR             R1, [R0]
1AA594:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AA59C)
1AA596:  LDR             R1, [SP,#0x48+var_20]
1AA598:  ADD             R0, PC; __stack_chk_guard_ptr
1AA59A:  LDR             R0, [R0]; __stack_chk_guard
1AA59C:  LDR             R0, [R0]
1AA59E:  SUBS            R0, R0, R1
1AA5A0:  ITTTT EQ
1AA5A2:  MOVEQ           R0, R11
1AA5A4:  ADDEQ           SP, SP, #0x2C ; ','
1AA5A6:  POPEQ.W         {R8-R11}
1AA5AA:  POPEQ           {R4-R7,PC}
1AA5AC:  BLX             __stack_chk_fail
