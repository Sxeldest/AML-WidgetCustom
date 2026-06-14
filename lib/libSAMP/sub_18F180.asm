; =========================================================
; Game Engine Function: sub_18F180
; Address            : 0x18F180 - 0x18FEAA
; =========================================================

18F180:  PUSH            {R4-R7,LR}
18F182:  ADD             R7, SP, #0xC
18F184:  PUSH.W          {R8-R11}
18F188:  SUB             SP, SP, #0x9C
18F18A:  MOV             R11, R0
18F18C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x18F19A)
18F190:  MOV             R4, R2
18F192:  MOVW            R2, #0x851F
18F196:  ADD             R0, PC; __stack_chk_guard_ptr
18F198:  MOVT            R2, #0x51EB
18F19C:  LDR             R0, [R0]; __stack_chk_guard
18F19E:  LDR             R0, [R0]
18F1A0:  STR.W           R0, [R7,#var_24]
18F1A4:  MOVS            R0, #0
18F1A6:  STR.W           R0, [R7,#var_60]
18F1AA:  LDR.W           R0, [R11,#0xC]
18F1AE:  SMMUL.W         R5, R0, R2
18F1B2:  LDR             R0, [R7,#arg_0]
18F1B4:  ASRS            R2, R5, #4
18F1B6:  ADD.W           R10, R2, R5,LSR#31
18F1BA:  MOV.W           R8, R10,ASR#3
18F1BE:  CMP             R8, R0
18F1C0:  BLE             loc_18F1C8
18F1C2:  MOV             R9, #0xFFFFFFFE
18F1C6:  B               loc_18F7B0
18F1C8:  ASRS            R2, R5, #3
18F1CA:  STR.W           R3, [R7,#var_68]
18F1CE:  ADD.W           R2, R2, R5,LSR#31
18F1D2:  LDRD.W          R3, R6, [R11]
18F1D6:  MOV.W           R12, R10,ASR#2
18F1DA:  MOV.W           LR, R10,ASR#1
18F1DE:  ADD.W           R5, R2, R2,LSL#1
18F1E2:  CMP             R5, R0
18F1E4:  IT GT
18F1E6:  MOVGT           R5, R0
18F1E8:  CMP             R4, #1
18F1EA:  BGT             loc_18F1F8
18F1EC:  LDR.W           R9, [R11,#0x40]
18F1F0:  CMP             R5, R9
18F1F2:  IT LT
18F1F4:  MOVLT           R9, R5
18F1F6:  B               loc_18F2F4
18F1F8:  CMP             R1, #0
18F1FA:  BEQ             loc_18F2F2
18F1FC:  STR.W           R10, [R7,#var_8C]
18F200:  MOV             R2, R1
18F202:  STR.W           R6, [R7,#var_84]
18F206:  MOV             R10, R12
18F208:  STR.W           R3, [R7,#var_78]
18F20C:  LDR.W           R0, [R11,#0x34]
18F210:  STR.W           R0, [R7,#var_74]
18F214:  SUB.W           R0, R7, #-var_58
18F218:  LDR.W           R6, [R11,#0x38]
18F21C:  LDR.W           R9, [R11,#0x40]
18F220:  STR.W           R2, [R7,#var_7C]
18F224:  MOV             R2, R4
18F226:  STR.W           LR, [R7,#var_6C]
18F22A:  BLX             j_ec_dec_init
18F22E:  LDR.W           R0, [R7,#var_6C]
18F232:  MOV             R2, R6
18F234:  MOVS            R6, #0
18F236:  MOV.W           R12, #0
18F23A:  CMP             R5, R0
18F23C:  MOVW            R1, #0x3EA
18F240:  IT GE
18F242:  MOVGE           R6, #1
18F244:  CMP             R2, R1
18F246:  IT NE
18F248:  MOVNE.W         R12, #1
18F24C:  LDR.W           R0, [R11,#0x3C]
18F250:  AND.W           R3, R6, R12
18F254:  STR.W           R4, [R7,#var_70]
18F258:  CMP             R0, #1
18F25A:  STR.W           R3, [R7,#var_88]
18F25E:  BLT.W           loc_18F3C0
18F262:  CMP             R0, R1
18F264:  BEQ             loc_18F276
18F266:  MOVW            R1, #0x3EA
18F26A:  CMP             R2, R1
18F26C:  ITT EQ
18F26E:  LDREQ.W         R1, [R11,#0x44]
18F272:  CMPEQ           R1, #0
18F274:  BEQ             loc_18F28A
18F276:  MOVW            R1, #0x3EA
18F27A:  CMP             R2, R1
18F27C:  BEQ.W           loc_18F3CE
18F280:  MOV.W           R12, #1
18F284:  CMP             R0, R1
18F286:  BNE.W           loc_18F3E0
18F28A:  LDR.W           R0, [R11,#8]
18F28E:  MOV             R6, R10
18F290:  MOVW            R1, #0x3EA
18F294:  CMP             R2, R1
18F296:  MUL.W           LR, R0, R6
18F29A:  MOV.W           R0, #7
18F29E:  IT EQ
18F2A0:  ADDEQ.W         R0, R0, LR,LSL#1
18F2A4:  BIC.W           R0, R0, #7
18F2A8:  SUB.W           R3, SP, R0
18F2AC:  MOV             SP, R3
18F2AE:  MOVS            R0, #0
18F2B0:  CMP             R2, R1
18F2B2:  BNE.W           loc_18F4DE
18F2B6:  SUB             SP, SP, #8
18F2B8:  CMP             R6, R9
18F2BA:  MOV             R1, R9
18F2BC:  IT LT
18F2BE:  MOVLT           R1, R6
18F2C0:  MOVS            R2, #0
18F2C2:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
18F2C6:  MOV             R6, R3
18F2C8:  MOV             R0, R11
18F2CA:  MOVS            R1, #0
18F2CC:  MOV             R4, R9
18F2CE:  STR.W           R6, [R7,#var_80]
18F2D2:  MOV             R9, R12
18F2D4:  BL              sub_18F180
18F2D8:  MOV             R12, R9
18F2DA:  ADD             SP, SP, #8
18F2DC:  LDR.W           R6, [R7,#var_88]
18F2E0:  MOVW            R2, #0x3EA
18F2E4:  MOVS            R0, #1
18F2E6:  MOV.W           LR, #0
18F2EA:  MOVS            R3, #1
18F2EC:  MOVS            R1, #1
18F2EE:  MOV             R9, R5
18F2F0:  B               loc_18F400
18F2F2:  MOV             R9, R5
18F2F4:  LDR.W           R2, [R11,#0x3C]
18F2F8:  CBZ             R2, loc_18F33A
18F2FA:  CMP             R9, R10
18F2FC:  BLE             loc_18F354
18F2FE:  LDR.W           R4, [R7,#var_68]
18F302:  MOVS            R5, #0
18F304:  MOV             R6, R9
18F306:  SUB             SP, SP, #8
18F308:  CMP             R6, R10
18F30A:  MOV             R0, R10
18F30C:  IT LT
18F30E:  MOVLT           R0, R6
18F310:  MOVS            R1, #0
18F312:  STRD.W          R0, R5, [SP,#0xC0+var_C0]
18F316:  MOV             R0, R11
18F318:  MOVS            R2, #0
18F31A:  MOV             R3, R4
18F31C:  BL              sub_18F180
18F320:  ADD             SP, SP, #8
18F322:  CMP             R0, #0
18F324:  BLT             loc_18F3CA
18F326:  LDR.W           R1, [R11,#8]
18F32A:  SUBS            R6, R6, R0
18F32C:  CMP             R6, #0
18F32E:  MUL.W           R1, R0, R1
18F332:  ADD.W           R4, R4, R1,LSL#1
18F336:  BGT             loc_18F306
18F338:  B               loc_18F7B0
18F33A:  LDR.W           R0, [R11,#8]
18F33E:  MUL.W           R0, R0, R9
18F342:  CMP             R0, #1
18F344:  BLT.W           loc_18F7B0
18F348:  LSLS            R1, R0, #1; n
18F34A:  LDR.W           R0, [R7,#var_68]; int
18F34E:  BLX             sub_22178C
18F352:  B               loc_18F7B0
18F354:  STR.W           R4, [R7,#var_70]
18F358:  MOV             R4, R9
18F35A:  STR.W           R6, [R7,#var_84]
18F35E:  STR.W           R3, [R7,#var_78]
18F362:  STR.W           R10, [R7,#var_8C]
18F366:  BGE             loc_18F386
18F368:  CMP             R9, LR
18F36A:  MOV             R4, LR
18F36C:  BGT             loc_18F386
18F36E:  CMP.W           R2, #0x3E8
18F372:  MOV             R0, R9
18F374:  IT NE
18F376:  MOVNE           R0, R12
18F378:  CMP             R9, R12
18F37A:  IT LE
18F37C:  MOVLE           R0, R9
18F37E:  CMP             R9, LR
18F380:  IT GE
18F382:  MOVGE           R0, R9
18F384:  MOV             R4, R0
18F386:  MOVS            R0, #0
18F388:  MOV             R10, R12
18F38A:  STR.W           R0, [R7,#var_74]
18F38E:  MOVW            R0, #0x3EA
18F392:  CMP             R2, R0
18F394:  MOV.W           R12, #0
18F398:  IT NE
18F39A:  MOVNE.W         R12, #1
18F39E:  CMP             R9, LR
18F3A0:  MOV.W           R0, #0
18F3A4:  STR.W           LR, [R7,#var_6C]
18F3A8:  IT GE
18F3AA:  MOVGE           R0, #1
18F3AC:  MOVS            R1, #0
18F3AE:  AND.W           R0, R0, R12
18F3B2:  STR.W           R0, [R7,#var_88]
18F3B6:  MOV             R6, R0
18F3B8:  MOVS            R0, #0
18F3BA:  STR.W           R0, [R7,#var_7C]
18F3BE:  B               loc_18F3E6
18F3C0:  MOV             R4, R9
18F3C2:  MOVS            R1, #1
18F3C4:  MOV             R6, R3
18F3C6:  MOV             R9, R5
18F3C8:  B               loc_18F3E6
18F3CA:  MOV             R9, R0
18F3CC:  B               loc_18F7B0
18F3CE:  MOV             R4, R9
18F3D0:  MOVS            R1, #1
18F3D2:  MOVS            R6, #0
18F3D4:  MOV.W           R12, #0
18F3D8:  MOVW            R2, #0x3EA
18F3DC:  MOV             R9, R5
18F3DE:  B               loc_18F3E6
18F3E0:  MOV             R4, R9
18F3E2:  MOV             R9, R5
18F3E4:  MOVS            R1, #1
18F3E6:  MOVW            R0, #0x3EA
18F3EA:  CMP             R2, R0
18F3EC:  MOV.W           R0, #0
18F3F0:  MOV.W           LR, #0
18F3F4:  IT EQ
18F3F6:  MOVEQ           R0, #1
18F3F8:  MOVS            R3, #0
18F3FA:  MOVS            R5, #0
18F3FC:  STR.W           R5, [R7,#var_80]
18F400:  CMP             R4, R9
18F402:  MOV             R9, R4
18F404:  BLE             loc_18F40C
18F406:  MOV.W           R9, #0xFFFFFFFF
18F40A:  B               loc_18F7B0
18F40C:  ORRS            R0, R6
18F40E:  STR.W           R2, [R7,#var_98]
18F412:  STRD.W          R0, R8, [R7,#var_A4]
18F416:  STR.W           R1, [R7,#var_90]
18F41A:  BEQ             loc_18F420
18F41C:  MOVS            R0, #0
18F41E:  B               loc_18F430
18F420:  LDR.W           R1, [R7,#var_6C]
18F424:  LDR.W           R0, [R11,#8]
18F428:  CMP             R1, R9
18F42A:  IT LE
18F42C:  MOVLE           R1, R9
18F42E:  MULS            R0, R1
18F430:  MOVS            R4, #7
18F432:  ADD.W           R0, R4, R0,LSL#1
18F436:  BIC.W           R0, R0, #7
18F43A:  LDR.W           R2, [R7,#var_68]
18F43E:  SUB.W           R8, SP, R0
18F442:  MOV             SP, R8
18F444:  MOVS            R5, #0
18F446:  CMP.W           R12, #1
18F44A:  STR.W           R6, [R7,#var_A8]
18F44E:  STR.W           R10, [R7,#var_94]
18F452:  STR.W           R8, [R7,#var_9C]
18F456:  BNE             loc_18F4CE
18F458:  STRD.W          LR, R3, [R7,#var_B4]
18F45C:  CMP             R6, #0
18F45E:  LDR.W           R0, [R7,#var_84]
18F462:  MOVW            R1, #0x3EA
18F466:  STR.W           R12, [R7,#var_AC]
18F46A:  ADD.W           R4, R11, R0
18F46E:  LDR.W           R0, [R11,#0x3C]
18F472:  IT NE
18F474:  MOVNE           R8, R2
18F476:  CMP             R0, R1
18F478:  ITT EQ
18F47A:  MOVEQ           R0, R4
18F47C:  BLXEQ           j_silk_InitDecoder
18F480:  MOV.W           R0, #0x3E8
18F484:  LDR.W           R1, [R11,#0xC]
18F488:  MUL.W           R0, R9, R0
18F48C:  BLX             sub_220A40
18F490:  CMP             R0, #0xA
18F492:  IT LE
18F494:  MOVLE           R0, #0xA
18F496:  STR.W           R0, [R11,#0x20]
18F49A:  LDR.W           R0, [R7,#var_90]
18F49E:  STR.W           R11, [R7,#var_6C]
18F4A2:  ADD.W           R11, R11, #0x10
18F4A6:  CMP             R0, #1
18F4A8:  BNE             loc_18F508
18F4AA:  LDR.W           R1, [R7,#var_6C]
18F4AE:  LDR             R0, [R1,#0x30]
18F4B0:  STR             R0, [R1,#0x14]
18F4B2:  LDR.W           R0, [R7,#var_98]
18F4B6:  CMP.W           R0, #0x3E8
18F4BA:  BNE             loc_18F4EC
18F4BC:  LDR.W           R2, [R7,#var_74]
18F4C0:  MOVW            R0, #0x44D
18F4C4:  CMP             R2, R0
18F4C6:  BNE             loc_18F4F2
18F4C8:  MOV.W           R0, #0x1F40
18F4CC:  B               loc_18F502
18F4CE:  MOVS            R0, #0
18F4D0:  MOVS            R6, #0
18F4D2:  STR.W           R0, [R7,#var_90]
18F4D6:  MOVS            R0, #0
18F4D8:  STR.W           R0, [R7,#var_84]
18F4DC:  B               loc_18F6E4
18F4DE:  MOV             R4, R9
18F4E0:  MOVS            R3, #1
18F4E2:  MOVS            R1, #1
18F4E4:  MOV             R9, R5
18F4E6:  LDR.W           R6, [R7,#var_88]
18F4EA:  B               loc_18F3FA
18F4EC:  MOV.W           R0, #0x3E80
18F4F0:  B               loc_18F502
18F4F2:  MOVW            R1, #0x44E
18F4F6:  MOV.W           R0, #0x3E80
18F4FA:  CMP             R2, R1
18F4FC:  IT EQ
18F4FE:  MOVWEQ          R0, #0x2EE0
18F502:  LDR.W           R1, [R7,#var_6C]
18F506:  STR             R0, [R1,#0x1C]
18F508:  LDR             R0, [R7,#arg_4]
18F50A:  MOVS            R5, #0
18F50C:  MOV.W           R10, R0,LSL#1
18F510:  LDR.W           R0, [R7,#var_7C]
18F514:  CMP             R0, #0
18F516:  IT EQ
18F518:  MOVEQ.W         R10, #1
18F51C:  CMP.W           R10, #0
18F520:  BEQ             loc_18F57E
18F522:  LDR.W           R6, [R7,#var_6C]
18F526:  LDR             R0, [R6,#0x2C]
18F528:  SUB             SP, SP, #0x10
18F52A:  SUB.W           R1, R7, #-var_58
18F52E:  STRD.W          R1, R8, [SP,#0xC8+var_C8]; int
18F532:  SUB.W           R1, R7, #-var_5C
18F536:  CMP             R5, #0
18F538:  MOV.W           R3, #0
18F53C:  STRD.W          R1, R0, [SP,#0xC8+var_C0]; int
18F540:  IT EQ
18F542:  MOVEQ           R3, #1; int
18F544:  MOV             R0, R4; int
18F546:  MOV             R1, R11; int
18F548:  MOV             R2, R10; int
18F54A:  BLX             j_silk_Decode
18F54E:  ADD             SP, SP, #0x10
18F550:  CBZ             R0, loc_18F568
18F552:  STR.W           R9, [R7,#var_5C]
18F556:  LDR             R0, [R6,#8]
18F558:  MUL.W           R0, R0, R9
18F55C:  CMP             R0, #1
18F55E:  ITTT GE
18F560:  LSLGE           R1, R0, #1; n
18F562:  MOVGE           R0, R8; int
18F564:  BLXGE           sub_22178C
18F568:  LDR.W           R0, [R7,#var_5C]
18F56C:  LDR             R1, [R6,#8]
18F56E:  ADD             R5, R0
18F570:  CMP             R5, R9
18F572:  MUL.W           R1, R0, R1
18F576:  ADD.W           R8, R8, R1,LSL#1
18F57A:  BLT             loc_18F526
18F57C:  B               loc_18F5CA
18F57E:  LDR.W           R10, [R7,#var_6C]
18F582:  SUB.W           R6, R7, #-var_58
18F586:  LDR.W           R0, [R10,#0x2C]
18F58A:  SUB             SP, SP, #0x10
18F58C:  SUB.W           R1, R7, #-var_5C
18F590:  CMP             R5, #0
18F592:  MOV.W           R3, #0
18F596:  STRD.W          R6, R8, [SP,#0xC8+var_C8]; int
18F59A:  STRD.W          R1, R0, [SP,#0xC8+var_C0]; int
18F59E:  IT EQ
18F5A0:  MOVEQ           R3, #1; int
18F5A2:  MOV             R0, R4; int
18F5A4:  MOV             R1, R11; int
18F5A6:  MOVS            R2, #0; int
18F5A8:  BLX             j_silk_Decode
18F5AC:  ADD             SP, SP, #0x10
18F5AE:  CMP             R0, #0
18F5B0:  BNE.W           loc_18F7AC
18F5B4:  LDR.W           R0, [R7,#var_5C]
18F5B8:  LDR.W           R1, [R10,#8]
18F5BC:  ADD             R5, R0
18F5BE:  CMP             R5, R9
18F5C0:  MUL.W           R1, R0, R1
18F5C4:  ADD.W           R8, R8, R1,LSL#1
18F5C8:  BLT             loc_18F586
18F5CA:  LDR             R0, [R7,#arg_4]
18F5CC:  MOVS            R6, #0
18F5CE:  CMP             R0, #0
18F5D0:  MOV.W           R0, #0
18F5D4:  IT EQ
18F5D6:  MOVEQ           R0, #1
18F5D8:  LDR.W           R1, [R7,#var_90]
18F5DC:  ANDS            R0, R1
18F5DE:  CMP             R0, #1
18F5E0:  BNE             loc_18F62A
18F5E2:  LDR.W           R11, [R7,#var_6C]
18F5E6:  MOVS            R5, #0
18F5E8:  LDR.W           R1, [R7,#var_3C]
18F5EC:  LDR.W           R0, [R7,#var_44]
18F5F0:  CLZ.W           R1, R1
18F5F4:  LDR.W           R2, [R11,#0x38]
18F5F8:  ADD             R1, R0
18F5FA:  MOVW            R0, #0x3E9
18F5FE:  SUB.W           R3, R1, #0xF
18F602:  CMP             R2, R0
18F604:  IT EQ
18F606:  ADDEQ           R3, R1, #5
18F608:  LDR.W           R4, [R7,#var_70]
18F60C:  CMP.W           R3, R4,LSL#3
18F610:  LDRD.W          R3, R12, [R7,#var_B0]
18F614:  BLE             loc_18F63E
18F616:  MOVS            R0, #0
18F618:  MOVS            R6, #0
18F61A:  STR.W           R0, [R7,#var_90]
18F61E:  MOVS            R0, #0
18F620:  STR.W           R0, [R7,#var_84]
18F624:  LDR.W           LR, [R7,#var_B4]
18F628:  B               loc_18F6E2
18F62A:  MOVS            R0, #0
18F62C:  LDR.W           R11, [R7,#var_6C]
18F630:  STR.W           R0, [R7,#var_90]
18F634:  MOVS            R0, #0
18F636:  STR.W           R0, [R7,#var_84]
18F63A:  MOVS            R5, #0
18F63C:  B               loc_18F6DA
18F63E:  LDR.W           R1, [R7,#var_98]
18F642:  CMP             R1, R0
18F644:  BNE             loc_18F682
18F646:  SUB.W           R0, R7, #-var_58
18F64A:  MOVS            R1, #0xC
18F64C:  BLX             j_ec_dec_bit_logp
18F650:  MOV             R8, R0
18F652:  CMP             R0, #0
18F654:  BEQ.W           loc_18FB7C
18F658:  MOV             R6, R4
18F65A:  SUB.W           R4, R7, #-var_58
18F65E:  MOVS            R1, #1
18F660:  MOV             R0, R4
18F662:  BLX             j_ec_dec_bit_logp
18F666:  STR.W           R0, [R7,#var_84]
18F66A:  MOV             R0, R4
18F66C:  MOV.W           R1, #0x100
18F670:  MOV             R4, R6
18F672:  BLX             j_ec_dec_uint
18F676:  LDR.W           R1, [R7,#var_44]
18F67A:  ADDS            R3, R0, #2
18F67C:  LDR.W           R2, [R7,#var_3C]
18F680:  B               loc_18F6A8
18F682:  SUB.W           R0, R7, #-var_58
18F686:  MOVS            R1, #1
18F688:  MOV.W           R8, #1
18F68C:  BLX             j_ec_dec_bit_logp
18F690:  LDR.W           R2, [R7,#var_3C]
18F694:  LDR.W           R1, [R7,#var_44]
18F698:  STR.W           R0, [R7,#var_84]
18F69C:  CLZ.W           R0, R2
18F6A0:  ADD             R0, R1
18F6A2:  SUBS            R0, #0x19
18F6A4:  SUB.W           R3, R4, R0,ASR#3
18F6A8:  CLZ.W           R2, R2
18F6AC:  SUBS            R4, R4, R3
18F6AE:  ADD             R1, R2
18F6B0:  LDR.W           R0, [R7,#var_54]
18F6B4:  SUBS            R1, #0x20 ; ' '
18F6B6:  LSLS            R2, R4, #3
18F6B8:  CMP             R2, R1
18F6BA:  IT LT
18F6BC:  MOVLT           R3, #0
18F6BE:  SUB.W           R0, R0, R3
18F6C2:  STR.W           R3, [R7,#var_90]
18F6C6:  STR.W           R0, [R7,#var_54]
18F6CA:  IT LT
18F6CC:  MOVLT           R4, #0
18F6CE:  STR.W           R4, [R7,#var_70]
18F6D2:  IT LT
18F6D4:  MOVLT.W         R8, #0
18F6D8:  MOV             R6, R8
18F6DA:  LDR.W           R12, [R7,#var_AC]
18F6DE:  LDRD.W          LR, R3, [R7,#var_B4]
18F6E2:  MOVS            R4, #7
18F6E4:  LDR.W           R0, [R7,#var_78]
18F6E8:  CMP             R6, #0
18F6EA:  ADD.W           R8, R11, R0
18F6EE:  ADD.W           R0, R4, LR,LSL#1
18F6F2:  IT NE
18F6F4:  MOVNE           R0, #7
18F6F6:  CMP             R6, #0
18F6F8:  BIC.W           R0, R0, #7
18F6FC:  IT EQ
18F6FE:  MOVEQ           R5, #1
18F700:  CMP             R3, #0
18F702:  SUB.W           R4, SP, R0
18F706:  IT NE
18F708:  MOVNE           R3, #1
18F70A:  AND.W           R0, R3, R5
18F70E:  STR.W           R0, [R7,#var_78]
18F712:  AND.W           R0, R0, R12
18F716:  MOV             SP, R4
18F718:  CMP.W           R12, #0
18F71C:  IT NE
18F71E:  MOVNE.W         R12, #0x11
18F722:  CMP             R0, #1
18F724:  BNE             loc_18F750
18F726:  SUB             SP, SP, #8
18F728:  LDR.W           R2, [R7,#var_94]
18F72C:  MOV             R1, R9
18F72E:  MOVS            R0, #0
18F730:  MOV             R3, R4
18F732:  CMP             R2, R9
18F734:  MOV             R5, R12
18F736:  IT LT
18F738:  MOVLT           R1, R2
18F73A:  MOVS            R2, #0
18F73C:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
18F740:  MOV             R0, R11
18F742:  MOVS            R1, #0
18F744:  BL              sub_18F180
18F748:  MOV             R12, R5
18F74A:  ADD             SP, SP, #8
18F74C:  STR.W           R4, [R7,#var_80]
18F750:  LDR.W           R1, [R7,#var_74]
18F754:  MOVW            R0, #0x44D
18F758:  MOVS            R2, #0x15
18F75A:  CMP             R1, R0
18F75C:  BLE             loc_18F770
18F75E:  SUBW            R0, R1, #0x44E
18F762:  MOV             R5, R12
18F764:  CMP             R0, #2
18F766:  BCS             loc_18F784
18F768:  MOVS            R2, #0x11
18F76A:  LDR.W           R4, [R7,#var_70]
18F76E:  B               loc_18F790
18F770:  LDR.W           R4, [R7,#var_70]
18F774:  MOV             R5, R12
18F776:  CBZ             R1, loc_18F79C
18F778:  MOVW            R0, #0x44D
18F77C:  CMP             R1, R0
18F77E:  IT EQ
18F780:  MOVEQ           R2, #0xD
18F782:  B               loc_18F790
18F784:  LDR.W           R4, [R7,#var_70]
18F788:  CMP.W           R1, #0x450
18F78C:  IT EQ
18F78E:  MOVEQ           R2, #0x13
18F790:  MOV             R0, R8
18F792:  MOVW            R1, #0x271C
18F796:  BLX             j_opus_custom_decoder_ctl
18F79A:  CBNZ            R0, loc_18F7AC
18F79C:  LDR.W           R2, [R11,#0x30]
18F7A0:  MOV             R0, R8
18F7A2:  MOVW            R1, #0x2718
18F7A6:  BLX             j_opus_custom_decoder_ctl
18F7AA:  CBZ             R0, loc_18F7D6
18F7AC:  MOV             R9, #0xFFFFFFFD
18F7B0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x18F7BC)
18F7B4:  LDR.W           R1, [R7,#var_24]
18F7B8:  ADD             R0, PC; __stack_chk_guard_ptr
18F7BA:  LDR             R0, [R0]; __stack_chk_guard
18F7BC:  LDR             R0, [R0]
18F7BE:  SUBS            R0, R0, R1
18F7C0:  ITTTT EQ
18F7C2:  MOVEQ           R0, R9
18F7C4:  SUBEQ.W         R4, R7, #-var_1C
18F7C8:  MOVEQ           SP, R4
18F7CA:  POPEQ.W         {R8-R11}
18F7CE:  IT EQ
18F7D0:  POPEQ           {R4-R7,PC}
18F7D2:  BLX             __stack_chk_fail
18F7D6:  CBZ             R6, loc_18F850
18F7D8:  LDR.W           R0, [R11,#8]
18F7DC:  LDR.W           R1, [R7,#var_94]
18F7E0:  MULS            R0, R1
18F7E2:  MOVS            R1, #7
18F7E4:  ADD.W           R0, R1, R0,LSL#1
18F7E8:  BIC.W           R0, R0, #7
18F7EC:  SUB.W           R0, SP, R0
18F7F0:  STR.W           R0, [R7,#var_74]
18F7F4:  MOV             SP, R0
18F7F6:  LDR.W           R0, [R7,#var_84]
18F7FA:  CBZ             R0, loc_18F86E
18F7FC:  MOV             R0, R8
18F7FE:  MOVW            R1, #0x271A
18F802:  MOVS            R2, #0
18F804:  MOVS            R4, #0
18F806:  BLX             j_opus_custom_decoder_ctl
18F80A:  CMP             R0, #0
18F80C:  BNE             loc_18F7AC
18F80E:  SUB             SP, SP, #0x10
18F810:  LDR.W           R0, [R7,#var_94]
18F814:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
18F818:  STR             R4, [SP,#0xC8+var_C0]
18F81A:  LDR.W           R4, [R7,#var_70]
18F81E:  LDR.W           R0, [R7,#var_7C]
18F822:  LDR.W           R2, [R7,#var_90]
18F826:  LDR.W           R3, [R7,#var_74]
18F82A:  ADDS            R1, R0, R4
18F82C:  MOV             R0, R8
18F82E:  BLX             j_celt_decode_with_ec
18F832:  ADD             SP, SP, #0x10
18F834:  SUB.W           R2, R7, #-var_60
18F838:  MOV             R0, R8
18F83A:  MOVW            R1, #0xFBF
18F83E:  BLX             j_opus_custom_decoder_ctl
18F842:  CMP             R0, #0
18F844:  BNE             loc_18F7AC
18F846:  MOVS            R0, #1
18F848:  STR.W           R0, [R7,#var_AC]
18F84C:  MOVS            R0, #1
18F84E:  B               loc_18F876
18F850:  LDR.W           R0, [R7,#var_84]
18F854:  CMP             R0, #0
18F856:  IT NE
18F858:  MOVNE           R0, #1
18F85A:  STR.W           R0, [R7,#var_84]
18F85E:  MOVS            R0, #0
18F860:  STR.W           R0, [R7,#var_AC]
18F864:  SUB.W           R0, R7, #-var_28
18F868:  STR.W           R0, [R7,#var_74]
18F86C:  B               loc_18F87A
18F86E:  MOVS            R0, #0
18F870:  STR.W           R0, [R7,#var_AC]
18F874:  MOVS            R0, #0
18F876:  STR.W           R0, [R7,#var_84]
18F87A:  MOV             R0, R8
18F87C:  MOVW            R1, #0x271A
18F880:  MOV             R2, R5
18F882:  BLX             j_opus_custom_decoder_ctl
18F886:  CMP             R0, #0
18F888:  BNE             loc_18F7AC
18F88A:  LDR.W           R1, [R7,#var_98]
18F88E:  CMP.W           R1, #0x3E8
18F892:  BNE             loc_18F90C
18F894:  MOVW            R0, #0xFFFF
18F898:  STRH.W          R0, [R7,#var_64]
18F89C:  LDR.W           R0, [R7,#var_A8]
18F8A0:  CBNZ            R0, loc_18F8B8
18F8A2:  LDR.W           R0, [R11,#8]
18F8A6:  MUL.W           R0, R0, R9
18F8AA:  CMP             R0, #1
18F8AC:  ITTT GE
18F8AE:  LSLGE           R1, R0, #1; n
18F8B0:  LDRGE.W         R0, [R7,#var_68]; int
18F8B4:  BLXGE           sub_22178C
18F8B8:  LDR.W           R0, [R11,#0x3C]
18F8BC:  MOVW            R1, #0x3E9
18F8C0:  CMP             R0, R1
18F8C2:  BNE             loc_18F908
18F8C4:  LDR.W           R0, [R7,#var_AC]
18F8C8:  CMP             R0, #1
18F8CA:  BNE             loc_18F8D2
18F8CC:  LDR.W           R0, [R11,#0x44]
18F8D0:  CBNZ            R0, loc_18F908
18F8D2:  MOV             R0, R8
18F8D4:  MOVW            R1, #0x271A
18F8D8:  MOVS            R2, #0
18F8DA:  MOVS            R4, #0
18F8DC:  BLX             j_opus_custom_decoder_ctl
18F8E0:  CMP             R0, #0
18F8E2:  BNE.W           loc_18F7AC
18F8E6:  SUB             SP, SP, #0x10
18F8E8:  LDR.W           R0, [R7,#var_A0]
18F8EC:  SUB.W           R1, R7, #-var_64
18F8F0:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
18F8F4:  MOVS            R2, #2
18F8F6:  LDR.W           R3, [R7,#var_68]
18F8FA:  LDR.W           R0, [R7,#var_88]
18F8FE:  STR             R0, [SP,#0xC8+var_C0]
18F900:  MOV             R0, R8
18F902:  BLX             j_celt_decode_with_ec
18F906:  ADD             SP, SP, #0x10
18F908:  MOVS            R5, #0
18F90A:  B               loc_18F960
18F90C:  LDR.W           R2, [R7,#var_8C]
18F910:  LDR.W           R0, [R11,#0x3C]
18F914:  CMP             R2, R9
18F916:  IT GE
18F918:  MOVGE           R2, R9
18F91A:  CMP             R1, R0
18F91C:  STR.W           R2, [R7,#var_8C]
18F920:  BEQ             loc_18F930
18F922:  CMP             R0, #1
18F924:  BLT             loc_18F930
18F926:  LDR.W           R0, [R11,#0x44]
18F92A:  CMP             R0, #0
18F92C:  BEQ.W           loc_18FCC2
18F930:  SUB             SP, SP, #0x10
18F932:  SUB.W           R0, R7, #-var_58
18F936:  LDR.W           R1, [R7,#var_8C]
18F93A:  MOV             R2, R4
18F93C:  STRD.W          R1, R0, [SP,#0xC8+var_C8]
18F940:  LDR.W           R0, [R7,#var_88]
18F944:  STR             R0, [SP,#0xC8+var_C0]
18F946:  LDR             R0, [R7,#arg_4]
18F948:  LDR.W           R1, [R7,#var_7C]
18F94C:  CMP             R0, #0
18F94E:  MOV             R0, R8
18F950:  IT NE
18F952:  MOVNE           R1, #0
18F954:  LDR.W           R3, [R7,#var_68]
18F958:  BLX             j_celt_decode_with_ec
18F95C:  ADD             SP, SP, #0x10
18F95E:  MOV             R5, R0
18F960:  LDR.W           R0, [R7,#var_A4]
18F964:  MOVW            R4, #0x8000
18F968:  LDR.W           R2, [R7,#var_68]
18F96C:  MOVT            R4, #0xFFFF
18F970:  CBNZ            R0, loc_18F9B0
18F972:  LDR.W           R0, [R11,#8]
18F976:  MUL.W           R0, R0, R9
18F97A:  CMP             R0, #1
18F97C:  BLT             loc_18F9B0
18F97E:  MOVS            R1, #0
18F980:  LDR.W           R3, [R7,#var_9C]
18F984:  LDRSH.W         R2, [R2,R1,LSL#1]
18F988:  LDRSH.W         R3, [R3,R1,LSL#1]
18F98C:  ADD             R2, R3
18F98E:  CMP.W           R2, #0x8000
18F992:  BLT             loc_18F99A
18F994:  MOVW            R2, #0x7FFF
18F998:  B               loc_18F9A0
18F99A:  CMP             R2, R4
18F99C:  IT LE
18F99E:  MOVLE           R2, R4
18F9A0:  LDR.W           R3, [R7,#var_68]
18F9A4:  STRH.W          R2, [R3,R1,LSL#1]
18F9A8:  ADDS            R1, #1
18F9AA:  MOV             R2, R3
18F9AC:  CMP             R1, R0
18F9AE:  BLT             loc_18F980
18F9B0:  SUB.W           R2, R7, #-var_64
18F9B4:  MOV             R0, R8
18F9B6:  MOVW            R1, #0x271F
18F9BA:  BLX             j_opus_custom_decoder_ctl
18F9BE:  CMP             R0, #0
18F9C0:  BNE.W           loc_18F7AC
18F9C4:  LDR.W           R0, [R7,#var_64]
18F9C8:  MOVS            R1, #0
18F9CA:  CMP             R6, #0
18F9CC:  IT EQ
18F9CE:  MOVEQ           R1, #1
18F9D0:  LDR             R0, [R0,#0x34]
18F9D2:  STR.W           R0, [R7,#var_88]
18F9D6:  LDR.W           R0, [R7,#var_84]
18F9DA:  ORRS            R0, R1
18F9DC:  BEQ.W           loc_18FB94
18F9E0:  STR.W           R6, [R7,#var_B0]
18F9E4:  LDR.W           R0, [R7,#var_AC]
18F9E8:  LDR.W           R6, [R7,#var_A0]
18F9EC:  LDR.W           R8, [R7,#var_74]
18F9F0:  CMP             R0, #1
18F9F2:  STR.W           R5, [R7,#var_8C]
18F9F6:  STR.W           R11, [R7,#var_6C]
18F9FA:  BNE             loc_18FACA
18F9FC:  LDR.W           R12, [R7,#var_6C]
18FA00:  LDR.W           R3, [R7,#var_68]
18FA04:  LDR.W           R11, [R12,#8]
18FA08:  CMP.W           R11, #1
18FA0C:  ITT GE
18FA0E:  LDRGE.W         R0, [R7,#var_A0]
18FA12:  CMPGE           R0, #1
18FA14:  BLT             loc_18FA38
18FA16:  MOV.W           R0, R11,LSL#1
18FA1A:  MOVS            R1, #0
18FA1C:  MOV             R2, R8
18FA1E:  LDR.W           R5, [R7,#var_A0]
18FA22:  MOVS            R6, #0
18FA24:  LDRH            R4, [R2,R6]
18FA26:  SUBS            R5, #1
18FA28:  STRH            R4, [R3,R6]
18FA2A:  ADD             R6, R0
18FA2C:  BNE             loc_18FA24
18FA2E:  ADDS            R1, #1
18FA30:  ADDS            R2, #2
18FA32:  ADDS            R3, #2
18FA34:  CMP             R1, R11
18FA36:  BLT             loc_18FA1E
18FA38:  LDR.W           R1, [R12,#0xC]
18FA3C:  MOVW            R0, #0xBB80
18FA40:  BLX             sub_220A40
18FA44:  LDR.W           R6, [R7,#var_A0]
18FA48:  CMP             R6, #1
18FA4A:  IT GE
18FA4C:  CMPGE.W         R11, #1
18FA50:  BLT             loc_18FACA
18FA52:  MUL.W           R2, R11, R6
18FA56:  LDR.W           R1, [R7,#var_68]
18FA5A:  MOV.W           R10, R0,LSL#1
18FA5E:  MOV.W           LR, R11,LSL#1
18FA62:  MOVS            R0, #0
18FA64:  MOVW            R3, #0x7FFF
18FA68:  STR.W           R11, [R7,#var_7C]
18FA6C:  ADD.W           R1, R1, R2,LSL#1
18FA70:  ADD.W           R2, R8, R2,LSL#1
18FA74:  LDR.W           R4, [R7,#var_88]
18FA78:  MOVS            R5, #0
18FA7A:  STR.W           R0, [R7,#var_74]
18FA7E:  LDRSH.W         R0, [R4]
18FA82:  ADD             R4, R10
18FA84:  LDRSH.W         R11, [R2,R5]
18FA88:  SUBS            R6, #1
18FA8A:  LDRSH.W         R8, [R1,R5]
18FA8E:  SMULBB.W        R0, R0, R0
18FA92:  MOV.W           R0, R0,LSL#1
18FA96:  SUB.W           R12, R3, R0,ASR#16
18FA9A:  SXTH.W          R3, R12
18FA9E:  SMULBB.W        R3, R3, R11
18FAA2:  SMLATB.W        R0, R0, R8, R3
18FAA6:  MOVW            R3, #0x7FFF
18FAAA:  MOV.W           R0, R0,LSR#15
18FAAE:  STRH            R0, [R1,R5]
18FAB0:  ADD             R5, LR
18FAB2:  BNE             loc_18FA7E
18FAB4:  LDR.W           R0, [R7,#var_74]
18FAB8:  ADDS            R1, #2
18FABA:  LDR.W           R11, [R7,#var_7C]
18FABE:  ADDS            R2, #2
18FAC0:  LDR.W           R6, [R7,#var_A0]
18FAC4:  ADDS            R0, #1
18FAC6:  CMP             R0, R11
18FAC8:  BNE             loc_18FA74
18FACA:  LDR.W           R0, [R7,#var_78]
18FACE:  CMP             R0, #1
18FAD0:  BNE.W           loc_18FD86
18FAD4:  LDR.W           R2, [R7,#var_6C]
18FAD8:  MOV             R4, R6
18FADA:  LDR.W           R0, [R7,#var_94]
18FADE:  LDR             R1, [R2,#8]
18FAE0:  CMP             R9, R0
18FAE2:  STR.W           R1, [R7,#var_74]
18FAE6:  BGE.W           loc_18FCD4
18FAEA:  LDR             R1, [R2,#0xC]
18FAEC:  MOVW            R0, #0xBB80
18FAF0:  BLX             sub_220A40
18FAF4:  LDR.W           R1, [R7,#var_74]
18FAF8:  CMP             R4, #1
18FAFA:  IT GE
18FAFC:  CMPGE           R1, #1
18FAFE:  BLT.W           loc_18FD86
18FB02:  LDR.W           R11, [R7,#var_68]
18FB06:  MOV.W           R8, R0,LSL#1
18FB0A:  MOVS            R0, #0
18FB0C:  MOV.W           R10, R1,LSL#1
18FB10:  MOVW            LR, #0x7FFF
18FB14:  STR.W           R0, [R7,#var_78]
18FB18:  LDR.W           R2, [R7,#var_88]
18FB1C:  MOVS            R5, #0
18FB1E:  LDR.W           R12, [R7,#var_80]
18FB22:  LDRSH.W         R3, [R2]
18FB26:  ADD             R2, R8
18FB28:  LDRSH.W         R1, [R12,R5]
18FB2C:  SUBS            R4, #1
18FB2E:  LDRSH.W         R0, [R11,R5]
18FB32:  SMULBB.W        R3, R3, R3
18FB36:  MOV.W           R3, R3,LSL#1
18FB3A:  SUB.W           R6, LR, R3,ASR#16
18FB3E:  SXTH            R6, R6
18FB40:  SMULBB.W        R1, R6, R1
18FB44:  SMLATB.W        R0, R3, R0, R1
18FB48:  MOV.W           R0, R0,LSR#15
18FB4C:  STRH.W          R0, [R11,R5]
18FB50:  ADD             R5, R10
18FB52:  BNE             loc_18FB22
18FB54:  LDR.W           R0, [R7,#var_78]
18FB58:  ADD.W           R11, R11, #2
18FB5C:  LDR.W           R4, [R7,#var_A0]
18FB60:  ADD.W           R12, R12, #2
18FB64:  STR.W           R12, [R7,#var_80]
18FB68:  MOV             R2, R0
18FB6A:  LDR.W           R0, [R7,#var_74]
18FB6E:  ADDS            R2, #1
18FB70:  CMP             R2, R0
18FB72:  MOV             R1, R2
18FB74:  STR.W           R1, [R7,#var_78]
18FB78:  BNE             loc_18FB18
18FB7A:  B               loc_18FD86
18FB7C:  MOVW            R0, #0x3E9
18FB80:  MOVS            R6, #0
18FB82:  STR.W           R0, [R7,#var_98]
18FB86:  MOVS            R0, #0
18FB88:  STR.W           R0, [R7,#var_90]
18FB8C:  MOVS            R0, #0
18FB8E:  STR.W           R0, [R7,#var_84]
18FB92:  B               loc_18F6DA
18FB94:  MOV             R0, R8
18FB96:  MOVW            R1, #0xFBC
18FB9A:  BLX             j_opus_custom_decoder_ctl
18FB9E:  CMP             R0, #0
18FBA0:  BNE.W           loc_18F7AC
18FBA4:  MOV             R0, R8
18FBA6:  MOVW            R1, #0x271A
18FBAA:  MOVS            R2, #0
18FBAC:  MOVS            R4, #0
18FBAE:  BLX             j_opus_custom_decoder_ctl
18FBB2:  CMP             R0, #0
18FBB4:  BNE.W           loc_18F7AC
18FBB8:  SUB             SP, SP, #0x10
18FBBA:  LDR.W           R0, [R7,#var_94]
18FBBE:  STRD.W          R0, R4, [SP,#0xC8+var_C8]
18FBC2:  LDR.W           R0, [R7,#var_70]
18FBC6:  LDR.W           R1, [R7,#var_7C]
18FBCA:  LDR.W           R2, [R7,#var_90]
18FBCE:  LDR.W           R3, [R7,#var_74]
18FBD2:  ADD             R1, R0
18FBD4:  MOV             R0, R8
18FBD6:  STR             R4, [SP,#0xC8+var_C0]
18FBD8:  BLX             j_celt_decode_with_ec
18FBDC:  ADD             SP, SP, #0x10
18FBDE:  SUB.W           R2, R7, #-var_60
18FBE2:  MOV             R0, R8
18FBE4:  MOVW            R1, #0xFBF
18FBE8:  BLX             j_opus_custom_decoder_ctl
18FBEC:  CMP             R0, #0
18FBEE:  BNE.W           loc_18F7AC
18FBF2:  LDR.W           R0, [R11,#8]
18FBF6:  STR.W           R0, [R7,#var_7C]
18FBFA:  MOVW            R0, #0xBB80
18FBFE:  LDR.W           R1, [R11,#0xC]
18FC02:  BLX             sub_220A40
18FC06:  LDR.W           R1, [R7,#var_A0]
18FC0A:  CMP             R1, #1
18FC0C:  ITT GE
18FC0E:  LDRGE.W         R1, [R7,#var_7C]
18FC12:  CMPGE           R1, #1
18FC14:  BLT.W           loc_18F9E0
18FC18:  LDR.W           R2, [R7,#var_A0]
18FC1C:  LSLS            R0, R0, #1
18FC1E:  LDR.W           R4, [R7,#var_7C]
18FC22:  LDR.W           R3, [R7,#var_74]
18FC26:  STR.W           R0, [R7,#var_90]
18FC2A:  MUL.W           R1, R4, R2
18FC2E:  SUB.W           R2, R9, R2
18FC32:  LSLS            R0, R4, #1
18FC34:  MULS            R2, R4
18FC36:  STR.W           R0, [R7,#var_9C]
18FC3A:  LDR.W           R12, [R7,#var_90]
18FC3E:  LDR.W           LR, [R7,#var_9C]
18FC42:  MOVS            R0, #0
18FC44:  STR.W           R0, [R7,#var_6C]
18FC48:  ADD.W           R3, R3, R1,LSL#1
18FC4C:  LDR.W           R1, [R7,#var_68]
18FC50:  STR.W           R6, [R7,#var_B0]
18FC54:  ADD.W           R10, R1, R2,LSL#1
18FC58:  STR.W           R5, [R7,#var_8C]
18FC5C:  LDR.W           R6, [R7,#var_A0]
18FC60:  MOVS            R4, #0
18FC62:  LDR.W           R5, [R7,#var_88]
18FC66:  LDRSH.W         R8, [R5]
18FC6A:  MOVW            R2, #0x7FFF
18FC6E:  LDRSH.W         R1, [R10,R4]
18FC72:  ADD             R5, R12
18FC74:  SUBS            R6, #1
18FC76:  SMULBB.W        R0, R8, R8
18FC7A:  LDRSH.W         R8, [R3,R4]
18FC7E:  MOV.W           R0, R0,LSL#1
18FC82:  SUB.W           R2, R2, R0,ASR#16
18FC86:  SXTH            R2, R2
18FC88:  SMULBB.W        R1, R2, R1
18FC8C:  SMLATB.W        R0, R0, R8, R1
18FC90:  MOV.W           R0, R0,LSR#15
18FC94:  STRH.W          R0, [R10,R4]
18FC98:  ADD             R4, LR
18FC9A:  BNE             loc_18FC66
18FC9C:  LDR.W           R0, [R7,#var_6C]
18FCA0:  ADDS            R3, #2
18FCA2:  LDR.W           R6, [R7,#var_B0]
18FCA6:  ADD.W           R10, R10, #2
18FCAA:  LDR.W           R5, [R7,#var_8C]
18FCAE:  MOV             R2, R0
18FCB0:  LDR.W           R0, [R7,#var_7C]
18FCB4:  ADDS            R2, #1
18FCB6:  CMP             R2, R0
18FCB8:  MOV             R1, R2
18FCBA:  STR.W           R1, [R7,#var_6C]
18FCBE:  BNE             loc_18FC5C
18FCC0:  B               loc_18F9E0
18FCC2:  MOV             R0, R8
18FCC4:  MOVW            R1, #0xFBC
18FCC8:  BLX             j_opus_custom_decoder_ctl
18FCCC:  CMP             R0, #0
18FCCE:  BNE.W           loc_18F7AC
18FCD2:  B               loc_18F930
18FCD4:  MOV             R5, R4
18FCD6:  LDR.W           R3, [R7,#var_68]
18FCDA:  MUL.W           R4, R1, R5
18FCDE:  LDR.W           R6, [R7,#var_80]
18FCE2:  CMP             R4, #1
18FCE4:  BLT             loc_18FCF6
18FCE6:  MOVS            R0, #0
18FCE8:  LDRH.W          R1, [R6,R0,LSL#1]
18FCEC:  STRH.W          R1, [R3,R0,LSL#1]
18FCF0:  ADDS            R0, #1
18FCF2:  CMP             R0, R4
18FCF4:  BLT             loc_18FCE8
18FCF6:  LDR             R1, [R2,#0xC]
18FCF8:  MOVW            R0, #0xBB80
18FCFC:  BLX             sub_220A40
18FD00:  LDR.W           R3, [R7,#var_74]
18FD04:  CMP             R5, #1
18FD06:  MOV             R6, R5
18FD08:  IT GE
18FD0A:  CMPGE           R3, #1
18FD0C:  BLT             loc_18FD86
18FD0E:  LDR.W           R1, [R7,#var_68]
18FD12:  MOV.W           R10, R0,LSL#1
18FD16:  LDR.W           R2, [R7,#var_80]
18FD1A:  MOVS            R0, #0
18FD1C:  ADD.W           R1, R1, R4,LSL#1
18FD20:  MOV.W           R11, R3,LSL#1
18FD24:  ADD.W           LR, R2, R4,LSL#1
18FD28:  STR.W           R0, [R7,#var_78]
18FD2C:  LDR.W           R4, [R7,#var_88]
18FD30:  MOVS            R5, #0
18FD32:  LDRSH.W         R0, [R4]
18FD36:  MOVW            R2, #0x7FFF
18FD3A:  LDRSH.W         R8, [LR,R5]
18FD3E:  ADD             R4, R10
18FD40:  LDRSH           R3, [R1,R5]
18FD42:  SMULBB.W        R0, R0, R0
18FD46:  SUBS            R6, #1
18FD48:  MOV.W           R0, R0,LSL#1
18FD4C:  SUB.W           R12, R2, R0,ASR#16
18FD50:  SXTH.W          R2, R12
18FD54:  SMULBB.W        R2, R2, R8
18FD58:  SMLATB.W        R0, R0, R3, R2
18FD5C:  MOV.W           R0, R0,LSR#15
18FD60:  STRH            R0, [R1,R5]
18FD62:  ADD             R5, R11
18FD64:  BNE             loc_18FD32
18FD66:  LDR.W           R0, [R7,#var_78]
18FD6A:  ADDS            R1, #2
18FD6C:  LDR.W           R6, [R7,#var_A0]
18FD70:  ADD.W           LR, LR, #2
18FD74:  MOV             R3, R0
18FD76:  LDR.W           R0, [R7,#var_74]
18FD7A:  ADDS            R3, #1
18FD7C:  CMP             R3, R0
18FD7E:  MOV             R2, R3
18FD80:  STR.W           R2, [R7,#var_78]
18FD84:  BNE             loc_18FD2C
18FD86:  LDR.W           R12, [R7,#var_6C]
18FD8A:  LDR.W           LR, [R7,#var_68]
18FD8E:  LDR.W           R0, [R12,#0x28]
18FD92:  CMP             R0, #0
18FD94:  BEQ             loc_18FE62
18FD96:  SXTH            R0, R0
18FD98:  MOV.W           R1, #0x4000
18FD9C:  MOVW            R2, #0x550B
18FDA0:  SMLABB.W        R1, R0, R2, R1
18FDA4:  SBFX.W          R0, R1, #0x19, #6
18FDA8:  CMP             R0, #0xE
18FDAA:  BLE             loc_18FDB2
18FDAC:  MOV.W           R2, #0x7F000000
18FDB0:  B               loc_18FE16
18FDB2:  CMN.W           R0, #0xF
18FDB6:  BGE             loc_18FDBC
18FDB8:  MOVS            R2, #0
18FDBA:  B               loc_18FE16
18FDBC:  MOVW            R2, #0x3FF0
18FDC0:  AND.W           R1, R2, R1,LSR#11
18FDC4:  MOVS            R2, #0
18FDC6:  MOVW            R3, #0x4FB8
18FDCA:  MOVT            R2, #0x39E3
18FDCE:  SMLABB.W        R2, R1, R3, R2
18FDD2:  MOVS            R3, #0x7FFF0000
18FDD8:  LSRS            R2, R2, #0x10
18FDDA:  SMULBB.W        R2, R2, R1
18FDDE:  AND.W           R2, R3, R2,LSL#1
18FDE2:  ADD.W           R2, R2, #0x58000000
18FDE6:  ADD.W           R2, R2, #0x1140000
18FDEA:  SMULTB.W        R1, R2, R1
18FDEE:  MOVW            R2, #0xFFFF
18FDF2:  LSLS            R1, R1, #1
18FDF4:  BICS            R1, R2
18FDF6:  MOV             R2, #0xFFFFFFFE
18FDFA:  ADD.W           R1, R1, #0x3F000000
18FDFE:  SUBS            R0, R2, R0
18FE00:  ADD.W           R1, R1, #0xFF0000
18FE04:  NEGS            R2, R0
18FE06:  CMP             R0, #0
18FE08:  MOV.W           R1, R1,ASR#16
18FE0C:  LSL.W           R2, R1, R2
18FE10:  IT GT
18FE12:  ASRGT.W         R2, R1, R0
18FE16:  LDR.W           R0, [R12,#8]
18FE1A:  MOV             R8, #0xFFFF8000
18FE22:  MUL.W           R0, R0, R9
18FE26:  CMP             R0, #1
18FE28:  BLT             loc_18FE62
18FE2A:  UXTH            R1, R2
18FE2C:  ASRS            R2, R2, #0x10
18FE2E:  MOVS            R3, #0
18FE30:  MOVW            R6, #0x7FFF
18FE34:  LDRSH.W         R5, [LR,R3,LSL#1]
18FE38:  MUL.W           R4, R1, R5
18FE3C:  SMULBB.W        R5, R2, R5
18FE40:  ADD.W           R4, R4, #0x8000
18FE44:  ADD.W           R5, R5, R4,ASR#16
18FE48:  ADD.W           R4, R8, #1
18FE4C:  CMP             R5, R4
18FE4E:  IT GT
18FE50:  MOVGT           R4, R5
18FE52:  CMP             R4, R6
18FE54:  IT GE
18FE56:  MOVGE           R4, R6
18FE58:  STRH.W          R4, [LR,R3,LSL#1]
18FE5C:  ADDS            R3, #1
18FE5E:  CMP             R3, R0
18FE60:  BLT             loc_18FE34
18FE62:  LDR.W           R0, [R7,#var_70]
18FE66:  CMP             R0, #2
18FE68:  BGE             loc_18FE6E
18FE6A:  MOVS            R0, #0
18FE6C:  B               loc_18FE78
18FE6E:  LDR.W           R0, [R7,#var_3C]
18FE72:  LDR.W           R1, [R7,#var_60]
18FE76:  EORS            R0, R1
18FE78:  LDR.W           R2, [R7,#var_B0]
18FE7C:  LDR.W           R1, [R7,#var_98]
18FE80:  CMP             R2, #0
18FE82:  LDR.W           R3, [R7,#var_8C]
18FE86:  STR.W           R1, [R12,#0x3C]
18FE8A:  STR.W           R0, [R12,#0x4C]
18FE8E:  IT NE
18FE90:  MOVNE           R2, #1
18FE92:  LDR.W           R0, [R7,#var_84]
18FE96:  CMP             R3, #0
18FE98:  EOR.W           R0, R0, #1
18FE9C:  AND.W           R0, R0, R2
18FEA0:  STR.W           R0, [R12,#0x44]
18FEA4:  IT LT
18FEA6:  MOVLT           R9, R3
18FEA8:  B               loc_18F7B0
