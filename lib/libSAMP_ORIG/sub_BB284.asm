; =========================================================
; Game Engine Function: sub_BB284
; Address            : 0xBB284 - 0xBB6AA
; =========================================================

BB284:  PUSH            {R4-R7,LR}
BB286:  ADD             R7, SP, #0xC
BB288:  PUSH.W          {R8-R11}
BB28C:  SUB             SP, SP, #0x44
BB28E:  MOV             R4, R0
BB290:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xBB29C)
BB294:  MOV             R10, R2
BB296:  LDR             R6, [R7,#arg_14]
BB298:  ADD             R0, PC; __stack_chk_guard_ptr
BB29A:  LDR             R0, [R0]; __stack_chk_guard
BB29C:  LDR             R0, [R0]
BB29E:  STR.W           R0, [R7,#var_24]
BB2A2:  LDRD.W          R11, R0, [R4,#4]
BB2A6:  STR.W           R0, [R7,#var_48]
BB2AA:  LDR             R2, [R4,#0x24]
BB2AC:  LDR             R0, [R7,#arg_10]
BB2AE:  LSL.W           R8, R2, R6
BB2B2:  CMP             R0, #0
BB2B4:  IT EQ
BB2B6:  MOVEQ           R2, R8
BB2B8:  STR.W           R2, [R7,#var_30]
BB2BC:  MOVS            R2, #7
BB2BE:  ADD.W           R2, R2, R8,LSL#2
BB2C2:  BIC.W           R2, R2, #7
BB2C6:  SUB.W           R5, SP, R2
BB2CA:  MOV             SP, R5
BB2CC:  CMP             R0, #0
BB2CE:  LDR             R2, [R4,#0x1C]
BB2D0:  MOV.W           R0, #1
BB2D4:  LSL.W           R12, R0, R6
BB2D8:  IT EQ
BB2DA:  SUBEQ           R2, R2, R6
BB2DC:  MOV             R9, R12
BB2DE:  STR.W           R2, [R7,#var_3C]
BB2E2:  IT EQ
BB2E4:  MOVEQ.W         R9, #1
BB2E8:  LDRD.W          R6, LR, [R7,#arg_18]
BB2EC:  LDRD.W          R0, R2, [R7,#arg_8]
BB2F0:  STRD.W          R9, R11, [R7,#var_38]
BB2F4:  CMP             R0, #1
BB2F6:  IT EQ
BB2F8:  CMPEQ           R2, #2
BB2FA:  BNE.W           loc_BB414
BB2FE:  MOV.W           R0, R8,LSL#2
BB302:  STR.W           R0, [R7,#n]
BB306:  SUB             SP, SP, #0x18
BB308:  LDR             R0, [R7,#arg_0]
BB30A:  MOV             R2, R5; int
BB30C:  STR             R0, [SP,#0x78+var_78]; int
BB30E:  LDR             R0, [R7,#arg_4]
BB310:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
BB314:  MOV             R0, R4; int
BB316:  STRD.W          R6, LR, [SP,#0x78+var_6C]; int
BB31A:  BLX             j_denormalise_bands
BB31E:  ADD             SP, SP, #0x18
BB320:  ADD.W           R0, R11, R11,LSR#31
BB324:  LDR.W           R1, [R10,#4]
BB328:  MOV             R2, #0xFFFFFFFC
BB32C:  AND.W           R0, R2, R0,LSL#1
BB330:  LDR.W           R2, [R7,#n]; n
BB334:  ADDS            R6, R1, R0
BB336:  MOV             R1, R5; src
BB338:  MOV             R0, R6; dest
BB33A:  BLX             j_memcpy
BB33E:  CMP.W           R9, #1
BB342:  MOV             R0, R4
BB344:  BLT.W           loc_BB64E
BB348:  LDR.W           R1, [R7,#var_30]
BB34C:  ADD.W           R12, R0, #0x38 ; '8'
BB350:  STR.W           R8, [R7,#var_44]
BB354:  MOV             R11, R0
BB356:  STR.W           R10, [R7,#var_2C]
BB35A:  LDR.W           R4, [R7,#var_38]
BB35E:  LSLS            R1, R1, #2
BB360:  LDR.W           R8, [R7,#var_34]
BB364:  LDR.W           R10, [R7,#var_3C]
BB368:  STR.W           R5, [R7,#var_4C]
BB36C:  MOVS            R5, #0
BB36E:  STR.W           R1, [R7,#var_30]
BB372:  LDR.W           R0, [R7,#var_2C]
BB376:  LDR.W           R3, [R11,#0x34]
BB37A:  LDR             R0, [R0]
BB37C:  SUB             SP, SP, #0x10
BB37E:  STRD.W          R8, R10, [SP,#0x70+var_70]
BB382:  ADDS            R2, R0, R5
BB384:  LDR.W           R1, [R7,#var_38]
BB388:  MOV             R0, R12
BB38A:  STR             R1, [SP,#0x70+var_68]
BB38C:  MOV             R9, R12
BB38E:  LDR             R1, [R7,#arg_20]
BB390:  STR             R1, [SP,#0x70+var_64]
BB392:  MOV             R1, R6
BB394:  BLX             j_clt_mdct_backward_c
BB398:  MOV             R12, R9
BB39A:  ADD             SP, SP, #0x10
BB39C:  LDR.W           R0, [R7,#var_30]
BB3A0:  SUBS            R4, #1
BB3A2:  ADD.W           R6, R6, #4
BB3A6:  ADD             R5, R0
BB3A8:  BNE             loc_BB372
BB3AA:  LDR.W           R0, [R7,#var_38]
BB3AE:  LDR.W           R6, [R7,#var_4C]
BB3B2:  LDR.W           R8, [R7,#var_44]
BB3B6:  CMP             R0, #1
BB3B8:  LDRD.W          R1, R10, [R7,#var_30]
BB3BC:  MOV             R0, R11
BB3BE:  BLT.W           loc_BB64E
BB3C2:  LDR.W           R4, [R7,#var_38]
BB3C6:  MOVS            R5, #0
BB3C8:  STR.W           R0, [R7,#var_28]
BB3CC:  LDR             R3, [R0,#0x34]
BB3CE:  LDR.W           R0, [R10,#4]
BB3D2:  SUB             SP, SP, #0x10
BB3D4:  MOV             R11, R8
BB3D6:  MOV             R8, R10
BB3D8:  MOV             R10, R1
BB3DA:  LDR.W           R1, [R7,#var_34]
BB3DE:  STR             R1, [SP,#0x70+var_70]
BB3E0:  ADDS            R2, R0, R5
BB3E2:  LDR.W           R1, [R7,#var_3C]
BB3E6:  MOV             R0, R12
BB3E8:  STR             R1, [SP,#0x70+var_6C]
BB3EA:  LDR.W           R1, [R7,#var_38]
BB3EE:  STR             R1, [SP,#0x70+var_68]
BB3F0:  LDR             R1, [R7,#arg_20]
BB3F2:  STR             R1, [SP,#0x70+var_64]
BB3F4:  MOV             R1, R6
BB3F6:  BLX             j_clt_mdct_backward_c
BB3FA:  LDR.W           R0, [R7,#var_28]
BB3FE:  MOV             R1, R10
BB400:  MOV             R10, R8
BB402:  MOV             R8, R11
BB404:  MOV             R12, R9
BB406:  ADD             SP, SP, #0x10
BB408:  ADD             R5, R1
BB40A:  SUBS            R4, #1
BB40C:  ADD.W           R6, R6, #4
BB410:  BNE             loc_BB3CC
BB412:  B               loc_BB64E
BB414:  CMP             R0, #2
BB416:  IT EQ
BB418:  CMPEQ           R2, #1
BB41A:  BEQ             loc_BB506
BB41C:  CMP.W           R9, #0
BB420:  STR.W           R5, [R7,#var_4C]
BB424:  STR.W           R12, [R7,#n]
BB428:  BLE.W           loc_BB5F6
BB42C:  ADD.W           R0, R4, #0x38 ; '8'
BB430:  STR.W           R0, [R7,#var_58]
BB434:  LDR.W           R0, [R7,#var_30]
BB438:  STR.W           R4, [R7,#var_28]
BB43C:  LDR.W           R11, [R7,#var_4C]
BB440:  LSLS            R0, R0, #2
BB442:  LDR             R6, [R7,#arg_18]
BB444:  STR.W           R0, [R7,#var_5C]
BB448:  MOVS            R0, #0
BB44A:  STR.W           R0, [R7,#var_30]
BB44E:  LDRD.W          R2, R0, [R7,#arg_0]
BB452:  STR.W           R8, [R7,#var_44]
BB456:  STRD.W          R1, R3, [R7,#var_54]
BB45A:  STR.W           R10, [R7,#var_2C]
BB45E:  LDR.W           R4, [R7,#var_48]
BB462:  LDR.W           R5, [R7,#var_30]
BB466:  MUL.W           R9, R5, R4
BB46A:  SUB             SP, SP, #0x18
BB46C:  MUL.W           R8, R5, R8
BB470:  STRD.W          R2, R0, [SP,#0x78+var_78]; int
BB474:  STRD.W          R12, R6, [SP,#0x78+var_70]; int
BB478:  LDR.W           R0, [R7,#var_28]; int
BB47C:  ADD.W           R3, R3, R9,LSL#1; int
BB480:  MOV             R2, R11; int
BB482:  STR.W           LR, [SP,#0x78+var_68]; int
BB486:  ADD.W           R1, R1, R8,LSL#1; int
BB48A:  BLX             j_denormalise_bands
BB48E:  ADD             SP, SP, #0x18
BB490:  MOV             R4, R11
BB492:  LDR.W           R11, [R7,#var_38]
BB496:  LDR.W           R6, [R7,#var_3C]
BB49A:  MOV.W           R9, #0
BB49E:  LDRD.W          R8, R5, [R7,#var_5C]
BB4A2:  MOV             R10, R11
BB4A4:  LDRD.W          R0, R1, [R7,#var_30]
BB4A8:  LDR.W           R0, [R1,R0,LSL#2]
BB4AC:  LDR.W           R1, [R7,#var_28]
BB4B0:  LDR             R3, [R1,#0x34]
BB4B2:  SUB             SP, SP, #0x10
BB4B4:  LDR.W           R1, [R7,#var_34]
BB4B8:  ADD.W           R2, R0, R9
BB4BC:  MOV             R0, R5
BB4BE:  STMEA.W         SP, {R1,R6,R11}
BB4C2:  LDR             R1, [R7,#arg_20]
BB4C4:  STR             R1, [SP,#0x70+var_64]
BB4C6:  MOV             R1, R4
BB4C8:  BLX             j_clt_mdct_backward_c
BB4CC:  ADD             SP, SP, #0x10
BB4CE:  ADD             R9, R8
BB4D0:  ADDS            R4, #4
BB4D2:  SUBS.W          R10, R10, #1
BB4D6:  BNE             loc_BB4A4
BB4D8:  LDR.W           R0, [R7,#var_30]
BB4DC:  SUB.W           R11, R7, #-var_54
BB4E0:  LDR.W           R10, [R7,#var_2C]
BB4E4:  MOV             R2, R0
BB4E6:  LDR             R0, [R7,#arg_C]
BB4E8:  ADDS            R2, #1
BB4EA:  CMP             R2, R0
BB4EC:  MOV             R1, R2
BB4EE:  STR.W           R1, [R7,#var_30]
BB4F2:  LDM.W           R11, {R1,R3,R11}; int
BB4F6:  LDRD.W          R8, R12, [R7,#var_44]
BB4FA:  LDRD.W          R6, LR, [R7,#arg_18]
BB4FE:  LDRD.W          R2, R0, [R7,#arg_0]
BB502:  BLT             loc_BB45E
BB504:  B               loc_BB64E
BB506:  STR.W           R8, [R7,#var_44]
BB50A:  LDR.W           R0, [R10]
BB50E:  STR.W           R0, [R7,#n]
BB512:  SUB             SP, SP, #0x18
BB514:  LDR             R0, [R7,#arg_0]
BB516:  MOV             R2, R5; int
BB518:  STR             R0, [SP,#0x78+var_78]; int
BB51A:  MOV             R8, R1
BB51C:  LDR             R0, [R7,#arg_4]
BB51E:  MOV             R9, R12
BB520:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
BB524:  MOV             R0, R4; int
BB526:  STRD.W          R6, LR, [SP,#0x78+var_6C]; int
BB52A:  MOV             R6, R3
BB52C:  BLX             j_denormalise_bands
BB530:  ADD             SP, SP, #0x18
BB532:  SUB             SP, SP, #0x18
BB534:  LDR             R0, [R7,#arg_0]
BB536:  MOV             R2, #0xFFFFFFFC
BB53A:  STR             R0, [SP,#0x78+var_78]; int
BB53C:  LDR             R0, [R7,#arg_4]
BB53E:  STRD.W          R0, R9, [SP,#0x78+var_74]; int
BB542:  LDR             R0, [R7,#arg_18]
BB544:  STR             R0, [SP,#0x78+var_6C]; int
BB546:  LDR             R0, [R7,#arg_1C]
BB548:  STR             R0, [SP,#0x78+var_68]; int
BB54A:  LDR.W           R0, [R7,#var_44]
BB54E:  ADD.W           R1, R8, R0,LSL#1; int
BB552:  LDR.W           R0, [R7,#var_48]
BB556:  LDR.W           R8, [R7,#var_44]
BB55A:  ADD.W           R3, R6, R0,LSL#1; int
BB55E:  ADD.W           R0, R11, R11,LSR#31
BB562:  MOV             R11, R4
BB564:  AND.W           R0, R2, R0,LSL#1
BB568:  LDR.W           R2, [R7,#n]
BB56C:  ADDS            R6, R2, R0
BB56E:  MOV             R0, R4; int
BB570:  MOV             R2, R6; int
BB572:  BLX             j_denormalise_bands
BB576:  ADD             SP, SP, #0x18
BB578:  CMP.W           R8, #1
BB57C:  BLT             loc_BB598
BB57E:  MOV             R0, R8
BB580:  MOV             R1, R5
BB582:  LDR.W           R2, [R6],#4
BB586:  SUBS            R0, #1
BB588:  LDR             R3, [R1]
BB58A:  MOV.W           R2, R2,ASR#1
BB58E:  ADD.W           R2, R2, R3,ASR#1
BB592:  STR.W           R2, [R1],#4
BB596:  BNE             loc_BB582
BB598:  LDR.W           R6, [R7,#var_38]
BB59C:  MOV             R9, R5
BB59E:  STR.W           R11, [R7,#var_28]
BB5A2:  CMP             R6, #1
BB5A4:  BLT             loc_BB64E
BB5A6:  LDR.W           R0, [R7,#var_30]
BB5AA:  MOVS            R5, #0
BB5AC:  MOV             R4, R6
BB5AE:  LSLS            R0, R0, #2
BB5B0:  STR.W           R0, [R7,#var_30]
BB5B4:  LDR.W           R0, [R7,#var_28]
BB5B8:  ADD.W           R11, R0, #0x38 ; '8'
BB5BC:  LDR.W           R0, [R7,#var_28]
BB5C0:  LDR             R3, [R0,#0x34]
BB5C2:  LDR.W           R0, [R10]
BB5C6:  SUB             SP, SP, #0x10
BB5C8:  LDR.W           R1, [R7,#var_34]
BB5CC:  ADDS            R2, R0, R5
BB5CE:  STR             R1, [SP,#0x70+var_70]
BB5D0:  MOV             R0, R11
BB5D2:  LDR.W           R1, [R7,#var_3C]
BB5D6:  STRD.W          R1, R6, [SP,#0x70+var_6C]
BB5DA:  LDR             R1, [R7,#arg_20]
BB5DC:  STR             R1, [SP,#0x70+var_64]
BB5DE:  MOV             R1, R9
BB5E0:  BLX             j_clt_mdct_backward_c
BB5E4:  ADD             SP, SP, #0x10
BB5E6:  LDR.W           R0, [R7,#var_30]
BB5EA:  SUBS            R4, #1
BB5EC:  ADD.W           R9, R9, #4
BB5F0:  ADD             R5, R0
BB5F2:  BNE             loc_BB5BC
BB5F4:  B               loc_BB64E
BB5F6:  MOV.W           R0, R8,LSL#1
BB5FA:  LDR.W           R5, [R7,#var_4C]
BB5FE:  STR.W           R0, [R7,#var_30]
BB602:  MOVS            R6, #0
BB604:  LDR.W           R0, [R7,#var_48]
BB608:  LSLS            R0, R0, #1
BB60A:  STR.W           R0, [R7,#var_34]
BB60E:  SUB             SP, SP, #0x18
BB610:  LDR             R0, [R7,#arg_0]
BB612:  MOV             R2, R5; int
BB614:  STR             R0, [SP,#0x78+var_78]; int
BB616:  MOV             R11, R3
BB618:  LDR             R0, [R7,#arg_4]
BB61A:  MOV             R9, R1
BB61C:  STRD.W          R0, R12, [SP,#0x78+var_74]; int
BB620:  LDR             R0, [R7,#arg_18]
BB622:  STRD.W          R0, LR, [SP,#0x78+var_6C]; int
BB626:  MOV             R0, R4; int
BB628:  BLX             j_denormalise_bands
BB62C:  LDR.W           LR, [R7,#arg_1C]
BB630:  MOV             R1, R9
BB632:  LDR.W           R12, [R7,#n]
BB636:  MOV             R3, R11
BB638:  ADD             SP, SP, #0x18
BB63A:  LDR.W           R0, [R7,#var_30]
BB63E:  ADDS            R6, #1
BB640:  ADD             R1, R0
BB642:  LDR.W           R0, [R7,#var_34]
BB646:  ADD             R3, R0
BB648:  LDR             R0, [R7,#arg_C]
BB64A:  CMP             R6, R0
BB64C:  BLT             loc_BB60E
BB64E:  LDR             R4, [R7,#arg_C]
BB650:  CMP.W           R8, #1
BB654:  BLT             loc_BB68A
BB656:  MOVW            R1, #0x5D00
BB65A:  MOVW            R2, #0xA300
BB65E:  MOVS            R0, #0
BB660:  MOVT            R1, #0xEE1E
BB664:  MOVT            R2, #0x11E1
BB668:  LDR.W           R3, [R10,R0,LSL#2]
BB66C:  MOV             R6, R8
BB66E:  LDR             R5, [R3]
BB670:  CMP             R5, R1
BB672:  IT LE
BB674:  MOVLE           R5, R1
BB676:  CMP             R5, R2
BB678:  IT GE
BB67A:  MOVGE           R5, R2
BB67C:  SUBS            R6, #1
BB67E:  STR.W           R5, [R3],#4
BB682:  BNE             loc_BB66E
BB684:  ADDS            R0, #1
BB686:  CMP             R0, R4
BB688:  BLT             loc_BB668
BB68A:  LDR             R0, =(__stack_chk_guard_ptr - 0xBB694)
BB68C:  LDR.W           R1, [R7,#var_24]
BB690:  ADD             R0, PC; __stack_chk_guard_ptr
BB692:  LDR             R0, [R0]; __stack_chk_guard
BB694:  LDR             R0, [R0]
BB696:  SUBS            R0, R0, R1
BB698:  ITTTT EQ
BB69A:  SUBEQ.W         R4, R7, #-var_1C
BB69E:  MOVEQ           SP, R4
BB6A0:  POPEQ.W         {R8-R11}
BB6A4:  POPEQ           {R4-R7,PC}
BB6A6:  BLX             __stack_chk_fail
