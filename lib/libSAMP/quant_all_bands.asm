; =========================================================
; Game Engine Function: quant_all_bands
; Address            : 0x19C23C - 0x19CF4E
; =========================================================

19C23C:  PUSH            {R4-R7,LR}
19C23E:  ADD             R7, SP, #0xC
19C240:  PUSH.W          {R8-R11}
19C244:  SUB.W           SP, SP, #0x6F8
19C248:  SUB             SP, SP, #4
19C24A:  LDR.W           R5, =(__stack_chk_guard_ptr - 0x19C25A)
19C24E:  MOV             R6, SP
19C250:  LDR             R4, [R7,#arg_1C]
19C252:  MOV.W           R8, #0
19C256:  ADD             R5, PC; __stack_chk_guard_ptr
19C258:  STR.W           R3, [R6,#0x718+var_694]
19C25C:  LDR.W           R9, [R7,#arg_4]
19C260:  CMP             R4, #0
19C262:  LDR             R5, [R5]; __stack_chk_guard
19C264:  MOV             R3, R4
19C266:  LDR.W           R12, [R7,#arg_40]
19C26A:  MOV.W           LR, #0
19C26E:  MOV             R4, R9
19C270:  LDR             R5, [R5]
19C272:  STR.W           R5, [R6,#0x718+var_63C]
19C276:  MOV             R5, R0
19C278:  STR.W           R3, [R6,#0x718+var_670]
19C27C:  IT EQ
19C27E:  MOVEQ.W         R8, #1
19C282:  CMP             R0, #0
19C284:  MOV.W           R3, #1
19C288:  IT NE
19C28A:  MOVNE           R5, #1
19C28C:  CMP.W           R9, #0
19C290:  IT NE
19C292:  MOVNE           R4, #1
19C294:  CMP.W           R12, #7
19C298:  AND.W           R5, R5, R4
19C29C:  MOV.W           R4, #0
19C2A0:  IT GT
19C2A2:  MOVGT           R4, #1
19C2A4:  LDR.W           R12, [R1,#0x18]
19C2A8:  STR.W           R1, [R6,#0x718+var_680]
19C2AC:  AND.W           R5, R5, R8
19C2B0:  LDR.W           R11, [R1,#8]
19C2B4:  CMP             R0, #0
19C2B6:  IT EQ
19C2B8:  MOVEQ.W         LR, #1
19C2BC:  AND.W           R10, R5, R4
19C2C0:  ORR.W           R1, R10, LR
19C2C4:  STR.W           R1, [R6,#0x718+var_698]
19C2C8:  STR.W           R2, [R6,#0x718+var_674]
19C2CC:  ADD.W           R1, R12, R11,LSL#1
19C2D0:  LDRSH.W         R2, [R12,R2,LSL#1]
19C2D4:  CMP.W           R9, #0
19C2D8:  LDRSH.W         R5, [R1,#-2]
19C2DC:  LDR.W           LR, [R7,#arg_34]
19C2E0:  MOV.W           R8, #1
19C2E4:  STR.W           R2, [R6,#0x718+var_640]
19C2E8:  LSL.W           R2, R2, LR
19C2EC:  LSL.W           R1, R5, LR
19C2F0:  SUB.W           R4, R1, R2
19C2F4:  STR.W           R2, [R6,#0x718+var_68C]
19C2F8:  IT NE
19C2FA:  MOVNE.W         R8, #2
19C2FE:  MUL.W           R2, R8, R4
19C302:  MOVS            R4, #7
19C304:  ADD.W           R2, R4, R2,LSL#1
19C308:  BIC.W           R2, R2, #7
19C30C:  SUB.W           R9, SP, R2
19C310:  LDR             R2, [R7,#arg_14]
19C312:  CMP             R2, #0
19C314:  LDR             R2, [R7,#arg_0]
19C316:  IT NE
19C318:  LSLNE.W         R3, R3, LR
19C31C:  STR.W           R9, [R6,#0x718+var_654]
19C320:  STR.W           R3, [R6,#0x718+var_688]
19C324:  LDR             R3, [R7,#arg_18]
19C326:  MOV             SP, R9
19C328:  CMP.W           R10, #0
19C32C:  STR.W           R10, [R6,#0x88]
19C330:  STRD.W          R12, R1, [R6,#0xD0]
19C334:  BEQ             loc_19C352
19C336:  LDRSH.W         R2, [R12,R11,LSL#1]
19C33A:  SUBS            R2, R2, R5
19C33C:  LSL.W           R2, R2, LR
19C340:  ADD.W           R4, R4, R2,LSL#1
19C344:  LSLS            R2, R2, #1
19C346:  BIC.W           R4, R4, #7
19C34A:  SUB.W           LR, SP, R4
19C34E:  MOV             SP, LR
19C350:  B               loc_19C358
19C352:  ADD.W           LR, R2, R1,LSL#1
19C356:  MOVS            R2, #0
19C358:  ADDS            R2, #7
19C35A:  BIC.W           R2, R2, #7
19C35E:  SUB.W           R5, SP, R2
19C362:  STR             R5, [R6,#0x7C]
19C364:  MOV             SP, R5
19C366:  SUB.W           R5, SP, R2
19C36A:  STR             R5, [R6,#0x78]
19C36C:  MOV             SP, R5
19C36E:  SUB.W           R5, SP, R2
19C372:  STR             R5, [R6,#0x1C]
19C374:  MOV             SP, R5
19C376:  SUB.W           R5, SP, R2
19C37A:  STR             R5, [R6,#0x18]
19C37C:  MOV             SP, R5
19C37E:  SUB.W           R2, SP, R2
19C382:  STR             R2, [R6,#4]
19C384:  MOV             SP, R2
19C386:  ADD.W           R2, R6, #0x1B4
19C38A:  LDR.W           R9, [R7,#arg_30]
19C38E:  MOV             R1, R3
19C390:  LDR.W           R3, [R6,#0x90]
19C394:  MOV             R4, R2
19C396:  LDR             R2, [R7,#arg_C]
19C398:  STR.W           R9, [R4,#0x20]
19C39C:  CMP             R3, #1
19C39E:  STR             R2, [R4,#0x28]
19C3A0:  LDR             R2, [R7,#arg_3C]
19C3A2:  LDR             R5, [R2]
19C3A4:  LDR             R2, [R7,#arg_20]
19C3A6:  STRD.W          R2, R1, [R4,#0x14]
19C3AA:  LDR             R2, [R7,#arg_44]
19C3AC:  STR             R5, [R4,#0x2C]
19C3AE:  STR             R2, [R4,#0x30]
19C3B0:  LDR             R2, [R7,#arg_48]
19C3B2:  STR             R2, [R4,#0x38]
19C3B4:  LDR.W           R2, [R6,#0x80]
19C3B8:  STR             R0, [R4,#4]
19C3BA:  STR             R2, [R4,#8]
19C3BC:  LDR.W           R2, [R6,#0x98]
19C3C0:  STR             R2, [R4,#0xC]
19C3C2:  MOV.W           R2, #0
19C3C6:  STR             R2, [R4,#0x34]
19C3C8:  MOV.W           R2, #0
19C3CC:  IT GT
19C3CE:  MOVGT           R2, #1
19C3D0:  STR             R2, [R4,#0x3C]
19C3D2:  LDR.W           R4, [R6,#0xA4]
19C3D6:  MOV             R12, R4
19C3D8:  LDR.W           R4, [R6,#0x84]
19C3DC:  CMP             R12, R4
19C3DE:  BGE.W           loc_19CF2A
19C3E2:  MOV             R5, R1
19C3E4:  LDR.W           R1, [R6,#0xD8]
19C3E8:  LDR.W           R10, [R6,#0xD4]
19C3EC:  CMP             R3, #1
19C3EE:  STR.W           LR, [R6,#0xCC]
19C3F2:  LDR.W           LR, [R6,#0xC4]
19C3F6:  UXTH            R1, R1
19C3F8:  LDR.W           R11, [R6,#0x8C]
19C3FC:  ADD.W           R2, LR, R10,LSL#1
19C400:  STR.W           R1, [R6,#0xD8]
19C404:  LDR.W           R9, [R7,#arg_2C]
19C408:  SUB.W           R1, R2, R11,LSL#1
19C40C:  MOV.W           R2, #0
19C410:  STR             R1, [R6,#0x54]
19C412:  RSB.W           R1, R11, #0
19C416:  STR             R1, [R6,#0x60]
19C418:  IT GT
19C41A:  MOVGT           R2, #1
19C41C:  CMP             R5, #3
19C41E:  MOV.W           R5, #0
19C422:  IT NE
19C424:  MOVNE           R5, #1
19C426:  ORR.W           R1, R5, R2
19C42A:  LDR             R2, [R7,#arg_4]
19C42C:  STR             R1, [R6,#0x5C]
19C42E:  MOV.W           R1, R10,LSL#1
19C432:  SUB.W           R1, R1, R11,LSL#1
19C436:  CMP             R2, #0
19C438:  IT NE
19C43A:  MOVNE           R2, LR
19C43C:  ADD             R1, LR
19C43E:  CMP             R0, #0
19C440:  STR             R2, [R6,#0x74]
19C442:  STR.W           R1, [R6,#0xAC]
19C446:  IT NE
19C448:  MOVNE           R0, #1
19C44A:  LDR.W           R1, [R6,#0x88]
19C44E:  MOV             R11, R12
19C450:  LDR.W           R2, [R6,#0xD0]
19C454:  EORS            R0, R1
19C456:  STR             R0, [R6,#0x70]
19C458:  MOVS            R0, #1
19C45A:  LDR             R1, [R7,#arg_30]
19C45C:  LSLS            R0, R3
19C45E:  SUBS            R0, #1
19C460:  STR             R0, [R6,#0x6C]
19C462:  SUBS            R0, R2, #2
19C464:  STR             R0, [R6,#0x50]
19C466:  RSB.W           R0, R8, #0
19C46A:  STR             R0, [R6,#0x4C]
19C46C:  SUB.W           R0, R8, #1
19C470:  STR             R0, [R6,#0x68]
19C472:  ADD.W           R0, R1, #0x1C
19C476:  STR             R0, [R6,#0x44]
19C478:  ADD.W           R0, R1, #8
19C47C:  STR             R0, [R6,#0x40]
19C47E:  ADD.W           R0, R12, #2
19C482:  STR             R0, [R6,#0x58]
19C484:  ADD.W           R0, R12, #1
19C488:  STR.W           R0, [R6,#0xB0]
19C48C:  SUBS            R0, R4, #1
19C48E:  STR.W           R0, [R6,#0xB4]
19C492:  MOVS            R0, #0
19C494:  STR.W           R0, [R6,#0xBC]
19C498:  MOVS            R0, #1
19C49A:  STR.W           R0, [R6,#0xC0]
19C49E:  B               loc_19C4C2
19C4A0:  CMP.W           R4, R9,LSL#3
19C4A4:  MOV.W           R5, #0
19C4A8:  IT GT
19C4AA:  MOVGT           R5, #1
19C4AC:  STR.W           R5, [R6,#0xC0]
19C4B0:  LDRH.W          R5, [R2,R11,LSL#1]
19C4B4:  STR.W           R5, [R6,#0xD8]
19C4B8:  LDR.W           R5, [R6,#0x94]
19C4BC:  ADD             R1, R5
19C4BE:  ADD.W           R9, R1, R0
19C4C2:  ADD.W           R10, R6, #0x1B4
19C4C6:  ADD.W           R0, R11, #1
19C4CA:  STR.W           R0, [R6,#0x9C]
19C4CE:  STR.W           R11, [R10,#0x10]
19C4D2:  LDRSH.W         R5, [R2,R0,LSL#1]
19C4D6:  LDR             R0, [R7,#arg_30]
19C4D8:  BLX             j_ec_tell_frac
19C4DC:  MOV             R2, R0
19C4DE:  LDR             R0, [R7,#arg_28]
19C4E0:  LDR             R1, [R7,#arg_34]
19C4E2:  SUBS            R4, R0, R2
19C4E4:  STR.W           R2, [R6,#0x94]
19C4E8:  SUBS            R0, R4, #1
19C4EA:  STR.W           R0, [R10,#0x24]
19C4EE:  LDR.W           R0, [R6,#0xD8]
19C4F2:  LSLS            R5, R1
19C4F4:  SXTH            R0, R0
19C4F6:  LSL.W           R10, R0, R1
19C4FA:  LDR.W           R0, [R6,#0xA4]
19C4FE:  CMP             R11, R0
19C500:  LDR             R0, [R7,#arg_4]
19C502:  IT NE
19C504:  SUBNE.W         R9, R9, R2
19C508:  CMP             R0, #0
19C50A:  IT NE
19C50C:  ADDNE.W         R0, R0, R10,LSL#1
19C510:  STR.W           R9, [R6,#0xA0]
19C514:  STR.W           R0, [R6,#0xD8]
19C518:  LDR             R0, [R7,#arg_38]
19C51A:  MOV             R1, R0
19C51C:  CMP             R11, R1
19C51E:  BGE             loc_19C54E
19C520:  SUB.W           R1, R1, R11
19C524:  MOV             R0, R9
19C526:  CMP             R1, #3
19C528:  IT GE
19C52A:  MOVGE           R1, #3
19C52C:  BLX             sub_220A40
19C530:  LDR             R1, [R7,#arg_10]
19C532:  LDR.W           R1, [R1,R11,LSL#2]
19C536:  ADD             R1, R0
19C538:  CMP             R4, R1
19C53A:  IT LT
19C53C:  MOVLT           R1, R4
19C53E:  CMP             R1, #0
19C540:  BLT             loc_19C54E
19C542:  MOVW            R0, #0x3FFF
19C546:  CMP             R1, R0
19C548:  IT GE
19C54A:  MOVGE           R1, R0
19C54C:  B               loc_19C550
19C54E:  MOVS            R1, #0
19C550:  LDR.W           R0, [R6,#0x80]
19C554:  SUB.W           R3, R5, R10
19C558:  LDR.W           LR, [R6,#0xD0]
19C55C:  LDR.W           R4, [R6,#0xC4]
19C560:  CMP             R0, #1
19C562:  LDR.W           R12, [R6,#0xAC]
19C566:  STR.W           R1, [R6,#0xB8]
19C56A:  STR.W           R3, [R6,#0xD4]
19C56E:  STR.W           R10, [R6,#0xC8]
19C572:  BNE             loc_19C5AC
19C574:  LDR.W           R0, [R6,#0xB0]
19C578:  CMP             R11, R0
19C57A:  BEQ             loc_19C594
19C57C:  LDR.W           R0, [R6,#0xA4]
19C580:  LDRSH.W         R1, [LR,R11,LSL#1]
19C584:  LDR             R2, [R7,#arg_34]
19C586:  LDRSH.W         R0, [LR,R0,LSL#1]
19C58A:  LSLS            R1, R2
19C58C:  SUBS            R1, R1, R3
19C58E:  LSLS            R0, R2
19C590:  CMP             R1, R0
19C592:  BLT             loc_19C5AC
19C594:  LDR.W           R0, [R6,#0xBC]
19C598:  CMP             R0, #0
19C59A:  IT EQ
19C59C:  MOVEQ           R0, R11
19C59E:  LDR.W           R1, [R6,#0xC0]
19C5A2:  CMP             R1, #0
19C5A4:  IT NE
19C5A6:  MOVNE           R0, R11
19C5A8:  STR.W           R0, [R6,#0xBC]
19C5AC:  LDR.W           R0, [R6,#0xB0]
19C5B0:  CMP             R11, R0
19C5B2:  BNE             loc_19C622
19C5B4:  LDR.W           R0, [R6,#0x98]
19C5B8:  LDR.W           R1, [R6,#0xA4]
19C5BC:  LDR.W           R2, [R6,#0xB0]
19C5C0:  LDR             R0, [R0,#0x18]
19C5C2:  LDR             R3, [R6,#0x58]
19C5C4:  LDRSH.W         R1, [R0,R1,LSL#1]
19C5C8:  LDRSH.W         R2, [R0,R2,LSL#1]
19C5CC:  LDRSH.W         R0, [R0,R3,LSL#1]
19C5D0:  SUBS            R1, R2, R1
19C5D2:  SUBS            R0, R0, R2
19C5D4:  LDR             R2, [R7,#arg_34]
19C5D6:  LSLS            R0, R2
19C5D8:  LSL.W           R10, R1, R2
19C5DC:  RSB.W           R5, R0, R10,LSL#1
19C5E0:  SUB.W           R0, R0, R10
19C5E4:  MOV.W           R9, R0,LSL#1
19C5E8:  ADD.W           R1, R4, R5,LSL#1; src
19C5EC:  ADD.W           R0, R4, R10,LSL#1; dest
19C5F0:  MOV             R2, R9; n
19C5F2:  BLX             j_memcpy
19C5F6:  LDR.W           R4, [R6,#0xC4]
19C5FA:  LDR.W           LR, [R6,#0xD0]
19C5FE:  LDRD.W          R0, R12, [R6,#0xA8]
19C602:  CMP             R0, #0
19C604:  BEQ             loc_19C622
19C606:  LDR             R1, [R6,#0x54]
19C608:  MOV             R2, R9; n
19C60A:  ADD.W           R0, R1, R10,LSL#1; dest
19C60E:  ADD.W           R1, R1, R5,LSL#1; src
19C612:  BLX             j_memcpy
19C616:  LDR.W           R12, [R6,#0xAC]
19C61A:  LDR.W           R4, [R6,#0xC4]
19C61E:  LDR.W           LR, [R6,#0xD0]
19C622:  LDR             R0, [R7,#arg_24]
19C624:  ADD.W           R1, R6, #0x1B4
19C628:  LDR.W           R5, [R6,#0xCC]
19C62C:  MOVS            R2, #0
19C62E:  LDR.W           R0, [R0,R11,LSL#2]
19C632:  STR             R0, [R1,#0x1C]
19C634:  LDR.W           R1, [R6,#0x98]
19C638:  LDR             R1, [R1,#0xC]
19C63A:  CMP             R11, R1
19C63C:  IT GE
19C63E:  MOVGE           R5, R2
19C640:  LDR.W           R2, [R6,#0xB4]
19C644:  CMP             R11, R2
19C646:  MOV             R2, R5
19C648:  IT EQ
19C64A:  MOVEQ           R2, #0
19C64C:  LDR.W           R3, [R6,#0x88]
19C650:  CMP             R3, #0
19C652:  IT EQ
19C654:  MOVEQ           R5, R2
19C656:  LDR.W           R3, [R6,#0xC8]
19C65A:  CMP             R11, R1
19C65C:  LDR             R1, [R7,#arg_0]
19C65E:  MOV             R2, R4
19C660:  STR.W           R5, [R6,#0xCC]
19C664:  IT LT
19C666:  ADDLT.W         R2, R1, R3,LSL#1
19C66A:  LDR             R1, [R6,#0x74]
19C66C:  STR.W           R2, [R6,#0xC0]
19C670:  LDR.W           R2, [R6,#0xD8]
19C674:  IT GE
19C676:  MOVGE           R2, R1
19C678:  CMP             R0, #0
19C67A:  MOV.W           R0, #0
19C67E:  STR.W           R2, [R6,#0xD8]
19C682:  IT LT
19C684:  MOVLT           R0, #1
19C686:  LDR.W           R1, [R6,#0xBC]
19C68A:  MOV.W           R2, #0xFFFFFFFF
19C68E:  CMP             R1, #0
19C690:  BEQ             loc_19C752
19C692:  LDR             R1, [R6,#0x5C]
19C694:  LDR.W           R9, [R6,#0x6C]
19C698:  LDR.W           R5, [R6,#0x8C]
19C69C:  ORRS            R0, R1
19C69E:  CMP             R0, #1
19C6A0:  MOV             R10, R9
19C6A2:  BNE             loc_19C75C
19C6A4:  LDR.W           R1, [R6,#0xBC]
19C6A8:  LDR.W           R9, [R7,#arg_34]
19C6AC:  LDR.W           R2, [R6,#0xD4]
19C6B0:  SUBS            R3, R1, #2
19C6B2:  LDRSH.W         R0, [LR,R1,LSL#1]
19C6B6:  MOV             R4, R1
19C6B8:  LSL.W           R0, R0, R9
19C6BC:  SUBS            R0, R0, R5
19C6BE:  SUBS            R2, R0, R2
19C6C0:  MOVS            R0, #0
19C6C2:  CMP             R2, #0
19C6C4:  IT LE
19C6C6:  MOVLE           R2, R0
19C6C8:  LDR.W           R10, [R6,#0x50]
19C6CC:  ADD.W           R12, R2, R5
19C6D0:  LDR             R5, [R6,#0x4C]
19C6D2:  STR.W           R2, [R6,#0xC8]
19C6D6:  MOV             R0, R3
19C6D8:  LDRSH.W         R3, [R10,R4,LSL#1]
19C6DC:  MOV             R1, R5
19C6DE:  SUB.W           R5, R1, R8
19C6E2:  SUBS            R4, #1
19C6E4:  LSL.W           R2, R3, R9
19C6E8:  SUBS            R3, R0, #1
19C6EA:  CMP             R2, R12
19C6EC:  BGT             loc_19C6D6
19C6EE:  LDR.W           R2, [R6,#0xD4]
19C6F2:  LDR.W           R3, [R6,#0xBC]
19C6F6:  ADD             R2, R12
19C6F8:  MOV             R4, R3
19C6FA:  CMP             R4, R11
19C6FC:  ITTTT LT
19C6FE:  LDRSHLT.W       R3, [LR,R4,LSL#1]
19C702:  LSLLT.W         R5, R3, R9
19C706:  ADDLT           R3, R4, #1
19C708:  CMPLT           R5, R2
19C70A:  BLT             loc_19C6F8
19C70C:  LDR.W           R3, [R6,#0xBC]
19C710:  SUBS            R4, #1
19C712:  LDR             R2, [R7,#arg_8]
19C714:  MOV.W           R10, #0
19C718:  MOV.W           R9, #0
19C71C:  MLA.W           R12, R8, R3, R2
19C720:  ADDS            R3, #1
19C722:  MLA.W           R3, R8, R3, R2
19C726:  LDRB.W          R5, [R12,R1]
19C72A:  ADD.W           R2, R1, R8
19C72E:  ADD             R1, R3
19C730:  ADDS            R0, #1
19C732:  ORR.W           R10, R10, R5
19C736:  LDRB.W          R1, [R1,#-1]
19C73A:  CMP             R0, R4
19C73C:  ORR.W           R9, R9, R1
19C740:  MOV             R1, R2
19C742:  BLT             loc_19C726
19C744:  LDR.W           R5, [R6,#0x8C]
19C748:  LDR.W           R12, [R6,#0xAC]
19C74C:  LDRD.W          R4, R2, [R6,#0xC4]
19C750:  B               loc_19C75C
19C752:  LDR.W           R9, [R6,#0x6C]
19C756:  LDR.W           R5, [R6,#0x8C]
19C75A:  MOV             R10, R9
19C75C:  LDR             R0, [R7,#arg_20]
19C75E:  MOVS            R1, #0
19C760:  STR.W           R2, [R6,#0xC8]
19C764:  CMP             R11, R0
19C766:  MOV.W           R0, #0
19C76A:  IT NE
19C76C:  MOVNE           R0, #1
19C76E:  LDR.W           R2, [R6,#0xA8]
19C772:  CMP             R2, #0
19C774:  IT EQ
19C776:  MOVEQ           R1, #1
19C778:  ORRS            R0, R1
19C77A:  LDR             R1, [R6,#0x70]
19C77C:  ORRS            R0, R1
19C77E:  BEQ             loc_19C804
19C780:  CMP             R2, #0
19C782:  ITT NE
19C784:  LDRNE           R0, [R7,#arg_20]
19C786:  CMPNE           R11, R0
19C788:  BEQ             loc_19C830
19C78A:  LDR.W           R1, [R6,#0xC8]
19C78E:  ADDS            R0, R1, #1
19C790:  STR             R0, [R6,#0x3C]
19C792:  MOV.W           R0, #0
19C796:  IT NE
19C798:  ADDNE.W         R0, R4, R1,LSL#1
19C79C:  LDR.W           R1, [R6,#0xB8]
19C7A0:  ADD.W           R1, R1, R1,LSR#31
19C7A4:  ASRS            R3, R1, #1; int
19C7A6:  LDR.W           R1, [R6,#0xB4]
19C7AA:  STR             R3, [R6,#0x48]
19C7AC:  CMP             R11, R1
19C7AE:  BNE.W           loc_19CB2C
19C7B2:  SUB             SP, SP, #0x20 ; ' '
19C7B4:  LDR.W           R1, [R6,#0x90]
19C7B8:  MOVS            R2, #0
19C7BA:  STRD.W          R1, R0, [SP,#0x738+var_738]; int
19C7BE:  MOVW            R1, #0x7FFF
19C7C2:  LDR             R0, [R7,#arg_34]
19C7C4:  STRD.W          R0, R2, [SP,#0x738+var_730]; int
19C7C8:  LDR.W           R4, [R6,#0xCC]
19C7CC:  STR             R1, [SP,#0x738+var_728]; int
19C7CE:  STRD.W          R4, R10, [SP,#0x738+dest]; dest
19C7D2:  ADD.W           R10, R6, #0x1B8
19C7D6:  LDR.W           R5, [R6,#0xD4]
19C7DA:  LDR.W           R1, [R6,#0xC0]; int
19C7DE:  MOV             R0, R10; int
19C7E0:  MOV             R2, R5; int
19C7E2:  BL              sub_19CF58
19C7E6:  LDR             R3, [R7,#arg_34]
19C7E8:  ADD             SP, SP, #0x20 ; ' '
19C7EA:  STR             R0, [R6,#0x64]
19C7EC:  LDR             R0, [R6,#0x3C]
19C7EE:  LDR.W           R2, [R6,#0xC8]
19C7F2:  LDR             R1, [R6,#0x54]
19C7F4:  CMP             R0, #0
19C7F6:  MOV.W           R0, #0
19C7FA:  IT NE
19C7FC:  ADDNE.W         R0, R1, R2,LSL#1
19C800:  MOVS            R2, #0
19C802:  B               loc_19CB9C
19C804:  LDRSH.W         R0, [LR,R11,LSL#1]
19C808:  LDR             R3, [R7,#arg_34]
19C80A:  LSLS            R0, R3
19C80C:  CMP             R0, R5
19C80E:  BLE             loc_19C830
19C810:  MOVS            R0, #0
19C812:  LDRSH.W         R1, [R4,R0,LSL#1]
19C816:  LDRSH.W         R2, [R12,R0,LSL#1]
19C81A:  ADD             R1, R2
19C81C:  LSRS            R1, R1, #1
19C81E:  STRH.W          R1, [R4,R0,LSL#1]
19C822:  ADDS            R0, #1
19C824:  LDRSH.W         R1, [LR,R11,LSL#1]
19C828:  LSLS            R1, R3
19C82A:  SUBS            R1, R1, R5
19C82C:  CMP             R0, R1
19C82E:  BLT             loc_19C812
19C830:  LDR.W           R0, [R6,#0xD8]
19C834:  CMP             R0, #0
19C836:  BEQ.W           loc_19CA4E
19C83A:  LDR             R0, [R7,#arg_20]
19C83C:  CMP             R11, R0
19C83E:  MOV.W           R0, #0
19C842:  IT LT
19C844:  MOVLT           R0, #1
19C846:  LDR.W           R1, [R6,#0x88]
19C84A:  ANDS            R0, R1
19C84C:  CMP             R0, #1
19C84E:  BNE.W           loc_19CAB6
19C852:  LDR.W           R0, [R6,#0x98]
19C856:  LDR             R1, [R6,#0x40]
19C858:  LDR             R4, [R7,#arg_C]
19C85A:  LDR             R0, [R0,#8]
19C85C:  MOV             R5, R1
19C85E:  MOV             R12, R4
19C860:  LDM             R5, {R1-R3,R5}
19C862:  ADD             R0, R11
19C864:  LDR.W           R4, [R12,R11,LSL#2]
19C868:  STR             R4, [R6,#0x64]
19C86A:  LDR.W           R0, [R12,R0,LSL#2]
19C86E:  STR             R0, [R6,#0x48]
19C870:  LDR             R0, [R7,#arg_30]
19C872:  MOV             R4, R0
19C874:  LDR             R0, [R4]
19C876:  STR             R0, [R6,#0x34]
19C878:  LDR             R0, [R4,#4]
19C87A:  STR             R0, [R6,#0x30]
19C87C:  ADD.W           R0, R6, #0x1B4
19C880:  STMDB.W         R0, {R1-R3}
19C884:  ADD.W           R1, R6, #0x190
19C888:  STR             R5, [R0]
19C88A:  LDR.W           R12, [R6,#0x44]
19C88E:  LDR             R0, [R4,#0x18]
19C890:  STR             R0, [R6,#0x38]
19C892:  LDM.W           R12, {R0,R2-R5}
19C896:  ADD.W           R12, R6, #0x120
19C89A:  STM             R1!, {R0,R2-R5}
19C89C:  ADD.W           R1, R6, #0x1B8
19C8A0:  LDM             R1!, {R0,R2-R5}
19C8A2:  STM.W           R12!, {R0,R2-R5}
19C8A6:  LDM             R1!, {R0,R2-R5}
19C8A8:  STM.W           R12!, {R0,R2-R5}
19C8AC:  LDM.W           R1, {R0,R2-R5}
19C8B0:  STM.W           R12, {R0,R2-R5}
19C8B4:  LDR.W           R0, [R6,#0xD4]
19C8B8:  LDR.W           R1, [R6,#0xC0]; src
19C8BC:  LSLS            R4, R0, #1
19C8BE:  LDR             R0, [R6,#0x7C]; dest
19C8C0:  MOV             R2, R4; n
19C8C2:  BLX             j_memcpy
19C8C6:  LDR             R0, [R6,#0x78]; dest
19C8C8:  MOV             R2, R4; n
19C8CA:  LDR.W           R1, [R6,#0xD8]; src
19C8CE:  STR.W           R4, [R6,#0xA8]
19C8D2:  BLX             j_memcpy
19C8D6:  ADD.W           R1, R6, #0x1B4
19C8DA:  MOV.W           R0, #0xFFFFFFFF
19C8DE:  LDR             R2, [R6,#0x48]
19C8E0:  STR             R0, [R1,#0x34]
19C8E2:  LDR             R1, [R6,#0x64]
19C8E4:  MOV             R0, R2
19C8E6:  LDR.W           R12, [R6,#0xC4]
19C8EA:  CMP             R1, R2
19C8EC:  MOV             R3, R2
19C8EE:  IT LT
19C8F0:  MOVLT           R0, R1
19C8F2:  MOV             R2, R1
19C8F4:  MOV             R1, #0x55555556
19C8FC:  SMMUL.W         R0, R0, R1
19C900:  ADD.W           R0, R0, R0,LSR#31
19C904:  ADDS            R1, R0, R3
19C906:  ADD             R0, R2
19C908:  CMP             R0, R1
19C90A:  MOV             R2, R1
19C90C:  IT GT
19C90E:  MOVGT           R2, R0
19C910:  ADDS            R2, #1
19C912:  CLZ.W           R2, R2
19C916:  RSB.W           R3, R2, #0x11
19C91A:  RSB.W           R2, R2, #0x1F
19C91E:  RSB.W           R5, R2, #0xE
19C922:  CMP             R2, #0xE
19C924:  ORR.W           R2, R9, R10
19C928:  LDR.W           R10, [R7,#arg_34]
19C92C:  LSL.W           R4, R1, R5
19C930:  IT GT
19C932:  ASRGT.W         R4, R1, R3
19C936:  STR             R4, [R6,#0x2C]
19C938:  LSL.W           R4, R0, R5
19C93C:  IT GT
19C93E:  ASRGT.W         R4, R0, R3
19C942:  LDR.W           R1, [R6,#0xC8]
19C946:  MOVS            R3, #0
19C948:  ADDS            R0, R1, #1
19C94A:  IT NE
19C94C:  ADDNE.W         R3, R12, R1,LSL#1
19C950:  LDR.W           R1, [R6,#0xB4]
19C954:  MOVS            R0, #0
19C956:  CMP             R11, R1
19C958:  BEQ             loc_19C970
19C95A:  LDR.W           R0, [R6,#0xD0]
19C95E:  LDR             R1, [R6,#0x60]
19C960:  LDRSH.W         R0, [R0,R11,LSL#1]
19C964:  LSL.W           R0, R0, R10
19C968:  ADD.W           R0, R12, R0,LSL#1
19C96C:  ADD.W           R0, R0, R1,LSL#1
19C970:  SUB             SP, SP, #0x20 ; ' '
19C972:  LDR.W           R1, [R6,#0xB8]
19C976:  STR             R1, [SP,#0x738+var_738]; int
19C978:  LDR.W           R1, [R6,#0x90]
19C97C:  STR             R1, [SP,#0x738+src]; int
19C97E:  STR             R3, [R6,#0x3C]
19C980:  STRD.W          R3, R10, [SP,#0x738+var_730]; void *
19C984:  STR             R0, [SP,#0x738+var_728]; int
19C986:  LDR.W           R0, [R6,#0xCC]
19C98A:  STR             R0, [SP,#0x738+dest]; void *
19C98C:  ADD.W           R0, R6, #0x1B8; int
19C990:  STR             R2, [R6,#0x64]
19C992:  STR             R2, [SP,#0x738+var_720]; int
19C994:  LDR.W           R5, [R6,#0xC0]
19C998:  LDRD.W          R9, R2, [R6,#0xD4]; int
19C99C:  MOV             R1, R5; int
19C99E:  MOV             R3, R9; int
19C9A0:  BL              sub_19D604
19C9A4:  ADD             SP, SP, #0x20 ; ' '
19C9A6:  STR             R0, [R6,#0x10]
19C9A8:  SXTH            R0, R4
19C9AA:  MOV.W           R12, R4,LSL#16
19C9AE:  CMP.W           R9, #1
19C9B2:  STR             R0, [R6,#0x48]
19C9B4:  STR.W           R12, [R6,#0x14]
19C9B8:  BLT.W           loc_19CBCE
19C9BC:  LDR             R1, [R6,#0x7C]
19C9BE:  MOVS            R0, #0
19C9C0:  MOV             R2, R5
19C9C2:  MOV             R3, R9
19C9C4:  MOV             LR, R5
19C9C6:  LDRSH.W         R5, [R1],#2
19C9CA:  SUBS            R3, #1
19C9CC:  LDRSH.W         R4, [R2],#2
19C9D0:  SMLABB.W        R0, R4, R5, R0
19C9D4:  BNE             loc_19C9C6
19C9D6:  ASRS            R0, R0, #0x10
19C9D8:  MOV.W           R1, R12,ASR#15
19C9DC:  MUL.W           R12, R1, R0
19C9E0:  LDR             R2, [R6,#0x7C]
19C9E2:  MOVS            R1, #0
19C9E4:  MOV             R3, LR
19C9E6:  MOV             R5, R9
19C9E8:  LDRSH.W         R4, [R2],#2
19C9EC:  SUBS            R5, #1
19C9EE:  LDRSH.W         R0, [R3],#2
19C9F2:  SMLABB.W        R1, R0, R4, R1
19C9F6:  BNE             loc_19C9E8
19C9F8:  UXTH            R0, R1
19C9FA:  LDR             R1, [R6,#0x48]
19C9FC:  LDR.W           R2, [R6,#0xD8]
19CA00:  MULS            R0, R1
19CA02:  LDR             R1, [R6,#0x78]
19CA04:  ADD.W           R0, R12, R0,ASR#15
19CA08:  STR             R0, [R6,#0x28]
19CA0A:  LDR             R0, [R6,#0x2C]
19CA0C:  LSLS            R0, R0, #0x10
19CA0E:  STR.W           R0, [R6,#0xC8]
19CA12:  MOVS            R0, #0
19CA14:  LDRSH.W         R5, [R1],#2
19CA18:  SUBS.W          R9, R9, #1
19CA1C:  LDRSH.W         R4, [R2],#2
19CA20:  SMLABB.W        R0, R4, R5, R0
19CA24:  BNE             loc_19CA14
19CA26:  LDR.W           R1, [R6,#0xC8]
19CA2A:  ASRS            R0, R0, #0x10
19CA2C:  MOV.W           R9, #0
19CA30:  ASRS            R1, R1, #0xF
19CA32:  MULS            R0, R1
19CA34:  STR             R0, [R6,#0x24]
19CA36:  LDR             R0, [R6,#0x78]
19CA38:  LDRD.W          R2, R1, [R6,#0xD4]
19CA3C:  LDRSH.W         R3, [R0],#2
19CA40:  SUBS            R2, #1
19CA42:  LDRSH.W         R5, [R1],#2
19CA46:  SMLABB.W        R9, R5, R3, R9
19CA4A:  BNE             loc_19CA3C
19CA4C:  B               loc_19CBE2
19CA4E:  LDR.W           R2, [R6,#0xC8]
19CA52:  ADD.W           R12, R6, #0x1B8
19CA56:  MOVS            R1, #0
19CA58:  MOVW            R5, #0x7FFF
19CA5C:  ADDS            R0, R2, #1
19CA5E:  MOV.W           R0, #0
19CA62:  IT NE
19CA64:  ADDNE.W         R0, R4, R2,LSL#1
19CA68:  LDR.W           R2, [R6,#0xB4]
19CA6C:  CMP             R11, R2
19CA6E:  BEQ             loc_19CA82
19CA70:  LDRSH.W         R1, [LR,R11,LSL#1]
19CA74:  LDR             R2, [R7,#arg_34]
19CA76:  LSLS            R1, R2
19CA78:  LDR             R2, [R6,#0x60]
19CA7A:  ADD.W           R1, R4, R1,LSL#1
19CA7E:  ADD.W           R1, R1, R2,LSL#1
19CA82:  ORR.W           R2, R9, R10
19CA86:  SUB             SP, SP, #0x20 ; ' '
19CA88:  LDR.W           R3, [R6,#0x90]
19CA8C:  STRD.W          R3, R0, [SP,#0x738+var_738]; int
19CA90:  ADD             R3, SP, #0x738+var_730
19CA92:  LDR             R0, [R7,#arg_34]
19CA94:  STM             R3!, {R0,R1,R5}
19CA96:  LDR.W           R0, [R6,#0xCC]
19CA9A:  STRD.W          R0, R2, [SP,#0x738+dest]; dest
19CA9E:  MOV             R0, R12; int
19CAA0:  LDR.W           R9, [R6,#0xD4]
19CAA4:  LDR.W           R4, [R6,#0xB8]
19CAA8:  LDR.W           R1, [R6,#0xC0]; int
19CAAC:  MOV             R2, R9; int
19CAAE:  MOV             R3, R4; int
19CAB0:  BL              sub_19CF58
19CAB4:  B               loc_19CB1E
19CAB6:  ADD.W           R1, R6, #0x1B4
19CABA:  LDR.W           R2, [R6,#0xC8]
19CABE:  MOVS            R0, #0
19CAC0:  ADD.W           R5, R6, #0x1B8
19CAC4:  STR             R0, [R1,#0x34]
19CAC6:  ADDS            R1, R2, #1
19CAC8:  MOV.W           R1, #0
19CACC:  IT NE
19CACE:  ADDNE.W         R1, R4, R2,LSL#1
19CAD2:  LDR.W           R2, [R6,#0xB4]
19CAD6:  CMP             R11, R2
19CAD8:  BEQ             loc_19CAEC
19CADA:  LDRSH.W         R0, [LR,R11,LSL#1]
19CADE:  LDR             R2, [R7,#arg_34]
19CAE0:  LSLS            R0, R2
19CAE2:  LDR             R2, [R6,#0x60]
19CAE4:  ADD.W           R0, R4, R0,LSL#1
19CAE8:  ADD.W           R0, R0, R2,LSL#1
19CAEC:  ORR.W           R2, R9, R10
19CAF0:  SUB             SP, SP, #0x20 ; ' '
19CAF2:  LDR.W           R4, [R6,#0xB8]
19CAF6:  LDR.W           R3, [R6,#0x90]
19CAFA:  STR             R4, [SP,#0x738+var_738]; int
19CAFC:  STRD.W          R3, R1, [SP,#0x738+src]; int
19CB00:  LDR             R1, [R7,#arg_34]
19CB02:  STRD.W          R1, R0, [SP,#0x738+var_72C]; int
19CB06:  LDR.W           R0, [R6,#0xCC]
19CB0A:  STRD.W          R0, R2, [SP,#0x738+dest]; void *
19CB0E:  MOV             R0, R5; int
19CB10:  LDR.W           R1, [R6,#0xC0]; int
19CB14:  LDRD.W          R9, R2, [R6,#0xD4]; int
19CB18:  MOV             R3, R9; int
19CB1A:  BL              sub_19D604
19CB1E:  ADD             SP, SP, #0x20 ; ' '
19CB20:  MOV             R5, R0
19CB22:  MOVS            R0, #0
19CB24:  STR.W           R0, [R6,#0xA8]
19CB28:  MOV             R0, R5
19CB2A:  B               loc_19CEF0
19CB2C:  LDRSH.W         R1, [LR,R11,LSL#1]
19CB30:  SUB             SP, SP, #0x20 ; ' '
19CB32:  LDR             R2, [R7,#arg_34]
19CB34:  LDR             R5, [R6,#0x60]
19CB36:  LSLS            R1, R2
19CB38:  ADD.W           R1, R4, R1,LSL#1
19CB3C:  ADD.W           R1, R1, R5,LSL#1
19CB40:  LDR.W           R5, [R6,#0x90]
19CB44:  STRD.W          R5, R0, [SP,#0x738+var_738]; int
19CB48:  MOVW            R0, #0x7FFF
19CB4C:  STRD.W          R2, R1, [SP,#0x738+var_730]; int
19CB50:  LDR.W           R4, [R6,#0xCC]
19CB54:  STR             R0, [SP,#0x738+var_728]; int
19CB56:  STRD.W          R4, R10, [SP,#0x738+dest]; dest
19CB5A:  ADD.W           R10, R6, #0x1B8
19CB5E:  LDR.W           R5, [R6,#0xD4]
19CB62:  LDR.W           R1, [R6,#0xC0]; int
19CB66:  MOV             R0, R10; int
19CB68:  MOV             R2, R5; int
19CB6A:  BL              sub_19CF58
19CB6E:  ADD             SP, SP, #0x20 ; ' '
19CB70:  STR             R0, [R6,#0x64]
19CB72:  LDR.W           R0, [R6,#0xD0]
19CB76:  LDR.W           R3, [R6,#0xC8]
19CB7A:  LDR             R2, [R6,#0x54]
19CB7C:  LDRSH.W         R1, [R0,R11,LSL#1]
19CB80:  LDR             R0, [R6,#0x3C]
19CB82:  CMP             R0, #0
19CB84:  MOV.W           R0, #0
19CB88:  IT NE
19CB8A:  ADDNE.W         R0, R2, R3,LSL#1
19CB8E:  LDR             R3, [R7,#arg_34]
19CB90:  LSLS            R1, R3
19CB92:  ADD.W           R1, R2, R1,LSL#1
19CB96:  LDR             R2, [R6,#0x60]
19CB98:  ADD.W           R2, R1, R2,LSL#1
19CB9C:  SUB             SP, SP, #0x20 ; ' '
19CB9E:  LDR.W           R1, [R6,#0x90]
19CBA2:  STRD.W          R1, R0, [SP,#0x738+var_738]; int
19CBA6:  MOVW            R0, #0x7FFF
19CBAA:  ADD             R1, SP, #0x738+var_728
19CBAC:  STRD.W          R3, R2, [SP,#0x738+var_730]; int
19CBB0:  STM.W           R1, {R0,R4,R9}
19CBB4:  MOV             R0, R10; int
19CBB6:  MOV             R2, R5; int
19CBB8:  LDR.W           R1, [R6,#0xD8]; int
19CBBC:  LDR             R3, [R6,#0x48]; int
19CBBE:  BL              sub_19CF58
19CBC2:  ADD             SP, SP, #0x20 ; ' '
19CBC4:  MOV             R9, R5
19CBC6:  LDR.W           R4, [R6,#0xB8]
19CBCA:  LDR             R5, [R6,#0x64]
19CBCC:  B               loc_19CEF0
19CBCE:  LDR             R0, [R6,#0x2C]
19CBD0:  MOV.W           R9, #0
19CBD4:  LSLS            R0, R0, #0x10
19CBD6:  STR.W           R0, [R6,#0xC8]
19CBDA:  MOVS            R0, #0
19CBDC:  STR             R0, [R6,#0x24]
19CBDE:  MOVS            R0, #0
19CBE0:  STR             R0, [R6,#0x28]
19CBE2:  LDR.W           R12, [R7,#arg_30]
19CBE6:  ADD.W           R1, R6, #0x160
19CBEA:  LDM.W           R12!, {R0,R2-R5,LR}
19CBEE:  STM.W           R1!, {R0,R2-R5,LR}
19CBF2:  LDM.W           R12, {R0,R2-R5,LR}
19CBF6:  ADD.W           R12, R6, #0xE0
19CBFA:  STM.W           R1, {R0,R2-R5,LR}
19CBFE:  ADD.W           R1, R6, #0x1B8
19CC02:  LDM             R1!, {R0,R2-R5}
19CC04:  STM.W           R12!, {R0,R2-R5}
19CC08:  LDM             R1!, {R0,R2-R5}
19CC0A:  STM.W           R12!, {R0,R2-R5}
19CC0E:  LDM.W           R1, {R0,R2-R5}
19CC12:  STM.W           R12, {R0,R2-R5}
19CC16:  LDR.W           R4, [R6,#0xA8]
19CC1A:  LDR             R0, [R6,#0x1C]; dest
19CC1C:  LDR.W           R1, [R6,#0xC0]; src
19CC20:  MOV             R2, R4; n
19CC22:  BLX             j_memcpy
19CC26:  LDR             R0, [R6,#0x18]; dest
19CC28:  MOV             R2, R4; n
19CC2A:  LDR.W           R1, [R6,#0xD8]; src
19CC2E:  BLX             j_memcpy
19CC32:  LDR.W           R0, [R6,#0xB4]
19CC36:  CMP             R11, R0
19CC38:  BEQ             loc_19CC5C
19CC3A:  LDR.W           R0, [R6,#0xD0]
19CC3E:  MOV             R2, R4; n
19CC40:  LDR.W           R1, [R6,#0xC4]
19CC44:  LDRSH.W         R0, [R0,R11,LSL#1]
19CC48:  LSL.W           R0, R0, R10
19CC4C:  ADD.W           R0, R1, R0,LSL#1
19CC50:  LDR             R1, [R6,#0x60]
19CC52:  ADD.W           R1, R0, R1,LSL#1; src
19CC56:  LDR             R0, [R6,#4]; dest
19CC58:  BLX             j_memcpy
19CC5C:  LDR.W           R0, [R6,#0xC8]
19CC60:  ASRS            R0, R0, #0x10
19CC62:  STR             R0, [R6,#0x2C]
19CC64:  UXTH.W          R0, R9
19CC68:  STR             R0, [R6,#0x20]
19CC6A:  ADD.W           R0, R6, #0x1F8; dest
19CC6E:  LDRD.W          R4, R10, [R6,#0x34]
19CC72:  LDR.W           R9, [R6,#0x30]
19CC76:  ADD.W           R1, R4, R10; src
19CC7A:  SUB.W           R2, R9, R10; n
19CC7E:  STRD.W          R1, R2, [R6,#8]
19CC82:  BLX             j_memcpy
19CC86:  LDR             R0, [R7,#arg_30]
19CC88:  MOV             R5, R0
19CC8A:  ADD.W           R0, R6, #0x1B4
19CC8E:  STRD.W          R4, R9, [R5]
19CC92:  MOV             R3, R0
19CC94:  LDMDB.W         R3, {R0-R2}
19CC98:  LDR             R4, [R6,#0x40]
19CC9A:  LDR             R3, [R3]
19CC9C:  STM             R4!, {R0-R3}
19CC9E:  ADD.W           R1, R6, #0x190
19CCA2:  STR.W           R10, [R5,#0x18]
19CCA6:  LDR.W           R12, [R6,#0x44]
19CCAA:  LDM.W           R1, {R0,R2-R5}
19CCAE:  ADD.W           R1, R6, #0x1B8
19CCB2:  STM.W           R12, {R0,R2-R5}
19CCB6:  ADD.W           R12, R6, #0x120
19CCBA:  LDM.W           R12!, {R0,R2-R5}
19CCBE:  STM             R1!, {R0,R2-R5}
19CCC0:  LDM.W           R12!, {R0,R2-R5}
19CCC4:  STM             R1!, {R0,R2-R5}
19CCC6:  LDM.W           R12, {R0,R2-R5}
19CCCA:  STM             R1!, {R0,R2-R5}
19CCCC:  LDR.W           R4, [R6,#0xA8]
19CCD0:  LDR.W           R0, [R6,#0xC0]; dest
19CCD4:  LDR             R1, [R6,#0x7C]; src
19CCD6:  MOV             R2, R4; n
19CCD8:  BLX             j_memcpy
19CCDC:  LDR.W           R0, [R6,#0xD8]; dest
19CCE0:  MOV             R2, R4; n
19CCE2:  LDR             R1, [R6,#0x78]; src
19CCE4:  BLX             j_memcpy
19CCE8:  LDR.W           R0, [R6,#0xB0]
19CCEC:  CMP             R11, R0
19CCEE:  BNE             loc_19CD30
19CCF0:  LDR.W           R0, [R6,#0x98]
19CCF4:  LDR.W           R1, [R6,#0xA4]
19CCF8:  LDR.W           R2, [R6,#0xB0]
19CCFC:  LDR             R0, [R0,#0x18]
19CCFE:  LDR             R3, [R6,#0x58]
19CD00:  LDR.W           R5, [R6,#0xC4]
19CD04:  LDRSH.W         R1, [R0,R1,LSL#1]
19CD08:  LDRSH.W         R2, [R0,R2,LSL#1]
19CD0C:  LDRSH.W         R0, [R0,R3,LSL#1]
19CD10:  SUBS            R1, R2, R1
19CD12:  SUBS            R0, R0, R2
19CD14:  LDR             R2, [R7,#arg_34]
19CD16:  LSLS            R0, R2
19CD18:  LSL.W           R3, R1, R2
19CD1C:  RSB.W           R1, R0, R3,LSL#1
19CD20:  SUBS            R0, R0, R3
19CD22:  LSLS            R2, R0, #1; n
19CD24:  ADD.W           R1, R5, R1,LSL#1; src
19CD28:  ADD.W           R0, R5, R3,LSL#1; dest
19CD2C:  BLX             j_memcpy
19CD30:  LDR.W           R10, [R6,#0x2C]
19CD34:  ADD.W           R2, R6, #0x1B4
19CD38:  LDR             R0, [R6,#0x20]
19CD3A:  MOVS            R3, #1
19CD3C:  MUL.W           R12, R0, R10
19CD40:  LDRD.W          R1, R0, [R6,#0x24]
19CD44:  STR             R3, [R2,#0x34]
19CD46:  LDR.W           R2, [R6,#0xB4]
19CD4A:  ADD             R1, R0
19CD4C:  LDR.W           R5, [R6,#0xC4]
19CD50:  CMP             R11, R2
19CD52:  BNE             loc_19CD5C
19CD54:  MOV.W           LR, #0
19CD58:  LDR             R3, [R7,#arg_34]
19CD5A:  B               loc_19CD72
19CD5C:  LDR.W           R2, [R6,#0xD0]
19CD60:  LDR             R3, [R7,#arg_34]
19CD62:  LDRSH.W         R2, [R2,R11,LSL#1]
19CD66:  LSLS            R2, R3
19CD68:  ADD.W           R2, R5, R2,LSL#1
19CD6C:  LDR             R5, [R6,#0x60]
19CD6E:  ADD.W           LR, R2, R5,LSL#1
19CD72:  LDR.W           R4, [R6,#0xCC]
19CD76:  ADD.W           R9, R1, R12,ASR#15
19CD7A:  LDR.W           R5, [R6,#0xC0]
19CD7E:  ADD.W           R0, R6, #0x1B8; int
19CD82:  LDR.W           R2, [R6,#0x90]
19CD86:  SUB             SP, SP, #0x20 ; ' '
19CD88:  LDR.W           R1, [R6,#0xB8]
19CD8C:  STRD.W          R1, R2, [SP,#0x738+var_738]; int
19CD90:  ADD             R2, SP, #0x738+var_730
19CD92:  LDR             R1, [R6,#0x3C]
19CD94:  STM.W           R2, {R1,R3,LR}
19CD98:  LDR             R1, [R6,#0x64]
19CD9A:  STR             R4, [SP,#0x738+dest]; void *
19CD9C:  STR             R1, [SP,#0x738+var_720]; int
19CD9E:  MOV             R1, R5; int
19CDA0:  LDRD.W          R4, R2, [R6,#0xD4]; int
19CDA4:  MOV             R3, R4; int
19CDA6:  BL              sub_19D604
19CDAA:  ADD             SP, SP, #0x20 ; ' '
19CDAC:  CMP             R4, #1
19CDAE:  STR             R0, [R6,#0x64]
19CDB0:  BLT             loc_19CE38
19CDB2:  LDR             R1, [R6,#0x7C]
19CDB4:  MOVS            R0, #0
19CDB6:  MOV             R2, R5
19CDB8:  MOV             R3, R4
19CDBA:  MOV             LR, R5
19CDBC:  LDRSH.W         R5, [R1],#2
19CDC0:  SUBS            R3, #1
19CDC2:  LDRSH.W         R4, [R2],#2
19CDC6:  SMLABB.W        R0, R4, R5, R0
19CDCA:  BNE             loc_19CDBC
19CDCC:  LDR             R1, [R6,#0x14]
19CDCE:  ASRS            R0, R0, #0x10
19CDD0:  LDR             R2, [R6,#0x7C]
19CDD2:  MOV             R3, LR
19CDD4:  LDR.W           R4, [R6,#0xD4]
19CDD8:  ASRS            R1, R1, #0xF
19CDDA:  MUL.W           R12, R1, R0
19CDDE:  MOVS            R1, #0
19CDE0:  LDRSH.W         R5, [R2],#2
19CDE4:  SUBS            R4, #1
19CDE6:  LDRSH.W         R0, [R3],#2
19CDEA:  SMLABB.W        R1, R0, R5, R1
19CDEE:  BNE             loc_19CDE0
19CDF0:  UXTH            R0, R1
19CDF2:  LDR             R1, [R6,#0x48]
19CDF4:  LDR             R2, [R6,#0x78]
19CDF6:  LDRD.W          R4, R3, [R6,#0xD4]
19CDFA:  MULS            R0, R1
19CDFC:  MOVS            R1, #0
19CDFE:  ADD.W           R12, R12, R0,ASR#15
19CE02:  LDRSH.W         R5, [R2],#2
19CE06:  SUBS            R4, #1
19CE08:  LDRSH.W         R0, [R3],#2
19CE0C:  SMLABB.W        R1, R0, R5, R1
19CE10:  BNE             loc_19CE02
19CE12:  ASRS            R0, R1, #0x10
19CE14:  LDR.W           R1, [R6,#0xC8]
19CE18:  LDR             R3, [R6,#0x78]
19CE1A:  MOVS            R2, #0
19CE1C:  LDRD.W          R5, R4, [R6,#0xD4]
19CE20:  ASRS            R1, R1, #0xF
19CE22:  MUL.W           LR, R1, R0
19CE26:  LDRSH.W         R0, [R3],#2
19CE2A:  SUBS            R5, #1
19CE2C:  LDRSH.W         R1, [R4],#2
19CE30:  SMLABB.W        R2, R1, R0, R2
19CE34:  BNE             loc_19CE26
19CE36:  B               loc_19CE42
19CE38:  MOV.W           LR, #0
19CE3C:  MOV.W           R12, #0
19CE40:  MOVS            R2, #0
19CE42:  UXTH            R0, R2
19CE44:  ADD.W           R1, R12, LR
19CE48:  MUL.W           R0, R0, R10
19CE4C:  LDR             R5, [R6,#0x64]
19CE4E:  ADD.W           R0, R1, R0,ASR#15
19CE52:  CMP             R9, R0
19CE54:  LDR.W           R9, [R7,#arg_34]
19CE58:  BLT             loc_19CEE0
19CE5A:  ADD.W           R1, R6, #0x160
19CE5E:  LDR.W           R12, [R7,#arg_30]
19CE62:  LDM.W           R1!, {R0,R2-R5,LR}
19CE66:  STM.W           R12!, {R0,R2-R5,LR}
19CE6A:  LDM.W           R1, {R0,R2-R5,LR}
19CE6E:  ADD.W           R1, R6, #0x1B8
19CE72:  STM.W           R12, {R0,R2-R5,LR}
19CE76:  ADD.W           R12, R6, #0xE0
19CE7A:  LDM.W           R12!, {R0,R2-R5}
19CE7E:  STM             R1!, {R0,R2-R5}
19CE80:  LDM.W           R12!, {R0,R2-R5}
19CE84:  STM             R1!, {R0,R2-R5}
19CE86:  LDM.W           R12, {R0,R2-R5}
19CE8A:  STM             R1!, {R0,R2-R5}
19CE8C:  LDR.W           R4, [R6,#0xA8]
19CE90:  LDR.W           R0, [R6,#0xC0]; dest
19CE94:  LDR             R1, [R6,#0x1C]; src
19CE96:  MOV             R2, R4; n
19CE98:  BLX             j_memcpy
19CE9C:  LDR.W           R0, [R6,#0xD8]; dest
19CEA0:  MOV             R2, R4; n
19CEA2:  LDR             R1, [R6,#0x18]; src
19CEA4:  BLX             j_memcpy
19CEA8:  LDR.W           R0, [R6,#0xB4]
19CEAC:  CMP             R11, R0
19CEAE:  BEQ             loc_19CED2
19CEB0:  LDR.W           R0, [R6,#0xD0]
19CEB4:  MOV             R2, R4; n
19CEB6:  LDR.W           R1, [R6,#0xC4]
19CEBA:  LDRSH.W         R0, [R0,R11,LSL#1]
19CEBE:  LSL.W           R0, R0, R9
19CEC2:  ADD.W           R0, R1, R0,LSL#1
19CEC6:  LDR             R1, [R6,#0x60]
19CEC8:  ADD.W           R0, R0, R1,LSL#1; dest
19CECC:  LDR             R1, [R6,#4]; src
19CECE:  BLX             j_memcpy
19CED2:  LDR             R0, [R6,#8]; dest
19CED4:  ADD.W           R1, R6, #0x1F8; src
19CED8:  LDR             R2, [R6,#0xC]; n
19CEDA:  BLX             j_memcpy
19CEDE:  LDR             R5, [R6,#0x10]
19CEE0:  MOVS            R0, #0
19CEE2:  LDR.W           R4, [R6,#0xB8]
19CEE6:  STR.W           R0, [R6,#0xA8]
19CEEA:  MOV             R0, R5
19CEEC:  LDR.W           R9, [R6,#0xD4]
19CEF0:  LDR             R2, [R6,#0x68]
19CEF2:  MUL.W           R1, R11, R8
19CEF6:  LDR             R3, [R7,#arg_8]
19CEF8:  MLA.W           R2, R11, R8, R2
19CEFC:  STRB            R5, [R3,R1]
19CEFE:  ADD.W           R1, R6, #0x1B4
19CF02:  STRB            R0, [R3,R2]
19CF04:  MOVS            R2, #0
19CF06:  LDR             R0, [R7,#arg_10]
19CF08:  LDR.W           R0, [R0,R11,LSL#2]
19CF0C:  STR             R2, [R1,#0x3C]
19CF0E:  LDR.W           R1, [R6,#0x84]
19CF12:  LDR.W           R11, [R6,#0x9C]
19CF16:  LDR.W           R2, [R6,#0xD0]
19CF1A:  CMP             R11, R1
19CF1C:  LDR.W           R1, [R6,#0xA0]
19CF20:  BNE.W           loc_19C4A0
19CF24:  ADD.W           R0, R6, #0x1B4
19CF28:  LDR             R5, [R0,#0x2C]
19CF2A:  LDR             R0, [R7,#arg_3C]
19CF2C:  STR             R5, [R0]
19CF2E:  LDR             R0, =(__stack_chk_guard_ptr - 0x19CF38)
19CF30:  LDR.W           R1, [R6,#0xDC]
19CF34:  ADD             R0, PC; __stack_chk_guard_ptr
19CF36:  LDR             R0, [R0]; __stack_chk_guard
19CF38:  LDR             R0, [R0]
19CF3A:  SUBS            R0, R0, R1
19CF3C:  ITTTT EQ
19CF3E:  SUBEQ.W         R4, R7, #-var_1C
19CF42:  MOVEQ           SP, R4
19CF44:  POPEQ.W         {R8-R11}
19CF48:  POPEQ           {R4-R7,PC}
19CF4A:  BLX             __stack_chk_fail
