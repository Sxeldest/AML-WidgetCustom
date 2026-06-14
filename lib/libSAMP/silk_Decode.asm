; =========================================================
; Game Engine Function: silk_Decode
; Address            : 0x1901BC - 0x190B92
; =========================================================

1901BC:  PUSH            {R4-R7,LR}
1901BE:  ADD             R7, SP, #0xC
1901C0:  PUSH.W          {R8-R11}
1901C4:  SUB.W           SP, SP, #0x2CC
1901C8:  MOV             R9, R0
1901CA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1901D8)
1901CE:  MOV             R6, SP
1901D0:  ADD.W           R5, R6, #0x34 ; '4'
1901D4:  ADD             R0, PC; __stack_chk_guard_ptr
1901D6:  STR             R2, [R6,#0x2E8+var_2CC]
1901D8:  MOV             R12, R1
1901DA:  CMP             R3, #0
1901DC:  LDR             R0, [R0]; __stack_chk_guard
1901DE:  LDR             R0, [R0]
1901E0:  STR             R0, [R6,#0x2E8+var_2BC]
1901E2:  MOV.W           R0, #0
1901E6:  STR.W           R0, [R5,#-4]
1901EA:  STR             R0, [R5,#0xC]
1901EC:  STR             R0, [R5]
1901EE:  LDR.W           LR, [R12,#4]
1901F2:  BEQ             loc_190210
1901F4:  CMP.W           LR, #1
1901F8:  BLT             loc_190210
1901FA:  ADDW            R1, R9, #0x954
1901FE:  MOVS            R2, #0
190200:  MOVW            R3, #0x10A8
190204:  MOVS            R5, #0
190206:  STR             R2, [R1]
190208:  ADDS            R5, #1
19020A:  ADD             R1, R3
19020C:  CMP             R5, LR
19020E:  BLT             loc_190206
190210:  MOVW            R1, #0x2160
190214:  ADD.W           R4, R9, R1
190218:  LDR.W           R2, [R9,R1]
19021C:  STR.W           R12, [R6,#0x24]
190220:  CMP             LR, R2
190222:  BLE             loc_190240
190224:  MOVW            R0, #0x10A8
190228:  ADD             R0, R9
19022A:  BLX             j_silk_init_decoder
19022E:  LDR.W           R12, [R6,#0x24]
190232:  LDR.W           LR, [R12,#4]
190236:  CMP.W           LR, #1
19023A:  BEQ             loc_190248
19023C:  MOVS            R3, #0
19023E:  B               loc_190264
190240:  MOVS            R0, #0
190242:  CMP.W           LR, #1
190246:  BNE             loc_19023C
190248:  LDR             R1, [R4]
19024A:  MOVS            R3, #0
19024C:  CMP             R1, #2
19024E:  BNE             loc_190264
190250:  LDR.W           R1, [R9,#0x90C]
190254:  MOV.W           R2, #0x3E8
190258:  MULS            R1, R2
19025A:  LDR.W           R2, [R12,#0xC]
19025E:  CMP             R2, R1
190260:  IT EQ
190262:  MOVEQ           R3, #1
190264:  LDR.W           R1, [R9,#0x954]
190268:  STR             R0, [R6,#0x28]
19026A:  CMP             R1, #0
19026C:  STRD.W          R3, R4, [R6,#0xC]
190270:  BNE             loc_190304
190272:  CMP.W           LR, #1
190276:  BLT             loc_190304
190278:  MOVS            R5, #0
19027A:  MOV.W           R8, #1
19027E:  MOVW            R11, #0x8880
190282:  MOVW            R10, #0x10A8
190286:  MOV             R4, R9
190288:  LDR.W           R3, [R12,#0x10]
19028C:  MOV             R0, #0xFFFFFF35
190290:  CMP             R3, #0x13
190292:  BLE             loc_1902A8
190294:  CMP             R3, #0x3C ; '<'
190296:  BEQ             loc_1902B6
190298:  CMP             R3, #0x28 ; '('
19029A:  BEQ             loc_1902BC
19029C:  CMP             R3, #0x14
19029E:  BNE.W           loc_190B74
1902A2:  MOVS            R1, #4
1902A4:  MOVS            R2, #1
1902A6:  B               loc_1902C0
1902A8:  MOVS            R1, #2
1902AA:  MOVS            R2, #1
1902AC:  CBZ             R3, loc_1902C0
1902AE:  CMP             R3, #0xA
1902B0:  BEQ             loc_1902C0
1902B2:  B.W             loc_190B74
1902B6:  MOVS            R1, #4
1902B8:  MOVS            R2, #3
1902BA:  B               loc_1902C0
1902BC:  MOVS            R1, #4
1902BE:  MOVS            R2, #2
1902C0:  STR.W           R1, [R4,#0x914]
1902C4:  STR.W           R2, [R4,#0x958]
1902C8:  LDR.W           R0, [R12,#0xC]
1902CC:  ASRS            R1, R0, #0xA
1902CE:  MOV             R0, #0xFFFFFF38
1902D2:  CMP             R1, #0xF
1902D4:  BHI.W           loc_190B74
1902D8:  LSL.W           R2, R8, R1
1902DC:  TST.W           R2, R11
1902E0:  BEQ.W           loc_190B74
1902E4:  LDR.W           R2, [R12,#8]
1902E8:  ADDS            R1, #1
1902EA:  MOV             R0, R4
1902EC:  BLX             j_silk_decoder_set_fs
1902F0:  LDRD.W          R12, R1, [R6,#0x24]
1902F4:  ADD             R4, R10
1902F6:  ADD             R1, R0
1902F8:  STR             R1, [R6,#0x28]
1902FA:  ADDS            R5, #1
1902FC:  LDR.W           LR, [R12,#4]
190300:  CMP             R5, LR
190302:  BLT             loc_190288
190304:  LDR.W           R1, [R12]
190308:  CMP             R1, #2
19030A:  BNE             loc_190354
19030C:  LDR             R4, [R6,#0x10]
19030E:  CMP.W           LR, #2
190312:  BNE             loc_19035C
190314:  MOVW            R0, #0x215C
190318:  LDR.W           R0, [R9,R0]
19031C:  CMP             R0, #1
19031E:  ITT NE
190320:  LDRNE           R0, [R4]
190322:  CMPNE           R0, #1
190324:  BNE             loc_190358
190326:  MOVW            R0, #0x2158
19032A:  MOVS            R1, #0
19032C:  STR.W           R1, [R9,R0]
190330:  MOVW            R0, #0x2150
190334:  MOV.W           R2, #0x12C; n
190338:  STR.W           R1, [R9,R0]
19033C:  MOVW            R0, #0x1A28
190340:  ADD             R0, R9; dest
190342:  ADD.W           R1, R9, #0x980; src
190346:  BLX             j_memcpy
19034A:  LDR.W           R12, [R6,#0x24]
19034E:  LDRD.W          R1, LR, [R12]
190352:  B               loc_19035E
190354:  LDR             R4, [R6,#0x10]
190356:  B               loc_19035E
190358:  MOV.W           LR, #2
19035C:  MOVS            R1, #2
19035E:  MOVW            R2, #0x215C
190362:  STR.W           R1, [R9,R2]
190366:  MOVW            R2, #0x9C40
19036A:  STR.W           LR, [R4]
19036E:  LDR.W           R1, [R12,#8]
190372:  SUB.W           R1, R1, #0x1F40
190376:  CMP             R1, R2
190378:  BLS             loc_190380
19037A:  MOV             R0, #0xFFFFFF38
19037E:  B               loc_190B74
190380:  LDR             R1, [R6,#0x1C]
190382:  LDR.W           R8, [R7,#arg_0]
190386:  CMP             R1, #1
190388:  MOV             R1, R9
19038A:  STR             R1, [R6,#0x20]
19038C:  BEQ.W           loc_1905EA
190390:  LDR.W           R1, [R9,#0x954]
190394:  CMP             R1, #0
190396:  BNE.W           loc_1905EA
19039A:  CMP.W           LR, #1
19039E:  BLT             loc_190492
1903A0:  LDR             R0, [R6,#0x20]
1903A2:  MOV.W           R10, #0
1903A6:  MOVW            R1, #0x10A8
1903AA:  ADDW            R11, R0, #0x964
1903AE:  LDR             R0, [R6,#0x20]
1903B0:  MLA.W           R5, R10, R1, R0
1903B4:  LDR             R0, [R7,#arg_0]
1903B6:  MOVS            R1, #1
1903B8:  LDR.W           R4, [R5,#0x958]
1903BC:  BLX             j_ec_dec_bit_logp
1903C0:  CMP             R4, #1
1903C2:  STR             R5, [R6,#0x18]
1903C4:  BLT             loc_1903E6
1903C6:  LDR.W           R9, [R7,#arg_0]
1903CA:  ADDW            R5, R5, #0x958
1903CE:  MOVS            R4, #0
1903D0:  STR.W           R0, [R11,R4,LSL#2]
1903D4:  MOV             R0, R9
1903D6:  MOVS            R1, #1
1903D8:  LDR.W           R8, [R5]
1903DC:  BLX             j_ec_dec_bit_logp
1903E0:  ADDS            R4, #1
1903E2:  CMP             R4, R8
1903E4:  BLT             loc_1903D0
1903E6:  LDR             R1, [R6,#0x18]
1903E8:  ADD.W           R10, R10, #1
1903EC:  STR.W           R0, [R1,#0x970]
1903F0:  MOVW            R1, #0x10A8
1903F4:  LDR.W           R12, [R6,#0x24]
1903F8:  ADD             R11, R1
1903FA:  LDR.W           LR, [R12,#4]
1903FE:  CMP             R10, LR
190400:  BLT             loc_1903AE
190402:  CMP.W           LR, #1
190406:  BLT             loc_190492
190408:  LDR             R0, [R6,#0x20]
19040A:  MOV.W           R9, #0
19040E:  MOVW            R10, #0x10A8
190412:  MOV.W           R11, #0
190416:  ADDW            R4, R0, #0x974
19041A:  LDR.W           R0, =(silk_LBRR_flags_iCDF_ptr_ptr - 0x190422)
19041E:  ADD             R0, PC; silk_LBRR_flags_iCDF_ptr_ptr
190420:  LDR.W           R8, [R0]; silk_LBRR_flags_iCDF_ptr
190424:  LDR             R0, [R6,#0x20]
190426:  MLA.W           R0, R11, R10, R0
19042A:  STR.W           R9, [R0,#0x974]
19042E:  STR.W           R9, [R0,#0x978]
190432:  STR.W           R9, [R0,#0x97C]
190436:  LDR.W           R1, [R0,#0x970]
19043A:  CBZ             R1, loc_190484
19043C:  LDR.W           R1, [R0,#0x958]
190440:  CMP             R1, #1
190442:  BNE             loc_19044E
190444:  ADDW            R0, R0, #0x974
190448:  MOVS            R1, #1
19044A:  STR             R1, [R0]
19044C:  B               loc_190484
19044E:  ADDW            R5, R0, #0x958
190452:  ADD.W           R0, R8, R1,LSL#2
190456:  MOVS            R2, #8
190458:  LDR.W           R1, [R0,#-8]
19045C:  LDR             R0, [R7,#arg_0]
19045E:  BLX             j_ec_dec_icdf
190462:  LDR             R1, [R5]
190464:  LDR.W           R12, [R6,#0x24]
190468:  CMP             R1, #1
19046A:  BLT             loc_190484
19046C:  ADDS            R0, #1
19046E:  MOVS            R1, #0
190470:  LSR.W           R2, R0, R1
190474:  AND.W           R2, R2, #1
190478:  STR.W           R2, [R4,R1,LSL#2]
19047C:  ADDS            R1, #1
19047E:  LDR             R2, [R5]
190480:  CMP             R1, R2
190482:  BLT             loc_190470
190484:  LDR.W           LR, [R12,#4]
190488:  ADD.W           R11, R11, #1
19048C:  ADD             R4, R10
19048E:  CMP             R11, LR
190490:  BLT             loc_190424
190492:  LDR             R1, [R6,#0x1C]
190494:  CBZ             R1, loc_1904A0
190496:  LDR.W           R9, [R6,#0x20]
19049A:  LDR.W           R8, [R7,#arg_0]
19049E:  B               loc_1905EA
1904A0:  LDR.W           R9, [R6,#0x20]
1904A4:  LDR.W           R1, [R9,#0x958]
1904A8:  CMP             R1, #1
1904AA:  BLT             loc_19049A
1904AC:  LDR.W           R8, [R7,#arg_0]
1904B0:  MOVW            R1, #0x1A1C
1904B4:  ADD.W           R0, R9, R1
1904B8:  STR             R0, [R6,#0x14]
1904BA:  MOVW            R0, #0x974
1904BE:  MOV.W           R10, #0
1904C2:  MOV.W           R11, #0
1904C6:  STR             R0, [R6,#0x18]
1904C8:  CMP.W           LR, #1
1904CC:  BLT.W           loc_1905D2
1904D0:  MOVS            R5, #0
1904D2:  MOV             R4, R9
1904D4:  CMP.W           R11, #0
1904D8:  BLE             loc_190562
1904DA:  ADD.W           R8, R4, R10
1904DE:  LDR.W           R1, [R8,#0x974]
1904E2:  CBZ             R1, loc_190550
1904E4:  CMP             R5, #0
1904E6:  IT EQ
1904E8:  CMPEQ.W         LR, #2
1904EC:  BNE             loc_19050A
1904EE:  LDR             R0, [R7,#arg_0]
1904F0:  ADD.W           R1, R6, #0x30 ; '0'
1904F4:  BLX             j_silk_stereo_decode_pred
1904F8:  LDR             R0, [R6,#0x14]
1904FA:  LDR.W           R0, [R0,R11,LSL#2]
1904FE:  CBNZ            R0, loc_19050A
190500:  LDR             R0, [R7,#arg_0]
190502:  ADD.W           R1, R6, #0x40 ; '@'
190506:  BLX             j_silk_stereo_decode_mid_only
19050A:  LDR.W           R0, [R8,#0x970]
19050E:  CMP             R0, #0
190510:  IT NE
190512:  MOVNE           R0, #2
190514:  SUB             SP, SP, #8
190516:  LDR.W           R8, [R7,#arg_0]
19051A:  MOV             R2, R11
19051C:  STR             R0, [SP,#0x2F0+var_2F0]
19051E:  MOV             R0, R4
190520:  MOVS            R3, #1
190522:  MOV             R1, R8
190524:  BLX             j_silk_decode_indices
190528:  ADD             SP, SP, #8
19052A:  LDRSB.W         R3, [R4,#0xACE]
19052E:  LDRSB.W         R2, [R4,#0xACD]
190532:  LDR.W           R0, [R4,#0x918]
190536:  SUB             SP, SP, #8
190538:  ADD.W           R1, R6, #0x44 ; 'D'
19053C:  STR             R0, [SP,#0x2F0+var_2F0]
19053E:  MOV             R0, R8
190540:  BLX             j_silk_decode_pulses
190544:  ADD             SP, SP, #8
190546:  LDR.W           R12, [R6,#0x24]
19054A:  LDR.W           LR, [R12,#4]
19054E:  B               loc_190554
190550:  LDR.W           R8, [R7,#arg_0]
190554:  MOVW            R0, #0x10A8
190558:  ADDS            R5, #1
19055A:  ADD             R4, R0
19055C:  CMP             R5, LR
19055E:  BLT             loc_1904DA
190560:  B               loc_1905D2
190562:  LDR             R0, [R6,#0x18]
190564:  LDR             R1, [R4,R0]
190566:  CBZ             R1, loc_1905C6
190568:  CMP             R5, #0
19056A:  IT EQ
19056C:  CMPEQ.W         LR, #2
190570:  BNE             loc_19058E
190572:  ADD.W           R1, R6, #0x30 ; '0'
190576:  MOV             R0, R8
190578:  BLX             j_silk_stereo_decode_pred
19057C:  LDR             R0, [R6,#0x14]
19057E:  LDR.W           R0, [R0,R11,LSL#2]
190582:  CBNZ            R0, loc_19058E
190584:  ADD.W           R1, R6, #0x40 ; '@'
190588:  MOV             R0, R8
19058A:  BLX             j_silk_stereo_decode_mid_only
19058E:  SUB             SP, SP, #8
190590:  MOVS            R0, #0
190592:  MOV             R1, R8
190594:  STR             R0, [SP,#0x2F0+var_2F0]
190596:  MOV             R0, R4
190598:  MOV             R2, R11
19059A:  MOVS            R3, #1
19059C:  BLX             j_silk_decode_indices
1905A0:  ADD             SP, SP, #8
1905A2:  LDRSB.W         R3, [R4,#0xACE]
1905A6:  LDRSB.W         R2, [R4,#0xACD]
1905AA:  LDR.W           R0, [R4,#0x918]
1905AE:  SUB             SP, SP, #8
1905B0:  ADD.W           R1, R6, #0x44 ; 'D'
1905B4:  STR             R0, [SP,#0x2F0+var_2F0]
1905B6:  MOV             R0, R8
1905B8:  BLX             j_silk_decode_pulses
1905BC:  ADD             SP, SP, #8
1905BE:  LDR.W           R12, [R6,#0x24]
1905C2:  LDR.W           LR, [R12,#4]
1905C6:  MOVW            R0, #0x10A8
1905CA:  ADDS            R5, #1
1905CC:  ADD             R4, R0
1905CE:  CMP             R5, LR
1905D0:  BLT             loc_190562
1905D2:  LDR             R0, [R6,#0x18]
1905D4:  ADD.W           R10, R10, #4
1905D8:  ADD.W           R11, R11, #1
1905DC:  ADDS            R0, #4
1905DE:  STR             R0, [R6,#0x18]
1905E0:  LDR.W           R1, [R9,#0x958]
1905E4:  CMP             R11, R1
1905E6:  BLT.W           loc_1904C8
1905EA:  ADD.W           R4, R6, #0x34 ; '4'
1905EE:  CMP.W           LR, #2
1905F2:  MOV             R10, R4
1905F4:  BNE             loc_190668
1905F6:  LDR             R0, [R6,#0x1C]
1905F8:  CBZ             R0, loc_190638
1905FA:  CMP             R0, #2
1905FC:  BNE             loc_190622
1905FE:  LDR.W           R0, [R9,#0x954]
190602:  ADD.W           R0, R9, R0,LSL#2
190606:  LDR.W           R0, [R0,#0x974]
19060A:  CMP             R0, #1
19060C:  BNE             loc_190622
19060E:  ADD.W           R1, R6, #0x30 ; '0'
190612:  MOV             R0, R8
190614:  BLX             j_silk_stereo_decode_pred
190618:  LDR.W           R0, [R9,#0x954]
19061C:  MOVW            R1, #0x1A1C
190620:  B               loc_19064A
190622:  MOVW            R1, #0x2152
190626:  MOVW            R0, #0x2150
19062A:  LDRSH.W         R1, [R9,R1]
19062E:  LDRSH.W         R0, [R9,R0]
190632:  STRD.W          R0, R1, [R10,#-4]
190636:  B               loc_190668
190638:  ADD.W           R1, R6, #0x30 ; '0'
19063C:  MOV             R0, R8
19063E:  BLX             j_silk_stereo_decode_pred
190642:  LDR.W           R0, [R9,#0x954]
190646:  MOVW            R1, #0x1A0C
19064A:  ADD.W           R0, R9, R0,LSL#2
19064E:  LDR             R0, [R0,R1]
190650:  CBZ             R0, loc_19065A
190652:  MOVS            R0, #0
190654:  STR.W           R0, [R10,#0xC]
190658:  B               loc_190664
19065A:  ADD.W           R1, R6, #0x40 ; '@'
19065E:  MOV             R0, R8
190660:  BLX             j_silk_stereo_decode_mid_only
190664:  LDR.W           R12, [R6,#0x24]
190668:  LDR.W           R1, [R10,#0xC]
19066C:  MOV.W           R11, #0
190670:  LDR.W           R0, [R12,#4]
190674:  CMP             R1, #0
190676:  IT EQ
190678:  MOVEQ.W         R11, #1
19067C:  CMP             R0, #2
19067E:  IT EQ
190680:  CMPEQ           R1, #0
190682:  BNE             loc_1906D2
190684:  MOVW            R0, #0x2164
190688:  LDR.W           R0, [R9,R0]
19068C:  CMP             R0, #1
19068E:  BNE             loc_1906D0
190690:  MOVW            R0, #0x15AC
190694:  MOV.W           R1, #0x400; n
190698:  ADD             R0, R9; int
19069A:  BLX             sub_22178C
19069E:  MOVW            R0, #0x19B0
1906A2:  MOVS            R1, #0xA
1906A4:  LDR.W           R12, [R6,#0x24]
1906A8:  STRB.W          R1, [R9,R0]
1906AC:  MOVW            R0, #0x19AC
1906B0:  MOVS            R1, #0x64 ; 'd'
1906B2:  STR.W           R1, [R9,R0]
1906B6:  MOVW            R0, #0x20EC
1906BA:  MOVS            R1, #0
1906BC:  STR.W           R1, [R9,R0]
1906C0:  MOVW            R0, #0x19F0
1906C4:  MOVS            R1, #1
1906C6:  STR.W           R1, [R9,R0]
1906CA:  LDR.W           R0, [R12,#4]
1906CE:  B               loc_1906D2
1906D0:  MOVS            R0, #2
1906D2:  LDR.W           R1, [R12]
1906D6:  LDRD.W          R2, R3, [R12,#8]
1906DA:  MUL.W           R8, R0, R3
1906DE:  LDR             R4, [R7,#src]
1906E0:  MULS            R1, R2
1906E2:  STR             R1, [R6,#0x18]
1906E4:  CMP             R8, R1
1906E6:  BGE             loc_1906F8
1906E8:  STR.W           R4, [R10,#0x10]
1906EC:  ADDW            R2, R9, #0x918
1906F0:  LDR.W           R5, [R9,#0x918]
1906F4:  MOV             R1, R4
1906F6:  B               loc_190718
1906F8:  LDR.W           R5, [R9,#0x918]
1906FC:  MOVS            R3, #7
1906FE:  ADDS            R2, R5, #2
190700:  MULS            R2, R0
190702:  ADD.W           R2, R3, R2,LSL#1
190706:  BIC.W           R2, R2, #7
19070A:  SUB.W           R1, SP, R2
19070E:  MOV             SP, R1
190710:  ADDW            R2, R9, #0x918
190714:  STR.W           R1, [R10,#0x10]
190718:  STR             R2, [R6,#0x14]
19071A:  ADD.W           R2, R1, R5,LSL#1
19071E:  ADDS            R3, R2, #4
190720:  LDR             R2, [R6,#0x1C]
190722:  STR.W           R3, [R10,#0x14]
190726:  CMP             R2, #0
190728:  BEQ             loc_1907EC
19072A:  MOVW            R2, #0x2164
19072E:  LDR.W           R2, [R9,R2]
190732:  CMP             R2, #0
190734:  BEQ             loc_1907E6
190736:  LDR             R2, [R6,#0x1C]
190738:  MOV.W           R11, #0
19073C:  CMP             R2, #2
19073E:  IT EQ
190740:  CMPEQ           R0, #2
190742:  BNE             loc_1907EC
190744:  STR             R3, [R6]
190746:  MOVW            R0, #0x19FC
19074A:  LDR.W           R0, [R9,R0]
19074E:  MOVW            R2, #0x1A1C
190752:  MOVS            R4, #1
190754:  ADD.W           R0, R9, R0,LSL#2
190758:  LDR             R0, [R0,R2]
19075A:  CMP             R0, #1
19075C:  BEQ             loc_190800
19075E:  ADD.W           R11, R1, #4
190762:  CMP             R4, #0
190764:  STRD.W          R1, R8, [R6,#4]
190768:  BEQ.W           loc_1908A0
19076C:  ADDW            R4, R9, #0x954
190770:  MOVS            R5, #0
190772:  MOV.W           R8, #2
190776:  MOVW            R10, #0x10A8
19077A:  CBZ             R5, loc_190794
19077C:  ADD.W           R0, R6, #0x34 ; '4'
190780:  LDR             R1, [R0,#8]
190782:  ADD.W           R0, R6, #0x44 ; 'D'
190786:  LDR.W           R0, [R0,R5,LSL#2]
19078A:  LSLS            R1, R1, #1; n
19078C:  ADDS            R0, #4; int
19078E:  BLX             sub_22178C
190792:  B               loc_1907CE
190794:  LDR.W           R0, [R9,#0x954]
190798:  CMP             R0, #1
19079A:  BLT             loc_1907AC
19079C:  ADD.W           R0, R9, R0,LSL#2
1907A0:  LDR.W           R0, [R0,#0x970]
1907A4:  CMP             R0, #0
1907A6:  IT NE
1907A8:  MOVNE           R0, #2
1907AA:  B               loc_1907AE
1907AC:  MOVS            R0, #0
1907AE:  LDR             R1, [R7,#arg_0]
1907B0:  SUB             SP, SP, #0x10
1907B2:  STRD.W          R8, R0, [SP,#0x2F8+var_2F8]
1907B6:  ADD.W           R3, R6, #0x3C ; '<'
1907BA:  LDR             R0, [R7,#arg_C]
1907BC:  MOV             R2, R11
1907BE:  STR             R0, [SP,#0x2F8+var_2F0]
1907C0:  MOV             R0, R9
1907C2:  BLX             j_silk_decode_frame
1907C6:  ADD             SP, SP, #0x10
1907C8:  LDR             R1, [R6,#0x28]
1907CA:  ADD             R1, R0
1907CC:  STR             R1, [R6,#0x28]
1907CE:  LDR             R0, [R4]
1907D0:  ADDS            R5, #1
1907D2:  ADDS            R0, #1
1907D4:  STR             R0, [R4]
1907D6:  LDR.W           R12, [R6,#0x24]
1907DA:  ADD             R4, R10
1907DC:  LDR.W           R0, [R12,#4]
1907E0:  CMP             R5, R0
1907E2:  BLT             loc_19077A
1907E4:  B               loc_19090A
1907E6:  LDR             R2, [R6,#0x1C]
1907E8:  MOV.W           R11, #1
1907EC:  CMP             R0, #1
1907EE:  BLT             loc_19089C
1907F0:  MOVS            R4, #0
1907F2:  CMP             R2, #2
1907F4:  STR             R3, [R6]
1907F6:  IT EQ
1907F8:  MOVEQ           R4, #1
1907FA:  CMP.W           R11, #1
1907FE:  BNE             loc_19075E
190800:  STRD.W          R1, R8, [R6,#4]
190804:  MOVW            R0, #0x2164
190808:  ADD.W           R8, R9, R0
19080C:  MOV.W           R11, #0
190810:  MOV.W           R10, #0xFFFFFFFF
190814:  MOV             R5, R9
190816:  LDR.W           R0, [R9,#0x954]
19081A:  ADD             R0, R10
19081C:  ADDS            R1, R0, #1
19081E:  CMP             R1, #1
190820:  BLT             loc_190834
190822:  CBZ             R4, loc_19083A
190824:  ADD.W           R0, R5, R0,LSL#2
190828:  LDR.W           R0, [R0,#0x974]
19082C:  CMP             R0, #0
19082E:  IT NE
190830:  MOVNE           R0, #2
190832:  B               loc_190836
190834:  MOVS            R0, #0
190836:  LDR             R1, [R7,#arg_0]
190838:  B               loc_19084E
19083A:  LDR             R1, [R7,#arg_0]
19083C:  CMP.W           R11, #1
190840:  BLT             loc_19084C
190842:  LDR.W           R0, [R8]
190846:  CBZ             R0, loc_19084C
190848:  MOVS            R0, #1
19084A:  B               loc_19084E
19084C:  MOVS            R0, #2
19084E:  ADD.W           R2, R6, #0x44 ; 'D'
190852:  LDR.W           R3, [R2,R11,LSL#2]
190856:  SUB             SP, SP, #0x10
190858:  LDR             R2, [R6,#0x1C]
19085A:  STRD.W          R2, R0, [SP,#0x2F8+var_2F8]
19085E:  ADDS            R2, R3, #4
190860:  LDR             R0, [R7,#arg_C]
190862:  ADD.W           R3, R6, #0x3C ; '<'
190866:  STR             R0, [SP,#0x2F8+var_2F0]
190868:  MOV             R0, R5
19086A:  BLX             j_silk_decode_frame
19086E:  ADD             SP, SP, #0x10
190870:  LDR.W           R1, [R5,#0x954]
190874:  SUB.W           R10, R10, #1
190878:  ADD.W           R11, R11, #1
19087C:  ADDS            R1, #1
19087E:  STR.W           R1, [R5,#0x954]
190882:  MOVW            R1, #0x10A8
190886:  ADD             R5, R1
190888:  LDR             R1, [R6,#0x28]
19088A:  LDR.W           R12, [R6,#0x24]
19088E:  ADD             R1, R0
190890:  STR             R1, [R6,#0x28]
190892:  LDR.W           R0, [R12,#4]
190896:  CMP             R11, R0
190898:  BLT             loc_190816
19089A:  B               loc_19090A
19089C:  LDR             R5, [R7,#src]
19089E:  B               loc_190956
1908A0:  ADDW            R5, R9, #0x954
1908A4:  ADD.W           R8, R6, #0x44 ; 'D'
1908A8:  MOVS            R4, #0
1908AA:  MOVW            R10, #0x10A8
1908AE:  CBZ             R4, loc_1908C4
1908B0:  ADD.W           R0, R6, #0x34 ; '4'
1908B4:  LDR             R1, [R0,#8]
1908B6:  LDR.W           R0, [R8,R4,LSL#2]
1908BA:  ADDS            R0, #4; int
1908BC:  LSLS            R1, R1, #1; n
1908BE:  BLX             sub_22178C
1908C2:  B               loc_1908F4
1908C4:  LDR.W           R0, [R9,#0x954]
1908C8:  SUB             SP, SP, #0x10
1908CA:  CMP             R0, #0
1908CC:  MOV.W           R0, #0
1908D0:  IT GT
1908D2:  MOVGT           R0, #2
1908D4:  LDR             R1, [R6,#0x1C]
1908D6:  STRD.W          R1, R0, [SP,#0x2F8+var_2F8]
1908DA:  ADD.W           R3, R6, #0x3C ; '<'
1908DE:  LDR             R1, [R7,#arg_0]
1908E0:  MOV             R2, R11
1908E2:  LDR             R0, [R7,#arg_C]
1908E4:  STR             R0, [SP,#0x2F8+var_2F0]
1908E6:  MOV             R0, R9
1908E8:  BLX             j_silk_decode_frame
1908EC:  ADD             SP, SP, #0x10
1908EE:  LDR             R1, [R6,#0x28]
1908F0:  ADD             R1, R0
1908F2:  STR             R1, [R6,#0x28]
1908F4:  LDR             R0, [R5]
1908F6:  ADDS            R4, #1
1908F8:  ADDS            R0, #1
1908FA:  STR             R0, [R5]
1908FC:  LDR.W           R12, [R6,#0x24]
190900:  ADD             R5, R10
190902:  LDR.W           R0, [R12,#4]
190906:  CMP             R4, R0
190908:  BLT             loc_1908AE
19090A:  CMP             R0, #2
19090C:  BNE             loc_19094A
19090E:  LDR.W           R0, [R12]
190912:  ADD.W           R4, R6, #0x34 ; '4'
190916:  LDR             R5, [R7,#src]
190918:  LDRD.W          R1, R8, [R6,#4]
19091C:  CMP             R0, #2
19091E:  MOV             R10, R4
190920:  BNE             loc_190956
190922:  LDR.W           R0, [R10,#8]
190926:  LDR.W           R2, [R9,#0x90C]
19092A:  STRD.W          R2, R0, [SP,#0x2E8+var_2F0]!
19092E:  MOVW            R0, #0x2150
190932:  LDR             R2, [R6]
190934:  ADD             R0, R9
190936:  ADD.W           R3, R6, #0x30 ; '0'
19093A:  BLX             j_silk_stereo_MS_to_LR
19093E:  LDR.W           R12, [R6,#0x24]
190942:  ADD             SP, SP, #8
190944:  LDR.W           R11, [R10,#8]
190948:  B               loc_19096C
19094A:  ADD.W           R4, R6, #0x34 ; '4'
19094E:  LDR             R5, [R7,#src]
190950:  LDRD.W          R1, R8, [R6,#4]
190954:  MOV             R10, R4
190956:  MOVW            R0, #0x2154
19095A:  LDR.W           R2, [R9,R0]
19095E:  STR             R2, [R1]
190960:  LDR.W           R11, [R10,#8]
190964:  LDR.W           R1, [R1,R11,LSL#1]
190968:  STR.W           R1, [R9,R0]
19096C:  ADDW            R0, R9, #0x90C
190970:  LDR.W           R1, [R12,#8]
190974:  LDRSH.W         R2, [R0]
190978:  MUL.W           R0, R1, R11
19097C:  MOV.W           R1, #0x3E8
190980:  SMULBB.W        R1, R2, R1
190984:  BLX             sub_220A40
190988:  LDR             R1, [R7,#arg_8]
19098A:  LDR.W           R12, [R6,#0x24]
19098E:  STR             R0, [R1]
190990:  LDR.W           R10, [R12]
190994:  CMP.W           R10, #2
190998:  BNE             loc_1909AA
19099A:  MOVS            R1, #7
19099C:  ADD.W           R0, R1, R0,LSL#1
1909A0:  BIC.W           R0, R0, #7
1909A4:  SUB.W           R5, SP, R0
1909A8:  MOV             SP, R5
1909AA:  LDR             R0, [R6,#0x18]
1909AC:  LDR.W           R9, [R12,#4]
1909B0:  CMP             R8, R0
1909B2:  BGE             loc_1909EE
1909B4:  LDR             R0, [R6,#0x14]
1909B6:  MOVS            R1, #7
1909B8:  LDR.W           R8, [R0]
1909BC:  ADD.W           R0, R8, #2
1909C0:  MUL.W           R0, R9, R0
1909C4:  ADD.W           R1, R1, R0,LSL#1
1909C8:  LSLS            R2, R0, #1; n
1909CA:  BIC.W           R1, R1, #7
1909CE:  SUB.W           R4, SP, R1
1909D2:  MOV             SP, R4
1909D4:  LDR             R1, [R7,#src]; src
1909D6:  MOV             R0, R4; dest
1909D8:  BLX             j_memcpy
1909DC:  ADD.W           R0, R4, R8,LSL#1
1909E0:  LDR.W           R12, [R6,#0x24]
1909E4:  ADDS            R0, #4
1909E6:  ADD.W           R1, R6, #0x34 ; '4'
1909EA:  STRD.W          R4, R0, [R1,#0x10]
1909EE:  CMP             R10, R9
1909F0:  MOV             R0, R9
1909F2:  IT LT
1909F4:  MOVLT           R0, R10
1909F6:  CMP             R0, #1
1909F8:  BLT             loc_190AD0
1909FA:  LDR.W           R8, [R7,#src]
1909FE:  MOVS            R4, #0
190A00:  B               loc_190A12
190A02:  ADD.W           R0, R6, #0x34 ; '4'
190A06:  STR.W           R11, [R6,#0x28]
190A0A:  ADD.W           R8, R8, #2
190A0E:  LDR.W           R11, [R0,#8]
190A12:  LDR             R0, [R6,#0x20]
190A14:  MOVW            R1, #0x10A8
190A18:  MLA.W           R0, R4, R1, R0
190A1C:  ADD.W           R1, R6, #0x44 ; 'D'
190A20:  MOV             R3, R11
190A22:  LDR.W           R1, [R1,R4,LSL#2]
190A26:  ADDS            R2, R1, #2; src
190A28:  MOV             R1, R5; int
190A2A:  ADD.W           R0, R0, #0x980; int
190A2E:  BLX             j_silk_resampler
190A32:  LDR.W           R12, [R6,#0x24]
190A36:  LDR.W           R11, [R6,#0x28]
190A3A:  LDR.W           R10, [R12]
190A3E:  ADD             R11, R0
190A40:  CMP.W           R10, #2
190A44:  BNE             loc_190A68
190A46:  LDR             R0, [R7,#arg_8]
190A48:  LDR             R0, [R0]
190A4A:  CMP             R0, #1
190A4C:  BLT             loc_190A64
190A4E:  MOVS            R1, #0
190A50:  LDRH.W          R2, [R5,R1,LSL#1]
190A54:  STRH.W          R2, [R8,R1,LSL#2]
190A58:  ADDS            R1, #1
190A5A:  CMP             R1, R0
190A5C:  BLT             loc_190A50
190A5E:  LDR.W           R10, [R12]
190A62:  B               loc_190A68
190A64:  MOV.W           R10, #2
190A68:  LDR.W           R9, [R12,#4]
190A6C:  ADDS            R4, #1
190A6E:  CMP             R10, R9
190A70:  MOV             R0, R9
190A72:  IT LT
190A74:  MOVLT           R0, R10
190A76:  CMP             R4, R0
190A78:  BLT             loc_190A02
190A7A:  CMP.W           R10, #2
190A7E:  BNE             loc_190ADA
190A80:  LDR.W           R10, [R6,#0x10]
190A84:  CMP.W           R9, #1
190A88:  ADD.W           R9, R6, #0x34 ; '4'
190A8C:  BNE             loc_190AEA
190A8E:  LDR             R0, [R6,#0xC]
190A90:  LDR.W           R8, [R6,#0x20]
190A94:  CBZ             R0, loc_190AF2
190A96:  LDR.W           R1, [R9,#0x10]
190A9A:  MOVW            R0, #0x1A28
190A9E:  LDR.W           R3, [R9,#8]
190AA2:  ADD             R0, R8; int
190AA4:  ADDS            R2, R1, #2; src
190AA6:  MOV             R1, R5; int
190AA8:  BLX             j_silk_resampler
190AAC:  LDR             R1, [R7,#arg_8]
190AAE:  ADD             R0, R11
190AB0:  LDR             R1, [R1]
190AB2:  CMP             R1, #1
190AB4:  BLT             loc_190B12
190AB6:  LDR             R2, [R7,#src]
190AB8:  MOVS            R3, #0
190ABA:  LDR.W           R12, [R6,#0x24]
190ABE:  ADDS            R2, #2
190AC0:  LDRH.W          R4, [R5,R3,LSL#1]
190AC4:  STRH.W          R4, [R2,R3,LSL#2]
190AC8:  ADDS            R3, #1
190ACA:  CMP             R3, R1
190ACC:  BLT             loc_190AC0
190ACE:  B               loc_190B16
190AD0:  LDR.W           R11, [R6,#0x28]
190AD4:  CMP.W           R10, #2
190AD8:  BEQ             loc_190A80
190ADA:  MOV             R0, R11
190ADC:  LDR.W           R8, [R6,#0x20]
190AE0:  ADD.W           R9, R6, #0x34 ; '4'
190AE4:  LDR.W           R10, [R6,#0x10]
190AE8:  B               loc_190B16
190AEA:  MOV             R0, R11
190AEC:  LDR.W           R8, [R6,#0x20]
190AF0:  B               loc_190B16
190AF2:  LDR             R0, [R7,#arg_8]
190AF4:  LDR             R0, [R0]
190AF6:  CMP             R0, #1
190AF8:  BLT             loc_190B0E
190AFA:  LDR             R5, [R7,#src]
190AFC:  MOVS            R1, #0
190AFE:  LDRH.W          R2, [R5,R1,LSL#2]
190B02:  ADD.W           R3, R5, R1,LSL#2
190B06:  ADDS            R1, #1
190B08:  CMP             R1, R0
190B0A:  STRH            R2, [R3,#2]
190B0C:  BLT             loc_190AFE
190B0E:  MOV             R0, R11
190B10:  B               loc_190B16
190B12:  LDR.W           R12, [R6,#0x24]
190B16:  MOVW            R1, #0x1044
190B1A:  LDR.W           R1, [R8,R1]
190B1E:  CMP             R1, #2
190B20:  BNE             loc_190B38
190B22:  LDR.W           R2, [R8,#0x90C]
190B26:  ADR             R3, dword_190B9C
190B28:  LDR.W           R1, [R8,#0x904]
190B2C:  SUBS            R2, #8
190B2E:  BIC.W           R2, R2, #3
190B32:  LDR             R2, [R3,R2]
190B34:  MULS            R1, R2
190B36:  B               loc_190B3A
190B38:  MOVS            R1, #0
190B3A:  STR.W           R1, [R12,#0x14]
190B3E:  LDR             R1, [R6,#0x1C]
190B40:  CMP             R1, #1
190B42:  BNE             loc_190B68
190B44:  LDR.W           R1, [R10]
190B48:  CMP             R1, #1
190B4A:  BLT             loc_190B74
190B4C:  ADDW            R1, R8, #0x908
190B50:  MOVS            R2, #0
190B52:  MOVS            R3, #0xA
190B54:  MOVW            R5, #0x10A8
190B58:  STRB            R3, [R1]
190B5A:  ADD             R1, R5
190B5C:  LDR.W           R4, [R10]
190B60:  ADDS            R2, #1
190B62:  CMP             R2, R4
190B64:  BLT             loc_190B58
190B66:  B               loc_190B74
190B68:  LDR.W           R1, [R9,#0xC]
190B6C:  MOVW            R2, #0x2164
190B70:  STR.W           R1, [R8,R2]
190B74:  LDR             R1, =(__stack_chk_guard_ptr - 0x190B7C)
190B76:  LDR             R2, [R6,#0x2C]
190B78:  ADD             R1, PC; __stack_chk_guard_ptr
190B7A:  LDR             R1, [R1]; __stack_chk_guard
190B7C:  LDR             R1, [R1]
190B7E:  SUBS            R1, R1, R2
190B80:  ITTTT EQ
190B82:  SUBEQ.W         R4, R7, #-var_1C
190B86:  MOVEQ           SP, R4
190B88:  POPEQ.W         {R8-R11}
190B8C:  POPEQ           {R4-R7,PC}
190B8E:  BLX             __stack_chk_fail
