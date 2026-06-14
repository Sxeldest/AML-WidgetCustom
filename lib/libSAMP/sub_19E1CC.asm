; =========================================================
; Game Engine Function: sub_19E1CC
; Address            : 0x19E1CC - 0x19E8EA
; =========================================================

19E1CC:  PUSH            {R4-R7,LR}
19E1CE:  ADD             R7, SP, #0xC
19E1D0:  PUSH.W          {R8-R11}
19E1D4:  SUB             SP, SP, #0x2C
19E1D6:  LDR.W           R9, [R7,#arg_0]
19E1DA:  MOV             R10, R0
19E1DC:  STR             R1, [SP,#0x48+var_30]
19E1DE:  MOVS            R0, #0
19E1E0:  LDR             R1, [R7,#arg_14]
19E1E2:  CMP.W           R9, #2
19E1E6:  IT EQ
19E1E8:  MOVEQ           R0, #1
19E1EA:  MOV             R8, R2
19E1EC:  CMP             R1, #0
19E1EE:  ADD.W           R4, R10, #8
19E1F2:  IT NE
19E1F4:  MOVNE           R1, #1
19E1F6:  MOV             R11, R3
19E1F8:  ANDS            R0, R1
19E1FA:  MOV.W           R1, #4
19E1FE:  IT NE
19E200:  MOVNE           R1, #0x10
19E202:  LDR.W           R2, [R10]
19E206:  STR             R2, [SP,#0x48+var_20]
19E208:  CMP             R0, #0
19E20A:  LDM             R4, {R2-R4}
19E20C:  STR             R2, [SP,#0x48+var_34]
19E20E:  LDR             R2, [R2,#0x30]
19E210:  STR             R3, [SP,#0x48+var_28]
19E212:  LDR             R0, [R7,#arg_4]
19E214:  LDRSH.W         R2, [R2,R3,LSL#1]
19E218:  LDR             R3, [R7,#arg_10]
19E21A:  ADD.W           R5, R2, R3,LSL#3
19E21E:  RSB.W           R2, R1, R5,ASR#1
19E222:  MOV.W           R1, #0xFFFFFFFF
19E226:  IT NE
19E228:  MOVNE           R1, #0xFFFFFFFE
19E22C:  LDR             R6, [R0]
19E22E:  ADD.W           R1, R1, R9,LSL#1
19E232:  MLA.W           R0, R2, R1, R6
19E236:  BLX             sub_220A40
19E23A:  SUBS            R1, R6, R5
19E23C:  SUBS            R1, #0x20 ; ' '
19E23E:  CMP             R1, R0
19E240:  IT LT
19E242:  MOVLT           R0, R1
19E244:  CMP             R0, #0x40 ; '@'
19E246:  IT GE
19E248:  MOVGE           R0, #0x40 ; '@'
19E24A:  LDR.W           R3, [R10,#0x24]
19E24E:  LDR.W           R5, [R10,#0x1C]
19E252:  CMP             R0, #4
19E254:  BGE             loc_19E25A
19E256:  MOVS            R0, #1
19E258:  B               loc_19E276
19E25A:  AND.W           R1, R0, #7
19E25E:  ADR.W           R2, sub_19E8EC
19E262:  LDRSH.W         R1, [R2,R1,LSL#1]
19E266:  MOVS            R2, #0xE
19E268:  SUB.W           R0, R2, R0,LSR#3
19E26C:  ASR.W           R0, R1, R0
19E270:  ADDS            R0, #1
19E272:  BIC.W           R0, R0, #1
19E276:  LDR             R2, [R7,#arg_14]
19E278:  MOV             R6, R0
19E27A:  CMP             R2, #0
19E27C:  IT NE
19E27E:  MOVNE           R6, #1
19E280:  LDR             R1, [SP,#0x48+var_28]
19E282:  CMP             R1, R4
19E284:  IT LT
19E286:  MOVLT           R6, R0
19E288:  LDR             R0, [SP,#0x48+var_20]
19E28A:  STR             R3, [SP,#0x48+var_38]
19E28C:  CMP             R0, #0
19E28E:  BEQ             loc_19E2A4
19E290:  LDR.W           R0, [R10,#0x2C]
19E294:  MOV             R1, R11
19E296:  STR             R0, [SP,#0x48+var_48]
19E298:  MOV             R0, R8
19E29A:  MOV             R3, R9
19E29C:  BLX             j_stereo_itheta
19E2A0:  MOV             R9, R0
19E2A2:  B               loc_19E2A8
19E2A4:  MOV.W           R9, #0
19E2A8:  MOV             R0, R5
19E2AA:  BLX             j_ec_tell_frac
19E2AE:  CMP             R6, #1
19E2B0:  STR             R0, [SP,#0x48+var_2C]
19E2B2:  STR             R5, [SP,#0x48+var_24]
19E2B4:  BNE             loc_19E310
19E2B6:  LDR             R0, [R7,#arg_14]
19E2B8:  CMP             R0, #0
19E2BA:  BEQ.W           loc_19E6A4
19E2BE:  LDR             R0, [SP,#0x48+var_20]
19E2C0:  CMP             R0, #0
19E2C2:  BEQ             loc_19E362
19E2C4:  CMP.W           R9, #0x2000
19E2C8:  LDR             R3, [R7,#arg_0]
19E2CA:  LDR             R4, [R7,#arg_18]
19E2CC:  MOV.W           R6, #0
19E2D0:  LDR.W           R9, [R7,#arg_8]
19E2D4:  BLE             loc_19E2F8
19E2D6:  LDR.W           R0, [R10,#0x34]
19E2DA:  CMP             R0, #0
19E2DC:  IT EQ
19E2DE:  MOVEQ           R6, #1
19E2E0:  BNE             loc_19E2F8
19E2E2:  CMP             R3, #1
19E2E4:  BLT             loc_19E2F8
19E2E6:  MOV             R0, R3
19E2E8:  MOV             R1, R11
19E2EA:  LDRH            R2, [R1]
19E2EC:  SUBS            R0, #1
19E2EE:  RSB.W           R2, R2, #0
19E2F2:  STRH.W          R2, [R1],#2
19E2F6:  BNE             loc_19E2EA
19E2F8:  LDR             R0, [SP,#0x48+var_34]
19E2FA:  MOV             R2, R11
19E2FC:  STR             R6, [SP,#0x48+var_3C]
19E2FE:  LDR             R1, [SP,#0x48+var_28]
19E300:  LDR             R0, [R0,#8]
19E302:  STRD.W          R1, R3, [SP,#0x48+var_48]
19E306:  MOV             R1, R8
19E308:  LDR             R3, [SP,#0x48+var_38]
19E30A:  BL              sub_19E8FC
19E30E:  B               loc_19E36C
19E310:  LDR             R0, [SP,#0x48+var_20]
19E312:  LDR             R3, [R7,#arg_14]
19E314:  CMP             R0, #0
19E316:  BEQ.W           loc_19E51A
19E31A:  CMP             R3, #0
19E31C:  BEQ             loc_19E3A0
19E31E:  LDR.W           R4, [R10,#0x30]
19E322:  CMP             R4, #0
19E324:  BEQ.W           loc_19E50E
19E328:  MOVW            R0, #0x8001
19E32C:  CMP.W           R9, #0x2000
19E330:  MOVT            R0, #0xFFFF
19E334:  MOV             R1, R6
19E336:  IT GT
19E338:  MOVWGT          R0, #0x7FFF
19E33C:  BLX             sub_220A40
19E340:  MLA.W           R0, R9, R6, R0
19E344:  MOVS            R2, #0
19E346:  LDR             R3, [R7,#arg_14]
19E348:  ASRS            R1, R0, #0xE
19E34A:  CMP             R1, #0
19E34C:  IT GT
19E34E:  ASRGT           R2, R0, #0xE
19E350:  MOVS            R0, #1
19E352:  CMP             R6, R2
19E354:  EOR.W           R0, R0, R4,LSR#31
19E358:  IT LE
19E35A:  SUBLE           R2, R6, #1
19E35C:  ADD.W           R9, R2, R0
19E360:  B               loc_19E51A
19E362:  MOVS            R0, #0
19E364:  LDR             R4, [R7,#arg_18]
19E366:  STR             R0, [SP,#0x48+var_3C]
19E368:  LDR.W           R9, [R7,#arg_8]
19E36C:  LDR             R6, [R7,#arg_4]
19E36E:  MOVS            R5, #0
19E370:  LDR             R0, [R6]
19E372:  LDRD.W          R11, R8, [SP,#0x48+var_30]
19E376:  CMP             R0, #0x11
19E378:  MOV.W           R0, #0
19E37C:  BLT.W           loc_19E6D6
19E380:  LDR.W           R0, [R10,#0x20]
19E384:  CMP             R0, #0x11
19E386:  BLT.W           loc_19E50A
19E38A:  LDR             R0, [SP,#0x48+var_20]
19E38C:  CMP             R0, #0
19E38E:  BEQ.W           loc_19E6CE
19E392:  LDR             R0, [SP,#0x48+var_24]
19E394:  MOVS            R2, #2
19E396:  LDR             R1, [SP,#0x48+var_3C]
19E398:  BLX             j_ec_enc_bit_logp
19E39C:  LDR             R0, [SP,#0x48+var_3C]
19E39E:  B               loc_19E6D6
19E3A0:  MUL.W           R0, R9, R6
19E3A4:  ADD.W           R0, R0, #0x2000
19E3A8:  ASRS            R4, R0, #0xE
19E3AA:  CMP             R4, R6
19E3AC:  BGE.W           loc_19E506
19E3B0:  CMP             R4, #1
19E3B2:  BLT.W           loc_19E506
19E3B6:  LDR.W           R0, [R10,#0x38]
19E3BA:  MOV             R9, R4
19E3BC:  CMP             R0, #0
19E3BE:  BEQ.W           loc_19E546
19E3C2:  LSLS            R0, R4, #0xE
19E3C4:  MOV             R1, R6
19E3C6:  BLX             sub_220A6C
19E3CA:  LSLS            R2, R0, #0x10
19E3CC:  SXTH            R1, R0
19E3CE:  ASRS            R2, R2, #0xD
19E3D0:  MOVW            R5, #0xFFFF
19E3D4:  MULS            R1, R2
19E3D6:  MOV             R2, #0xFFFFFD8E
19E3DE:  MOV.W           R12, #0x4000
19E3E2:  RSB.W           R0, R0, #0x4000
19E3E6:  MOV             R10, #0x1EFC0000
19E3EE:  ADD.W           R1, R1, #0x8000
19E3F2:  SMULTB.W        R3, R1, R2
19E3F6:  MOV.W           R2, #0x8000
19E3FA:  ADD.W           R3, R2, R3,LSL#1
19E3FE:  BICS            R3, R5
19E400:  MOVS            R5, #0x20550000
19E406:  ADD             R3, R5
19E408:  MOVS            R5, #0
19E40A:  SMULTT.W        R3, R3, R1
19E40E:  MOVT            R5, #0xE21D
19E412:  ADD.W           R3, R2, R3,LSL#1
19E416:  BFC.W           R3, #0, #0x10
19E41A:  ADD             R3, R5
19E41C:  SMLATT.W        R3, R3, R1, R12
19E420:  SUB.W           R1, R2, R1,ASR#16
19E424:  ADD.W           R1, R1, R3,LSR#15
19E428:  SXTH            R1, R1
19E42A:  CLZ.W           R3, R1
19E42E:  RSB.W           R9, R3, #0x20 ; ' '
19E432:  MOVW            R3, #0xF5DB
19E436:  RSB.W           R5, R9, #0xF
19E43A:  MOVT            R3, #0xFFFF
19E43E:  LSLS            R1, R5
19E440:  SXTH            R5, R1
19E442:  SMULBB.W        R5, R5, R3
19E446:  MOV             R3, #0xFFFFFD8E
19E44E:  ADD.W           R5, R2, R5,LSL#1
19E452:  BFC.W           R5, #0, #0x10
19E456:  ADD.W           LR, R5, R10
19E45A:  SXTH            R5, R0
19E45C:  LSLS            R0, R0, #0x10
19E45E:  MOVW            R10, #0xF5DB
19E462:  ASRS            R0, R0, #0xD
19E464:  MOVT            R10, #0xFFFF
19E468:  MULS            R0, R5
19E46A:  SMLABT.W        R1, R1, LR, R12
19E46E:  ADD.W           R0, R0, #0x8000
19E472:  SMULTB.W        R5, R0, R3
19E476:  MOVS            R3, #0x20550000
19E47C:  ADD.W           R5, R2, R5,LSL#1
19E480:  BFC.W           R5, #0, #0x10
19E484:  ADD             R5, R3
19E486:  MOVS            R3, #0xE21D0000
19E48C:  SMULTT.W        R5, R5, R0
19E490:  ADD.W           R5, R2, R5,LSL#1
19E494:  BFC.W           R5, #0, #0x10
19E498:  ADD             R5, R3
19E49A:  SMLATT.W        R5, R5, R0, R12
19E49E:  SUB.W           R0, R2, R0,ASR#16
19E4A2:  ADD.W           R0, R0, R5,LSR#15
19E4A6:  SXTH            R0, R0
19E4A8:  CLZ.W           R5, R0
19E4AC:  RSB.W           R5, R5, #0x20 ; ' '
19E4B0:  RSB.W           R3, R5, #0xF
19E4B4:  LSLS            R0, R3
19E4B6:  SXTH            R3, R0
19E4B8:  SMULBB.W        R3, R3, R10
19E4BC:  ADD.W           R2, R2, R3,LSL#1
19E4C0:  MOVS            R3, #0x1EFC0000
19E4C6:  BFC.W           R2, #0, #0x10
19E4CA:  ADD             R2, R3
19E4CC:  LDR             R3, [R7,#arg_14]
19E4CE:  SMLABT.W        R0, R0, R2, R12
19E4D2:  SUB.W           R2, R5, R9
19E4D6:  LDR             R5, [SP,#0x48+var_24]
19E4D8:  MOV             R9, R6
19E4DA:  LSLS            R2, R2, #0xB
19E4DC:  SUB.W           R1, R2, R1,LSR#15
19E4E0:  LDR             R2, [R7,#arg_0]
19E4E2:  ADD.W           R0, R1, R0,LSR#15
19E4E6:  MOVS            R1, #0xFF800000
19E4EC:  ADD.W           R1, R1, R2,LSL#23
19E4F0:  SMLABT.W        R1, R0, R1, R12
19E4F4:  LDR             R0, [R7,#arg_4]
19E4F6:  LDR             R0, [R0]
19E4F8:  ASRS            R1, R1, #0xF
19E4FA:  CMP             R1, R0
19E4FC:  BGT             loc_19E546
19E4FE:  NEGS            R0, R0
19E500:  CMP             R1, R0
19E502:  IT LT
19E504:  MOVLT           R4, #0
19E506:  MOV             R9, R4
19E508:  B               loc_19E546
19E50A:  MOVS            R0, #0
19E50C:  B               loc_19E6D6
19E50E:  MUL.W           R0, R9, R6
19E512:  ADD.W           R0, R0, #0x2000
19E516:  MOV.W           R9, R0,ASR#14
19E51A:  LDR             R0, [R7,#arg_0]
19E51C:  CMP             R0, #3
19E51E:  BLT             loc_19E546
19E520:  CBZ             R3, loc_19E546
19E522:  ADD.W           R0, R6, R6,LSR#31
19E526:  MOVS            R1, #1
19E528:  ADD.W           R5, R1, R0,ASR#1
19E52C:  ASRS            R4, R0, #1
19E52E:  ADD.W           R10, R5, R5,LSL#1
19E532:  ADD.W           R3, R10, R0,ASR#1
19E536:  LDR             R0, [SP,#0x48+var_20]
19E538:  CBZ             R0, loc_19E58C
19E53A:  CMP             R9, R4
19E53C:  BGT             loc_19E5BA
19E53E:  ADD.W           R5, R9, R9,LSL#1
19E542:  MOV             R1, R5
19E544:  B               loc_19E5C6
19E546:  LDR             R0, [R7,#arg_C]
19E548:  CMP             R0, #1
19E54A:  BGT             loc_19E57C
19E54C:  CBNZ            R3, loc_19E57C
19E54E:  MOVS            R0, #1
19E550:  ADD.W           R4, R0, R6,ASR#1
19E554:  LDR             R0, [SP,#0x48+var_20]
19E556:  ASRS            R5, R6, #1
19E558:  MUL.W           R10, R4, R4
19E55C:  CMP             R0, #0
19E55E:  BEQ             loc_19E5E8
19E560:  ADDS            R0, R6, #1
19E562:  ADD.W           R2, R9, #1
19E566:  SUB.W           R1, R0, R9
19E56A:  CMP             R9, R5
19E56C:  MOV             R3, R1
19E56E:  IT LE
19E570:  MOVLE           R3, R2
19E572:  BGT             loc_19E616
19E574:  MUL.W           R1, R2, R9
19E578:  ASRS            R1, R1, #1
19E57A:  B               loc_19E622
19E57C:  LDR             R0, [SP,#0x48+var_20]
19E57E:  ADDS            R2, R6, #1
19E580:  CBZ             R0, loc_19E5D6
19E582:  MOV             R0, R5
19E584:  MOV             R1, R9
19E586:  BLX             j_ec_enc_uint
19E58A:  B               loc_19E62C
19E58C:  LDR             R0, [SP,#0x48+var_24]
19E58E:  MOV             R1, R3
19E590:  MOV             R9, R3
19E592:  BLX             j_ec_decode
19E596:  MOVW            R1, #0x5556
19E59A:  SUB.W           R8, R0, R5,LSL#1
19E59E:  MOVT            R1, #0x5555
19E5A2:  CMP             R0, R10
19E5A4:  SMMUL.W         R1, R0, R1
19E5A8:  IT LT
19E5AA:  ADDLT.W         R8, R1, R1,LSR#31
19E5AE:  CMP             R8, R4
19E5B0:  BGT             loc_19E6AC
19E5B2:  ADD.W           R0, R8, R8,LSL#1
19E5B6:  MOV             R1, R0
19E5B8:  B               loc_19E6B8
19E5BA:  MVNS            R0, R4
19E5BC:  ADD.W           R5, R9, R9,LSL#1
19E5C0:  ADD             R0, R10
19E5C2:  ADD.W           R1, R0, R9
19E5C6:  SUB.W           R2, R10, R4
19E5CA:  LDR             R0, [SP,#0x48+var_24]
19E5CC:  ADD             R2, R9
19E5CE:  CMP             R9, R4
19E5D0:  IT LE
19E5D2:  ADDLE           R2, R5, #3
19E5D4:  B               loc_19E628
19E5D6:  MOV             R0, R5
19E5D8:  MOV             R1, R2
19E5DA:  BLX             j_ec_dec_uint
19E5DE:  MOV             R8, R0
19E5E0:  LDR.W           R11, [SP,#0x48+var_30]
19E5E4:  LDR             R5, [R7,#arg_4]
19E5E6:  B               loc_19E72E
19E5E8:  LDR             R0, [SP,#0x48+var_24]
19E5EA:  MOV             R1, R10
19E5EC:  BLX             j_ec_decode
19E5F0:  MUL.W           R1, R4, R5
19E5F4:  CMP.W           R0, R1,ASR#1
19E5F8:  BGE             loc_19E6F2
19E5FA:  MOVS            R4, #1
19E5FC:  ORR.W           R0, R4, R0,LSL#3
19E600:  BLX             j_isqrt32
19E604:  SUBS            R1, R0, #1
19E606:  ADD.W           R0, R4, R1,LSR#1
19E60A:  MOV.W           R8, R1,LSR#1
19E60E:  MUL.W           R1, R0, R8
19E612:  LSRS            R1, R1, #1
19E614:  B               loc_19E71E
19E616:  ADDS            R2, R6, #2
19E618:  SUB.W           R2, R2, R9
19E61C:  MULS            R1, R2
19E61E:  SUB.W           R1, R10, R1,ASR#1
19E622:  LDR             R0, [SP,#0x48+var_24]
19E624:  ADDS            R2, R1, R3
19E626:  MOV             R3, R10
19E628:  BLX             j_ec_encode
19E62C:  MOV.W           R4, R9,LSL#14
19E630:  MOV             R1, R6
19E632:  MOV             R0, R4
19E634:  BLX             sub_220A6C
19E638:  MOV             R9, R0
19E63A:  LDR             R0, [R7,#arg_14]
19E63C:  CMP             R0, #0
19E63E:  ITT NE
19E640:  LDRNE           R0, [SP,#0x48+var_20]
19E642:  CMPNE           R0, #0
19E644:  BEQ             loc_19E6A4
19E646:  CMP             R6, R4
19E648:  BLS             loc_19E672
19E64A:  LDR             R0, [SP,#0x48+var_34]
19E64C:  MOV             R2, R11
19E64E:  LDR             R1, [SP,#0x48+var_28]
19E650:  LDR             R3, [SP,#0x48+var_38]
19E652:  LDR             R0, [R0,#8]
19E654:  STR             R1, [SP,#0x48+var_48]
19E656:  LDR             R1, [R7,#arg_0]
19E658:  STR             R1, [SP,#0x48+var_44]
19E65A:  MOV             R1, R8
19E65C:  BL              sub_19E8FC
19E660:  LDR.W           R11, [SP,#0x48+var_30]
19E664:  MOVS            R5, #0
19E666:  LDRD.W          R6, R9, [R7,#arg_4]
19E66A:  LDR             R4, [R7,#arg_18]
19E66C:  LDR.W           R8, [SP,#0x48+var_2C]
19E670:  B               loc_19E6E0
19E672:  LDR             R1, [R7,#arg_0]
19E674:  CMP             R1, #1
19E676:  BLT             loc_19E6A4
19E678:  MOVW            R0, #0x5A82
19E67C:  LDRSH.W         R2, [R11]
19E680:  SUBS            R1, #1
19E682:  LDRSH.W         R3, [R8]
19E686:  SMULBB.W        R2, R2, R0
19E68A:  SMLABB.W        R6, R3, R0, R2
19E68E:  MLS.W           R2, R3, R0, R2
19E692:  MOV.W           R3, R6,LSR#15
19E696:  STRH.W          R3, [R8],#2
19E69A:  MOV.W           R2, R2,LSR#15
19E69E:  STRH.W          R2, [R11],#2
19E6A2:  BNE             loc_19E67C
19E6A4:  LDR.W           R11, [SP,#0x48+var_30]
19E6A8:  LDR             R5, [R7,#arg_4]
19E6AA:  B               loc_19E73A
19E6AC:  MVNS            R0, R4
19E6AE:  ADD             R0, R10
19E6B0:  ADD.W           R1, R0, R8
19E6B4:  ADD.W           R0, R8, R8,LSL#1
19E6B8:  SUB.W           R2, R10, R4
19E6BC:  CMP             R8, R4
19E6BE:  ADD             R2, R8
19E6C0:  LDR.W           R11, [SP,#0x48+var_30]
19E6C4:  IT LE
19E6C6:  ADDLE           R2, R0, #3
19E6C8:  LDR             R5, [R7,#arg_4]
19E6CA:  MOV             R3, R9
19E6CC:  B               loc_19E728
19E6CE:  LDR             R0, [SP,#0x48+var_24]
19E6D0:  MOVS            R1, #2
19E6D2:  BLX             j_ec_dec_bit_logp
19E6D6:  LDR.W           R1, [R10,#0x34]
19E6DA:  CMP             R1, #0
19E6DC:  IT EQ
19E6DE:  MOVEQ           R5, R0
19E6E0:  LDR             R0, [SP,#0x48+var_24]
19E6E2:  BLX             j_ec_tell_frac
19E6E6:  SUB.W           R0, R0, R8
19E6EA:  LDR             R1, [R6]
19E6EC:  SUBS            R1, R1, R0
19E6EE:  STR             R1, [R6]
19E6F0:  B               loc_19E760
19E6F2:  SUB.W           R0, R10, R0
19E6F6:  MOV             R1, #0xFFFFFFF9
19E6FA:  ADD.W           R0, R1, R0,LSL#3
19E6FE:  BLX             j_isqrt32
19E702:  ADDS            R1, R6, #1
19E704:  RSB.W           R2, R0, R1,LSL#1
19E708:  ADDS            R0, R6, #2
19E70A:  SUB.W           R3, R0, R2,LSR#1
19E70E:  SUB.W           R0, R1, R2,LSR#1
19E712:  MOV.W           R8, R2,LSR#1
19E716:  MUL.W           R1, R0, R3
19E71A:  SUB.W           R1, R10, R1,ASR#1
19E71E:  ADDS            R2, R1, R0
19E720:  LDR.W           R11, [SP,#0x48+var_30]
19E724:  LDR             R5, [R7,#arg_4]
19E726:  MOV             R3, R10
19E728:  LDR             R0, [SP,#0x48+var_24]
19E72A:  BLX             j_ec_dec_update
19E72E:  MOV.W           R0, R8,LSL#14
19E732:  MOV             R1, R6
19E734:  BLX             sub_220A6C
19E738:  MOV             R9, R0
19E73A:  LDR             R0, [SP,#0x48+var_24]
19E73C:  LDR             R4, [SP,#0x48+var_2C]
19E73E:  BLX             j_ec_tell_frac
19E742:  LDR             R1, [R5]
19E744:  SUBS            R0, R0, R4
19E746:  CMP.W           R9, #0x4000
19E74A:  SUB.W           R1, R1, R0
19E74E:  STR             R1, [R5]
19E750:  BEQ             loc_19E782
19E752:  CMP.W           R9, #0
19E756:  BNE             loc_19E7AA
19E758:  MOVS            R5, #0
19E75A:  LDR             R4, [R7,#arg_18]
19E75C:  LDR.W           R9, [R7,#arg_8]
19E760:  MOVS            R1, #1
19E762:  LDR             R2, [R4]
19E764:  LSL.W           R1, R1, R9
19E768:  MOVW            R3, #0xC000
19E76C:  SUBS            R1, #1
19E76E:  MOVT            R3, #0xFFFF
19E772:  ANDS            R1, R2
19E774:  STR             R1, [R4]
19E776:  MOVW            R1, #0x7FFF
19E77A:  MOV.W           R9, #0
19E77E:  MOVS            R2, #0
19E780:  B               loc_19E8D2
19E782:  LDR             R2, [R7,#arg_8]
19E784:  MOVS            R1, #1
19E786:  MOVS            R5, #0
19E788:  MOV.W           R9, #0x4000
19E78C:  MOV             R6, R2
19E78E:  LDR             R2, [R7,#arg_18]
19E790:  LSLS            R1, R6
19E792:  SUBS            R1, #1
19E794:  MOV             R3, R2
19E796:  LDR             R2, [R3]
19E798:  LSLS            R1, R6
19E79A:  ANDS            R1, R2
19E79C:  STR             R1, [R3]
19E79E:  MOVW            R2, #0x7FFF
19E7A2:  MOVS            R1, #0
19E7A4:  MOV.W           R3, #0x4000
19E7A8:  B               loc_19E8D2
19E7AA:  MOV.W           R2, R9,LSL#16
19E7AE:  SXTH.W          R1, R9
19E7B2:  ASRS            R2, R2, #0xD
19E7B4:  MOV.W           R6, #0x8000
19E7B8:  MULS            R1, R2
19E7BA:  MOV             R2, #0xFFFFFD8E
19E7C2:  MOVW            R3, #0xFFFF
19E7C6:  MOVS            R5, #0xE21D0000
19E7CC:  MOV.W           LR, #0x4000
19E7D0:  MOVW            R10, #0
19E7D4:  ADD.W           R1, R1, #0x8000
19E7D8:  MOVT            R10, #0x1EFC
19E7DC:  SMULTB.W        R2, R1, R2
19E7E0:  ADD.W           R2, R6, R2,LSL#1
19E7E4:  BICS            R2, R3
19E7E6:  MOVS            R3, #0x20550000
19E7EC:  ADD             R2, R3
19E7EE:  MOVW            R3, #0xF5DB
19E7F2:  SMULTT.W        R2, R2, R1
19E7F6:  MOVT            R3, #0xFFFF
19E7FA:  ADD.W           R2, R6, R2,LSL#1
19E7FE:  BFC.W           R2, #0, #0x10
19E802:  ADD             R2, R5
19E804:  SMLATT.W        R2, R2, R1, LR
19E808:  SUB.W           R1, R6, R1,ASR#16
19E80C:  ADD.W           R1, R1, R2,LSR#15
19E810:  SXTH            R1, R1
19E812:  CLZ.W           R2, R1
19E816:  RSB.W           R8, R2, #0x20 ; ' '
19E81A:  RSB.W           R2, R8, #0xF
19E81E:  LSL.W           R2, R1, R2
19E822:  SXTH            R4, R2
19E824:  SMULBB.W        R4, R4, R3
19E828:  MOV             R3, #0xFFFFFD8E
19E830:  ADD.W           R4, R6, R4,LSL#1
19E834:  BFC.W           R4, #0, #0x10
19E838:  ADD             R4, R10
19E83A:  MOV             R10, #0xFFFFF5DB
19E842:  SMLABT.W        R12, R2, R4, LR
19E846:  RSB.W           R2, R9, #0x4000
19E84A:  SXTH            R4, R2
19E84C:  LSLS            R2, R2, #0x10
19E84E:  ASRS            R2, R2, #0xD
19E850:  MULS            R2, R4
19E852:  ADD.W           R2, R2, #0x8000
19E856:  SMULTB.W        R4, R2, R3
19E85A:  MOVS            R3, #0x20550000
19E860:  ADD.W           R4, R6, R4,LSL#1
19E864:  BFC.W           R4, #0, #0x10
19E868:  ADD             R4, R3
19E86A:  SMULTT.W        R4, R4, R2
19E86E:  ADD.W           R4, R6, R4,LSL#1
19E872:  BFC.W           R4, #0, #0x10
19E876:  ADD             R4, R5
19E878:  SMLATT.W        R4, R4, R2, LR
19E87C:  SUB.W           R2, R6, R2,ASR#16
19E880:  ADD.W           R2, R2, R4,LSR#15
19E884:  SXTH            R2, R2
19E886:  CLZ.W           R4, R2
19E88A:  RSB.W           R4, R4, #0x20 ; ' '
19E88E:  RSB.W           R3, R4, #0xF
19E892:  SUB.W           R4, R4, R8
19E896:  LSL.W           R3, R2, R3
19E89A:  LSLS            R4, R4, #0xB
19E89C:  SXTH            R5, R3
19E89E:  SMULBB.W        R5, R5, R10
19E8A2:  ADD.W           R5, R6, R5,LSL#1
19E8A6:  MOVS            R6, #0x1EFC0000
19E8AC:  BFC.W           R5, #0, #0x10
19E8B0:  ADD             R5, R6
19E8B2:  SUB.W           R6, R4, R12,LSR#15
19E8B6:  SMLABT.W        R3, R3, R5, LR
19E8BA:  LDR             R5, [R7,#arg_0]
19E8BC:  ADD.W           R3, R6, R3,LSR#15
19E8C0:  MOVS            R6, #0xFF800000
19E8C6:  ADD.W           R6, R6, R5,LSL#23
19E8CA:  MOVS            R5, #0
19E8CC:  SMLABT.W        R3, R3, R6, LR
19E8D0:  ASRS            R3, R3, #0xF
19E8D2:  STRD.W          R5, R1, [R11]
19E8D6:  ADD.W           R1, R11, #8
19E8DA:  STM.W           R1, {R2,R3,R9}
19E8DE:  STR.W           R0, [R11,#0x14]
19E8E2:  ADD             SP, SP, #0x2C ; ','
19E8E4:  POP.W           {R8-R11}
19E8E8:  POP             {R4-R7,PC}
