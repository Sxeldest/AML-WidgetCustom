; =========================================================
; Game Engine Function: silk_resampler_private_down_FIR
; Address            : 0x193274 - 0x1938BA
; =========================================================

193274:  PUSH            {R4-R7,LR}
193276:  ADD             R7, SP, #0xC
193278:  PUSH.W          {R8-R11}
19327C:  SUB             SP, SP, #0x44
19327E:  MOV             R4, R0
193280:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x19328C)
193284:  MOV             R10, R2
193286:  MOV             R11, R1
193288:  ADD             R0, PC; __stack_chk_guard_ptr
19328A:  MOVS            R1, #7
19328C:  MOV             R5, R3
19328E:  LDR             R0, [R0]; __stack_chk_guard
193290:  LDR             R0, [R0]
193292:  STR.W           R0, [R7,#var_24]
193296:  LDR.W           R6, [R4,#0x10C]
19329A:  LDR.W           R2, [R4,#0x114]
19329E:  ADDS            R0, R2, R6
1932A0:  ADD.W           R0, R1, R0,LSL#2
1932A4:  BIC.W           R0, R0, #7
1932A8:  SUB.W           R9, SP, R0
1932AC:  MOV             SP, R9
1932AE:  ADD.W           R1, R4, #0x18; src
1932B2:  STR.W           R2, [R7,#var_28]
1932B6:  LSLS            R2, R2, #2; n
1932B8:  MOV             R0, R9; dest
1932BA:  STR.W           R1, [R7,#dest]
1932BE:  BLX             j_memcpy
1932C2:  LDR.W           R0, [R4,#0x110]
1932C6:  STR.W           R0, [R7,#var_30]
1932CA:  LDR.W           R8, [R4,#0x128]
1932CE:  STR.W           R4, [R7,#var_58]
1932D2:  ADD.W           R0, R8, #4
1932D6:  STR.W           R0, [R7,#var_44]
1932DA:  MOV             R3, R8
1932DC:  STR.W           R9, [R7,#var_2C]
1932E0:  STR.W           R8, [R7,#var_48]
1932E4:  B               loc_193310
1932E6:  LDR.W           R4, [R7,#var_58]
1932EA:  ADD.W           R1, R9, R6,LSL#2; src
1932EE:  LDR.W           R0, [R4,#0x114]
1932F2:  STR.W           R0, [R7,#var_28]
1932F6:  LSLS            R2, R0, #2; n
1932F8:  MOV             R0, R9; dest
1932FA:  BLX             j_memcpy
1932FE:  LDR.W           R0, [R4,#0x10C]
193302:  LDR.W           R10, [R7,#var_54]
193306:  LDR.W           R3, [R4,#0x128]
19330A:  ADD.W           R10, R10, R6,LSL#1
19330E:  MOV             R6, R0
193310:  CMP             R5, R6
193312:  IT LT
193314:  MOVLT           R6, R5
193316:  SUB             SP, SP, #8
193318:  LDR.W           R0, [R7,#var_28]
19331C:  MOV             R2, R10
19331E:  STR             R6, [SP,#0x68+var_68]
193320:  ADD.W           R1, R9, R0,LSL#2
193324:  MOV             R0, R4
193326:  BLX             j_silk_resampler_private_AR2
19332A:  ADD             SP, SP, #8
19332C:  LDR.W           R1, [R4,#0x114]
193330:  LSLS            R0, R6, #0x10
193332:  STR.W           R0, [R7,#var_28]
193336:  CMP             R1, #0x12
193338:  STR.W           R5, [R7,#var_4C]
19333C:  STRD.W          R10, R6, [R7,#var_54]
193340:  BEQ.W           loc_193538
193344:  CMP             R1, #0x18
193346:  BEQ.W           loc_19371E
19334A:  CMP             R1, #0x24 ; '$'
19334C:  BNE.W           loc_193878
193350:  CMP             R0, #1
193352:  BLT.W           loc_193878
193356:  MOV.W           R12, #0
19335A:  MOV.W           R0, R12,ASR#16
19335E:  LDRSH.W         R6, [R8,#4]
193362:  ADD.W           R2, R9, R0,LSL#2
193366:  LDR.W           R3, [R9,R0,LSL#2]
19336A:  ADD.W           LR, R2, #4
19336E:  LDR.W           R0, [R2,#0x8C]
193372:  LDRSH.W         R5, [R8,#6]
193376:  ADD             R0, R3
193378:  LDRSH.W         R4, [R8,#8]
19337C:  LDRSH.W         R10, [R8,#0xA]
193380:  UXTH            R1, R0
193382:  MULS            R1, R6
193384:  ASRS            R1, R1, #0x10
193386:  SMLATB.W        R0, R0, R6, R1
19338A:  LDM.W           LR, {R1,R6,LR}
19338E:  LDR.W           R3, [R2,#0x88]
193392:  LDR.W           R9, [R2,#0x10]
193396:  ADD             R1, R3
193398:  LDR.W           R3, [R2,#0x80]
19339C:  SMLATB.W        R0, R1, R5, R0
1933A0:  UXTH            R1, R1
1933A2:  MULS            R1, R5
1933A4:  ADD             R3, LR
1933A6:  ADD.W           R0, R0, R1,ASR#16
1933AA:  LDR.W           R1, [R2,#0x84]
1933AE:  ADD             R1, R6
1933B0:  LDRSH.W         R6, [R8,#0xC]
1933B4:  SMLATB.W        R0, R1, R4, R0
1933B8:  UXTH            R1, R1
1933BA:  MULS            R1, R4
1933BC:  ADD.W           R0, R0, R1,ASR#16
1933C0:  LDR             R1, [R2,#0x7C]
1933C2:  SMLATB.W        R0, R3, R10, R0
1933C6:  UXTH            R3, R3
1933C8:  MUL.W           R3, R3, R10
1933CC:  ADD             R1, R9
1933CE:  LDR.W           R9, [R7,#var_2C]
1933D2:  UXTH            R5, R1
1933D4:  MULS            R5, R6
1933D6:  ADD.W           R0, R0, R3,ASR#16
1933DA:  SMLATB.W        R0, R1, R6, R0
1933DE:  LDRD.W          R3, R1, [R2,#0x14]
1933E2:  LDR             R6, [R2,#0x74]
1933E4:  ADD             R1, R6
1933E6:  LDRSH.W         R6, [R8,#0xE]
1933EA:  ADD.W           R0, R0, R5,ASR#16
1933EE:  LDR             R5, [R2,#0x78]
1933F0:  UXTH            R4, R1
1933F2:  ADD             R3, R5
1933F4:  LDRSH.W         R5, [R8,#0x10]
1933F8:  SMLATB.W        R0, R3, R6, R0
1933FC:  UXTH            R3, R3
1933FE:  MULS            R3, R6
193400:  MULS            R4, R5
193402:  ADD.W           R0, R0, R3,ASR#16
193406:  SMLATB.W        R0, R1, R5, R0
19340A:  LDRD.W          R3, R1, [R2,#0x1C]
19340E:  LDR             R6, [R2,#0x6C]
193410:  LDR             R5, [R2,#0x70]
193412:  ADD             R1, R6
193414:  LDRSH.W         R6, [R8,#0x12]
193418:  ADD             R3, R5
19341A:  ADD.W           R0, R0, R4,ASR#16
19341E:  LDRSH.W         R5, [R8,#0x14]
193422:  UXTH            R4, R1
193424:  SMLATB.W        R0, R3, R6, R0
193428:  UXTH            R3, R3
19342A:  MULS            R3, R6
19342C:  MULS            R4, R5
19342E:  ADD.W           R0, R0, R3,ASR#16
193432:  SMLATB.W        R0, R1, R5, R0
193436:  LDRD.W          R3, R1, [R2,#0x24]
19343A:  LDR             R6, [R2,#0x64]
19343C:  LDR             R5, [R2,#0x68]
19343E:  ADD             R1, R6
193440:  LDRSH.W         R6, [R8,#0x16]
193444:  ADD             R3, R5
193446:  ADD.W           R0, R0, R4,ASR#16
19344A:  LDRSH.W         R5, [R8,#0x18]
19344E:  UXTH            R4, R1
193450:  SMLATB.W        R0, R3, R6, R0
193454:  UXTH            R3, R3
193456:  MULS            R3, R6
193458:  MULS            R4, R5
19345A:  ADD.W           R0, R0, R3,ASR#16
19345E:  SMLATB.W        R0, R1, R5, R0
193462:  LDRD.W          R3, R1, [R2,#0x2C]
193466:  LDR             R6, [R2,#0x5C]
193468:  LDR             R5, [R2,#0x60]
19346A:  ADD             R1, R6
19346C:  LDRSH.W         R6, [R8,#0x1A]
193470:  ADD             R3, R5
193472:  ADD.W           R0, R0, R4,ASR#16
193476:  LDRSH.W         R5, [R8,#0x1C]
19347A:  UXTH            R4, R1
19347C:  SMLATB.W        R0, R3, R6, R0
193480:  UXTH            R3, R3
193482:  MULS            R3, R6
193484:  MULS            R4, R5
193486:  ADD.W           R0, R0, R3,ASR#16
19348A:  SMLATB.W        R0, R1, R5, R0
19348E:  LDRD.W          R3, R1, [R2,#0x34]
193492:  LDR             R6, [R2,#0x54]
193494:  LDR             R5, [R2,#0x58]
193496:  ADD             R1, R6
193498:  LDRSH.W         R6, [R8,#0x1E]
19349C:  ADD             R3, R5
19349E:  ADD.W           R0, R0, R4,ASR#16
1934A2:  LDRSH.W         R5, [R8,#0x20]
1934A6:  UXTH            R4, R1
1934A8:  SMLATB.W        R0, R3, R6, R0
1934AC:  UXTH            R3, R3
1934AE:  MULS            R3, R6
1934B0:  MULS            R4, R5
1934B2:  ADD.W           R0, R0, R3,ASR#16
1934B6:  SMLATB.W        R0, R1, R5, R0
1934BA:  LDRD.W          R3, R1, [R2,#0x3C]
1934BE:  LDR             R6, [R2,#0x4C]
1934C0:  LDR             R5, [R2,#0x50]
1934C2:  ADD             R1, R6
1934C4:  LDRSH.W         R6, [R8,#0x22]
1934C8:  ADD             R3, R5
1934CA:  ADD.W           R0, R0, R4,ASR#16
1934CE:  LDRSH.W         R5, [R8,#0x24]
1934D2:  UXTH            R4, R1
1934D4:  SMLATB.W        R0, R3, R6, R0
1934D8:  UXTH            R3, R3
1934DA:  MULS            R3, R6
1934DC:  MULS            R4, R5
1934DE:  ADD.W           R0, R0, R3,ASR#16
1934E2:  LDRD.W          R3, R2, [R2,#0x44]
1934E6:  SMLATB.W        R0, R1, R5, R0
1934EA:  LDRSH.W         R6, [R8,#0x26]
1934EE:  ADDS            R1, R2, R3
1934F0:  UXTH            R2, R1
1934F2:  MULS            R2, R6
1934F4:  ADD.W           R0, R0, R4,ASR#16
1934F8:  SMLATB.W        R0, R1, R6, R0
1934FC:  MOVS            R1, #1
1934FE:  ADD.W           R0, R0, R2,ASR#16
193502:  MOV             R2, #0xFFFF8000
19350A:  ADD.W           R0, R1, R0,ASR#5
19350E:  ASRS            R1, R0, #1
193510:  CMP             R1, R2
193512:  MOV             R1, R2
193514:  IT GT
193516:  ASRGT           R1, R0, #1
193518:  MOVW            R0, #0x7FFF
19351C:  CMP             R1, R0
19351E:  IT GE
193520:  MOVGE           R1, R0
193522:  STRH.W          R1, [R11],#2
193526:  LDR.W           R0, [R7,#var_30]
19352A:  ADD             R12, R0
19352C:  LDR.W           R0, [R7,#var_28]
193530:  CMP             R12, R0
193532:  BLT.W           loc_19335A
193536:  B               loc_193878
193538:  CMP             R0, #1
19353A:  BLT.W           loc_193878
19353E:  LDR.W           R1, [R4,#0x118]
193542:  MOV.W           LR, #0
193546:  SUBS            R0, R1, #1
193548:  STR.W           R0, [R7,#var_3C]
19354C:  SXTH            R0, R1
19354E:  STR.W           R0, [R7,#var_40]
193552:  LDR.W           R0, [R7,#var_40]
193556:  UXTH.W          R1, LR
19355A:  LDR.W           R8, [R7,#var_44]
19355E:  MOV.W           R4, LR,ASR#16
193562:  STR.W           R11, [R7,#var_34]
193566:  MULS            R0, R1
193568:  LDR.W           R10, [R9,R4,LSL#2]
19356C:  ADD.W           R4, R9, R4,LSL#2
193570:  UXTH.W          R12, R10
193574:  STR.W           R0, [R7,#var_38]
193578:  ASRS            R2, R0, #0x10
19357A:  ADD.W           R2, R2, R2,LSL#3
19357E:  LDRSH.W         R11, [R8,R2,LSL#1]
193582:  ADD.W           R2, R8, R2,LSL#1
193586:  LDRD.W          R6, R5, [R4,#4]
19358A:  MUL.W           R0, R12, R11
19358E:  ASRS            R0, R0, #0x10
193590:  SMLATB.W        R12, R10, R11, R0
193594:  LDRD.W          R11, R10, [R4,#0xC]
193598:  LDRSH.W         R0, [R2,#2]
19359C:  LDRSH.W         R3, [R2,#4]
1935A0:  LDRSH.W         R9, [R2,#6]
1935A4:  SMLATB.W        R12, R6, R0, R12
1935A8:  UXTH            R6, R6
1935AA:  MULS            R0, R6
1935AC:  UXTH            R6, R5
1935AE:  LDRSH.W         R1, [R2,#8]
1935B2:  ADD.W           R0, R12, R0,ASR#16
1935B6:  SMLATB.W        R0, R5, R3, R0
1935BA:  MULS            R3, R6
1935BC:  ADD.W           R0, R0, R3,ASR#16
1935C0:  UXTH.W          R3, R11
1935C4:  MUL.W           R3, R3, R9
1935C8:  SMLATB.W        R0, R11, R9, R0
1935CC:  LDR.W           R11, [R7,#var_34]
1935D0:  LDR.W           R9, [R7,#var_2C]
1935D4:  ADD.W           R0, R0, R3,ASR#16
1935D8:  UXTH.W          R3, R10
1935DC:  MULS            R3, R1
1935DE:  SMLATB.W        R0, R10, R1, R0
1935E2:  LDR             R1, [R4,#0x14]
1935E4:  UXTH            R6, R1
1935E6:  ADD.W           R0, R0, R3,ASR#16
1935EA:  LDRSH.W         R3, [R2,#0xA]
1935EE:  MULS            R6, R3
1935F0:  SMLATB.W        R0, R1, R3, R0
1935F4:  LDR             R1, [R4,#0x18]
1935F6:  LDRSH.W         R3, [R2,#0xC]
1935FA:  ADD.W           R0, R0, R6,ASR#16
1935FE:  UXTH            R6, R1
193600:  MULS            R6, R3
193602:  SMLATB.W        R0, R1, R3, R0
193606:  LDR             R1, [R4,#0x1C]
193608:  LDRSH.W         R3, [R2,#0xE]
19360C:  ADD.W           R0, R0, R6,ASR#16
193610:  UXTH            R6, R1
193612:  MULS            R6, R3
193614:  SMLATB.W        R0, R1, R3, R0
193618:  LDRSH.W         R1, [R2,#0x10]
19361C:  LDR             R2, [R4,#0x20]
19361E:  ADD.W           R0, R0, R6,ASR#16
193622:  LDRD.W          R6, R5, [R7,#var_3C]
193626:  UXTH            R3, R2
193628:  SMLATB.W        R0, R2, R1, R0
19362C:  SUB.W           R6, R6, R5,ASR#16
193630:  MULS            R3, R1
193632:  LDR             R5, [R4,#0x44]
193634:  ADD.W           R1, R6, R6,LSL#3
193638:  LDRSH.W         R2, [R8,R1,LSL#1]
19363C:  ADD.W           R1, R8, R1,LSL#1
193640:  LDR.W           R8, [R7,#var_48]
193644:  ADD.W           R0, R0, R3,ASR#16
193648:  UXTH            R3, R5
19364A:  LDRSH.W         R6, [R1,#4]
19364E:  MULS            R3, R2
193650:  LDRSH.W         R12, [R1,#8]
193654:  SMLATB.W        R0, R5, R2, R0
193658:  LDR             R2, [R4,#0x40]
19365A:  LDRSH.W         R5, [R1,#6]
19365E:  ADD.W           R0, R0, R3,ASR#16
193662:  LDRSH.W         R3, [R1,#2]
193666:  SMLATB.W        R0, R2, R3, R0
19366A:  UXTH            R2, R2
19366C:  MULS            R2, R3
19366E:  ADD.W           R0, R0, R2,ASR#16
193672:  LDR             R2, [R4,#0x3C]
193674:  SMLATB.W        R0, R2, R6, R0
193678:  UXTH            R2, R2
19367A:  MULS            R2, R6
19367C:  ADD.W           R0, R0, R2,ASR#16
193680:  LDR             R2, [R4,#0x38]
193682:  UXTH            R3, R2
193684:  SMLATB.W        R0, R2, R5, R0
193688:  MULS            R3, R5
19368A:  LDR             R2, [R4,#0x34]
19368C:  LDRSH.W         R5, [R1,#0xA]
193690:  ADD.W           R0, R0, R3,ASR#16
193694:  LDR             R3, [R4,#0x30]
193696:  SMLATB.W        R0, R2, R12, R0
19369A:  UXTH            R2, R2
19369C:  MUL.W           R2, R2, R12
1936A0:  UXTH            R6, R3
1936A2:  MULS            R6, R5
1936A4:  ADD.W           R0, R0, R2,ASR#16
1936A8:  LDR             R2, [R4,#0x2C]
1936AA:  SMLATB.W        R0, R3, R5, R0
1936AE:  LDRSH.W         R3, [R1,#0xC]
1936B2:  LDR             R5, [R4,#0x28]
1936B4:  ADD.W           R0, R0, R6,ASR#16
1936B8:  LDRSH.W         R6, [R1,#0xE]
1936BC:  SMLATB.W        R12, R2, R3, R0
1936C0:  UXTH            R2, R2
1936C2:  MULS            R2, R3
1936C4:  UXTH            R0, R5
1936C6:  LDR             R3, [R4,#0x24]
1936C8:  MULS            R0, R6
1936CA:  LDRSH.W         R1, [R1,#0x10]
1936CE:  ADD.W           R2, R12, R2,ASR#16
1936D2:  SMLATB.W        R2, R5, R6, R2
1936D6:  UXTH            R6, R3
1936D8:  MULS            R6, R1
1936DA:  ADD.W           R0, R2, R0,ASR#16
1936DE:  MOVW            R2, #0x8000
1936E2:  SMLATB.W        R0, R3, R1, R0
1936E6:  MOVS            R1, #1
1936E8:  MOVT            R2, #0xFFFF
1936EC:  ADD.W           R0, R0, R6,ASR#16
1936F0:  ADD.W           R0, R1, R0,ASR#5
1936F4:  ASRS            R1, R0, #1
1936F6:  CMP             R1, R2
1936F8:  MOV             R1, R2
1936FA:  IT GT
1936FC:  ASRGT           R1, R0, #1
1936FE:  MOVW            R0, #0x7FFF
193702:  CMP             R1, R0
193704:  IT GE
193706:  MOVGE           R1, R0
193708:  STRH.W          R1, [R11],#2
19370C:  LDR.W           R0, [R7,#var_30]
193710:  ADD             LR, R0
193712:  LDR.W           R0, [R7,#var_28]
193716:  CMP             LR, R0
193718:  BLT.W           loc_193552
19371C:  B               loc_193878
19371E:  CMP             R0, #1
193720:  BLT.W           loc_193878
193724:  MOV.W           R12, #0
193728:  MOV.W           R0, R12,ASR#16
19372C:  LDRSH.W         R6, [R8,#4]
193730:  ADD.W           R2, R9, R0,LSL#2
193734:  LDR.W           R3, [R9,R0,LSL#2]
193738:  ADD.W           LR, R2, #4
19373C:  LDR             R0, [R2,#0x5C]
19373E:  LDRSH.W         R5, [R8,#6]
193742:  ADD             R0, R3
193744:  LDRSH.W         R4, [R8,#8]
193748:  LDRSH.W         R10, [R8,#0xA]
19374C:  UXTH            R1, R0
19374E:  MULS            R1, R6
193750:  ASRS            R1, R1, #0x10
193752:  SMLATB.W        R0, R0, R6, R1
193756:  LDM.W           LR, {R1,R6,LR}
19375A:  LDR             R3, [R2,#0x58]
19375C:  LDR.W           R9, [R2,#0x10]
193760:  ADD             R1, R3
193762:  LDR             R3, [R2,#0x50]
193764:  SMLATB.W        R0, R1, R5, R0
193768:  UXTH            R1, R1
19376A:  MULS            R1, R5
19376C:  ADD             R3, LR
19376E:  ADD.W           R0, R0, R1,ASR#16
193772:  LDR             R1, [R2,#0x54]
193774:  ADD             R1, R6
193776:  LDRSH.W         R6, [R8,#0xC]
19377A:  SMLATB.W        R0, R1, R4, R0
19377E:  UXTH            R1, R1
193780:  MULS            R1, R4
193782:  ADD.W           R0, R0, R1,ASR#16
193786:  LDR             R1, [R2,#0x4C]
193788:  SMLATB.W        R0, R3, R10, R0
19378C:  UXTH            R3, R3
19378E:  MUL.W           R3, R3, R10
193792:  ADD             R1, R9
193794:  LDR.W           R9, [R7,#var_2C]
193798:  UXTH            R5, R1
19379A:  MULS            R5, R6
19379C:  ADD.W           R0, R0, R3,ASR#16
1937A0:  SMLATB.W        R0, R1, R6, R0
1937A4:  LDRD.W          R3, R1, [R2,#0x14]
1937A8:  LDR             R6, [R2,#0x44]
1937AA:  ADD             R1, R6
1937AC:  LDRSH.W         R6, [R8,#0xE]
1937B0:  ADD.W           R0, R0, R5,ASR#16
1937B4:  LDR             R5, [R2,#0x48]
1937B6:  UXTH            R4, R1
1937B8:  ADD             R3, R5
1937BA:  LDRSH.W         R5, [R8,#0x10]
1937BE:  SMLATB.W        R0, R3, R6, R0
1937C2:  UXTH            R3, R3
1937C4:  MULS            R3, R6
1937C6:  MULS            R4, R5
1937C8:  ADD.W           R0, R0, R3,ASR#16
1937CC:  SMLATB.W        R0, R1, R5, R0
1937D0:  LDRD.W          R3, R1, [R2,#0x1C]
1937D4:  LDR             R6, [R2,#0x3C]
1937D6:  LDR             R5, [R2,#0x40]
1937D8:  ADD             R1, R6
1937DA:  LDRSH.W         R6, [R8,#0x12]
1937DE:  ADD             R3, R5
1937E0:  ADD.W           R0, R0, R4,ASR#16
1937E4:  LDRSH.W         R5, [R8,#0x14]
1937E8:  UXTH            R4, R1
1937EA:  SMLATB.W        R0, R3, R6, R0
1937EE:  UXTH            R3, R3
1937F0:  MULS            R3, R6
1937F2:  MULS            R4, R5
1937F4:  ADD.W           R0, R0, R3,ASR#16
1937F8:  SMLATB.W        R0, R1, R5, R0
1937FC:  LDRD.W          R3, R1, [R2,#0x24]
193800:  LDR             R6, [R2,#0x34]
193802:  LDR             R5, [R2,#0x38]
193804:  ADD             R1, R6
193806:  LDRSH.W         R6, [R8,#0x16]
19380A:  ADD             R3, R5
19380C:  ADD.W           R0, R0, R4,ASR#16
193810:  LDRSH.W         R5, [R8,#0x18]
193814:  UXTH            R4, R1
193816:  SMLATB.W        R0, R3, R6, R0
19381A:  UXTH            R3, R3
19381C:  MULS            R3, R6
19381E:  MULS            R4, R5
193820:  ADD.W           R0, R0, R3,ASR#16
193824:  LDRD.W          R3, R2, [R2,#0x2C]
193828:  SMLATB.W        R0, R1, R5, R0
19382C:  LDRSH.W         R6, [R8,#0x1A]
193830:  ADDS            R1, R2, R3
193832:  UXTH            R2, R1
193834:  MULS            R2, R6
193836:  ADD.W           R0, R0, R4,ASR#16
19383A:  SMLATB.W        R0, R1, R6, R0
19383E:  MOVS            R1, #1
193840:  ADD.W           R0, R0, R2,ASR#16
193844:  MOV             R2, #0xFFFF8000
19384C:  ADD.W           R0, R1, R0,ASR#5
193850:  ASRS            R1, R0, #1
193852:  CMP             R1, R2
193854:  MOV             R1, R2
193856:  IT GT
193858:  ASRGT           R1, R0, #1
19385A:  MOVW            R0, #0x7FFF
19385E:  CMP             R1, R0
193860:  IT GE
193862:  MOVGE           R1, R0
193864:  STRH.W          R1, [R11],#2
193868:  LDR.W           R0, [R7,#var_30]
19386C:  ADD             R12, R0
19386E:  LDR.W           R0, [R7,#var_28]
193872:  CMP             R12, R0
193874:  BLT.W           loc_193728
193878:  LDRD.W          R6, R5, [R7,#var_50]
19387C:  SUBS            R5, R5, R6
19387E:  CMP             R5, #2
193880:  BGE.W           loc_1932E6
193884:  LDR.W           R0, [R7,#var_58]
193888:  ADD.W           R1, R9, R6,LSL#2; src
19388C:  LDR.W           R0, [R0,#0x114]
193890:  LSLS            R2, R0, #2; n
193892:  LDR.W           R0, [R7,#dest]; dest
193896:  BLX             j_memcpy
19389A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1938A4)
19389C:  LDR.W           R1, [R7,#var_24]
1938A0:  ADD             R0, PC; __stack_chk_guard_ptr
1938A2:  LDR             R0, [R0]; __stack_chk_guard
1938A4:  LDR             R0, [R0]
1938A6:  SUBS            R0, R0, R1
1938A8:  ITTTT EQ
1938AA:  SUBEQ.W         R4, R7, #-var_1C
1938AE:  MOVEQ           SP, R4
1938B0:  POPEQ.W         {R8-R11}
1938B4:  POPEQ           {R4-R7,PC}
1938B6:  BLX             __stack_chk_fail
