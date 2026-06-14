; =========================================================
; Game Engine Function: sub_476414
; Address            : 0x476414 - 0x476626
; =========================================================

476414:  PUSH            {R4-R7,LR}
476416:  ADD             R7, SP, #0xC
476418:  PUSH.W          {R8-R11}
47641C:  SUB             SP, SP, #0x44
47641E:  STR             R1, [SP,#0x60+var_38]
476420:  MOV             R4, R0
476422:  LDR.W           R3, [R4,#0x148]
476426:  LDRD.W          R2, R0, [R3,#0x10]
47642A:  CMP             R2, R0
47642C:  MOV             R1, R2
47642E:  STR             R1, [SP,#0x60+var_40]
476430:  BGE.W           loc_4765D0
476434:  LDR.W           R1, [R4,#0xE0]
476438:  ADD.W           R8, R3, #8
47643C:  LDR.W           R2, [R4,#0xF8]
476440:  SUBS            R1, #1
476442:  STR             R1, [SP,#0x60+var_2C]
476444:  SUBS            R1, R2, #1
476446:  STR             R1, [SP,#0x60+var_4C]
476448:  ADD.W           R1, R3, #0x18
47644C:  STR             R1, [SP,#0x60+var_44]
47644E:  LDR             R5, [R3,#0xC]
476450:  STR             R4, [SP,#0x60+var_30]
476452:  STR             R3, [SP,#0x60+var_28]
476454:  STR.W           R8, [SP,#0x60+var_3C]
476458:  LDR             R1, [SP,#0x60+var_4C]
47645A:  CMP             R5, R1
47645C:  BHI.W           loc_4765BA
476460:  LDR             R0, [SP,#0x60+var_40]
476462:  LSLS            R0, R0, #3
476464:  STR             R0, [SP,#0x60+var_54]
476466:  LDR.W           R0, [R4,#0xE4]
47646A:  CMP             R0, #1
47646C:  BLT.W           loc_47659E
476470:  MOV.W           R10, #0
476474:  MOVS            R3, #0
476476:  STR             R5, [SP,#0x60+var_50]
476478:  ADD.W           R1, R4, R3,LSL#2
47647C:  LDR.W           R12, [R1,#0xE8]
476480:  LDR             R1, [SP,#0x60+var_4C]
476482:  ADD.W           R9, R12, #0x34 ; '4'
476486:  LDR.W           R2, [R12,#0x38]
47648A:  CMP             R5, R1
47648C:  MOV             R1, R9
47648E:  IT CS
476490:  ADDCS.W         R1, R12, #0x44 ; 'D'
476494:  CMP             R2, #1
476496:  BLT             loc_476596
476498:  STR             R3, [SP,#0x60+var_48]
47649A:  MOV.W           R11, #0
47649E:  LDR.W           R0, [R12,#0x40]
4764A2:  MULS            R0, R5
4764A4:  LDR             R5, [SP,#0x60+var_54]
4764A6:  STR             R0, [SP,#0x60+var_34]
4764A8:  LDR.W           LR, [R1]
4764AC:  STRD.W          LR, R12, [SP,#0x60+var_24]
4764B0:  LDR.W           R0, [R8]
4764B4:  LDR             R1, [SP,#0x60+var_2C]
4764B6:  CMP             R0, R1
4764B8:  BCC             loc_4764C6
4764BA:  LDR             R1, [SP,#0x60+var_40]
4764BC:  LDR.W           R0, [R12,#0x48]
4764C0:  ADD             R1, R11
4764C2:  CMP             R1, R0
4764C4:  BGE             loc_47653E
4764C6:  LDR             R0, [SP,#0x60+var_30]
4764C8:  LDR.W           R8, [SP,#0x60+var_28]
4764CC:  LDR.W           R1, [R12,#4]
4764D0:  LDR             R2, [SP,#0x60+var_38]
4764D2:  ADD.W           R4, R8, R10,LSL#2
4764D6:  LDR.W           R6, [R0,#0x158]
4764DA:  LDR             R3, [R4,#0x18]
4764DC:  LDR.W           R2, [R2,R1,LSL#2]
4764E0:  LDR             R6, [R6,#4]
4764E2:  LDR             R1, [SP,#0x60+var_34]
4764E4:  STR             R5, [SP,#0x60+var_60]
4764E6:  STRD.W          R1, LR, [SP,#0x60+var_5C]
4764EA:  MOV             R1, R12
4764EC:  BLX             R6
4764EE:  LDRD.W          LR, R12, [SP,#0x60+var_24]
4764F2:  LDR.W           R0, [R12,#0x34]
4764F6:  CMP             R0, LR
4764F8:  BLE             loc_476538
4764FA:  SUB.W           R1, R0, LR
4764FE:  ADD.W           R0, R10, LR
476502:  ADD.W           R0, R8, R0,LSL#2
476506:  LSLS            R1, R1, #7; unsigned int
476508:  LDR             R0, [R0,#0x18]; void *
47650A:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
47650E:  LDRD.W          LR, R12, [SP,#0x60+var_24]
476512:  LDR.W           R0, [R9]
476516:  LDR.W           R8, [SP,#0x60+var_3C]
47651A:  CMP             LR, R0
47651C:  BGE             loc_47657C
47651E:  MOV             R1, LR
476520:  ADD.W           R0, R4, R1,LSL#2
476524:  ADDS            R1, #1
476526:  LDRD.W          R2, R0, [R0,#0x14]
47652A:  LDRH            R2, [R2]
47652C:  STRH            R2, [R0]
47652E:  LDR.W           R0, [R9]
476532:  CMP             R1, R0
476534:  BLT             loc_476520
476536:  B               loc_47657C
476538:  LDR.W           R8, [SP,#0x60+var_3C]
47653C:  B               loc_47657C
47653E:  LDR             R0, [SP,#0x60+var_28]
476540:  LDR.W           R1, [R9]
476544:  ADD.W           R4, R0, R10,LSL#2
476548:  LDR             R0, [R4,#0x18]; void *
47654A:  LSLS            R1, R1, #7; unsigned int
47654C:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
476550:  LDRD.W          LR, R12, [SP,#0x60+var_24]
476554:  LDR.W           R0, [R9]
476558:  CMP             R0, #1
47655A:  BLT             loc_47657C
47655C:  LDR             R0, [SP,#0x60+var_44]
47655E:  ADD.W           R2, R4, #0x14
476562:  MOVS            R3, #0
476564:  ADD.W           R1, R0, R10,LSL#2
476568:  LDR             R0, [R2]
47656A:  LDR.W           R6, [R1,R3,LSL#2]
47656E:  ADDS            R3, #1
476570:  LDRH            R0, [R0]
476572:  STRH            R0, [R6]
476574:  LDR.W           R0, [R9]
476578:  CMP             R3, R0
47657A:  BLT             loc_476568
47657C:  ADD             R10, R0
47657E:  LDR.W           R0, [R12,#0x38]
476582:  ADD.W           R11, R11, #1
476586:  ADDS            R5, #8
476588:  CMP             R11, R0
47658A:  BLT             loc_4764B0
47658C:  LDR             R4, [SP,#0x60+var_30]
47658E:  LDR             R5, [SP,#0x60+var_50]
476590:  LDR             R3, [SP,#0x60+var_48]
476592:  LDR.W           R0, [R4,#0xE4]
476596:  ADDS            R3, #1
476598:  CMP             R3, R0
47659A:  BLT.W           loc_476478
47659E:  LDR.W           R0, [R4,#0x15C]
4765A2:  LDR             R1, [SP,#0x60+var_44]
4765A4:  LDR             R2, [R0,#4]
4765A6:  MOV             R0, R4
4765A8:  BLX             R2
4765AA:  CBZ             R0, loc_4765EE
4765AC:  LDR             R0, [SP,#0x60+var_4C]
4765AE:  ADDS            R5, #1
4765B0:  CMP             R5, R0
4765B2:  BLS.W           loc_476466
4765B6:  LDR             R3, [SP,#0x60+var_28]
4765B8:  LDR             R0, [R3,#0x14]
4765BA:  MOVS            R5, #0
4765BC:  STR             R5, [R3,#0xC]
4765BE:  LDR             R1, [SP,#0x60+var_40]
4765C0:  MOV             R2, R1
4765C2:  ADDS            R2, #1
4765C4:  CMP             R2, R0
4765C6:  MOV             R1, R2
4765C8:  STR             R1, [SP,#0x60+var_40]
4765CA:  BLT.W           loc_476458
4765CE:  B               loc_4765D4
4765D0:  ADD.W           R8, R3, #8
4765D4:  LDR.W           R0, [R8]
4765D8:  ADDS            R0, #1
4765DA:  STR.W           R0, [R8]
4765DE:  LDR.W           R1, [R4,#0xE4]
4765E2:  LDR.W           R0, [R4,#0x148]
4765E6:  CMP             R1, #1
4765E8:  BLE             loc_4765FA
4765EA:  MOVS            R1, #1
4765EC:  B               loc_476614
4765EE:  LDR             R0, [SP,#0x60+var_28]
4765F0:  STR             R5, [R0,#0xC]
4765F2:  LDR             R1, [SP,#0x60+var_40]
4765F4:  STR             R1, [R0,#0x10]
4765F6:  MOVS            R0, #0
4765F8:  B               loc_47661E
4765FA:  LDR.W           R1, [R4,#0xE0]
4765FE:  LDR.W           R2, [R4,#0xE8]
476602:  LDR             R3, [R0,#8]
476604:  SUBS            R1, #1
476606:  ADD.W           R6, R2, #0x48 ; 'H'
47660A:  CMP             R3, R1
47660C:  IT CC
47660E:  ADDCC.W         R6, R2, #0xC
476612:  LDR             R1, [R6]
476614:  MOVS            R2, #0
476616:  STRD.W          R2, R2, [R0,#0xC]
47661A:  STR             R1, [R0,#0x14]
47661C:  MOVS            R0, #1
47661E:  ADD             SP, SP, #0x44 ; 'D'
476620:  POP.W           {R8-R11}
476624:  POP             {R4-R7,PC}
