; =========================================================
; Game Engine Function: sub_842E4
; Address            : 0x842E4 - 0x84526
; =========================================================

842E4:  PUSH            {R4-R7,LR}
842E6:  ADD             R7, SP, #0xC
842E8:  PUSH.W          {R8-R11}
842EC:  SUB             SP, SP, #0x1C
842EE:  STR             R0, [SP,#0x38+var_30]
842F0:  MOV             R9, R1
842F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x842F8)
842F4:  ADD             R0, PC; __stack_chk_guard_ptr
842F6:  LDR             R0, [R0]; __stack_chk_guard
842F8:  LDR             R0, [R0]
842FA:  STR             R0, [SP,#0x38+var_20]
842FC:  MOVW            R0, #0xE995
84300:  LDR             R5, [R2]
84302:  MOVT            R0, #0x5BD1
84306:  MOVW            R2, #0xA654
8430A:  LDR.W           R10, [R9,#4]
8430E:  MOVT            R2, #0x6F47
84312:  MUL.W           R1, R5, R0
84316:  CMP.W           R10, #0
8431A:  EOR.W           R1, R1, R1,LSR#24
8431E:  MUL.W           R1, R0, R1
84322:  EOR.W           R1, R1, R2
84326:  EOR.W           R1, R1, R1,LSR#13
8432A:  MUL.W           R0, R1, R0
8432E:  EOR.W           R11, R0, R0,LSR#15
84332:  BEQ             loc_8436C
84334:  MOV.W           R0, #0x55555555
84338:  MOV.W           R1, #0x33333333
8433C:  AND.W           R0, R0, R10,LSR#1
84340:  SUB.W           R0, R10, R0
84344:  AND.W           R1, R1, R0,LSR#2
84348:  BIC.W           R0, R0, #0xCCCCCCCC
8434C:  ADD             R0, R1
8434E:  MOV.W           R1, #0x1010101
84352:  ADD.W           R0, R0, R0,LSR#4
84356:  BIC.W           R0, R0, #0xF0F0F0F0
8435A:  MULS            R0, R1
8435C:  LSRS            R4, R0, #0x18
8435E:  CMP             R4, #1
84360:  BHI             loc_8436E
84362:  SUB.W           R0, R10, #1
84366:  AND.W           R6, R11, R0
8436A:  B               loc_8437E
8436C:  B               loc_843D2
8436E:  CMP             R11, R10
84370:  MOV             R6, R11
84372:  BCC             loc_8437E
84374:  MOV             R0, R11
84376:  MOV             R1, R10
84378:  BLX             sub_109688
8437C:  MOV             R6, R1
8437E:  LDR.W           R0, [R9]
84382:  LDR.W           R8, [R0,R6,LSL#2]
84386:  CMP.W           R8, #0
8438A:  BEQ             loc_843D2
8438C:  SUB.W           R1, R10, #1
84390:  STR             R6, [SP,#0x38+var_34]
84392:  B               loc_843A4
84394:  ANDS            R0, R1
84396:  CMP             R0, R6
84398:  BNE             loc_843D2
8439A:  LDR.W           R0, [R8,#8]
8439E:  CMP             R0, R5
843A0:  BEQ.W           loc_844DC
843A4:  LDR.W           R8, [R8]
843A8:  CMP.W           R8, #0
843AC:  BEQ             loc_843D2
843AE:  LDR.W           R0, [R8,#4]
843B2:  CMP             R0, R11
843B4:  BEQ             loc_8439A
843B6:  CMP             R4, #1
843B8:  BLS             loc_84394
843BA:  CMP             R0, R10
843BC:  BCC             loc_84396
843BE:  MOV             R6, R9
843C0:  MOV             R9, R1
843C2:  MOV             R1, R10
843C4:  BLX             sub_109688
843C8:  MOV             R0, R1
843CA:  MOV             R1, R9
843CC:  MOV             R9, R6
843CE:  LDR             R6, [SP,#0x38+var_34]
843D0:  B               loc_84396
843D2:  MOVS            R0, #0x20 ; ' '; unsigned int
843D4:  LDR.W           R8, [R7,#arg_0]
843D8:  BLX             j__Znwj; operator new(uint)
843DC:  LDR.W           R2, [R9,#0xC]
843E0:  MOV             R5, R0
843E2:  MOV.W           R0, #0xFFFFFFFF
843E6:  LDR.W           R1, [R8]
843EA:  ADDS            R2, #1
843EC:  STR             R0, [R5,#0x10]
843EE:  MOVS            R0, #0
843F0:  STR.W           R11, [R5,#4]
843F4:  VMOV            S2, R2
843F8:  STR             R0, [R5,#0xC]
843FA:  VLDR            S0, [R9,#0x10]
843FE:  ADD.W           R8, R9, #8
84402:  VCVT.F32.U32    S2, S2
84406:  LDR             R1, [R1]
84408:  CMP.W           R10, #0
8440C:  STR             R0, [R5]
8440E:  STR             R0, [R5,#0x1C]
84410:  STRD.W          R0, R0, [R5,#0x14]
84414:  MOV.W           R0, #1
84418:  STR             R1, [R5,#8]
8441A:  STRD.W          R5, R8, [SP,#0x38+var_2C]
8441E:  STRB.W          R0, [SP,#0x38+var_24]
84422:  BEQ             loc_8443E
84424:  VMOV            S4, R10
84428:  VCVT.F32.U32    S4, S4
8442C:  VMUL.F32        S4, S0, S4
84430:  VCMP.F32        S4, S2
84434:  VMRS            APSR_nzcv, FPSCR
84438:  BMI             loc_8443E
8443A:  MOV             R11, R6
8443C:  B               loc_844A2
8443E:  MOV.W           R6, R10,LSL#1
84442:  CMP.W           R10, #3
84446:  BCC             loc_84456
84448:  SUB.W           R0, R10, #1
8444C:  ANDS.W          R4, R10, R0
84450:  IT NE
84452:  MOVNE           R4, #1
84454:  B               loc_84458
84456:  MOVS            R4, #1
84458:  VDIV.F32        S0, S2, S0
8445C:  VMOV            R0, S0; x
84460:  BLX             ceilf
84464:  VMOV            S0, R0
84468:  ORR.W           R1, R4, R6
8446C:  VCVT.U32.F32    S0, S0
84470:  VMOV            R0, S0
84474:  CMP             R1, R0
84476:  IT CC
84478:  MOVCC           R1, R0; this
8447A:  MOV             R0, R9; int
8447C:  BL              sub_84538
84480:  LDR.W           R10, [R9,#4]
84484:  SUB.W           R0, R10, #1
84488:  TST.W           R10, R0
8448C:  BNE             loc_84494
8448E:  AND.W           R11, R11, R0
84492:  B               loc_844A2
84494:  CMP             R11, R10
84496:  BCC             loc_844A2
84498:  MOV             R0, R11
8449A:  MOV             R1, R10
8449C:  BLX             sub_109688
844A0:  MOV             R11, R1
844A2:  LDR.W           R0, [R9]
844A6:  LDR.W           R1, [R0,R11,LSL#2]
844AA:  CBZ             R1, loc_844B6
844AC:  LDR             R6, [SP,#0x38+var_30]
844AE:  LDR             R0, [R1]
844B0:  STR             R0, [R5]
844B2:  STR             R5, [R1]
844B4:  B               loc_844F6
844B6:  LDR.W           R1, [R8]
844BA:  STR             R1, [R5]
844BC:  STR.W           R5, [R8]
844C0:  STR.W           R8, [R0,R11,LSL#2]
844C4:  LDR             R5, [SP,#0x38+var_2C]
844C6:  LDR             R6, [SP,#0x38+var_30]
844C8:  LDR             R0, [R5]
844CA:  CBZ             R0, loc_844F6
844CC:  LDR             R0, [R0,#4]
844CE:  SUB.W           R1, R10, #1
844D2:  TST.W           R10, R1
844D6:  BNE             loc_844E2
844D8:  ANDS            R0, R1
844DA:  B               loc_844EE
844DC:  MOVS            R0, #0
844DE:  LDR             R6, [SP,#0x38+var_30]
844E0:  B               loc_84506
844E2:  CMP             R0, R10
844E4:  BCC             loc_844EE
844E6:  MOV             R1, R10
844E8:  BLX             sub_109688
844EC:  MOV             R0, R1
844EE:  LDR.W           R1, [R9]
844F2:  STR.W           R5, [R1,R0,LSL#2]
844F6:  LDR.W           R0, [R9,#0xC]
844FA:  LDR.W           R8, [SP,#0x38+var_2C]
844FE:  ADDS            R0, #1
84500:  STR.W           R0, [R9,#0xC]
84504:  MOVS            R0, #1
84506:  STRB            R0, [R6,#4]
84508:  STR.W           R8, [R6]
8450C:  LDR             R0, [SP,#0x38+var_20]
8450E:  LDR             R1, =(__stack_chk_guard_ptr - 0x84514)
84510:  ADD             R1, PC; __stack_chk_guard_ptr
84512:  LDR             R1, [R1]; __stack_chk_guard
84514:  LDR             R1, [R1]
84516:  CMP             R1, R0
84518:  ITTT EQ
8451A:  ADDEQ           SP, SP, #0x1C
8451C:  POPEQ.W         {R8-R11}
84520:  POPEQ           {R4-R7,PC}
84522:  BLX             __stack_chk_fail
