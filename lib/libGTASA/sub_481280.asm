; =========================================================
; Game Engine Function: sub_481280
; Address            : 0x481280 - 0x48163A
; =========================================================

481280:  PUSH            {R4-R7,LR}
481282:  ADD             R7, SP, #0xC
481284:  PUSH.W          {R8-R11}
481288:  SUB             SP, SP, #0x24
48128A:  STR             R0, [SP,#0x40+var_20]
48128C:  LDR             R0, [R0,#4]
48128E:  STR             R0, [SP,#0x40+var_34]
481290:  LDR             R0, [R0,#0x44]
481292:  CBZ             R0, loc_4812B0
481294:  MOVS            R4, #0
481296:  MOVS            R5, #0
481298:  LDR             R1, [R0]
48129A:  CBNZ            R1, loc_4812A8
48129C:  ADDS            R3, R0, #4
48129E:  LDM             R3, {R1-R3}
4812A0:  MLA.W           R5, R1, R2, R5
4812A4:  MLA.W           R4, R2, R3, R4
4812A8:  LDR             R0, [R0,#0x24]
4812AA:  CMP             R0, #0
4812AC:  BNE             loc_481298
4812AE:  B               loc_4812B4
4812B0:  MOVS            R5, #0
4812B2:  MOVS            R4, #0
4812B4:  LDR             R0, [SP,#0x40+var_34]
4812B6:  LDR             R0, [R0,#0x48]
4812B8:  CBNZ            R0, loc_4812C0
4812BA:  B               loc_4812D8
4812BC:  LDR             R0, [R0,#0x24]
4812BE:  CBZ             R0, loc_4812D8
4812C0:  LDR             R1, [R0]
4812C2:  CMP             R1, #0
4812C4:  BNE             loc_4812BC
4812C6:  ADDS            R3, R0, #4
4812C8:  LDM             R3, {R1-R3}
4812CA:  MULS            R1, R2
4812CC:  MULS            R2, R3
4812CE:  ADD.W           R5, R5, R1,LSL#7
4812D2:  ADD.W           R4, R4, R2,LSL#7
4812D6:  B               loc_4812BC
4812D8:  CMP             R4, #1
4812DA:  BLT.W           loc_481632
4812DE:  LDR             R0, [SP,#0x40+var_34]
4812E0:  MOV             R1, R4
4812E2:  MOV             R2, R5
4812E4:  LDR             R3, [R0,#0x4C]
4812E6:  LDR             R0, [SP,#0x40+var_20]
4812E8:  BLX             j__Z18jpeg_mem_availableP18jpeg_common_structlll; jpeg_mem_available(jpeg_common_struct *,long,long,long)
4812EC:  MOVW            R8, #0xC9F0
4812F0:  CMP             R0, R5
4812F2:  MOVT            R8, #0x3B9A
4812F6:  BGE             loc_48130C
4812F8:  MOV             R1, R4
4812FA:  BLX             __aeabi_idiv
4812FE:  MOV             R9, R0
481300:  CMP.W           R9, #1
481304:  IT LE
481306:  MOVLE.W         R9, #1
48130A:  B               loc_481310
48130C:  ADD.W           R9, R8, #0x10
481310:  LDR             R0, [SP,#0x40+var_34]
481312:  LDR             R2, [SP,#0x40+var_20]
481314:  LDR             R6, [R0,#0x44]
481316:  STR.W           R9, [SP,#0x40+var_38]
48131A:  CMP             R6, #0
48131C:  BEQ.W           loc_4814A0
481320:  LDR             R0, [R6]
481322:  CMP             R0, #0
481324:  BNE.W           loc_481498
481328:  LDR             R5, [R6,#4]
48132A:  MOV             R10, R2
48132C:  LDR             R4, [R6,#0xC]
48132E:  SUBS            R0, R5, #1
481330:  MOV             R1, R4
481332:  BLX             __aeabi_uidiv
481336:  ADDS            R0, #1
481338:  CMP             R0, R9
48133A:  BLE             loc_481360
48133C:  MUL.W           R0, R4, R9
481340:  MOV             R4, R6
481342:  LDR.W           R1, [R4,#8]!
481346:  MOV             R9, R10
481348:  MUL.W           R2, R1, R5
48134C:  ADD.W           R1, R4, #0x20 ; ' '
481350:  STR             R0, [R4,#8]
481352:  MOV             R0, R9
481354:  BLX             j__Z23jpeg_open_backing_storeP18jpeg_common_structP20backing_store_structl; jpeg_open_backing_store(jpeg_common_struct *,backing_store_struct *,long)
481358:  LDR             R5, [R4,#8]
48135A:  MOVS            R0, #1
48135C:  STRB            R0, [R4,#0x1A]
48135E:  B               loc_481368
481360:  STR             R5, [R6,#0x10]
481362:  ADD.W           R4, R6, #8
481366:  MOV             R9, R10
481368:  STR             R6, [SP,#0x40+var_3C]
48136A:  MOV             R0, R8
48136C:  LDR             R6, [R4]
48136E:  MOV             R1, R6
481370:  BLX             __aeabi_uidiv
481374:  LDR.W           R4, [R9,#4]
481378:  MOV             R11, R0
48137A:  CMP             R6, R8
48137C:  MOV             R0, R9
48137E:  BLS             loc_48138E
481380:  LDR             R2, [R0]
481382:  MOVS            R1, #0x46 ; 'F'
481384:  STR             R1, [R2,#0x14]
481386:  LDR             R1, [R0]
481388:  LDR             R1, [R1]
48138A:  BLX             R1
48138C:  MOV             R0, R10; int
48138E:  CMP             R11, R5
481390:  MOV.W           R2, R5,LSL#2
481394:  IT GE
481396:  MOVGE           R11, R5
481398:  MOVS            R1, #1
48139A:  STR.W           R11, [R4,#0x50]
48139E:  BL              sub_480EA8
4813A2:  MOV             R2, R10
4813A4:  MOV             R4, R0
4813A6:  CMP             R5, #0
4813A8:  BEQ             loc_481480
4813AA:  MVNS            R0, R5
4813AC:  MOV.W           R9, #0
4813B0:  STR             R0, [SP,#0x40+var_30]
4813B2:  STR             R5, [SP,#0x40+var_2C]
4813B4:  SUB.W           R0, R5, R9
4813B8:  STR.W           R11, [SP,#0x40+var_28]
4813BC:  CMP             R11, R0
4813BE:  IT CC
4813C0:  MOVCC           R0, R11
4813C2:  MUL.W           R11, R0, R6
4813C6:  STR             R0, [SP,#0x40+var_24]
4813C8:  LDR.W           R10, [R2,#4]
4813CC:  CMP             R11, R8
4813CE:  BLS             loc_4813E8
4813D0:  LDR             R0, [R2]
4813D2:  MOVS            R1, #0x36 ; '6'
4813D4:  MOV             R5, R2
4813D6:  STR             R1, [R0,#0x14]
4813D8:  MOVS            R1, #3
4813DA:  LDR             R0, [R2]
4813DC:  STR             R1, [R0,#0x18]
4813DE:  LDR             R0, [R2]
4813E0:  LDR             R1, [R0]
4813E2:  MOV             R0, R2
4813E4:  BLX             R1
4813E6:  MOV             R2, R5
4813E8:  ANDS.W          R0, R11, #7
4813EC:  RSB.W           R0, R0, #8
4813F0:  IT NE
4813F2:  ADDNE           R11, R0
4813F4:  MOV             R0, R2; int
4813F6:  ADD.W           R8, R11, #0x10
4813FA:  MOV             R1, R8; byte_count
4813FC:  BLX             j__Z14jpeg_get_largeP18jpeg_common_structj; jpeg_get_large(jpeg_common_struct *,uint)
481400:  MOV             R5, R0
481402:  CBNZ            R5, loc_481418
481404:  LDR             R0, [SP,#0x40+var_20]
481406:  MOVS            R2, #0x36 ; '6'
481408:  LDR             R1, [R0]
48140A:  STR             R2, [R1,#0x14]
48140C:  MOVS            R2, #4
48140E:  LDR             R1, [R0]
481410:  STR             R2, [R1,#0x18]
481412:  LDR             R1, [R0]
481414:  LDR             R1, [R1]
481416:  BLX             R1
481418:  LDR.W           R1, [R10,#0x4C]
48141C:  LDR.W           R0, [R10,#0x40]
481420:  ADD             R1, R8
481422:  STR.W           R1, [R10,#0x4C]
481426:  STRD.W          R0, R11, [R5]
48142A:  MOVS            R0, #0
48142C:  STR             R0, [R5,#8]
48142E:  STR.W           R5, [R10,#0x40]
481432:  LDR.W           R11, [SP,#0x40+var_24]
481436:  CMP.W           R11, #0
48143A:  BEQ             loc_481470
48143C:  LDR             R0, [SP,#0x40+var_30]
48143E:  MOVW            R8, #0xC9F0
481442:  LDR             R1, [SP,#0x40+var_28]
481444:  MOVT            R8, #0x3B9A
481448:  ADD             R0, R9
48144A:  MVNS            R1, R1
48144C:  CMP             R0, R1
48144E:  IT HI
481450:  MOVHI           R1, R0
481452:  LDR             R2, [SP,#0x40+var_20]
481454:  ADDS            R0, R1, #1
481456:  ADD.W           R1, R5, #0x10
48145A:  LDR             R5, [SP,#0x40+var_2C]
48145C:  STR.W           R1, [R4,R9,LSL#2]
481460:  ADD             R1, R6
481462:  ADDS            R0, #1
481464:  ADD.W           R9, R9, #1
481468:  BNE             loc_48145C
48146A:  CMP             R9, R5
48146C:  BCC             loc_4813B4
48146E:  B               loc_481480
481470:  MOVW            R8, #0xC9F0
481474:  LDR             R2, [SP,#0x40+var_20]
481476:  MOVT            R8, #0x3B9A
48147A:  LDR             R5, [SP,#0x40+var_2C]
48147C:  CMP             R9, R5
48147E:  BCC             loc_4813B4
481480:  LDR             R6, [SP,#0x40+var_3C]
481482:  STR             R4, [R6]
481484:  LDR             R0, [SP,#0x40+var_34]
481486:  LDR             R0, [R0,#0x50]
481488:  STR             R0, [R6,#0x14]
48148A:  MOVS            R0, #0
48148C:  STRD.W          R0, R0, [R6,#0x18]
481490:  STRB.W          R0, [R6,#0x21]
481494:  LDR.W           R9, [SP,#0x40+var_38]
481498:  LDR             R6, [R6,#0x24]
48149A:  CMP             R6, #0
48149C:  BNE.W           loc_481320
4814A0:  LDR             R0, [SP,#0x40+var_34]
4814A2:  LDR             R5, [R0,#0x48]
4814A4:  CBNZ            R5, loc_4814DA
4814A6:  B               loc_481632
4814A8:  MOVW            R8, #0xC9F0
4814AC:  LDR             R5, [SP,#0x40+var_20]
4814AE:  MOVT            R8, #0x3B9A
4814B2:  LDR.W           R10, [SP,#0x40+var_2C]
4814B6:  CMP             R9, R10
4814B8:  BCC             loc_481582
4814BA:  LDR             R5, [SP,#0x40+var_3C]
4814BC:  STR             R4, [R5]
4814BE:  LDR             R0, [SP,#0x40+var_34]
4814C0:  LDR             R0, [R0,#0x50]
4814C2:  STR             R0, [R5,#0x14]
4814C4:  MOVS            R0, #0
4814C6:  STRD.W          R0, R0, [R5,#0x18]
4814CA:  STRB.W          R0, [R5,#0x21]
4814CE:  LDR.W           R9, [SP,#0x40+var_38]
4814D2:  LDR             R5, [R5,#0x24]
4814D4:  CMP             R5, #0
4814D6:  BEQ.W           loc_481632
4814DA:  LDR             R0, [R5]
4814DC:  CMP             R0, #0
4814DE:  BNE             loc_4814D2
4814E0:  LDR.W           R10, [R5,#4]
4814E4:  LDR             R4, [R5,#0xC]
4814E6:  SUB.W           R0, R10, #1
4814EA:  MOV             R1, R4
4814EC:  BLX             __aeabi_uidiv
4814F0:  ADDS            R0, #1
4814F2:  STR             R5, [SP,#0x40+var_3C]
4814F4:  CMP             R0, R9
4814F6:  BLE             loc_48151E
4814F8:  LDR.W           R0, [R5,#8]!
4814FC:  MUL.W           R1, R4, R9
481500:  MUL.W           R0, R10, R0
481504:  STR             R1, [R5,#8]
481506:  LDR             R4, [SP,#0x40+var_20]
481508:  ADD.W           R1, R5, #0x20 ; ' '
48150C:  LSLS            R2, R0, #7
48150E:  MOV             R0, R4
481510:  BLX             j__Z23jpeg_open_backing_storeP18jpeg_common_structP20backing_store_structl; jpeg_open_backing_store(jpeg_common_struct *,backing_store_struct *,long)
481514:  LDR.W           R10, [R5,#8]
481518:  MOVS            R0, #1
48151A:  STRB            R0, [R5,#0x1A]
48151C:  B               loc_481526
48151E:  STR.W           R10, [R5,#0x10]
481522:  ADDS            R5, #8
481524:  LDR             R4, [SP,#0x40+var_20]
481526:  LDR             R0, [R5]
481528:  LSLS            R6, R0, #7
48152A:  MOV             R0, R8
48152C:  MOV             R1, R6
48152E:  BLX             __aeabi_uidiv
481532:  MOV             R11, R0
481534:  MOV             R0, R8
481536:  LDR.W           R8, [R4,#4]
48153A:  CMP             R6, R0
48153C:  MOV             R5, R4
48153E:  BLS             loc_48154E
481540:  LDR             R0, [R5]
481542:  MOVS            R1, #0x46 ; 'F'
481544:  STR             R1, [R0,#0x14]
481546:  LDR             R0, [R5]
481548:  LDR             R1, [R0]
48154A:  MOV             R0, R5
48154C:  BLX             R1
48154E:  CMP             R11, R10
481550:  MOV.W           R2, R10,LSL#2
481554:  IT GE
481556:  MOVGE           R11, R10
481558:  MOV             R0, R5; int
48155A:  MOVS            R1, #1
48155C:  STR.W           R11, [R8,#0x50]
481560:  BL              sub_480EA8
481564:  MOVW            R8, #0xC9F0
481568:  MOV             R4, R0
48156A:  CMP.W           R10, #0
48156E:  MOVT            R8, #0x3B9A
481572:  BEQ             loc_4814BA
481574:  MVN.W           R0, R10
481578:  MOV.W           R9, #0
48157C:  STR             R0, [SP,#0x40+var_30]
48157E:  STR.W           R10, [SP,#0x40+var_2C]
481582:  SUB.W           R0, R10, R9
481586:  STR.W           R11, [SP,#0x40+var_28]
48158A:  CMP             R11, R0
48158C:  IT CC
48158E:  MOVCC           R0, R11
481590:  MUL.W           R11, R0, R6
481594:  STR             R0, [SP,#0x40+var_24]
481596:  LDR.W           R10, [R5,#4]
48159A:  CMP             R11, R8
48159C:  BLS             loc_4815B2
48159E:  LDR             R0, [R5]
4815A0:  MOVS            R1, #0x36 ; '6'
4815A2:  STR             R1, [R0,#0x14]
4815A4:  MOVS            R1, #3
4815A6:  LDR             R0, [R5]
4815A8:  STR             R1, [R0,#0x18]
4815AA:  LDR             R0, [R5]
4815AC:  LDR             R1, [R0]
4815AE:  MOV             R0, R5
4815B0:  BLX             R1
4815B2:  ORR.W           R8, R11, #0x10
4815B6:  MOV             R0, R5; int
4815B8:  MOV             R1, R8; byte_count
4815BA:  BLX             j__Z14jpeg_get_largeP18jpeg_common_structj; jpeg_get_large(jpeg_common_struct *,uint)
4815BE:  MOV             R5, R0
4815C0:  CBNZ            R5, loc_4815D6
4815C2:  LDR             R0, [SP,#0x40+var_20]
4815C4:  MOVS            R2, #0x36 ; '6'
4815C6:  LDR             R1, [R0]
4815C8:  STR             R2, [R1,#0x14]
4815CA:  MOVS            R2, #4
4815CC:  LDR             R1, [R0]
4815CE:  STR             R2, [R1,#0x18]
4815D0:  LDR             R1, [R0]
4815D2:  LDR             R1, [R1]
4815D4:  BLX             R1
4815D6:  LDR.W           R1, [R10,#0x4C]
4815DA:  LDR.W           R0, [R10,#0x40]
4815DE:  ADD             R1, R8
4815E0:  STR.W           R1, [R10,#0x4C]
4815E4:  STRD.W          R0, R11, [R5]
4815E8:  MOVS            R0, #0
4815EA:  STR             R0, [R5,#8]
4815EC:  STR.W           R5, [R10,#0x40]
4815F0:  LDR.W           R11, [SP,#0x40+var_24]
4815F4:  CMP.W           R11, #0
4815F8:  BEQ.W           loc_4814A8
4815FC:  LDR             R0, [SP,#0x40+var_30]
4815FE:  MOVW            R8, #0xC9F0
481602:  LDR             R1, [SP,#0x40+var_28]
481604:  MOVT            R8, #0x3B9A
481608:  ADD             R0, R9
48160A:  MVNS            R1, R1
48160C:  CMP             R0, R1
48160E:  IT HI
481610:  MOVHI           R1, R0
481612:  LDR.W           R10, [SP,#0x40+var_2C]
481616:  ADDS            R0, R1, #1
481618:  ADD.W           R1, R5, #0x10
48161C:  LDR             R5, [SP,#0x40+var_20]
48161E:  STR.W           R1, [R4,R9,LSL#2]
481622:  ADD             R1, R6
481624:  ADDS            R0, #1
481626:  ADD.W           R9, R9, #1
48162A:  BNE             loc_48161E
48162C:  CMP             R9, R10
48162E:  BCC             loc_481582
481630:  B               loc_4814BA
481632:  ADD             SP, SP, #0x24 ; '$'
481634:  POP.W           {R8-R11}
481638:  POP             {R4-R7,PC}
