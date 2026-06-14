; =========================================================
; Game Engine Function: silk_LP_variable_cutoff
; Address            : 0x1AB408 - 0x1AB63C
; =========================================================

1AB408:  PUSH            {R4-R7,LR}
1AB40A:  ADD             R7, SP, #0xC
1AB40C:  PUSH.W          {R8-R11}
1AB410:  SUB             SP, SP, #0x34
1AB412:  MOV             R12, R0
1AB414:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AB41A)
1AB416:  ADD             R0, PC; __stack_chk_guard_ptr
1AB418:  LDR             R0, [R0]; __stack_chk_guard
1AB41A:  LDR             R0, [R0]
1AB41C:  STR             R0, [SP,#0x50+var_20]
1AB41E:  LDR.W           R10, [R12,#0xC]
1AB422:  CMP.W           R10, #0
1AB426:  BEQ.W           loc_1AB622
1AB42A:  LDR.W           LR, [R12,#8]
1AB42E:  RSB.W           R3, LR, #0x100
1AB432:  SBFX.W          R4, R3, #6, #0x10
1AB436:  CMP             R4, #3
1AB438:  BGT             loc_1AB4FA
1AB43A:  LSLS            R5, R3, #0xA
1AB43C:  MOVW            R6, #0xFFFF
1AB440:  BICS            R5, R6
1AB442:  RSB.W           R6, R5, R3,LSL#10
1AB446:  CMP             R6, #1
1AB448:  BLT             loc_1AB51C
1AB44A:  ADDS            R0, R4, #1
1AB44C:  SXTH            R3, R6
1AB44E:  CMP.W           R6, #0x8000
1AB452:  STR             R2, [SP,#0x50+var_3C]
1AB454:  BGE             loc_1AB54E
1AB456:  LDR             R5, =(silk_Transition_LP_B_Q28_ptr - 0x1AB466)
1AB458:  ADD.W           R2, R0, R0,LSL#1
1AB45C:  ADD.W           R9, R4, R4,LSL#1
1AB460:  STR             R2, [SP,#0x50+var_44]
1AB462:  ADD             R5, PC; silk_Transition_LP_B_Q28_ptr
1AB464:  LDR.W           R8, [R5]; silk_Transition_LP_B_Q28
1AB468:  LDR.W           R6, [R8,R9,LSL#2]
1AB46C:  LDR.W           R5, [R8,R2,LSL#2]
1AB470:  SUBS            R5, R5, R6
1AB472:  SMLABT.W        R6, R3, R5, R6
1AB476:  UXTH            R5, R5
1AB478:  MULS            R5, R3
1AB47A:  ADD.W           R5, R6, R5,ASR#16
1AB47E:  LDR             R6, =(silk_Transition_LP_A_Q28_ptr - 0x1AB486)
1AB480:  STR             R5, [SP,#0x50+var_30]
1AB482:  ADD             R6, PC; silk_Transition_LP_A_Q28_ptr
1AB484:  LDR             R6, [R6]; silk_Transition_LP_A_Q28
1AB486:  ADD.W           R5, R6, R4,LSL#3
1AB48A:  ADD.W           R11, R6, R0,LSL#3
1AB48E:  LDR.W           R4, [R6,R4,LSL#3]
1AB492:  LDR             R2, [R5,#4]
1AB494:  LDR.W           R5, [R11,#4]
1AB498:  LDR.W           R6, [R6,R0,LSL#3]
1AB49C:  SUBS            R5, R5, R2
1AB49E:  SMLABT.W        R2, R3, R5, R2
1AB4A2:  SUBS            R6, R6, R4
1AB4A4:  UXTH            R5, R5
1AB4A6:  SMLABT.W        R0, R3, R6, R4
1AB4AA:  UXTH            R6, R6
1AB4AC:  STR             R2, [SP,#0x50+var_40]
1AB4AE:  ADD.W           R2, R8, R9,LSL#2
1AB4B2:  LDRD.W          R9, R2, [R2,#4]
1AB4B6:  MUL.W           R11, R5, R3
1AB4BA:  LDR             R4, [SP,#0x50+var_44]
1AB4BC:  MULS            R6, R3
1AB4BE:  ADD.W           R4, R8, R4,LSL#2
1AB4C2:  LDRD.W          R8, R4, [R4,#4]
1AB4C6:  SUBS            R4, R4, R2
1AB4C8:  SUB.W           R8, R8, R9
1AB4CC:  SMLABT.W        R2, R3, R4, R2
1AB4D0:  UXTH            R4, R4
1AB4D2:  MULS            R4, R3
1AB4D4:  UXTH.W          R5, R8
1AB4D8:  SMLABT.W        R9, R3, R8, R9
1AB4DC:  MULS            R3, R5
1AB4DE:  ADD.W           R2, R2, R4,ASR#16
1AB4E2:  ADD.W           R3, R9, R3,ASR#16
1AB4E6:  STR             R3, [SP,#0x50+var_2C]
1AB4E8:  STR             R2, [SP,#0x50+var_28]
1AB4EA:  ADD.W           R2, R0, R6,ASR#16
1AB4EE:  LDR             R0, [SP,#0x50+var_40]
1AB4F0:  STR             R2, [SP,#0x50+var_38]
1AB4F2:  ADD.W           R2, R0, R11,ASR#16
1AB4F6:  STR             R2, [SP,#0x50+var_34]
1AB4F8:  B               loc_1AB5F6
1AB4FA:  LDR             R4, =(silk_Transition_LP_B_Q28_ptr - 0x1AB502)
1AB4FC:  LDR             R3, =(silk_Transition_LP_A_Q28_ptr - 0x1AB504)
1AB4FE:  ADD             R4, PC; silk_Transition_LP_B_Q28_ptr
1AB500:  ADD             R3, PC; silk_Transition_LP_A_Q28_ptr
1AB502:  LDR             R6, [R4]; silk_Transition_LP_B_Q28
1AB504:  LDR             R3, [R3]; silk_Transition_LP_A_Q28
1AB506:  LDRD.W          R4, R5, [R6,#(dword_BEFB4 - 0xBEF84)]
1AB50A:  LDR             R0, [R6,#(dword_BEFBC - 0xBEF84)]
1AB50C:  LDRD.W          R6, R3, [R3,#(dword_BEFE0 - 0xBEFC0)]
1AB510:  STRD.W          R4, R5, [SP,#0x50+var_30]
1AB514:  STR             R0, [SP,#0x50+var_28]
1AB516:  STRD.W          R6, R3, [SP,#0x50+var_38]
1AB51A:  B               loc_1AB5F8
1AB51C:  LDR             R5, =(silk_Transition_LP_A_Q28_ptr - 0x1AB528)
1AB51E:  ADD.W           R6, R4, R4,LSL#1
1AB522:  LDR             R3, =(silk_Transition_LP_B_Q28_ptr - 0x1AB52A)
1AB524:  ADD             R5, PC; silk_Transition_LP_A_Q28_ptr
1AB526:  ADD             R3, PC; silk_Transition_LP_B_Q28_ptr
1AB528:  LDR             R5, [R5]; silk_Transition_LP_A_Q28
1AB52A:  LDR             R3, [R3]; silk_Transition_LP_B_Q28
1AB52C:  LDR.W           R8, [R5,R4,LSL#3]
1AB530:  ADD.W           R4, R5, R4,LSL#3
1AB534:  LDR.W           R9, [R3,R6,LSL#2]
1AB538:  ADD.W           R3, R3, R6,LSL#2
1AB53C:  LDRD.W          R6, R3, [R3,#4]
1AB540:  LDR             R4, [R4,#4]
1AB542:  STRD.W          R9, R6, [SP,#0x50+var_30]
1AB546:  STR             R3, [SP,#0x50+var_28]
1AB548:  STRD.W          R8, R4, [SP,#0x50+var_38]
1AB54C:  B               loc_1AB5F8
1AB54E:  LDR             R6, =(silk_Transition_LP_B_Q28_ptr - 0x1AB55C)
1AB550:  ADD.W           R9, R4, R4,LSL#1
1AB554:  ADD.W           R2, R0, R0,LSL#1
1AB558:  ADD             R6, PC; silk_Transition_LP_B_Q28_ptr
1AB55A:  LDR.W           R11, [R6]; silk_Transition_LP_B_Q28
1AB55E:  LDR.W           R8, [R11,R9,LSL#2]
1AB562:  LDR.W           R6, [R11,R2,LSL#2]
1AB566:  SUB.W           R5, R6, R8
1AB56A:  SMLABT.W        R6, R3, R5, R6
1AB56E:  UXTH            R5, R5
1AB570:  MULS            R5, R3
1AB572:  ADD.W           R5, R6, R5,ASR#16
1AB576:  LDR             R6, =(silk_Transition_LP_A_Q28_ptr - 0x1AB57E)
1AB578:  STR             R5, [SP,#0x50+var_30]
1AB57A:  ADD             R6, PC; silk_Transition_LP_A_Q28_ptr
1AB57C:  LDR             R6, [R6]; silk_Transition_LP_A_Q28
1AB57E:  ADD.W           R5, R6, R4,LSL#3
1AB582:  LDR.W           R4, [R6,R4,LSL#3]
1AB586:  LDR.W           R8, [R5,#4]
1AB58A:  ADD.W           R5, R6, R0,LSL#3
1AB58E:  LDR.W           R6, [R6,R0,LSL#3]
1AB592:  LDR             R5, [R5,#4]
1AB594:  SUBS            R4, R6, R4
1AB596:  SUB.W           R8, R5, R8
1AB59A:  SMLABT.W        R0, R3, R4, R6
1AB59E:  ADD.W           R6, R11, R2,LSL#2
1AB5A2:  SMLABT.W        R5, R3, R8, R5
1AB5A6:  UXTH            R4, R4
1AB5A8:  STR             R5, [SP,#0x50+var_40]
1AB5AA:  UXTH.W          R5, R8
1AB5AE:  MULS            R5, R3
1AB5B0:  MUL.W           R8, R4, R3
1AB5B4:  STR             R5, [SP,#0x50+var_44]
1AB5B6:  ADD.W           R5, R11, R9,LSL#2
1AB5BA:  LDRD.W          R9, R5, [R5,#4]
1AB5BE:  LDRD.W          R11, R6, [R6,#4]
1AB5C2:  SUBS            R5, R6, R5
1AB5C4:  SUB.W           R9, R11, R9
1AB5C8:  SMLABT.W        R6, R3, R5, R6
1AB5CC:  UXTH            R5, R5
1AB5CE:  UXTH.W          R4, R9
1AB5D2:  MULS            R5, R3
1AB5D4:  SMLABT.W        R11, R3, R9, R11
1AB5D8:  MULS            R3, R4
1AB5DA:  ADD.W           R3, R11, R3,ASR#16
1AB5DE:  STR             R3, [SP,#0x50+var_2C]
1AB5E0:  ADD.W           R3, R6, R5,ASR#16
1AB5E4:  STR             R3, [SP,#0x50+var_28]
1AB5E6:  ADD.W           R3, R0, R8,ASR#16
1AB5EA:  STR             R3, [SP,#0x50+var_38]
1AB5EC:  LDRD.W          R2, R0, [SP,#0x50+var_44]
1AB5F0:  ADD.W           R3, R0, R2,ASR#16
1AB5F4:  STR             R3, [SP,#0x50+var_34]
1AB5F6:  LDR             R2, [SP,#0x50+var_3C]
1AB5F8:  ADD.W           R0, R10, LR
1AB5FC:  ADD             R3, SP, #0x50+var_30
1AB5FE:  CMP             R0, #0
1AB600:  IT LE
1AB602:  MOVLE           R0, #0
1AB604:  CMP.W           R0, #0x100
1AB608:  IT GE
1AB60A:  MOVGE.W         R0, #0x100
1AB60E:  STR.W           R0, [R12,#8]
1AB612:  MOV             R0, R1
1AB614:  STRD.W          R1, R2, [SP,#0x50+var_50]
1AB618:  ADD             R2, SP, #0x50+var_38
1AB61A:  MOV             R1, R3
1AB61C:  MOV             R3, R12
1AB61E:  BLX             j_silk_biquad_alt_stride1
1AB622:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AB62A)
1AB624:  LDR             R1, [SP,#0x50+var_20]
1AB626:  ADD             R0, PC; __stack_chk_guard_ptr
1AB628:  LDR             R0, [R0]; __stack_chk_guard
1AB62A:  LDR             R0, [R0]
1AB62C:  SUBS            R0, R0, R1
1AB62E:  ITTT EQ
1AB630:  ADDEQ           SP, SP, #0x34 ; '4'
1AB632:  POPEQ.W         {R8-R11}
1AB636:  POPEQ           {R4-R7,PC}
1AB638:  BLX             __stack_chk_fail
