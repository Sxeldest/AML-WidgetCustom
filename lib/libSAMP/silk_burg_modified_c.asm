; =========================================================
; Game Engine Function: silk_burg_modified_c
; Address            : 0x1B015C - 0x1B0D0E
; =========================================================

1B015C:  PUSH            {R4-R7,LR}
1B015E:  ADD             R7, SP, #0xC
1B0160:  PUSH.W          {R8-R11}
1B0164:  SUB.W           SP, SP, #0x2F4
1B0168:  STR             R2, [SP,#0x310+var_304]
1B016A:  MOV             R8, R1
1B016C:  LDRD.W          R2, R1, [R7,#arg_4]
1B0170:  MOV             R5, R0
1B0172:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B017C)
1B0176:  MOV             R4, R3
1B0178:  ADD             R0, PC; __stack_chk_guard_ptr
1B017A:  MULS            R2, R1
1B017C:  MOV             R1, R4
1B017E:  LDR             R0, [R0]; __stack_chk_guard
1B0180:  LDR             R0, [R0]
1B0182:  STR             R0, [SP,#0x310+var_20]
1B0184:  MOV             R0, R4
1B0186:  BLX             j_silk_inner_prod16_aligned_64_c
1B018A:  CMP             R1, #0
1B018C:  ITEE NE
1B018E:  CLZNE.W         R2, R1
1B0192:  CLZEQ.W         R2, R0
1B0196:  ADDEQ           R2, #0x20 ; ' '
1B0198:  RSB.W           R6, R2, #0x24 ; '$'
1B019C:  CMP             R6, #7
1B019E:  IT GE
1B01A0:  MOVGE           R6, #7
1B01A2:  CMN.W           R6, #0x10
1B01A6:  IT LE
1B01A8:  MOVLE           R6, #0xFFFFFFF0
1B01AC:  CMP             R6, #1
1B01AE:  BLT             loc_1B01CA
1B01B0:  RSB.W           R2, R6, #0x20 ; ' '
1B01B4:  LSRS            R0, R6
1B01B6:  LSL.W           R2, R1, R2
1B01BA:  ORRS            R2, R0
1B01BC:  SUB.W           R0, R6, #0x20 ; ' '
1B01C0:  CMP             R0, #0
1B01C2:  IT GE
1B01C4:  ASRGE.W         R2, R1, R0
1B01C8:  B               loc_1B01D0
1B01CA:  NEGS            R1, R6
1B01CC:  LSL.W           R2, R0, R1
1B01D0:  MOVW            R0, #0xA7C6
1B01D4:  STR             R4, [SP,#0x310+var_28C]
1B01D6:  SMMLA.W         R0, R0, R2, R2
1B01DA:  STRD.W          R5, R8, [SP,#0x310+var_2FC]
1B01DE:  MOVS            R1, #0x60 ; '`'; n
1B01E0:  STR             R2, [SP,#0x310+var_300]
1B01E2:  ADDS            R0, #1
1B01E4:  STR             R0, [SP,#0x310+var_1A4]
1B01E6:  STR             R0, [SP,#0x310+var_27C]
1B01E8:  STR             R0, [SP,#0x310+var_208]
1B01EA:  ADD             R0, SP, #0x310+src; int
1B01EC:  BLX             sub_22178C
1B01F0:  LDR             R0, [R7,#arg_8]
1B01F2:  CMP             R6, #0
1B01F4:  STR             R6, [SP,#0x310+var_2C4]
1B01F6:  BLE             loc_1B027E
1B01F8:  CMP             R0, #1
1B01FA:  BLT.W           loc_1B0386
1B01FE:  LDR             R0, [R7,#arg_C]
1B0200:  CMP             R0, #1
1B0202:  BLT.W           loc_1B034A
1B0206:  LDR             R0, [R7,#arg_4]
1B0208:  MOV.W           R11, #0
1B020C:  LDR.W           R10, [SP,#0x310+var_2C4]
1B0210:  SUBS            R1, R0, #1
1B0212:  STR             R1, [SP,#0x310+var_270]
1B0214:  LSLS            R0, R0, #1
1B0216:  STR             R0, [SP,#0x310+var_274]
1B0218:  LDR             R0, [SP,#0x310+var_28C]
1B021A:  ADDS            R6, R0, #2
1B021C:  LDR             R0, [R7,#arg_4]
1B021E:  ADD.W           R8, SP, #0x310+src
1B0222:  LDR             R1, [SP,#0x310+var_28C]
1B0224:  LDR             R5, [SP,#0x310+var_270]
1B0226:  MUL.W           R0, R11, R0
1B022A:  LDR.W           R9, [R7,#arg_C]
1B022E:  STR             R6, [SP,#0x310+var_26C]
1B0230:  ADD.W           R4, R1, R0,LSL#1
1B0234:  MOV             R0, R4
1B0236:  MOV             R1, R6
1B0238:  MOV             R2, R5
1B023A:  BLX             j_silk_inner_prod16_aligned_64_c
1B023E:  RSB.W           R2, R10, #0x20 ; ' '
1B0242:  LSR.W           R0, R0, R10
1B0246:  LDR.W           R3, [R8]
1B024A:  SUBS            R5, #1
1B024C:  LSL.W           R2, R1, R2
1B0250:  ORRS            R0, R2
1B0252:  SUB.W           R2, R10, #0x20 ; ' '
1B0256:  ADDS            R6, #2
1B0258:  CMP             R2, #0
1B025A:  IT GE
1B025C:  ASRGE.W         R0, R1, R2
1B0260:  SUBS.W          R9, R9, #1
1B0264:  ADD             R0, R3
1B0266:  STR.W           R0, [R8],#4
1B026A:  BNE             loc_1B0234
1B026C:  LDR             R0, [SP,#0x310+var_274]
1B026E:  ADD.W           R11, R11, #1
1B0272:  LDR             R6, [SP,#0x310+var_26C]
1B0274:  ADD             R6, R0
1B0276:  LDR             R0, [R7,#arg_8]
1B0278:  CMP             R11, R0
1B027A:  BNE             loc_1B021C
1B027C:  B               loc_1B0386
1B027E:  CMP             R0, #1
1B0280:  BLT.W           loc_1B0386
1B0284:  LDR             R2, [R7,#arg_C]
1B0286:  LDR             R0, [R7,#arg_4]
1B0288:  CMP             R2, #0
1B028A:  SUB.W           R9, R0, R2
1B028E:  BLE             loc_1B0362
1B0290:  MOV             R3, R0
1B0292:  LDR             R0, [SP,#0x310+var_2C4]
1B0294:  LDR             R1, [SP,#0x310+var_28C]
1B0296:  ADD.W           R11, R2, #1
1B029A:  RSB.W           R8, R0, #0
1B029E:  ADDS            R0, R3, #1
1B02A0:  SUBS            R0, R0, R2
1B02A2:  ADD.W           R10, R1, R9,LSL#1
1B02A6:  ADD.W           R4, R1, R0,LSL#1
1B02AA:  SUBS            R0, R2, #1
1B02AC:  STR             R0, [SP,#0x310+var_274]
1B02AE:  LSLS            R0, R3, #1
1B02B0:  MOVS            R1, #0
1B02B2:  STR             R0, [SP,#0x310+var_278]
1B02B4:  LDR             R0, [R7,#arg_4]
1B02B6:  ADD             R2, SP, #0x310+var_268
1B02B8:  STR             R1, [SP,#0x310+var_270]
1B02BA:  MOV             R3, R9
1B02BC:  MULS            R0, R1
1B02BE:  LDR             R1, [R7,#arg_C]
1B02C0:  STR             R1, [SP,#0x310+var_310]
1B02C2:  LDR             R1, [R7,#arg_10]
1B02C4:  STR             R1, [SP,#0x310+var_30C]
1B02C6:  LDR             R1, [SP,#0x310+var_28C]
1B02C8:  ADD.W           R0, R1, R0,LSL#1
1B02CC:  ADDS            R1, R0, #2
1B02CE:  BLX             j_celt_pitch_xcorr_c
1B02D2:  LDR.W           R12, [SP,#0x310+var_274]
1B02D6:  MOVS            R0, #1
1B02D8:  MOV             LR, R4
1B02DA:  STR             R4, [SP,#0x310+var_26C]
1B02DC:  LDR             R2, [R7,#arg_4]
1B02DE:  ADD.W           R1, R9, R0
1B02E2:  MOVS            R3, #0
1B02E4:  CMP             R1, R2
1B02E6:  BGE             loc_1B02FE
1B02E8:  MOV             R1, R12
1B02EA:  MOV             R5, R10
1B02EC:  MOV             R2, LR
1B02EE:  LDRSH.W         R4, [R2],#2
1B02F2:  SUBS            R1, #1
1B02F4:  LDRSH.W         R6, [R5],#2
1B02F8:  SMLABB.W        R3, R6, R4, R3
1B02FC:  BNE             loc_1B02EE
1B02FE:  ADD             R1, SP, #0x310+var_268
1B0300:  SUB.W           R12, R12, #1
1B0304:  ADD.W           R1, R1, R0,LSL#2
1B0308:  ADDS            R0, #1
1B030A:  ADD.W           LR, LR, #2
1B030E:  CMP             R0, R11
1B0310:  LDR.W           R2, [R1,#-4]
1B0314:  ADD             R2, R3
1B0316:  STR.W           R2, [R1,#-4]
1B031A:  BNE             loc_1B02DC
1B031C:  LDR             R2, [R7,#arg_C]
1B031E:  ADD             R0, SP, #0x310+var_268
1B0320:  ADD             R1, SP, #0x310+src
1B0322:  LDR.W           R3, [R0],#4
1B0326:  SUBS            R2, #1
1B0328:  LDR             R6, [R1]
1B032A:  LSL.W           R3, R3, R8
1B032E:  ADD             R3, R6
1B0330:  STR.W           R3, [R1],#4
1B0334:  BNE             loc_1B0322
1B0336:  LDR             R0, [SP,#0x310+var_278]
1B0338:  LDR             R4, [SP,#0x310+var_26C]
1B033A:  LDR             R1, [SP,#0x310+var_270]
1B033C:  ADD             R10, R0
1B033E:  ADD             R4, R0
1B0340:  LDR             R0, [R7,#arg_8]
1B0342:  ADDS            R1, #1
1B0344:  CMP             R1, R0
1B0346:  BNE             loc_1B02B4
1B0348:  B               loc_1B0386
1B034A:  ADD             R0, SP, #0x310+dest; dest
1B034C:  ADD             R1, SP, #0x310+src; src
1B034E:  MOVS            R2, #0x60 ; '`'; n
1B0350:  BLX             j_memcpy
1B0354:  LDR             R2, [SP,#0x310+var_27C]
1B0356:  MOV.W           R8, #0x10000
1B035A:  STR             R2, [SP,#0x310+var_1A4]
1B035C:  STR             R2, [SP,#0x310+var_208]
1B035E:  B.W             loc_1B0C04
1B0362:  LDR             R6, [SP,#0x310+var_28C]
1B0364:  ADD.W           R8, SP, #0x310+var_268
1B0368:  LDR             R4, [R7,#arg_8]
1B036A:  LSLS            R5, R0, #1
1B036C:  LDR             R0, [R7,#arg_C]
1B036E:  ADDS            R1, R6, #2
1B0370:  STR             R0, [SP,#0x310+var_310]
1B0372:  MOV             R2, R8
1B0374:  LDR             R0, [R7,#arg_10]
1B0376:  MOV             R3, R9
1B0378:  STR             R0, [SP,#0x310+var_30C]
1B037A:  MOV             R0, R6
1B037C:  BLX             j_celt_pitch_xcorr_c
1B0380:  ADD             R6, R5
1B0382:  SUBS            R4, #1
1B0384:  BNE             loc_1B036C
1B0386:  ADD.W           R8, SP, #0x310+dest
1B038A:  ADD             R5, SP, #0x310+src
1B038C:  MOVS            R2, #0x60 ; '`'; n
1B038E:  MOV             R0, R8; dest
1B0390:  MOV             R1, R5; src
1B0392:  BLX             j_memcpy
1B0396:  LDR             R0, [SP,#0x310+var_27C]
1B0398:  STR             R0, [SP,#0x310+var_1A4]
1B039A:  STR             R0, [SP,#0x310+var_208]
1B039C:  LDR             R0, [R7,#arg_C]
1B039E:  CMP             R0, #0
1B03A0:  BLE.W           loc_1B0BFE
1B03A4:  LDR             R2, [R7,#arg_0]
1B03A6:  MOV.W           R11, #0
1B03AA:  CMP             R2, #0
1B03AC:  MOV             R0, R2
1B03AE:  IT MI
1B03B0:  NEGMI           R0, R2
1B03B2:  LDR.W           R9, [SP,#0x310+var_28C]
1B03B6:  CLZ.W           R0, R0
1B03BA:  LDR             R3, [SP,#0x310+var_2C4]
1B03BC:  SUBS            R1, R0, #1
1B03BE:  SUBS            R0, #2
1B03C0:  STR             R0, [SP,#0x310+var_2EC]
1B03C2:  MOV.W           R0, #0x40000000
1B03C6:  LSL.W           R6, R2, R1
1B03CA:  SUBS            R2, R5, #4
1B03CC:  STR             R2, [SP,#0x310+var_298]
1B03CE:  SUB.W           R2, R8, #4
1B03D2:  STR             R2, [SP,#0x310+var_29C]
1B03D4:  ADD             R1, SP, #0x310+var_208
1B03D6:  LDR             R2, [R7,#arg_4]
1B03D8:  ADD.W           R12, R1, #4
1B03DC:  STR             R0, [SP,#0x310+var_2D8]
1B03DE:  ADD             R1, SP, #0x310+var_140
1B03E0:  SUB.W           R5, R9, #2
1B03E4:  SUB.W           LR, R1, #4
1B03E8:  ADD.W           R4, R9, R2,LSL#1
1B03EC:  LSLS            R2, R2, #1
1B03EE:  STR             R2, [SP,#0x310+var_294]
1B03F0:  NEGS            R2, R3
1B03F2:  SUBS            R0, R4, #2
1B03F4:  STR             R2, [SP,#0x310+var_2BC]
1B03F6:  RSB.W           R2, R3, #7
1B03FA:  STR             R0, [SP,#0x310+var_2D4]
1B03FC:  UXTH            R0, R6
1B03FE:  ADD             R1, SP, #0x310+var_1A4
1B0400:  STR             R5, [SP,#0x310+var_2D0]
1B0402:  MVNS            R5, R3
1B0404:  STR             R2, [SP,#0x310+var_2B4]
1B0406:  RSB.W           R2, R3, #0x10
1B040A:  STR             R0, [SP,#0x310+var_2F0]
1B040C:  ASRS            R0, R6, #0x10
1B040E:  ADDS            R1, #4
1B0410:  STR             R2, [SP,#0x310+var_2C0]
1B0412:  STR             R0, [SP,#0x310+var_2F4]
1B0414:  MOV.W           R8, #2
1B0418:  STR             R4, [SP,#0x310+var_2CC]
1B041A:  MOVS            R2, #1
1B041C:  STR             R6, [SP,#0x310+var_2E8]
1B041E:  STR.W           R9, [SP,#0x310+var_2C8]
1B0422:  LDR             R0, [R7,#arg_8]
1B0424:  STR             R1, [SP,#0x310+var_290]
1B0426:  STR             R5, [SP,#0x310+var_2B0]
1B0428:  ADD             R1, SP, #0x310+var_2E4
1B042A:  STR             R2, [SP,#0x310+var_2B8]
1B042C:  STM.W           R1, {R8,R12,LR}
1B0430:  MOV             R6, R11
1B0432:  LDR             R1, [SP,#0x310+var_2C4]
1B0434:  STR             R6, [SP,#0x310+var_270]
1B0436:  CMP.W           R1, #0xFFFFFFFF
1B043A:  BLT.W           loc_1B058E
1B043E:  CMP             R0, #1
1B0440:  BLT.W           loc_1B082E
1B0444:  LDR             R0, [R7,#arg_4]
1B0446:  CMP             R6, #0
1B0448:  SUB.W           R0, R0, R6
1B044C:  SUB.W           R0, R0, #1
1B0450:  STR             R0, [SP,#0x310+var_2A4]
1B0452:  BLE.W           loc_1B06E6
1B0456:  LDR             R0, [SP,#0x310+var_2C8]
1B0458:  MOVS            R1, #0
1B045A:  STR             R0, [SP,#0x310+var_284]
1B045C:  LDRD.W          R5, R0, [SP,#0x310+var_2D0]
1B0460:  STR             R0, [SP,#0x310+var_26C]
1B0462:  ADD.W           R9, SP, #0x310+dest
1B0466:  LDR             R0, [R7,#arg_4]
1B0468:  ADD.W           R11, SP, #0x310+src
1B046C:  STR             R1, [SP,#0x310+var_288]
1B046E:  ADD.W           R12, SP, #0x310+var_140
1B0472:  LDR             R2, [SP,#0x310+var_2C0]
1B0474:  MOV.W           LR, #0
1B0478:  MULS            R0, R1
1B047A:  LDR             R1, [SP,#0x310+var_28C]
1B047C:  ADD.W           R0, R1, R0,LSL#1
1B0480:  LDR             R1, [SP,#0x310+var_2A4]
1B0482:  LDRSH.W         R3, [R0,R6,LSL#1]
1B0486:  LDRSH.W         R1, [R0,R1,LSL#1]
1B048A:  STR             R5, [SP,#0x310+var_2A0]
1B048C:  MOV.W           R10, R3,LSL#9
1B0490:  LSL.W           R0, R1, R2
1B0494:  LSLS            R4, R1, #9
1B0496:  NEGS            R0, R0
1B0498:  UXTH            R1, R0
1B049A:  ASRS            R0, R0, #0x10
1B049C:  STR             R1, [SP,#0x310+var_274]
1B049E:  LSL.W           R1, R3, R2
1B04A2:  NEGS            R1, R1
1B04A4:  STR             R0, [SP,#0x310+var_278]
1B04A6:  UXTH            R0, R1
1B04A8:  STR             R0, [SP,#0x310+var_27C]
1B04AA:  ASRS            R0, R1, #0x10
1B04AC:  STR             R0, [SP,#0x310+var_280]
1B04AE:  LDRSH.W         R3, [R5],#-2
1B04B2:  LDR             R0, [SP,#0x310+var_27C]
1B04B4:  LDR             R1, [SP,#0x310+var_280]
1B04B6:  LDR.W           R2, [R11,LR,LSL#2]
1B04BA:  MULS            R0, R3
1B04BC:  LDR             R6, [SP,#0x310+var_278]
1B04BE:  SMLABB.W        R2, R1, R3, R2
1B04C2:  LDR             R1, [SP,#0x310+var_274]
1B04C4:  ADD.W           R0, R2, R0,ASR#16
1B04C8:  STR.W           R0, [R11,LR,LSL#2]
1B04CC:  LDR             R0, [SP,#0x310+var_26C]
1B04CE:  LDR.W           R2, [R9,LR,LSL#2]
1B04D2:  LDRSH.W         R0, [R0,LR,LSL#1]
1B04D6:  MULS            R1, R0
1B04D8:  SMLABB.W        R2, R6, R0, R2
1B04DC:  ADD.W           R1, R2, R1,ASR#16
1B04E0:  STR.W           R1, [R9,LR,LSL#2]
1B04E4:  LDR.W           R1, [R12,LR,LSL#2]
1B04E8:  ADD.W           LR, LR, #1
1B04EC:  UXTH            R2, R1
1B04EE:  MUL.W           R8, R2, R0
1B04F2:  MULS            R2, R3
1B04F4:  SMLABT.W        R0, R0, R1, R4
1B04F8:  SMLABT.W        R1, R3, R1, R10
1B04FC:  ADD.W           R4, R0, R8,ASR#16
1B0500:  LDR             R0, [SP,#0x310+var_270]
1B0502:  ADD.W           R10, R1, R2,ASR#16
1B0506:  CMP             R0, LR
1B0508:  BNE             loc_1B04AE
1B050A:  LDR             R1, [SP,#0x310+var_2B4]
1B050C:  NEGS            R0, R4
1B050E:  LDR             R6, [SP,#0x310+var_270]
1B0510:  ADD             R5, SP, #0x310+var_208
1B0512:  ADD             R3, SP, #0x310+var_1A4
1B0514:  MOV.W           R4, #0xFFFFFFFF
1B0518:  LSLS            R0, R1
1B051A:  UXTH.W          R12, R0
1B051E:  MOV.W           LR, R0,ASR#16
1B0522:  RSB.W           R0, R10, #0
1B0526:  LSLS            R0, R1
1B0528:  UXTH.W          R11, R0
1B052C:  MOV.W           R8, R0,ASR#16
1B0530:  LDR             R0, [SP,#0x310+var_284]
1B0532:  LDRSH.W         R1, [R0],#-2
1B0536:  LDR.W           R9, [R3]
1B053A:  MUL.W           R2, R11, R1
1B053E:  SMLABB.W        R1, R8, R1, R9
1B0542:  ADD.W           R1, R1, R2,ASR#16
1B0546:  STR.W           R1, [R3],#4
1B054A:  LDR             R1, [SP,#0x310+var_26C]
1B054C:  MOV             R2, R6
1B054E:  LDR             R6, [R5]
1B0550:  LDRSH.W         R1, [R1,R4,LSL#1]
1B0554:  ADDS            R4, #1
1B0556:  MUL.W           R9, R12, R1
1B055A:  SMLABB.W        R1, LR, R1, R6
1B055E:  MOV             R6, R2
1B0560:  CMP             R6, R4
1B0562:  ADD.W           R1, R1, R9,ASR#16
1B0566:  STR.W           R1, [R5],#4
1B056A:  BNE             loc_1B0532
1B056C:  LDR             R0, [SP,#0x310+var_294]
1B056E:  LDR             R1, [SP,#0x310+var_284]
1B0570:  LDR.W           R10, [SP,#0x310+var_26C]
1B0574:  LDR             R5, [SP,#0x310+var_2A0]
1B0576:  ADD             R1, R0
1B0578:  STR             R1, [SP,#0x310+var_284]
1B057A:  ADD             R10, R0
1B057C:  LDR             R1, [SP,#0x310+var_288]
1B057E:  ADD             R5, R0
1B0580:  LDR             R0, [R7,#arg_8]
1B0582:  ADDS            R1, #1
1B0584:  CMP             R1, R0
1B0586:  MOV             R0, R10
1B0588:  BNE.W           loc_1B0460
1B058C:  B               loc_1B082E
1B058E:  CMP             R0, #1
1B0590:  BLT.W           loc_1B082E
1B0594:  LDR             R0, [R7,#arg_4]
1B0596:  CMP             R6, #0
1B0598:  SUB.W           R0, R0, R6
1B059C:  SUB.W           R0, R0, #1
1B05A0:  STR             R0, [SP,#0x310+var_2AC]
1B05A2:  BLE.W           loc_1B077E
1B05A6:  LDR             R0, [SP,#0x310+var_2C8]
1B05A8:  MOVS            R1, #0
1B05AA:  STR             R0, [SP,#0x310+var_2A0]
1B05AC:  LDRD.W          R3, R0, [SP,#0x310+var_2D0]
1B05B0:  STR             R0, [SP,#0x310+var_26C]
1B05B2:  ADD.W           R9, SP, #0x310+dest
1B05B6:  LDR             R0, [R7,#arg_4]
1B05B8:  ADD.W           R10, SP, #0x310+src
1B05BC:  STR             R1, [SP,#0x310+var_2A4]
1B05BE:  ADD.W           R11, SP, #0x310+var_140
1B05C2:  MOV             R4, R3
1B05C4:  MOV             R12, R6
1B05C6:  MULS            R0, R1
1B05C8:  LDR             R1, [SP,#0x310+var_28C]
1B05CA:  ADD.W           R0, R1, R0,LSL#1
1B05CE:  LDR             R1, [SP,#0x310+var_2AC]
1B05D0:  LDRSH.W         R2, [R0,R1,LSL#1]
1B05D4:  LDRSH.W         R0, [R0,R6,LSL#1]
1B05D8:  LDR             R1, [SP,#0x310+var_2BC]
1B05DA:  STR             R3, [SP,#0x310+var_2A8]
1B05DC:  LSL.W           R5, R2, R1
1B05E0:  LSL.W           R1, R0, R1
1B05E4:  STR             R5, [SP,#0x310+var_274]
1B05E6:  LSLS            R2, R2, #0x11
1B05E8:  LSLS            R0, R0, #0x11
1B05EA:  MOVS            R5, #0
1B05EC:  STR             R1, [SP,#0x310+var_278]
1B05EE:  LDRSH.W         LR, [R4],#-2
1B05F2:  MOV.W           R8, #1
1B05F6:  LDR             R3, [SP,#0x310+var_278]
1B05F8:  LDR.W           R1, [R10,R5,LSL#2]
1B05FC:  LDR.W           R6, [R9,R5,LSL#2]
1B0600:  MLS.W           R1, R3, LR, R1
1B0604:  LDR             R3, [SP,#0x310+var_274]
1B0606:  STR.W           R1, [R10,R5,LSL#2]
1B060A:  LDR             R1, [SP,#0x310+var_26C]
1B060C:  LDRSH.W         R1, [R1,R5,LSL#1]
1B0610:  MLS.W           R6, R3, R1, R6
1B0614:  STR.W           R6, [R9,R5,LSL#2]
1B0618:  LDR.W           R6, [R11,R5,LSL#2]
1B061C:  ADDS            R5, #1
1B061E:  CMP             R12, R5
1B0620:  ADD.W           R6, R8, R6,ASR#7
1B0624:  MOV.W           R6, R6,ASR#1
1B0628:  MLA.W           R2, R6, R1, R2
1B062C:  MLA.W           R0, R6, LR, R0
1B0630:  BNE             loc_1B05EE
1B0632:  NEGS            R2, R2
1B0634:  NEGS            R0, R0
1B0636:  STR             R2, [SP,#0x310+var_27C]
1B0638:  ADD.W           R8, SP, #0x310+var_1A4
1B063C:  UXTH            R1, R2
1B063E:  MOV.W           R9, #0xFFFFFFFF
1B0642:  STR             R1, [SP,#0x310+var_274]
1B0644:  ASRS            R1, R2, #0x10
1B0646:  STR             R1, [SP,#0x310+var_278]
1B0648:  UXTH            R1, R0
1B064A:  STRD.W          R1, R0, [SP,#0x310+var_284]
1B064E:  ADD             R1, SP, #0x310+var_208
1B0650:  LDR.W           R11, [SP,#0x310+var_2A0]
1B0654:  ASRS            R0, R0, #0x10
1B0656:  LDR             R3, [SP,#0x310+var_2B0]
1B0658:  STR             R0, [SP,#0x310+var_288]
1B065A:  LDRSH.W         R5, [R11],#-2
1B065E:  MOVS            R6, #1
1B0660:  LDR             R0, [SP,#0x310+var_284]
1B0662:  LDR.W           R2, [R8]
1B0666:  LSLS            R5, R3
1B0668:  SXTH.W          R10, R5
1B066C:  MUL.W           R4, R10, R0
1B0670:  LDR             R0, [SP,#0x310+var_288]
1B0672:  SMLABB.W        R2, R10, R0, R2
1B0676:  LDR             R0, [SP,#0x310+var_280]
1B0678:  ADD.W           R2, R2, R4,ASR#16
1B067C:  ADD.W           R4, R6, R5,ASR#15
1B0680:  ASRS            R4, R4, #1
1B0682:  MLA.W           R2, R4, R0, R2
1B0686:  LDR             R0, [SP,#0x310+var_26C]
1B0688:  LDR             R4, [R1]
1B068A:  STR.W           R2, [R8],#4
1B068E:  LDRSH.W         R2, [R0,R9,LSL#1]
1B0692:  ADD.W           R9, R9, #1
1B0696:  LDR             R0, [SP,#0x310+var_278]
1B0698:  CMP             R12, R9
1B069A:  LSL.W           R2, R2, R3
1B069E:  SXTH            R5, R2
1B06A0:  ADD.W           R2, R6, R2,ASR#15
1B06A4:  SMLABB.W        R4, R5, R0, R4
1B06A8:  LDR             R0, [SP,#0x310+var_274]
1B06AA:  MOV.W           R2, R2,ASR#1
1B06AE:  MUL.W           R5, R0, R5
1B06B2:  LDR             R0, [SP,#0x310+var_27C]
1B06B4:  ADD.W           R4, R4, R5,ASR#16
1B06B8:  MLA.W           R2, R2, R0, R4
1B06BC:  STR.W           R2, [R1],#4
1B06C0:  BNE             loc_1B065A
1B06C2:  LDR             R0, [SP,#0x310+var_294]
1B06C4:  MOV             R6, R12
1B06C6:  LDR             R1, [SP,#0x310+var_2A0]
1B06C8:  LDR.W           LR, [SP,#0x310+var_26C]
1B06CC:  LDR             R3, [SP,#0x310+var_2A8]
1B06CE:  ADD             R1, R0
1B06D0:  STR             R1, [SP,#0x310+var_2A0]
1B06D2:  ADD             LR, R0
1B06D4:  LDR             R1, [SP,#0x310+var_2A4]
1B06D6:  ADD             R3, R0
1B06D8:  LDR             R0, [R7,#arg_8]
1B06DA:  ADDS            R1, #1
1B06DC:  CMP             R1, R0
1B06DE:  MOV             R0, LR
1B06E0:  BNE.W           loc_1B05B0
1B06E4:  B               loc_1B082E
1B06E6:  LDR.W           R9, [SP,#0x310+var_2D4]
1B06EA:  MOVS            R1, #0
1B06EC:  LDR             R5, [SP,#0x310+var_2C8]
1B06EE:  LDR             R0, [R7,#arg_4]
1B06F0:  MOVS            R3, #0
1B06F2:  STR             R1, [SP,#0x310+var_274]
1B06F4:  ADD.W           R12, SP, #0x310+var_208
1B06F8:  LDR.W           R8, [SP,#0x310+var_2B8]
1B06FC:  ADD.W           LR, SP, #0x310+var_1A4
1B0700:  MULS            R0, R1
1B0702:  LDR             R1, [SP,#0x310+var_28C]
1B0704:  ADD.W           R0, R1, R0,LSL#1
1B0708:  LDR             R1, [SP,#0x310+var_2A4]
1B070A:  LDRSH.W         R2, [R0,R1,LSL#1]
1B070E:  LDRSH.W         R0, [R0,R6,LSL#1]
1B0712:  LDR             R1, [SP,#0x310+var_2B4]
1B0714:  STR             R5, [SP,#0x310+var_26C]
1B0716:  SUB.W           R2, R3, R2,LSL#9
1B071A:  SUB.W           R0, R3, R0,LSL#9
1B071E:  MOVS            R3, #0
1B0720:  LSLS            R2, R1
1B0722:  LSLS            R0, R1
1B0724:  UXTH.W          R10, R2
1B0728:  MOV.W           R11, R2,ASR#16
1B072C:  UXTH            R4, R0
1B072E:  ASRS            R0, R0, #0x10
1B0730:  MOV             R2, R5
1B0732:  LDRSH.W         R1, [R2],#-2
1B0736:  LDR.W           R6, [LR,R3,LSL#2]
1B073A:  MUL.W           R5, R4, R1
1B073E:  SMLABB.W        R1, R0, R1, R6
1B0742:  ADD.W           R1, R1, R5,ASR#16
1B0746:  STR.W           R1, [LR,R3,LSL#2]
1B074A:  LDRSH.W         R1, [R9,R3,LSL#1]
1B074E:  LDR.W           R5, [R12,R3,LSL#2]
1B0752:  MUL.W           R6, R10, R1
1B0756:  SMLABB.W        R1, R11, R1, R5
1B075A:  ADD.W           R1, R1, R6,ASR#16
1B075E:  STR.W           R1, [R12,R3,LSL#2]
1B0762:  ADDS            R3, #1
1B0764:  CMP             R8, R3
1B0766:  BNE             loc_1B0732
1B0768:  LDR             R0, [SP,#0x310+var_294]
1B076A:  LDR             R5, [SP,#0x310+var_26C]
1B076C:  LDR             R1, [SP,#0x310+var_274]
1B076E:  ADD             R9, R0
1B0770:  ADD             R5, R0
1B0772:  LDR             R0, [R7,#arg_8]
1B0774:  LDR             R6, [SP,#0x310+var_270]
1B0776:  ADDS            R1, #1
1B0778:  CMP             R1, R0
1B077A:  BNE             loc_1B06EE
1B077C:  B               loc_1B082E
1B077E:  LDR             R0, [SP,#0x310+var_2D4]
1B0780:  MOVS            R2, #0
1B0782:  LDR             R3, [SP,#0x310+var_2C8]
1B0784:  STR             R0, [SP,#0x310+var_26C]
1B0786:  ADD.W           R12, SP, #0x310+var_208
1B078A:  LDR             R0, [R7,#arg_4]
1B078C:  ADD.W           LR, SP, #0x310+var_1A4
1B0790:  LDR             R1, [SP,#0x310+var_28C]
1B0792:  MOV.W           R9, #1
1B0796:  STR             R2, [SP,#0x310+var_280]
1B0798:  MULS            R0, R2
1B079A:  LDR.W           R8, [SP,#0x310+var_2B0]
1B079E:  LDR.W           R10, [SP,#0x310+var_2B8]
1B07A2:  ADD.W           R0, R1, R0,LSL#1
1B07A6:  LDR             R1, [SP,#0x310+var_2AC]
1B07A8:  LDRH.W          R2, [R0,R1,LSL#1]
1B07AC:  MOVS            R1, #0
1B07AE:  LDRH.W          R0, [R0,R6,LSL#1]
1B07B2:  STR             R3, [SP,#0x310+var_27C]
1B07B4:  SUB.W           R2, R1, R2,LSL#17
1B07B8:  STR             R2, [SP,#0x310+var_278]
1B07BA:  SUB.W           R4, R1, R0,LSL#17
1B07BE:  ASRS            R2, R2, #0x10
1B07C0:  STR             R2, [SP,#0x310+var_274]
1B07C2:  MOV             R2, R3
1B07C4:  ASRS            R0, R4, #0x10
1B07C6:  MOVS            R3, #0
1B07C8:  LDRSH.W         R1, [R2],#-2
1B07CC:  LDR.W           R5, [LR,R3,LSL#2]
1B07D0:  LDR.W           R11, [SP,#0x310+var_274]
1B07D4:  LSL.W           R1, R1, R8
1B07D8:  SXTH            R6, R1
1B07DA:  ADD.W           R1, R9, R1,ASR#15
1B07DE:  SMLABB.W        R5, R6, R0, R5
1B07E2:  ASRS            R1, R1, #1
1B07E4:  MLA.W           R1, R1, R4, R5
1B07E8:  LDR.W           R5, [R12,R3,LSL#2]
1B07EC:  STR.W           R1, [LR,R3,LSL#2]
1B07F0:  LDR             R1, [SP,#0x310+var_26C]
1B07F2:  LDRSH.W         R1, [R1,R3,LSL#1]
1B07F6:  LSL.W           R1, R1, R8
1B07FA:  SXTH            R6, R1
1B07FC:  ADD.W           R1, R9, R1,ASR#15
1B0800:  SMLABB.W        R5, R6, R11, R5
1B0804:  LDR             R6, [SP,#0x310+var_278]
1B0806:  ASRS            R1, R1, #1
1B0808:  MLA.W           R1, R1, R6, R5
1B080C:  STR.W           R1, [R12,R3,LSL#2]
1B0810:  ADDS            R3, #1
1B0812:  CMP             R10, R3
1B0814:  BNE             loc_1B07C8
1B0816:  LDR             R0, [SP,#0x310+var_294]
1B0818:  LDR             R1, [SP,#0x310+var_26C]
1B081A:  LDR             R3, [SP,#0x310+var_27C]
1B081C:  LDR             R2, [SP,#0x310+var_280]
1B081E:  ADD             R1, R0
1B0820:  ADD             R3, R0
1B0822:  LDR             R0, [R7,#arg_8]
1B0824:  LDR             R6, [SP,#0x310+var_270]
1B0826:  ADDS            R2, #1
1B0828:  CMP             R2, R0
1B082A:  MOV             R0, R1
1B082C:  BNE             loc_1B0784
1B082E:  ADD             R1, SP, #0x310+dest
1B0830:  MOV             R2, R6
1B0832:  LDR             R0, [SP,#0x310+var_208]
1B0834:  CMP             R2, #1
1B0836:  LDR.W           R10, [R1,R6,LSL#2]
1B083A:  ADD             R1, SP, #0x310+src
1B083C:  LDR             R3, [SP,#0x310+var_1A4]
1B083E:  LDR.W           R11, [R1,R2,LSL#2]
1B0842:  ADD             R3, R0
1B0844:  BLT             loc_1B08C6
1B0846:  MOV             R6, R2
1B0848:  ADD             R2, SP, #0x310+var_208
1B084A:  MOVS            R4, #0
1B084C:  MOV.W           R12, #0
1B0850:  ADD             R1, SP, #0x310+var_140
1B0852:  LDR             R0, [SP,#0x310+var_290]
1B0854:  STR             R3, [SP,#0x310+var_26C]
1B0856:  LDR             R5, [R1,R4]
1B0858:  ADDS            R1, R2, R4
1B085A:  LDR             R0, [R0,R4]
1B085C:  LDR             R1, [R1,#4]
1B085E:  LDR             R3, [SP,#0x310+var_298]
1B0860:  CMP             R5, #0
1B0862:  ADD.W           R9, R0, R1
1B0866:  MOV             R0, R5
1B0868:  LDR.W           LR, [R2,R6,LSL#2]
1B086C:  ADD.W           R4, R4, #4
1B0870:  LDR.W           R8, [R3,R6,LSL#2]
1B0874:  IT MI
1B0876:  NEGMI           R0, R5
1B0878:  CLZ.W           R0, R0
1B087C:  SUBS            R0, #1
1B087E:  CMP             R0, #7
1B0880:  IT GE
1B0882:  MOVGE           R0, #7
1B0884:  LDR             R3, [SP,#0x310+var_29C]
1B0886:  LSL.W           R1, R5, R0
1B088A:  RSB.W           R0, R0, #7
1B088E:  SMMUL.W         R5, R1, R9
1B0892:  LDR.W           R3, [R3,R6,LSL#2]
1B0896:  SMMUL.W         R2, R1, LR
1B089A:  SUBS            R6, #1
1B089C:  SMMUL.W         R8, R1, R8
1B08A0:  SMMUL.W         R1, R1, R3
1B08A4:  LSL.W           R3, R5, R0
1B08A8:  LDR             R5, [SP,#0x310+var_26C]
1B08AA:  LSL.W           R2, R2, R0
1B08AE:  ADD             R12, R2
1B08B0:  ADD             R5, R3
1B08B2:  LSL.W           R2, R8, R0
1B08B6:  ADD             R10, R2
1B08B8:  ADD             R2, SP, #0x310+var_208
1B08BA:  MOV             R3, R5
1B08BC:  LSL.W           R0, R1, R0
1B08C0:  ADD             R11, R0
1B08C2:  BNE             loc_1B0850
1B08C4:  B               loc_1B08CC
1B08C6:  MOV.W           R12, #0
1B08CA:  ADD             R2, SP, #0x310+var_208
1B08CC:  LDR             R0, [SP,#0x310+var_270]
1B08CE:  ADDS            R1, R0, #1
1B08D0:  ADD             R0, SP, #0x310+var_1A4
1B08D2:  STR             R1, [SP,#0x310+var_26C]
1B08D4:  STR.W           R11, [R0,R1,LSL#2]
1B08D8:  ADD.W           R0, R12, R10
1B08DC:  STR.W           R10, [R2,R1,LSL#2]
1B08E0:  NEGS            R1, R0
1B08E2:  SBFX.W          R2, R1, #0x1E, #1
1B08E6:  LSLS            R6, R1, #1
1B08E8:  SUB.W           R0, R2, R0,LSL#1
1B08EC:  STR             R6, [SP,#0x310+var_274]
1B08EE:  EOR.W           R0, R0, R6,ASR#31
1B08F2:  CMP             R0, R3
1B08F4:  BGE             loc_1B0960
1B08F6:  CLZ.W           R8, R0
1B08FA:  CMP             R3, #0
1B08FC:  SUB.W           R0, R8, #1
1B0900:  LDRD.W          R10, R11, [R7,#arg_C]
1B0904:  LSL.W           R5, R6, R0
1B0908:  MOV             R0, R3
1B090A:  IT MI
1B090C:  NEGMI           R0, R3
1B090E:  CLZ.W           R9, R0
1B0912:  SUB.W           R0, R9, #1
1B0916:  LSL.W           R4, R3, R0
1B091A:  MOV             R0, #0x1FFFFFFF
1B091E:  ASRS            R1, R4, #0x10
1B0920:  BLX             sub_220A40
1B0924:  UXTH            R1, R5
1B0926:  SXTH            R2, R0
1B0928:  MULS            R1, R2
1B092A:  ASRS            R1, R1, #0x10
1B092C:  SMLABT.W        R1, R0, R5, R1
1B0930:  SMMUL.W         R3, R1, R4
1B0934:  SUB.W           R3, R5, R3,LSL#3
1B0938:  UXTH            R5, R3
1B093A:  SMLABT.W        R0, R0, R3, R1
1B093E:  MULS            R2, R5
1B0940:  RSB.W           R1, R9, #1
1B0944:  ADD             R1, R8
1B0946:  SUBS            R1, #3
1B0948:  CMP.W           R1, #0xFFFFFFFF
1B094C:  ADD.W           R0, R0, R2,ASR#16
1B0950:  BLE             loc_1B09EC
1B0952:  CMP             R1, #0x20 ; ' '
1B0954:  MOV.W           R9, #0
1B0958:  IT LT
1B095A:  ASRLT.W         R9, R0, R1
1B095E:  B               loc_1B0970
1B0960:  CMP             R6, #0
1B0962:  MOV.W           R9, #0x80000000
1B0966:  IT GT
1B0968:  MOVGT           R9, #0x7FFFFFFF
1B096C:  LDRD.W          R10, R11, [R7,#arg_C]
1B0970:  LDR.W           R8, [R7,#arg_0]
1B0974:  LDR             R5, [SP,#0x310+var_2D8]
1B0976:  SMMUL.W         R0, R9, R9
1B097A:  RSB.W           R0, R0, #0x40000000
1B097E:  SMMUL.W         R0, R0, R5
1B0982:  LSLS            R1, R0, #2
1B0984:  CMP             R1, R8
1B0986:  BLE             loc_1B0990
1B0988:  MOV.W           R12, #0
1B098C:  STR             R1, [SP,#0x310+var_2D8]
1B098E:  B               loc_1B0AE6
1B0990:  CMP             R5, #0
1B0992:  MOV             R0, R5
1B0994:  IT MI
1B0996:  NEGMI           R0, R5
1B0998:  CLZ.W           R4, R0
1B099C:  SUBS            R0, R4, #1
1B099E:  LSLS            R5, R0
1B09A0:  MOV             R0, #0x1FFFFFFF
1B09A4:  ASRS            R1, R5, #0x10
1B09A6:  BLX             sub_220A40
1B09AA:  LDR             R2, [SP,#0x310+var_2F0]
1B09AC:  SXTH            R1, R0
1B09AE:  LDR             R3, [SP,#0x310+var_2F4]
1B09B0:  LDR             R6, [SP,#0x310+var_2E8]
1B09B2:  MULS            R2, R1
1B09B4:  SMULBB.W        R3, R1, R3
1B09B8:  ADD.W           R2, R3, R2,ASR#16
1B09BC:  SMMUL.W         R3, R2, R5
1B09C0:  SUB.W           R3, R6, R3,LSL#3
1B09C4:  UXTH            R6, R3
1B09C6:  SMLABT.W        R0, R0, R3, R2
1B09CA:  MULS            R1, R6
1B09CC:  LDR             R2, [SP,#0x310+var_2EC]
1B09CE:  ADD.W           R0, R0, R1,ASR#16
1B09D2:  RSB.W           R1, R4, #1
1B09D6:  ADD             R2, R1
1B09D8:  CMP.W           R2, #0xFFFFFFFF
1B09DC:  BLE             loc_1B0A12
1B09DE:  CMP             R2, #0x20 ; ' '
1B09E0:  MOV.W           R1, #0
1B09E4:  IT LT
1B09E6:  ASRLT.W         R1, R0, R2
1B09EA:  B               loc_1B0A58
1B09EC:  NEGS            R1, R1
1B09EE:  LDR.W           R8, [R7,#arg_0]
1B09F2:  LDR             R5, [SP,#0x310+var_2D8]
1B09F4:  MOV             R2, #0x7FFFFFFF
1B09F8:  MOV.W           R3, #0x80000000
1B09FC:  LSRS            R2, R1
1B09FE:  ASRS            R3, R1
1B0A00:  CMP             R3, R2
1B0A02:  BLE             loc_1B0A32
1B0A04:  CMP             R0, R3
1B0A06:  MOV             R6, R3
1B0A08:  BGT             loc_1B0A40
1B0A0A:  CMP             R0, R2
1B0A0C:  IT LT
1B0A0E:  MOVLT           R0, R2
1B0A10:  B               loc_1B0A3E
1B0A12:  NEGS            R1, R2
1B0A14:  MOV             R2, #0x7FFFFFFF
1B0A18:  MOV.W           R3, #0x80000000
1B0A1C:  LSRS            R2, R1
1B0A1E:  ASRS            R3, R1
1B0A20:  CMP             R3, R2
1B0A22:  BLE             loc_1B0A46
1B0A24:  CMP             R0, R3
1B0A26:  MOV             R6, R3
1B0A28:  BGT             loc_1B0A54
1B0A2A:  CMP             R0, R2
1B0A2C:  IT LT
1B0A2E:  MOVLT           R0, R2
1B0A30:  B               loc_1B0A52
1B0A32:  CMP             R0, R2
1B0A34:  MOV             R6, R2
1B0A36:  BGT             loc_1B0A40
1B0A38:  CMP             R0, R3
1B0A3A:  IT LT
1B0A3C:  MOVLT           R0, R3
1B0A3E:  MOV             R6, R0
1B0A40:  LSL.W           R9, R6, R1
1B0A44:  B               loc_1B0976
1B0A46:  CMP             R0, R2
1B0A48:  MOV             R6, R2
1B0A4A:  BGT             loc_1B0A54
1B0A4C:  CMP             R0, R3
1B0A4E:  IT LT
1B0A50:  MOVLT           R0, R3
1B0A52:  MOV             R6, R0
1B0A54:  LSL.W           R1, R6, R1
1B0A58:  RSB.W           R0, R1, #0x40000000
1B0A5C:  CMP             R0, #1
1B0A5E:  BLT             loc_1B0A78
1B0A60:  CLZ.W           R1, R0
1B0A64:  MOV             R3, R0
1B0A66:  RSBS.W          R2, R1, #0x18
1B0A6A:  BEQ             loc_1B0A8C
1B0A6C:  CMP.W           R2, #0xFFFFFFFF
1B0A70:  BLE             loc_1B0A7E
1B0A72:  ROR.W           R3, R0, R2
1B0A76:  B               loc_1B0A8C
1B0A78:  MOV.W           R9, #0
1B0A7C:  B               loc_1B0ADE
1B0A7E:  NEGS            R3, R2
1B0A80:  ADDS            R2, #0x20 ; ' '
1B0A82:  LSL.W           R3, R0, R3
1B0A86:  LSR.W           R2, R0, R2
1B0A8A:  ORRS            R3, R2
1B0A8C:  AND.W           R2, R3, #0x7F
1B0A90:  MOV.W           R3, #0xD50000
1B0A94:  TST.W           R1, #1
1B0A98:  MOV.W           R1, R1,LSR#1
1B0A9C:  MUL.W           R2, R3, R2
1B0AA0:  MOV.W           R3, #0x8000
1B0AA4:  IT EQ
1B0AA6:  MOVWEQ          R3, #0xB486
1B0AAA:  LSR.W           R1, R3, R1
1B0AAE:  UXTH            R3, R1
1B0AB0:  LSRS            R2, R2, #0x10
1B0AB2:  MULS            R3, R2
1B0AB4:  SMLABT.W        R1, R2, R1, R1
1B0AB8:  ADD.W           R9, R1, R3,LSR#16
1B0ABC:  CMP.W           R9, #1
1B0AC0:  BLT             loc_1B0ADE
1B0AC2:  MOV             R1, R9
1B0AC4:  BLX             sub_220A6C
1B0AC8:  ADD             R0, R9
1B0ACA:  MOVW            R1, #0xFFFF
1B0ACE:  LSLS            R0, R0, #0xF
1B0AD0:  BIC.W           R9, R0, R1
1B0AD4:  LDR             R0, [SP,#0x310+var_274]
1B0AD6:  CMP             R0, #0
1B0AD8:  IT LT
1B0ADA:  RSBLT.W         R9, R9, #0
1B0ADE:  MOV.W           R12, #1
1B0AE2:  STR.W           R8, [SP,#0x310+var_2D8]
1B0AE6:  LDR.W           R8, [SP,#0x310+var_26C]
1B0AEA:  LDR.W           LR, [SP,#0x310+var_2DC]
1B0AEE:  MOV.W           R1, R8,ASR#1
1B0AF2:  CMP             R1, #1
1B0AF4:  BLT             loc_1B0B1A
1B0AF6:  ADD             R2, SP, #0x310+var_140
1B0AF8:  MOV             R3, LR
1B0AFA:  LDR             R6, [R3]
1B0AFC:  SUBS            R1, #1
1B0AFE:  LDR             R5, [R2]
1B0B00:  SMMUL.W         R4, R6, R9
1B0B04:  SMMUL.W         R0, R5, R9
1B0B08:  ADD.W           R5, R5, R4,LSL#1
1B0B0C:  STR.W           R5, [R2],#4
1B0B10:  ADD.W           R0, R6, R0,LSL#1
1B0B14:  STR.W           R0, [R3],#-4
1B0B18:  BNE             loc_1B0AFA
1B0B1A:  LDR             R2, [SP,#0x310+var_270]
1B0B1C:  ADD             R1, SP, #0x310+var_140
1B0B1E:  MOV.W           R0, R9,ASR#6
1B0B22:  CMP.W           R12, #0
1B0B26:  STR.W           R0, [R1,R2,LSL#2]
1B0B2A:  BNE.W           loc_1B0C2E
1B0B2E:  LDR.W           R12, [SP,#0x310+var_2E0]
1B0B32:  MOV             R11, R8
1B0B34:  LDR.W           R8, [SP,#0x310+var_2E4]
1B0B38:  ADD             R4, SP, #0x310+var_1A4
1B0B3A:  MOVS            R0, #0
1B0B3C:  MOV             R1, R12
1B0B3E:  LDR             R2, [R1]
1B0B40:  LDR.W           R3, [R4,R0,LSL#2]
1B0B44:  SMMUL.W         R6, R2, R9
1B0B48:  SMMUL.W         R5, R3, R9
1B0B4C:  ADD.W           R3, R3, R6,LSL#1
1B0B50:  STR.W           R3, [R4,R0,LSL#2]
1B0B54:  ADDS            R0, #1
1B0B56:  ADD.W           R2, R2, R5,LSL#1
1B0B5A:  STR.W           R2, [R1],#-4
1B0B5E:  CMP             R8, R0
1B0B60:  BNE             loc_1B0B3E
1B0B62:  LDR             R0, [SP,#0x310+var_2CC]
1B0B64:  ADD.W           R12, R12, #4
1B0B68:  LDR             R2, [SP,#0x310+var_2B8]
1B0B6A:  ADD.W           LR, LR, #4
1B0B6E:  SUBS            R0, #2
1B0B70:  STR             R0, [SP,#0x310+var_2CC]
1B0B72:  LDR             R0, [SP,#0x310+var_2D0]
1B0B74:  ADD.W           R8, R8, #1
1B0B78:  LDR             R1, [SP,#0x310+var_290]
1B0B7A:  ADDS            R2, #1
1B0B7C:  ADDS            R0, #2
1B0B7E:  STR             R0, [SP,#0x310+var_2D0]
1B0B80:  LDR             R0, [SP,#0x310+var_2D4]
1B0B82:  SUBS            R0, #2
1B0B84:  STR             R0, [SP,#0x310+var_2D4]
1B0B86:  LDR             R0, [SP,#0x310+var_2C8]
1B0B88:  ADDS            R0, #2
1B0B8A:  STR             R0, [SP,#0x310+var_2C8]
1B0B8C:  LDR             R0, [SP,#0x310+var_26C]
1B0B8E:  CMP             R0, R10
1B0B90:  LDR             R0, [R7,#arg_8]
1B0B92:  BLT.W           loc_1B0428
1B0B96:  LDR             R2, [SP,#0x310+var_1A4]
1B0B98:  MOV.W           R8, #0x10000
1B0B9C:  CMP.W           R10, #1
1B0BA0:  BLT             loc_1B0C04
1B0BA2:  LDR.W           R11, [SP,#0x310+var_304]
1B0BA6:  ADD.W           LR, SP, #0x310+var_140
1B0BAA:  LDR.W           R6, [LR],#4
1B0BAE:  MOVS            R0, #1
1B0BB0:  LDR.W           R5, [R1],#4
1B0BB4:  MOV             R12, R10
1B0BB6:  ADD.W           R6, R0, R6,ASR#8
1B0BBA:  ASRS            R4, R6, #1
1B0BBC:  SMLABT.W        R3, R4, R5, R2
1B0BC0:  ADD.W           R2, R0, R6,ASR#16
1B0BC4:  SBFX.W          R0, R6, #1, #0x10
1B0BC8:  ASRS            R2, R2, #1
1B0BCA:  MLA.W           R9, R2, R5, R3
1B0BCE:  UXTH            R3, R4
1B0BD0:  UXTH            R5, R5
1B0BD2:  MUL.W           R10, R0, R3
1B0BD6:  ASRS            R3, R6, #0x11
1B0BD8:  SMLABB.W        R3, R0, R3, R8
1B0BDC:  MULS            R0, R5
1B0BDE:  MLA.W           R2, R2, R4, R3
1B0BE2:  ADD.W           R8, R2, R10,ASR#16
1B0BE6:  MOV             R10, R12
1B0BE8:  ADD.W           R2, R9, R0,ASR#16
1B0BEC:  MOVS            R0, #0
1B0BEE:  SUB.W           R0, R0, R6,ASR#1
1B0BF2:  STR.W           R0, [R11],#4
1B0BF6:  SUBS.W          R10, R10, #1
1B0BFA:  BNE             loc_1B0BAA
1B0BFC:  B               loc_1B0C04
1B0BFE:  LDR             R2, [SP,#0x310+var_1A4]
1B0C00:  MOV.W           R8, #0x10000
1B0C04:  LDR             R0, [SP,#0x310+var_300]
1B0C06:  MOVW            R1, #0xA7C6
1B0C0A:  RSB.W           R6, R8, #0
1B0C0E:  SMMUL.W         R0, R0, R1
1B0C12:  SXTH            R3, R6
1B0C14:  UXTH            R1, R0
1B0C16:  MULS            R1, R3
1B0C18:  SMLABT.W        R3, R6, R0, R2
1B0C1C:  ADD.W           R1, R3, R1,ASR#16
1B0C20:  MOVS            R3, #1
1B0C22:  ADD.W           R2, R3, R6,ASR#15
1B0C26:  ASRS            R2, R2, #1
1B0C28:  MLA.W           R0, R2, R0, R1
1B0C2C:  B               loc_1B0CE6
1B0C2E:  CMP             R8, R10
1B0C30:  BGE             loc_1B0C50
1B0C32:  ADD             R0, SP, #0x310+var_140
1B0C34:  SUB.W           R1, R10, R8
1B0C38:  ADD.W           R0, R0, R8,LSL#2; int
1B0C3C:  LSLS            R1, R1, #2; n
1B0C3E:  BLX             sub_22178C
1B0C42:  LDR             R5, [SP,#0x310+var_28C]
1B0C44:  CMP.W           R10, #0
1B0C48:  LDRD.W          R1, R4, [SP,#0x310+var_304]
1B0C4C:  BGT             loc_1B0C5C
1B0C4E:  B               loc_1B0C7A
1B0C50:  LDR             R5, [SP,#0x310+var_28C]
1B0C52:  CMP.W           R10, #1
1B0C56:  LDRD.W          R1, R4, [SP,#0x310+var_304]
1B0C5A:  BLT             loc_1B0C7A
1B0C5C:  ADD             R0, SP, #0x310+var_140
1B0C5E:  MOV.W           R12, #1
1B0C62:  MOVS            R2, #0
1B0C64:  MOV             R3, R10
1B0C66:  LDR.W           R6, [R0],#4
1B0C6A:  SUBS            R3, #1
1B0C6C:  ADD.W           R6, R12, R6,ASR#8
1B0C70:  SUB.W           R6, R2, R6,ASR#1
1B0C74:  STR.W           R6, [R1],#4
1B0C78:  BNE             loc_1B0C66
1B0C7A:  LDR             R0, [SP,#0x310+var_2C4]
1B0C7C:  LDR             R6, [R7,#arg_8]
1B0C7E:  CMP             R0, #0
1B0C80:  BLE             loc_1B0CBA
1B0C82:  CMP             R6, #1
1B0C84:  BLT             loc_1B0CDE
1B0C86:  LDR.W           R11, [SP,#0x310+var_294]
1B0C8A:  MOV             R0, R5
1B0C8C:  MOV             R1, R5
1B0C8E:  MOV             R2, R10
1B0C90:  BLX             j_silk_inner_prod16_aligned_64_c
1B0C94:  LDR             R3, [SP,#0x310+var_2C4]
1B0C96:  ADD             R5, R11
1B0C98:  RSB.W           R2, R3, #0x20 ; ' '
1B0C9C:  LSRS            R0, R3
1B0C9E:  LSL.W           R2, R1, R2
1B0CA2:  ORRS            R0, R2
1B0CA4:  SUB.W           R2, R3, #0x20 ; ' '
1B0CA8:  CMP             R2, #0
1B0CAA:  IT GE
1B0CAC:  ASRGE.W         R0, R1, R2
1B0CB0:  SUBS            R6, #1
1B0CB2:  SUB.W           R4, R4, R0
1B0CB6:  BNE             loc_1B0C8A
1B0CB8:  B               loc_1B0CDE
1B0CBA:  CMP             R6, #1
1B0CBC:  BLT             loc_1B0CDE
1B0CBE:  LDR.W           R8, [SP,#0x310+var_294]
1B0CC2:  LDR.W           R9, [SP,#0x310+var_2BC]
1B0CC6:  MOV             R0, R5
1B0CC8:  MOV             R1, R5
1B0CCA:  MOV             R2, R10
1B0CCC:  MOV             R3, R11
1B0CCE:  BLX             j_silk_inner_prod_aligned
1B0CD2:  LSL.W           R0, R0, R9
1B0CD6:  SUBS            R4, R4, R0
1B0CD8:  ADD             R5, R8
1B0CDA:  SUBS            R6, #1
1B0CDC:  BNE             loc_1B0CC6
1B0CDE:  LDR             R0, [SP,#0x310+var_2D8]
1B0CE0:  SMMUL.W         R0, R4, R0
1B0CE4:  LSLS            R0, R0, #2
1B0CE6:  LDRD.W          R2, R1, [SP,#0x310+var_2FC]
1B0CEA:  STR             R0, [R2]
1B0CEC:  LDR             R0, [SP,#0x310+var_2C4]
1B0CEE:  NEGS            R0, R0
1B0CF0:  STR             R0, [R1]
1B0CF2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B0CFA)
1B0CF4:  LDR             R1, [SP,#0x310+var_20]
1B0CF6:  ADD             R0, PC; __stack_chk_guard_ptr
1B0CF8:  LDR             R0, [R0]; __stack_chk_guard
1B0CFA:  LDR             R0, [R0]
1B0CFC:  SUBS            R0, R0, R1
1B0CFE:  ITTT EQ
1B0D00:  ADDEQ.W         SP, SP, #0x2F4
1B0D04:  POPEQ.W         {R8-R11}
1B0D08:  POPEQ           {R4-R7,PC}
1B0D0A:  BLX             __stack_chk_fail
