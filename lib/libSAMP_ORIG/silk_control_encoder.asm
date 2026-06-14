; =========================================================
; Game Engine Function: silk_control_encoder
; Address            : 0xCA3E8 - 0xCAA00
; =========================================================

CA3E8:  PUSH            {R4-R7,LR}
CA3EA:  ADD             R7, SP, #0xC
CA3EC:  PUSH.W          {R8-R11}
CA3F0:  SUB             SP, SP, #0xC
CA3F2:  MOV             R8, R1
CA3F4:  MOV             R4, R0
CA3F6:  MOVW            R0, #0x17BC
CA3FA:  LDR.W           R1, [R8,#0x30]
CA3FE:  LDR             R5, [R7,#arg_0]
CA400:  MOVW            R6, #0x11D4
CA404:  STR             R1, [R4,R0]
CA406:  MOVW            R1, #0x1244
CA40A:  MOVW            R10, #0x123C
CA40E:  LDR.W           R0, [R8,#0x34]
CA412:  STR             R0, [R4,R1]
CA414:  MOVW            R1, #0x11CC
CA418:  LDR.W           R0, [R8,#8]
CA41C:  STR             R0, [R4,R1]
CA41E:  LDR.W           R1, [R8,#0xC]
CA422:  STR             R1, [R4,R6]
CA424:  MOVW            R6, #0x11D8
CA428:  LDR.W           R1, [R8,#0x10]
CA42C:  STR             R1, [R4,R6]
CA42E:  MOVW            R6, #0x11DC
CA432:  LDR.W           R1, [R8,#0x14]
CA436:  STR             R1, [R4,R6]
CA438:  MOVW            R6, #0x17C8
CA43C:  LDR.W           R1, [R8,#0x28]
CA440:  STR             R1, [R4,R6]
CA442:  MOVW            R6, #0x1678
CA446:  LDR.W           R1, [R8]
CA44A:  STR             R1, [R4,R6]
CA44C:  MOVW            R1, #0x11B8
CA450:  LDR.W           R6, [R8,#4]
CA454:  STR             R2, [R4,R1]
CA456:  MOVW            R1, #0x167C
CA45A:  STR             R6, [R4,R1]
CA45C:  MOV.W           R1, #0x1680
CA460:  STR             R3, [R4,R1]
CA462:  LDR.W           R1, [R4,R10]
CA466:  CBZ             R1, loc_CA472
CA468:  MOVW            R1, #0x1248
CA46C:  LDR             R1, [R4,R1]
CA46E:  CMP             R1, #0
CA470:  BEQ             loc_CA522
CA472:  MOV             R0, R4
CA474:  MOV             R1, R8
CA476:  BLX             j_silk_control_audio_bandwidth
CA47A:  MOV             R6, R0
CA47C:  CMP             R5, #0
CA47E:  IT NE
CA480:  MOVNE           R6, R5
CA482:  MOV             R0, R4
CA484:  MOV             R1, R6
CA486:  BL              sub_CAA34
CA48A:  MOVW            R1, #0x1204
CA48E:  LDR.W           R12, [R8,#0x18]
CA492:  LDR             R2, [R4,R1]
CA494:  STR             R0, [SP,#0x28+var_24]
CA496:  CMP             R2, R12
CA498:  BNE             loc_CA4B0
CA49A:  MOV.W           R0, #0x11E0
CA49E:  ADD.W           R11, R4, #0x11E0
CA4A2:  LDR             R2, [R4,R0]
CA4A4:  MOVS            R0, #0
CA4A6:  STR             R0, [SP,#0x28+var_20]
CA4A8:  CMP             R2, R6
CA4AA:  BNE.W           loc_CA5CA
CA4AE:  B               loc_CA718
CA4B0:  ADD             R1, R4
CA4B2:  STR             R1, [SP,#0x28+var_28]
CA4B4:  SUB.W           R1, R12, #0xA
CA4B8:  MOVS            R3, #0
CA4BA:  CMP             R1, #0x1E
CA4BC:  BHI             loc_CA4D0
CA4BE:  MOVS            R2, #1
CA4C0:  LSL.W           R1, R2, R1
CA4C4:  MOV             R2, #0x40000401
CA4CC:  TST             R1, R2
CA4CE:  BNE             loc_CA4DA
CA4D0:  CMP.W           R12, #0x3C ; '<'
CA4D4:  IT NE
CA4D6:  MOVNE           R3, #0xFFFFFF99
CA4DA:  CMP.W           R12, #0xA
CA4DE:  STR             R3, [SP,#0x28+var_20]
CA4E0:  BGT             loc_CA54A
CA4E2:  LDR.W           R3, =(silk_pitch_contour_10_ms_iCDF_ptr - 0xCA4F4)
CA4E6:  MOV.W           R1, #0x11E0
CA4EA:  LDR.W           R9, =(silk_pitch_contour_10_ms_NB_iCDF_ptr - 0xCA502)
CA4EE:  SXTH            R5, R6
CA4F0:  ADD             R3, PC; silk_pitch_contour_10_ms_iCDF_ptr
CA4F2:  LDR             R2, [R4,R1]
CA4F4:  CMP.W           R12, #0xA
CA4F8:  MOV.W           R1, #1
CA4FC:  LDR             R3, [R3]; silk_pitch_contour_10_ms_iCDF
CA4FE:  ADD             R9, PC; silk_pitch_contour_10_ms_NB_iCDF_ptr
CA500:  RSB.W           R5, R5, R5,LSL#3
CA504:  IT EQ
CA506:  MOVEQ           R1, #2
CA508:  CMP             R2, #8
CA50A:  IT EQ
CA50C:  LDREQ.W         R3, [R9]; silk_pitch_contour_10_ms_NB_iCDF
CA510:  MOV.W           LR, #1
CA514:  SMULBB.W        R10, R12, R6
CA518:  ADD.W           R11, R4, #0x11E0
CA51C:  MOV.W           R9, R5,LSL#1
CA520:  B               loc_CA58E
CA522:  MOVW            R1, #0x11D0
CA526:  LDR             R1, [R4,R1]
CA528:  CMP             R0, R1
CA52A:  BEQ.W           loc_CA684
CA52E:  MOV.W           R0, #0x11E0
CA532:  LDR             R1, [R4,R0]
CA534:  CMP             R1, #1
CA536:  BLT.W           loc_CA684
CA53A:  MOV             R0, R4
CA53C:  ADD             SP, SP, #0xC
CA53E:  POP.W           {R8-R11}
CA542:  POP.W           {R4-R7,LR}
CA546:  B.W             sub_CAA34
CA54A:  MOVW            R3, #0xCCCD
CA54E:  LDR.W           R2, =(silk_pitch_contour_iCDF_ptr - 0xCA562)
CA552:  MOVT            R3, #0xCCCC
CA556:  LDR.W           LR, =(silk_pitch_contour_NB_iCDF_ptr - 0xCA56C)
CA55A:  UMULL.W         R3, R5, R12, R3
CA55E:  ADD             R2, PC; silk_pitch_contour_iCDF_ptr
CA560:  MOV.W           R1, #0x11E0
CA564:  LDR             R3, [R2]; silk_pitch_contour_iCDF
CA566:  LDR             R2, [R4,R1]
CA568:  ADD             LR, PC; silk_pitch_contour_NB_iCDF_ptr
CA56A:  SXTH            R1, R6
CA56C:  CMP             R2, #8
CA56E:  ADD.W           R11, R4, #0x11E0
CA572:  IT EQ
CA574:  LDREQ.W         R3, [LR]; silk_pitch_contour_NB_iCDF
CA578:  MOV.W           LR, R5,LSR#4
CA57C:  ADD.W           R5, R1, R1,LSL#1
CA580:  ADD.W           R1, R1, R1,LSL#2
CA584:  MOV.W           R10, R1,LSL#2
CA588:  MOV.W           R9, R5,LSL#3
CA58C:  MOVS            R1, #4
CA58E:  MOVW            R5, #0x11E4
CA592:  STR             R1, [R4,R5]
CA594:  MOVW            R1, #0x1670
CA598:  STR.W           LR, [R4,R1]
CA59C:  MOVW            R1, #0x11E8
CA5A0:  STR.W           R10, [R4,R1]
CA5A4:  MOVW            R1, #0x11C4
CA5A8:  MOVW            R10, #0x123C
CA5AC:  STR.W           R9, [R4,R1]
CA5B0:  MOVW            R1, #0x1250
CA5B4:  STR             R3, [R4,R1]
CA5B6:  MOVS            R1, #0
CA5B8:  LDR             R0, [SP,#0x28+var_28]
CA5BA:  STR.W           R12, [R0]
CA5BE:  MOV.W           R0, #0x1200
CA5C2:  STR             R1, [R4,R0]
CA5C4:  CMP             R2, R6
CA5C6:  BEQ.W           loc_CA718
CA5CA:  MOVW            R0, #0x1C0C
CA5CE:  MOVS            R5, #0
CA5D0:  STR             R5, [R4,R0]
CA5D2:  MOVW            R0, #0x1C08
CA5D6:  MOV.W           R9, #0x1C00
CA5DA:  STR             R5, [R4,R0]
CA5DC:  MOVW            R0, #0x1C04
CA5E0:  MOV.W           R1, #0x1120; n
CA5E4:  STR             R5, [R4,R0]
CA5E6:  MOVW            R0, #0x166C
CA5EA:  STR             R5, [R4,R0]
CA5EC:  MOVW            R0, #0x1674
CA5F0:  STR             R5, [R4,R0]
CA5F2:  MOV.W           R0, #0x1200
CA5F6:  STR             R5, [R4,R0]
CA5F8:  ADD.W           R0, R4, #0x94; int
CA5FC:  STR.W           R5, [R4,R9]
CA600:  STRD.W          R5, R5, [R4,#0x10]
CA604:  BLX             sub_10967C
CA608:  MOVW            R3, #0x118C
CA60C:  MOV.W           R2, #0x10000
CA610:  STR             R2, [R4,R3]
CA612:  MOVW            R2, #0x117C
CA616:  MOVS            R3, #0x64 ; 'd'
CA618:  LDR.W           R0, =(silk_pitch_contour_10_ms_iCDF_ptr - 0xCA628)
CA61C:  MOVS            R1, #1
CA61E:  STR             R3, [R4,R2]
CA620:  MOVW            R2, #0x1238
CA624:  ADD             R0, PC; silk_pitch_contour_10_ms_iCDF_ptr
CA626:  STR             R1, [R4,R2]
CA628:  MOV.W           R2, #0x11C0
CA62C:  LDR.W           R1, =(silk_pitch_contour_10_ms_NB_iCDF_ptr - 0xCA638)
CA630:  STR             R3, [R4,R2]
CA632:  MOVS            R2, #0xA
CA634:  ADD             R1, PC; silk_pitch_contour_10_ms_NB_iCDF_ptr
CA636:  LDR.W           R12, =(silk_pitch_contour_iCDF_ptr - 0xCA646)
CA63A:  STRB.W          R2, [R4,R9]
CA63E:  MOVW            R2, #0x11BD
CA642:  ADD             R12, PC; silk_pitch_contour_iCDF_ptr
CA644:  LDR.W           LR, =(silk_pitch_contour_NB_iCDF_ptr - 0xCA64E)
CA648:  STRB            R5, [R4,R2]
CA64A:  ADD             LR, PC; silk_pitch_contour_NB_iCDF_ptr
CA64C:  LDR             R2, [R0]; silk_pitch_contour_10_ms_iCDF
CA64E:  MOVW            R0, #0x11E4
CA652:  STR.W           R6, [R11]
CA656:  LDR             R0, [R4,R0]
CA658:  LDR             R1, [R1]; silk_pitch_contour_10_ms_NB_iCDF
CA65A:  CMP             R0, #4
CA65C:  ITT EQ
CA65E:  LDREQ.W         R1, [LR]; silk_pitch_contour_NB_iCDF
CA662:  LDREQ.W         R2, [R12]; silk_pitch_contour_iCDF
CA666:  CMP             R6, #8
CA668:  IT EQ
CA66A:  MOVEQ           R2, R1
CA66C:  MOVW            R1, #0x1250
CA670:  STR             R2, [R4,R1]
CA672:  ORR.W           R1, R6, #4
CA676:  CMP             R1, #0xC
CA678:  BNE             loc_CA688
CA67A:  LDR             R1, =(silk_NLSF_CB_NB_MB_ptr - 0xCA680)
CA67C:  ADD             R1, PC; silk_NLSF_CB_NB_MB_ptr
CA67E:  LDR             R2, [R1]; silk_NLSF_CB_NB_MB
CA680:  MOVS            R1, #0xA
CA682:  B               loc_CA690
CA684:  MOVS            R0, #0
CA686:  B               loc_CA88C
CA688:  LDR             R1, =(silk_NLSF_CB_WB_ptr - 0xCA68E)
CA68A:  ADD             R1, PC; silk_NLSF_CB_WB_ptr
CA68C:  LDR             R2, [R1]; silk_NLSF_CB_WB
CA68E:  MOVS            R1, #0x10
CA690:  MOVW            R3, #0x1254
CA694:  CMP             R0, #4
CA696:  STR             R2, [R4,R3]
CA698:  MOV.W           R2, #0x1220
CA69C:  MOVW            R3, #0x11F4
CA6A0:  STR             R1, [R4,R2]
CA6A2:  MOVW            R2, #0x11EC
CA6A6:  ADD.W           R1, R6, R6,LSL#2
CA6AA:  STR             R1, [R4,R2]
CA6AC:  MOV.W           R2, R6,LSL#16
CA6B0:  MOV.W           R2, R2,ASR#15
CA6B4:  STR             R2, [R4,R3]
CA6B6:  SXTH            R3, R6
CA6B8:  ADD.W           R5, R3, R3,LSL#2
CA6BC:  MOV.W           R1, R1,LSL#16
CA6C0:  MOV.W           R2, #0xE
CA6C4:  SMULBT.W        R0, R0, R1
CA6C8:  MOV.W           R1, R5,LSL#2
CA6CC:  MOVW            R5, #0x11F0
CA6D0:  IT EQ
CA6D2:  MOVEQ           R2, #0x18
CA6D4:  STR             R1, [R4,R5]
CA6D6:  ADD.W           R1, R3, R3,LSL#3
CA6DA:  SMULBB.W        R2, R2, R3
CA6DE:  LSLS            R1, R1, #1
CA6E0:  MOVW            R3, #0x11C8
CA6E4:  STR             R1, [R4,R3]
CA6E6:  MOVW            R1, #0x11C4
CA6EA:  CMP             R6, #0x10
CA6EC:  STR             R2, [R4,R1]
CA6EE:  MOVW            R1, #0x11E8
CA6F2:  STR             R0, [R4,R1]
CA6F4:  BNE             loc_CA702
CA6F6:  LDR             R0, =(silk_uniform8_iCDF_ptr - 0xCA700)
CA6F8:  MOVW            R1, #0x124C
CA6FC:  ADD             R0, PC; silk_uniform8_iCDF_ptr
CA6FE:  LDR             R0, [R0]; silk_uniform8_iCDF
CA700:  B               loc_CA716
CA702:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0xCA70C)
CA704:  CMP             R6, #0xC
CA706:  LDR             R1, =(silk_uniform6_iCDF_ptr - 0xCA70E)
CA708:  ADD             R0, PC; silk_uniform4_iCDF_ptr
CA70A:  ADD             R1, PC; silk_uniform6_iCDF_ptr
CA70C:  LDR             R0, [R0]; silk_uniform4_iCDF
CA70E:  IT EQ
CA710:  LDREQ           R0, [R1]; silk_uniform6_iCDF
CA712:  MOVW            R1, #0x124C
CA716:  STR             R0, [R4,R1]
CA718:  LDR.W           LR, [R8,#0x24]
CA71C:  ADD.W           R12, R4, R10
CA720:  CMP.W           LR, #0
CA724:  BLE             loc_CA77C
CA726:  CMP.W           LR, #1
CA72A:  BNE             loc_CA7BE
CA72C:  MOVW            R0, #0x122C
CA730:  MOVW            R1, #0xC28F
CA734:  STR             R1, [R4,R0]
CA736:  MOVW            R0, #0x1224
CA73A:  MOVS            R1, #1
CA73C:  STR             R1, [R4,R0]
CA73E:  MOVW            R5, #0x1228
CA742:  MOV.W           R10, #8
CA746:  MOVW            R0, #0x121C
CA74A:  MOVS            R3, #0xE
CA74C:  STR.W           R10, [R4,R5]
CA750:  STR             R3, [R4,R0]
CA752:  MOVW            R0, #0x1214
CA756:  MOVS            R3, #0
CA758:  STR             R1, [R4,R0]
CA75A:  MOVW            R0, #0x1218
CA75E:  MOV.W           R1, #0x11E0
CA762:  STR             R3, [R4,R0]
CA764:  MOVW            R0, #0x1234
CA768:  LDR             R6, [R4,R1]
CA76A:  MOVS            R1, #3
CA76C:  STR             R1, [R4,R0]
CA76E:  MOVW            R1, #0x11F8
CA772:  ADD.W           R0, R6, R6,LSL#2
CA776:  STR             R0, [R4,R1]
CA778:  ADDS            R1, R4, R5
CA77A:  B               loc_CA810
CA77C:  MOVW            R0, #0x122C
CA780:  MOVW            R1, #0xCCCD
CA784:  STR             R1, [R4,R0]
CA786:  MOVW            R0, #0x1224
CA78A:  MOVS            R3, #0
CA78C:  STR             R3, [R4,R0]
CA78E:  MOVW            R1, #0x1228
CA792:  MOV.W           R10, #6
CA796:  MOVW            R0, #0x121C
CA79A:  MOVS            R5, #0xC
CA79C:  STR.W           R10, [R4,R1]
CA7A0:  STR             R5, [R4,R0]
CA7A2:  MOVW            R0, #0x1214
CA7A6:  MOVS            R5, #1
CA7A8:  STR             R5, [R4,R0]
CA7AA:  MOVW            R0, #0x1218
CA7AE:  MOV.W           R5, #0x11E0
CA7B2:  STR             R3, [R4,R0]
CA7B4:  MOVW            R0, #0x1234
CA7B8:  LDR             R6, [R4,R5]
CA7BA:  MOVS            R5, #2
CA7BC:  B               loc_CA802
CA7BE:  CMP.W           LR, #2
CA7C2:  BGT             loc_CA894
CA7C4:  MOVW            R0, #0x122C
CA7C8:  MOVW            R1, #0xCCCD
CA7CC:  STR             R1, [R4,R0]
CA7CE:  MOVW            R0, #0x1224
CA7D2:  MOVS            R3, #0
CA7D4:  STR             R3, [R4,R0]
CA7D6:  MOVW            R1, #0x1228
CA7DA:  MOV.W           R10, #6
CA7DE:  MOVW            R0, #0x121C
CA7E2:  MOVS            R5, #0xC
CA7E4:  STR.W           R10, [R4,R1]
CA7E8:  STR             R5, [R4,R0]
CA7EA:  MOVW            R0, #0x1214
CA7EE:  MOVS            R5, #2
CA7F0:  STR             R5, [R4,R0]
CA7F2:  MOVW            R0, #0x1218
CA7F6:  STR             R3, [R4,R0]
CA7F8:  MOV.W           R0, #0x11E0
CA7FC:  LDR             R6, [R4,R0]
CA7FE:  MOVW            R0, #0x1234
CA802:  STR             R5, [R4,R0]
CA804:  ADD.W           R0, R6, R6,LSL#1
CA808:  MOVW            R5, #0x11F8
CA80C:  ADD             R1, R4
CA80E:  STR             R0, [R4,R5]
CA810:  LDR.W           R11, [SP,#0x28+var_24]
CA814:  MOV.W           R5, #0x1220
CA818:  MOV.W           R2, #0x1240
CA81C:  LDR             R5, [R4,R5]
CA81E:  STR             R3, [R4,R2]
CA820:  CMP             R10, R5
CA822:  IT LT
CA824:  MOVLT           R5, R10
CA826:  MOVW            R3, #0x17CC
CA82A:  STR             R5, [R1]
CA82C:  MOVW            R1, #0x1210
CA830:  STR.W           LR, [R4,R1]
CA834:  ADD.W           R1, R6, R6,LSL#2
CA838:  ADD.W           R0, R1, R0,LSL#1
CA83C:  MOVW            R1, #0x11FC
CA840:  LDR             R2, [R4,R3]
CA842:  STR             R0, [R4,R1]
CA844:  MOVW            R0, #0x1208
CA848:  LDR.W           R1, [R8,#0x20]
CA84C:  STR             R1, [R4,R0]
CA84E:  LDR.W           R0, [R8,#0x2C]
CA852:  STR             R0, [R4,R3]
CA854:  CMP             R0, #0
CA856:  LDR             R6, [SP,#0x28+var_20]
CA858:  BEQ             loc_CA882
CA85A:  MOVS            R0, #7
CA85C:  CBZ             R2, loc_CA87C
CA85E:  UXTH            R2, R1
CA860:  MOVW            R3, #0x6666
CA864:  MULS            R2, R3
CA866:  MOV             R3, #0xFFFF999A
CA86E:  SMLABT.W        R0, R3, R1, R0
CA872:  SUB.W           R0, R0, R2,LSR#16
CA876:  CMP             R0, #2
CA878:  IT LE
CA87A:  MOVLE           R0, #2
CA87C:  MOVW            R1, #0x17D0
CA880:  STR             R0, [R4,R1]
CA882:  MOVS            R0, #1
CA884:  STR.W           R0, [R12]
CA888:  ADD.W           R0, R6, R11
CA88C:  ADD             SP, SP, #0xC
CA88E:  POP.W           {R8-R11}
CA892:  POP             {R4-R7,PC}
CA894:  CMP.W           LR, #3
CA898:  BNE             loc_CA8E4
CA89A:  MOVW            R0, #0x122C
CA89E:  MOVW            R1, #0xC28F
CA8A2:  STR             R1, [R4,R0]
CA8A4:  MOVW            R0, #0x1224
CA8A8:  MOVS            R1, #1
CA8AA:  STR             R1, [R4,R0]
CA8AC:  MOVW            R1, #0x1228
CA8B0:  MOV.W           R10, #8
CA8B4:  MOVW            R0, #0x121C
CA8B8:  MOVS            R3, #0xE
CA8BA:  STR.W           R10, [R4,R1]
CA8BE:  MOV.W           R5, #0x11E0
CA8C2:  STR             R3, [R4,R0]
CA8C4:  MOVW            R0, #0x1214
CA8C8:  MOVS            R3, #2
CA8CA:  STR             R3, [R4,R0]
CA8CC:  MOVW            R0, #0x1218
CA8D0:  MOVS            R3, #0
CA8D2:  STR             R3, [R4,R0]
CA8D4:  MOVW            R0, #0x1234
CA8D8:  LDR             R6, [R4,R5]
CA8DA:  MOVS            R5, #4
CA8DC:  STR             R5, [R4,R0]
CA8DE:  ADD.W           R0, R6, R6,LSL#2
CA8E2:  B               loc_CA808
CA8E4:  CMP.W           LR, #5
CA8E8:  BGT             loc_CA944
CA8EA:  MOVW            R0, #0x122C
CA8EE:  MOVW            R1, #0xBD71
CA8F2:  STR             R1, [R4,R0]
CA8F4:  MOVW            R0, #0x1224
CA8F8:  MOVS            R1, #1
CA8FA:  STR             R1, [R4,R0]
CA8FC:  MOVW            R9, #0x1228
CA900:  MOV.W           R10, #0xA
CA904:  MOVW            R0, #0x121C
CA908:  MOVS            R3, #0x10
CA90A:  STR.W           R10, [R4,R9]
CA90E:  MOVS            R5, #6
CA910:  STR             R3, [R4,R0]
CA912:  MOVW            R0, #0x1214
CA916:  MOVS            R3, #2
CA918:  STR             R3, [R4,R0]
CA91A:  MOV.W           R0, #0x11E0
CA91E:  LDR             R6, [R4,R0]
CA920:  MOVW            R0, #0x1218
CA924:  STR             R1, [R4,R0]
CA926:  MOVW            R1, #0x1234
CA92A:  MOVW            R0, #0x3D7
CA92E:  STR             R5, [R4,R1]
CA930:  MOVW            R1, #0x11F8
CA934:  MUL.W           R3, R6, R0
CA938:  ADD.W           R0, R6, R6,LSL#2
CA93C:  STR             R0, [R4,R1]
CA93E:  ADD.W           R1, R4, R9
CA942:  B               loc_CA810
CA944:  MOVW            R0, #0x1224
CA948:  LDR.W           R11, [SP,#0x28+var_24]
CA94C:  ADD             R0, R4
CA94E:  CMP.W           LR, #7
CA952:  BGT             loc_CA9AA
CA954:  MOVS            R1, #1
CA956:  MOVW            R9, #0x1228
CA95A:  STR             R1, [R0]
CA95C:  MOV.W           R10, #0xC
CA960:  MOVW            R0, #0x122C
CA964:  MOVW            R3, #0xB852
CA968:  STR.W           R10, [R4,R9]
CA96C:  MOVS            R5, #8
CA96E:  STR             R3, [R4,R0]
CA970:  MOVW            R0, #0x121C
CA974:  MOVS            R3, #0x14
CA976:  STR             R3, [R4,R0]
CA978:  MOVW            R0, #0x1214
CA97C:  MOVS            R3, #3
CA97E:  STR             R3, [R4,R0]
CA980:  MOV.W           R0, #0x11E0
CA984:  LDR             R6, [R4,R0]
CA986:  MOVW            R0, #0x1218
CA98A:  STR             R1, [R4,R0]
CA98C:  MOVW            R1, #0x1234
CA990:  MOVW            R0, #0x3D7
CA994:  STR             R5, [R4,R1]
CA996:  MOVW            R1, #0x11F8
CA99A:  MUL.W           R3, R6, R0
CA99E:  ADD.W           R0, R6, R6,LSL#2
CA9A2:  STR             R0, [R4,R1]
CA9A4:  ADD.W           R1, R4, R9
CA9A8:  B               loc_CA814
CA9AA:  MOVS            R1, #2
CA9AC:  MOV.W           R10, #0x10
CA9B0:  STR             R1, [R0]
CA9B2:  MOVW            R1, #0x1228
CA9B6:  MOVW            R0, #0x122C
CA9BA:  MOVW            R3, #0xB333
CA9BE:  STR.W           R10, [R4,R1]
CA9C2:  MOVW            R5, #0x1234
CA9C6:  ADD             R1, R4
CA9C8:  STR             R3, [R4,R0]
CA9CA:  MOVW            R0, #0x121C
CA9CE:  MOVS            R3, #0x18
CA9D0:  STR             R3, [R4,R0]
CA9D2:  MOVW            R0, #0x1214
CA9D6:  MOVS            R3, #4
CA9D8:  STR             R3, [R4,R0]
CA9DA:  MOV.W           R3, #0x11E0
CA9DE:  MOVW            R0, #0x1218
CA9E2:  LDR             R6, [R4,R3]
CA9E4:  MOVS            R3, #1
CA9E6:  STR             R3, [R4,R0]
CA9E8:  MOVW            R0, #0x3D7
CA9EC:  MUL.W           R3, R6, R0
CA9F0:  ADD.W           R0, R6, R6,LSL#2
CA9F4:  STR.W           R10, [R4,R5]
CA9F8:  MOVW            R5, #0x11F8
CA9FC:  STR             R0, [R4,R5]
CA9FE:  B               loc_CA814
