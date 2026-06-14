; =========================================================
; Game Engine Function: sub_DE3F0
; Address            : 0xDE3F0 - 0xDE680
; =========================================================

DE3F0:  PUSH            {R4-R7,LR}
DE3F2:  ADD             R7, SP, #0xC
DE3F4:  PUSH.W          {R8-R11}
DE3F8:  SUB             SP, SP, #0x64
DE3FA:  LDR             R4, [R7,#arg_0]
DE3FC:  MOV             R12, R2
DE3FE:  LDR.W           R8, [R1]
DE402:  MOV             R10, R1
DE404:  MOV             LR, R0
DE406:  LDR             R0, [R7,#arg_4]; std::locale *
DE408:  STRD.W          R3, R4, [SP,#0x80+var_28]
DE40C:  ORR.W           R2, R8, #1
DE410:  LDR             R1, =(unk_91AF8 - 0xDE422)
DE412:  CLZ.W           R2, R2
DE416:  EOR.W           R2, R2, #0x1F
DE41A:  UBFX.W          R9, R4, #8, #8
DE41E:  ADD             R1, PC; unk_91AF8
DE420:  STR.W           R9, [SP,#0x80+var_38]
DE424:  LDR.W           R3, [R1,R2,LSL#3]
DE428:  ADD.W           R1, R1, R2,LSL#3
DE42C:  LDR             R1, [R1,#4]
DE42E:  ADDS.W          R2, R3, R8
DE432:  ADC.W           R5, R1, #0
DE436:  MOV.W           R2, #0x30 ; '0'
DE43A:  ADC.W           R11, R1, #1
DE43E:  CMP.W           R9, #0
DE442:  STRD.W          R5, R8, [SP,#0x80+var_30]
DE446:  STRB.W          R2, [R7,#var_31]
DE44A:  IT EQ
DE44C:  MOVEQ           R11, R5
DE44E:  LSLS            R1, R4, #0xE
DE450:  BMI             loc_DE456
DE452:  MOVS            R0, #0x2E ; '.'
DE454:  B               loc_DE462
DE456:  MOV             R4, R12
DE458:  MOV             R6, LR
DE45A:  BLX             j__ZN3fmt2v86detail18decimal_point_implIcEET_NS1_10locale_refE; fmt::v8::detail::decimal_point_impl<char>(fmt::v8::detail::locale_ref)
DE45E:  MOV             LR, R6
DE460:  MOV             R12, R4
DE462:  LDR.W           R2, [R10,#4]
DE466:  LDRD.W          R6, R1, [SP,#0x80+var_28]
DE46A:  ADDS            R4, R2, R5
DE46C:  UXTB            R3, R1
DE46E:  CMP             R3, #1
DE470:  STRB.W          R0, [R7,#var_39]
DE474:  BEQ             loc_DE4BA
DE476:  CBNZ            R3, loc_DE48A
DE478:  CMP             R6, #0
DE47A:  MOV             R3, R6
DE47C:  IT LE
DE47E:  MOVLE           R3, #0x10
DE480:  CMN.W           R4, #3
DE484:  BLT             loc_DE4BA
DE486:  CMP             R4, R3
DE488:  BGT             loc_DE4BA
DE48A:  CMP             R2, #0
DE48C:  STR             R4, [SP,#0x80+var_40]
DE48E:  BMI             loc_DE538
DE490:  SUBS            R0, R6, R4
DE492:  ADD.W           R8, R2, R11
DE496:  MOV             R9, LR
DE498:  LSLS            R2, R1, #0xC
DE49A:  STR.W           R12, [SP,#0x80+var_7C]
DE49E:  STR             R0, [SP,#0x80+var_44]
DE4A0:  BPL.W           loc_DE5AA
DE4A4:  ADD.W           R8, R8, #1
DE4A8:  CMP             R0, #0
DE4AA:  BGT             loc_DE5A4
DE4AC:  UXTB            R2, R1
DE4AE:  CMP             R2, #2
DE4B0:  BEQ             loc_DE5A4
DE4B2:  MOVS            R0, #1
DE4B4:  ADD             R8, R0
DE4B6:  STR             R0, [SP,#0x80+var_44]
DE4B8:  B               loc_DE5AA
DE4BA:  SUBS            R2, R4, #1
DE4BC:  LSLS            R3, R1, #0xC
DE4BE:  BMI             loc_DE4CE
DE4C0:  MOVS            R3, #0
DE4C2:  CMP             R5, #1
DE4C4:  ITT EQ
DE4C6:  STRBEQ.W        R3, [R7,#var_39]
DE4CA:  MOVEQ           R0, #0
DE4CC:  B               loc_DE4D6
DE4CE:  SUBS            R3, R6, R5
DE4D0:  BIC.W           R3, R3, R3,ASR#31
DE4D4:  ADD             R11, R3
DE4D6:  LSLS            R1, R1, #0xF
DE4D8:  STR             R2, [SP,#0x80+var_60]
DE4DA:  MOV.W           R1, #0x45 ; 'E'
DE4DE:  IT PL
DE4E0:  MOVPL           R1, #0x65 ; 'e'
DE4E2:  STRB.W          R1, [SP,#0x80+var_64+1]
DE4E6:  MOVS            R1, #0x30 ; '0'
DE4E8:  CMP             R4, #0
DE4EA:  STRB.W          R1, [SP,#0x80+var_64]
DE4EE:  LDR.W           R1, [R12]
DE4F2:  STR             R3, [SP,#0x80+var_68]
DE4F4:  STRB.W          R0, [SP,#0x80+var_6C]
DE4F8:  STR             R5, [SP,#0x80+var_70]
DE4FA:  STRD.W          R9, R8, [SP,#0x80+var_78]
DE4FE:  IT LE
DE500:  RSBLE.W         R2, R4, #1
DE504:  CMP             R1, #1
DE506:  BLT             loc_DE59A
DE508:  ADD             R1, SP, #0x80+var_78
DE50A:  STR             R1, [SP,#0x80+var_80]
DE50C:  CMP             R0, #0
DE50E:  MOV.W           R0, #3
DE512:  MOV.W           R1, #3
DE516:  IT EQ
DE518:  MOVEQ           R0, #2
DE51A:  CMP.W           R2, #0x3E8
DE51E:  IT GE
DE520:  MOVGE           R1, #4
DE522:  CMP             R2, #0x63 ; 'c'
DE524:  IT LE
DE526:  MOVLE           R1, #2
DE528:  ADD             R1, R11
DE52A:  ADDS            R2, R1, R0
DE52C:  MOV             R0, LR
DE52E:  MOV             R1, R12
DE530:  MOV             R3, R2
DE532:  BL              sub_DE7D4
DE536:  B               loc_DE674
DE538:  CMP             R4, #1
DE53A:  BLT             loc_DE606
DE53C:  SUBS            R0, R6, R5
DE53E:  LSLS            R2, R1, #0xC
DE540:  AND.W           R6, R0, R2,ASR#31
DE544:  UBFX.W          R2, R1, #0x11, #1
DE548:  ADD             R4, SP, #0x80+var_54
DE54A:  LDR             R1, [R7,#arg_4]
DE54C:  MOV             R9, LR
DE54E:  MOV             R8, R12
DE550:  MOV             R0, R4
DE552:  STR             R6, [SP,#0x80+var_44]
DE554:  BL              sub_DD758
DE558:  MOV             R1, R5
DE55A:  BL              sub_DD86C
DE55E:  SUB.W           R1, R7, #-var_31
DE562:  STR             R1, [SP,#0x80+var_5C]
DE564:  ADD             R1, SP, #0x80+var_44
DE566:  STRD.W          R4, R1, [SP,#0x80+var_64]
DE56A:  SUB.W           R1, R7, #-var_39
DE56E:  STR             R1, [SP,#0x80+var_68]
DE570:  ADD             R1, SP, #0x80+var_40
DE572:  STR             R1, [SP,#0x80+var_6C]
DE574:  ADD             R1, SP, #0x80+var_30
DE576:  STR             R1, [SP,#0x80+var_70]
DE578:  ADD             R1, SP, #0x80+var_2C
DE57A:  STR             R1, [SP,#0x80+var_74]
DE57C:  ADD             R1, SP, #0x80+var_38
DE57E:  STR             R1, [SP,#0x80+var_78]
DE580:  ADD             R1, SP, #0x80+var_78
DE582:  STR             R1, [SP,#0x80+var_80]
DE584:  CMP             R6, #0
DE586:  IT GT
DE588:  ADDGT           R11, R6
DE58A:  ADD             R0, R11
DE58C:  MOV             R1, R8
DE58E:  ADDS            R2, R0, #1
DE590:  MOV             R0, R9
DE592:  MOV             R3, R2
DE594:  BL              sub_DEB84
DE598:  B               loc_DE5F4
DE59A:  ADD             R0, SP, #0x80+var_78
DE59C:  MOV             R1, LR
DE59E:  BL              sub_DE69C
DE5A2:  B               loc_DE674
DE5A4:  CMP             R0, #1
DE5A6:  IT GE
DE5A8:  ADDGE           R8, R0
DE5AA:  UBFX.W          R2, R1, #0x11, #1
DE5AE:  ADD             R5, SP, #0x80+var_54
DE5B0:  LDR             R1, [R7,#arg_4]
DE5B2:  MOV             R0, R5
DE5B4:  BL              sub_DD758
DE5B8:  MOV             R1, R4
DE5BA:  BL              sub_DD86C
DE5BE:  SUB.W           R1, R7, #-var_31
DE5C2:  STR             R1, [SP,#0x80+var_58]
DE5C4:  ADD             R1, SP, #0x80+var_44
DE5C6:  STR             R1, [SP,#0x80+var_5C]
DE5C8:  SUB.W           R1, R7, #-var_39
DE5CC:  STR             R1, [SP,#0x80+var_60]
DE5CE:  ADD             R1, SP, #0x80+var_28
DE5D0:  STR             R1, [SP,#0x80+var_64]
DE5D2:  ADD             R1, SP, #0x80+var_30
DE5D4:  STR             R1, [SP,#0x80+var_70]
DE5D6:  ADD             R1, SP, #0x80+var_2C
DE5D8:  STR             R1, [SP,#0x80+var_74]
DE5DA:  ADD             R1, SP, #0x80+var_38
DE5DC:  STRD.W          R10, R5, [SP,#0x80+var_6C]
DE5E0:  STR             R1, [SP,#0x80+var_78]
DE5E2:  ADD             R1, SP, #0x80+var_78
DE5E4:  ADD.W           R2, R0, R8
DE5E8:  STR             R1, [SP,#0x80+var_80]
DE5EA:  MOV             R0, R9
DE5EC:  LDR             R1, [SP,#0x80+var_7C]
DE5EE:  MOV             R3, R2
DE5F0:  BL              sub_DE980
DE5F4:  MOV             R4, R0
DE5F6:  LDRB.W          R0, [SP,#0x80+var_54]
DE5FA:  LSLS            R0, R0, #0x1F
DE5FC:  BEQ             loc_DE676
DE5FE:  LDR             R0, [SP,#0x80+var_4C]; void *
DE600:  BLX             j__ZdlPv; operator delete(void *)
DE604:  B               loc_DE676
DE606:  NEGS            R2, R4
DE608:  CMP             R6, R2
DE60A:  MOV             R0, R2
DE60C:  IT LT
DE60E:  MOVLT           R0, R6
DE610:  CMP.W           R6, #0xFFFFFFFF
DE614:  IT LE
DE616:  MOVLE           R0, R2
DE618:  CMP             R5, #0
DE61A:  IT NE
DE61C:  MOVNE           R0, R2
DE61E:  ORRS.W          R2, R0, R5
DE622:  STR             R0, [SP,#0x80+var_54]
DE624:  BEQ             loc_DE62E
DE626:  MOVS            R1, #1
DE628:  STRB.W          R1, [SP,#0x80+var_44]
DE62C:  B               loc_DE640
DE62E:  TST.W           R1, #0x80000
DE632:  UBFX.W          R2, R1, #0x13, #1
DE636:  STRB.W          R2, [SP,#0x80+var_44]
DE63A:  BNE             loc_DE640
DE63C:  MOVS            R1, #1
DE63E:  B               loc_DE642
DE640:  MOVS            R1, #2
DE642:  ADD             R2, SP, #0x80+var_30
DE644:  STR             R2, [SP,#0x80+var_60]
DE646:  ADD             R2, SP, #0x80+var_2C
DE648:  STR             R2, [SP,#0x80+var_64]
DE64A:  ADD             R2, SP, #0x80+var_54
DE64C:  STR             R2, [SP,#0x80+var_68]
DE64E:  SUB.W           R2, R7, #-var_39
DE652:  STR             R2, [SP,#0x80+var_6C]
DE654:  ADD             R2, SP, #0x80+var_44
DE656:  STR             R2, [SP,#0x80+var_70]
DE658:  SUB.W           R2, R7, #-var_31
DE65C:  STR             R2, [SP,#0x80+var_74]
DE65E:  ADD             R2, SP, #0x80+var_38
DE660:  STR             R2, [SP,#0x80+var_78]
DE662:  ADD             R2, SP, #0x80+var_78
DE664:  ADD             R0, R11
DE666:  STR             R2, [SP,#0x80+var_80]
DE668:  ADDS            R2, R0, R1
DE66A:  MOV             R0, LR
DE66C:  MOV             R1, R12
DE66E:  MOV             R3, R2
DE670:  BL              sub_DEE14
DE674:  MOV             R4, R0
DE676:  MOV             R0, R4
DE678:  ADD             SP, SP, #0x64 ; 'd'
DE67A:  POP.W           {R8-R11}
DE67E:  POP             {R4-R7,PC}
