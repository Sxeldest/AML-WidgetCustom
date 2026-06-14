; =========================================================
; Game Engine Function: unquant_coarse_energy
; Address            : 0x19A3C8 - 0x19A54C
; =========================================================

19A3C8:  PUSH            {R4-R7,LR}
19A3CA:  ADD             R7, SP, #0xC
19A3CC:  PUSH.W          {R8-R11}
19A3D0:  SUB             SP, SP, #0x2C
19A3D2:  STR             R0, [SP,#0x48+var_2C]
19A3D4:  MOV             R8, R3
19A3D6:  LDR             R0, =(__stack_chk_guard_ptr - 0x19A3E0)
19A3D8:  LDR.W           LR, [R7,#arg_0]
19A3DC:  ADD             R0, PC; __stack_chk_guard_ptr
19A3DE:  STR             R2, [SP,#0x48+var_44]
19A3E0:  LDR.W           R12, [R7,#arg_C]
19A3E4:  CMP.W           LR, #0
19A3E8:  LDR             R0, [R0]; __stack_chk_guard
19A3EA:  LDR             R2, [R0]
19A3EC:  STR             R2, [SP,#0x48+var_20]
19A3EE:  MOV.W           R2, #0
19A3F2:  STRD.W          R2, R2, [SP,#0x48+var_28]
19A3F6:  BEQ             loc_19A3FE
19A3F8:  MOVW            R3, #0x1333
19A3FC:  B               loc_19A40E
19A3FE:  LDR             R2, =(unk_B3CBC - 0x19A406)
19A400:  LDR             R3, =(unk_B3C9C - 0x19A408)
19A402:  ADD             R2, PC; unk_B3CBC
19A404:  ADD             R3, PC; unk_B3C9C
19A406:  LDRH.W          R2, [R2,R12,LSL#1]
19A40A:  LDRH.W          R3, [R3,R12,LSL#1]
19A40E:  LDR             R0, [SP,#0x48+var_44]
19A410:  MOV             R4, R1
19A412:  CMP             R4, R0
19A414:  BGE.W           loc_19A532
19A418:  LDR.W           R11, [R7,#arg_4]
19A41C:  MOVS            R0, #0x20 ; ' '
19A41E:  LDR.W           R1, [R11,#4]
19A422:  ADD.W           R0, R0, R1,LSL#3
19A426:  STR             R0, [SP,#0x48+var_30]
19A428:  SXTH            R0, R3
19A42A:  MOVS            R1, #0x54 ; 'T'
19A42C:  STR             R0, [SP,#0x48+var_34]
19A42E:  SXTH            R0, R2
19A430:  STR             R0, [SP,#0x48+var_38]
19A432:  LDR             R0, =(unk_C2655 - 0x19A43A)
19A434:  LDR             R5, [SP,#0x48+var_34]
19A436:  ADD             R0, PC; unk_C2655
19A438:  MLA.W           R0, R12, R1, R0
19A43C:  MOVS            R1, #0x2A ; '*'
19A43E:  MLA.W           R0, LR, R1, R0
19A442:  STR             R0, [SP,#0x48+var_48]
19A444:  CMP             R4, #0x14
19A446:  MOV             R0, R4
19A448:  IT GE
19A44A:  MOVGE           R0, #0x14
19A44C:  MOVS            R1, #1
19A44E:  MOV             R12, R4
19A450:  LDR             R2, [SP,#0x48+var_48]
19A452:  ORR.W           R1, R1, R0,LSL#1
19A456:  MOV.W           R10, #0
19A45A:  MOV             R9, R12
19A45C:  ADD             R1, R2
19A45E:  ADD.W           R0, R2, R0,LSL#1
19A462:  STR             R1, [SP,#0x48+var_3C]
19A464:  STR             R0, [SP,#0x48+var_40]
19A466:  LDR.W           R1, [R11,#0x1C]
19A46A:  LDR.W           R0, [R11,#0x14]
19A46E:  LDR             R2, [SP,#0x48+var_30]
19A470:  CLZ.W           R1, R1
19A474:  SUBS            R0, R2, R0
19A476:  SUBS            R0, R0, R1
19A478:  CMP             R0, #0xF
19A47A:  BLT             loc_19A492
19A47C:  LDR             R0, [SP,#0x48+var_40]
19A47E:  LDR             R1, [SP,#0x48+var_3C]
19A480:  LDRB            R0, [R0]
19A482:  LDRB            R2, [R1]
19A484:  LSLS            R1, R0, #7
19A486:  MOV             R0, R11
19A488:  LSLS            R2, R2, #6
19A48A:  BLX             j_ec_laplace_decode
19A48E:  MOV             R12, R9
19A490:  B               loc_19A4C6
19A492:  CMP             R0, #2
19A494:  BLT             loc_19A4B0
19A496:  LDR             R1, =(unk_C27A5 - 0x19A4A0)
19A498:  MOV             R0, R11
19A49A:  MOVS            R2, #2
19A49C:  ADD             R1, PC; unk_C27A5
19A49E:  BLX             j_ec_dec_icdf
19A4A2:  AND.W           R1, R0, #1
19A4A6:  MOV             R12, R9
19A4A8:  NEGS            R1, R1
19A4AA:  EOR.W           R0, R1, R0,ASR#1
19A4AE:  B               loc_19A4C6
19A4B0:  CMP             R0, #1
19A4B2:  BNE             loc_19A4C2
19A4B4:  MOV             R0, R11
19A4B6:  MOVS            R1, #1
19A4B8:  BLX             j_ec_dec_bit_logp
19A4BC:  NEGS            R0, R0
19A4BE:  MOV             R12, R9
19A4C0:  B               loc_19A4C6
19A4C2:  MOV.W           R0, #0xFFFFFFFF
19A4C6:  LDR             R1, [SP,#0x48+var_2C]
19A4C8:  MOV             R3, #0xFFFFDC00
19A4D0:  LDR             R1, [R1,#8]
19A4D2:  MLA.W           R1, R1, R10, R12
19A4D6:  LDRSH.W         R2, [R8,R1,LSL#1]
19A4DA:  CMN.W           R2, #0x2400
19A4DE:  IT LE
19A4E0:  MOVLE           R2, R3
19A4E2:  LDR             R3, [SP,#0x48+var_38]
19A4E4:  MULS            R2, R3
19A4E6:  ADD             R3, SP, #0x48+var_28
19A4E8:  MOV             R4, R3
19A4EA:  LDR.W           R3, [R4,R10,LSL#2]
19A4EE:  ADDS            R2, #0x80
19A4F0:  ADD.W           R6, R3, R0,LSL#17
19A4F4:  ADD.W           R2, R6, R2,ASR#8
19A4F8:  MOVS            R6, #0xFFC80000
19A4FE:  CMP             R2, R6
19A500:  IT LE
19A502:  MOVLE           R2, R6
19A504:  LSLS            R6, R0, #0x12
19A506:  SMULTB.W        R6, R6, R5
19A50A:  ADDS            R2, #0x40 ; '@'
19A50C:  LSRS            R2, R2, #7
19A50E:  STRH.W          R2, [R8,R1,LSL#1]
19A512:  RSB.W           R0, R6, R0,LSL#17
19A516:  ADD             R0, R3
19A518:  STR.W           R0, [R4,R10,LSL#2]
19A51C:  ADD.W           R10, R10, #1
19A520:  LDR             R0, [R7,#arg_8]
19A522:  CMP             R10, R0
19A524:  BLT             loc_19A466
19A526:  ADD.W           R12, R12, #1
19A52A:  LDR             R0, [SP,#0x48+var_44]
19A52C:  CMP             R12, R0
19A52E:  MOV             R4, R12
19A530:  BNE             loc_19A444
19A532:  LDR             R0, =(__stack_chk_guard_ptr - 0x19A53A)
19A534:  LDR             R1, [SP,#0x48+var_20]
19A536:  ADD             R0, PC; __stack_chk_guard_ptr
19A538:  LDR             R0, [R0]; __stack_chk_guard
19A53A:  LDR             R0, [R0]
19A53C:  SUBS            R0, R0, R1
19A53E:  ITTT EQ
19A540:  ADDEQ           SP, SP, #0x2C ; ','
19A542:  POPEQ.W         {R8-R11}
19A546:  POPEQ           {R4-R7,PC}
19A548:  BLX             __stack_chk_fail
