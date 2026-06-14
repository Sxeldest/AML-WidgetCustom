; =========================================================
; Game Engine Function: silk_encode_signs
; Address            : 0xB7544 - 0xB7714
; =========================================================

B7544:  PUSH            {R4-R7,LR}
B7546:  ADD             R7, SP, #0xC
B7548:  PUSH.W          {R8-R11}
B754C:  SUB             SP, SP, #0xC
B754E:  MOV             R5, R0
B7550:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7558)
B7552:  MOV             R4, R1
B7554:  ADD             R0, PC; __stack_chk_guard_ptr
B7556:  LDR             R0, [R0]; __stack_chk_guard
B7558:  LDR             R0, [R0]
B755A:  STR             R0, [SP,#0x28+var_20]
B755C:  MOVS            R0, #0
B755E:  STRB.W          R0, [R7,#var_21]
B7562:  ADD.W           R0, R2, #8
B7566:  MOV.W           R9, R0,ASR#4
B756A:  CMP.W           R9, #1
B756E:  BLT.W           loc_B76FA
B7572:  LDR             R0, =(silk_sign_iCDF_ptr - 0xB7582)
B7574:  SUB.W           R8, R7, #-var_22
B7578:  LDR             R1, [R7,#arg_0]
B757A:  MOV.W           R11, #1
B757E:  ADD             R0, PC; silk_sign_iCDF_ptr
B7580:  LDR             R6, [R7,#arg_4]
B7582:  ADD.W           R1, R1, R3,LSL#1
B7586:  LDR             R0, [R0]; silk_sign_iCDF
B7588:  SXTH            R1, R1
B758A:  RSB.W           R1, R1, R1,LSL#3
B758E:  ADD.W           R10, R0, R1
B7592:  LDR             R0, [R6]
B7594:  CMP             R0, #1
B7596:  BLT.W           loc_B76EC
B759A:  AND.W           R0, R0, #0x1F
B759E:  CMP             R0, #6
B75A0:  IT CS
B75A2:  MOVCS           R0, #6
B75A4:  LDRB.W          R0, [R10,R0]
B75A8:  STRB.W          R0, [R7,#var_22]
B75AC:  LDRSB.W         R0, [R4]
B75B0:  CBZ             R0, loc_B75C0
B75B2:  ADD.W           R1, R11, R0,ASR#15
B75B6:  MOV             R0, R5
B75B8:  MOV             R2, R8
B75BA:  MOVS            R3, #8
B75BC:  BLX             j_ec_enc_icdf
B75C0:  LDRSB.W         R0, [R4,#1]
B75C4:  CBZ             R0, loc_B75D4
B75C6:  ADD.W           R1, R11, R0,ASR#15
B75CA:  MOV             R0, R5
B75CC:  MOV             R2, R8
B75CE:  MOVS            R3, #8
B75D0:  BLX             j_ec_enc_icdf
B75D4:  LDRSB.W         R0, [R4,#2]
B75D8:  CBZ             R0, loc_B75E8
B75DA:  ADD.W           R1, R11, R0,ASR#15
B75DE:  MOV             R0, R5
B75E0:  MOV             R2, R8
B75E2:  MOVS            R3, #8
B75E4:  BLX             j_ec_enc_icdf
B75E8:  LDRSB.W         R0, [R4,#3]
B75EC:  CBZ             R0, loc_B75FC
B75EE:  ADD.W           R1, R11, R0,ASR#15
B75F2:  MOV             R0, R5
B75F4:  MOV             R2, R8
B75F6:  MOVS            R3, #8
B75F8:  BLX             j_ec_enc_icdf
B75FC:  LDRSB.W         R0, [R4,#4]
B7600:  CBZ             R0, loc_B7610
B7602:  ADD.W           R1, R11, R0,ASR#15
B7606:  MOV             R0, R5
B7608:  MOV             R2, R8
B760A:  MOVS            R3, #8
B760C:  BLX             j_ec_enc_icdf
B7610:  LDRSB.W         R0, [R4,#5]
B7614:  CBZ             R0, loc_B7624
B7616:  ADD.W           R1, R11, R0,ASR#15
B761A:  MOV             R0, R5
B761C:  MOV             R2, R8
B761E:  MOVS            R3, #8
B7620:  BLX             j_ec_enc_icdf
B7624:  LDRSB.W         R0, [R4,#6]
B7628:  CBZ             R0, loc_B7638
B762A:  ADD.W           R1, R11, R0,ASR#15
B762E:  MOV             R0, R5
B7630:  MOV             R2, R8
B7632:  MOVS            R3, #8
B7634:  BLX             j_ec_enc_icdf
B7638:  LDRSB.W         R0, [R4,#7]
B763C:  CBZ             R0, loc_B764C
B763E:  ADD.W           R1, R11, R0,ASR#15
B7642:  MOV             R0, R5
B7644:  MOV             R2, R8
B7646:  MOVS            R3, #8
B7648:  BLX             j_ec_enc_icdf
B764C:  LDRSB.W         R0, [R4,#8]
B7650:  CBZ             R0, loc_B7660
B7652:  ADD.W           R1, R11, R0,ASR#15
B7656:  MOV             R0, R5
B7658:  MOV             R2, R8
B765A:  MOVS            R3, #8
B765C:  BLX             j_ec_enc_icdf
B7660:  LDRSB.W         R0, [R4,#9]
B7664:  CBZ             R0, loc_B7674
B7666:  ADD.W           R1, R11, R0,ASR#15
B766A:  MOV             R0, R5
B766C:  MOV             R2, R8
B766E:  MOVS            R3, #8
B7670:  BLX             j_ec_enc_icdf
B7674:  LDRSB.W         R0, [R4,#0xA]
B7678:  CBZ             R0, loc_B7688
B767A:  ADD.W           R1, R11, R0,ASR#15
B767E:  MOV             R0, R5
B7680:  MOV             R2, R8
B7682:  MOVS            R3, #8
B7684:  BLX             j_ec_enc_icdf
B7688:  LDRSB.W         R0, [R4,#0xB]
B768C:  CBZ             R0, loc_B769C
B768E:  ADD.W           R1, R11, R0,ASR#15
B7692:  MOV             R0, R5
B7694:  MOV             R2, R8
B7696:  MOVS            R3, #8
B7698:  BLX             j_ec_enc_icdf
B769C:  LDRSB.W         R0, [R4,#0xC]
B76A0:  CBZ             R0, loc_B76B0
B76A2:  ADD.W           R1, R11, R0,ASR#15
B76A6:  MOV             R0, R5
B76A8:  MOV             R2, R8
B76AA:  MOVS            R3, #8
B76AC:  BLX             j_ec_enc_icdf
B76B0:  LDRSB.W         R0, [R4,#0xD]
B76B4:  CBZ             R0, loc_B76C4
B76B6:  ADD.W           R1, R11, R0,ASR#15
B76BA:  MOV             R0, R5
B76BC:  MOV             R2, R8
B76BE:  MOVS            R3, #8
B76C0:  BLX             j_ec_enc_icdf
B76C4:  LDRSB.W         R0, [R4,#0xE]
B76C8:  CBZ             R0, loc_B76D8
B76CA:  ADD.W           R1, R11, R0,ASR#15
B76CE:  MOV             R0, R5
B76D0:  MOV             R2, R8
B76D2:  MOVS            R3, #8
B76D4:  BLX             j_ec_enc_icdf
B76D8:  LDRSB.W         R0, [R4,#0xF]
B76DC:  CBZ             R0, loc_B76EC
B76DE:  ADD.W           R1, R11, R0,ASR#15
B76E2:  MOV             R0, R5
B76E4:  MOV             R2, R8
B76E6:  MOVS            R3, #8
B76E8:  BLX             j_ec_enc_icdf
B76EC:  ADDS            R6, #4
B76EE:  SUBS.W          R9, R9, #1
B76F2:  ADD.W           R4, R4, #0x10
B76F6:  BNE.W           loc_B7592
B76FA:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7702)
B76FC:  LDR             R1, [SP,#0x28+var_20]
B76FE:  ADD             R0, PC; __stack_chk_guard_ptr
B7700:  LDR             R0, [R0]; __stack_chk_guard
B7702:  LDR             R0, [R0]
B7704:  SUBS            R0, R0, R1
B7706:  ITTT EQ
B7708:  ADDEQ           SP, SP, #0xC
B770A:  POPEQ.W         {R8-R11}
B770E:  POPEQ           {R4-R7,PC}
B7710:  BLX             __stack_chk_fail
