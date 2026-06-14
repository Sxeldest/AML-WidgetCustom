; =========================================================
; Game Engine Function: sub_2174C8
; Address            : 0x2174C8 - 0x217666
; =========================================================

2174C8:  PUSH            {R4-R7,LR}
2174CA:  ADD             R7, SP, #0xC
2174CC:  PUSH.W          {R4-R9,R11}
2174D0:  MOV             R4, R0
2174D2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2174D8)
2174D4:  ADD             R0, PC; __stack_chk_guard_ptr
2174D6:  LDR             R0, [R0]; __stack_chk_guard
2174D8:  LDR             R0, [R0]
2174DA:  STR             R0, [SP,#0x28+var_1C]
2174DC:  LDRD.W          R2, R1, [R4]
2174E0:  CMP             R2, R1
2174E2:  BEQ.W           loc_2175E8
2174E6:  LDRB            R0, [R2]
2174E8:  MOVS            R5, #0
2174EA:  CMP             R0, #0x54 ; 'T'
2174EC:  BNE             loc_2175EA
2174EE:  ADDS            R0, R2, #1
2174F0:  STR             R0, [R4]
2174F2:  CMP             R0, R1
2174F4:  STR             R5, [SP,#0x28+var_20]
2174F6:  BEQ             loc_217538
2174F8:  LDRB            R3, [R0]
2174FA:  MOVS            R6, #0
2174FC:  MOVS            R5, #0
2174FE:  CMP             R3, #0x4C ; 'L'
217500:  BNE             loc_217528
217502:  ADDS            R0, R2, #2
217504:  STR             R0, [R4]
217506:  ADD             R1, SP, #0x28+var_20
217508:  MOV             R0, R4
21750A:  BL              sub_2178F6
21750E:  CMP             R0, #0
217510:  BNE             loc_2175E8
217512:  LDRD.W          R0, R1, [R4]
217516:  CMP             R0, R1
217518:  BEQ             loc_2175E8
21751A:  LDRB            R2, [R0]
21751C:  CMP             R2, #0x5F ; '_'
21751E:  BNE             loc_2175E8
217520:  LDR             R2, [SP,#0x28+var_20]
217522:  ADDS            R0, #1
217524:  STR             R0, [R4]
217526:  ADDS            R5, R2, #1
217528:  CMP             R0, R1
21752A:  STR             R6, [SP,#0x28+var_24]
21752C:  BEQ             loc_21753C
21752E:  LDRB            R1, [R0]
217530:  CMP             R1, #0x5F ; '_'
217532:  BNE             loc_21753C
217534:  MOVS            R6, #0
217536:  B               loc_21755C
217538:  MOVS            R5, #0
21753A:  STR             R5, [SP,#0x28+var_24]
21753C:  ADD             R1, SP, #0x28+var_24
21753E:  MOV             R0, R4
217540:  BL              sub_2178F6
217544:  CMP             R0, #0
217546:  BNE             loc_2175E8
217548:  LDR             R0, [SP,#0x28+var_24]
21754A:  ADDS            R6, R0, #1
21754C:  LDRD.W          R0, R1, [R4]
217550:  STR             R6, [SP,#0x28+var_24]
217552:  CMP             R0, R1
217554:  BEQ             loc_2175E8
217556:  LDRB            R1, [R0]
217558:  CMP             R1, #0x5F ; '_'
21755A:  BNE             loc_2175E8
21755C:  ADDS            R0, #1
21755E:  STR             R0, [R4]
217560:  LDRB.W          R0, [R4,#0x185]
217564:  CBZ             R0, loc_2175B6
217566:  CBNZ            R5, loc_2175B6
217568:  ADD.W           R0, R4, #0x198
21756C:  MOVS            R1, #0x14
21756E:  BL              sub_216EF0
217572:  MOV             R5, R0
217574:  MOVS            R1, #0
217576:  STRB            R1, [R5,#0x10]
217578:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle24ForwardTemplateReferenceE - 0x217580); `vtable for'`anonymous namespace'::itanium_demangle::ForwardTemplateReference ...
21757A:  LDR             R0, =0x2020224
21757C:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::ForwardTemplateReference
21757E:  STRD.W          R6, R1, [R5,#8]
217582:  ADDS            R2, #8
217584:  STRD.W          R2, R0, [R5]
217588:  LDRD.W          R0, R1, [R4,#0x16C]
21758C:  CMP             R0, R1
21758E:  BNE             loc_217658
217590:  LDR.W           R9, [R4,#0x168]
217594:  SUB.W           R8, R0, R9
217598:  ADD.W           R0, R4, #0x174
21759C:  CMP             R9, R0
21759E:  BEQ             loc_217624
2175A0:  MOV.W           R1, R8,LSL#1; size
2175A4:  MOV             R0, R9; ptr
2175A6:  BLX             realloc
2175AA:  MOV             R6, R0
2175AC:  CMP             R0, #0
2175AE:  STR.W           R0, [R4,#0x168]
2175B2:  BNE             loc_217644
2175B4:  B               loc_217662
2175B6:  LDRD.W          R1, R0, [R4,#0x14C]
2175BA:  SUBS            R0, R0, R1
2175BC:  CMP.W           R5, R0,ASR#2
2175C0:  BCS             loc_2175DA
2175C2:  LDR.W           R2, [R1,R5,LSL#2]
2175C6:  CBZ             R2, loc_2175DA
2175C8:  LDRD.W          R1, R2, [R2]
2175CC:  SUBS            R2, R2, R1
2175CE:  CMP.W           R6, R2,ASR#2
2175D2:  BCS             loc_2175DA
2175D4:  LDR.W           R5, [R1,R6,LSL#2]
2175D8:  B               loc_2175EA
2175DA:  LDR.W           R1, [R4,#0x188]
2175DE:  CMP             R1, R5
2175E0:  BNE             loc_2175E8
2175E2:  ASRS            R0, R0, #2
2175E4:  CMP             R5, R0
2175E6:  BLS             loc_217606
2175E8:  MOVS            R5, #0
2175EA:  LDR             R0, [SP,#0x28+var_1C]
2175EC:  LDR             R1, =(__stack_chk_guard_ptr - 0x2175F2)
2175EE:  ADD             R1, PC; __stack_chk_guard_ptr
2175F0:  LDR             R1, [R1]; __stack_chk_guard
2175F2:  LDR             R1, [R1]
2175F4:  CMP             R1, R0
2175F6:  ITTTT EQ
2175F8:  MOVEQ           R0, R5
2175FA:  ADDEQ           SP, SP, #0x10
2175FC:  POPEQ.W         {R8,R9,R11}
217600:  POPEQ           {R4-R7,PC}
217602:  BLX             __stack_chk_fail
217606:  BNE             loc_217616
217608:  MOVS            R1, #0
21760A:  ADD.W           R0, R4, #0x14C
21760E:  STR             R1, [SP,#0x28+var_28]
217610:  MOV             R1, SP
217612:  BL              sub_21794A
217616:  LDR             R1, =(aAuto - 0x21761E); "auto" ...
217618:  MOV             R0, R4
21761A:  ADD             R1, PC; "auto"
21761C:  BL              sub_2179C0
217620:  MOV             R5, R0
217622:  B               loc_2175EA
217624:  MOV.W           R0, R8,LSL#1; size
217628:  BLX             malloc
21762C:  CBZ             R0, loc_217662
21762E:  MOV             R6, R0
217630:  CMP.W           R8, #0
217634:  BEQ             loc_217640
217636:  MOV             R0, R6; dest
217638:  MOV             R1, R9; src
21763A:  MOV             R2, R8; n
21763C:  BLX             j_memmove
217640:  STR.W           R6, [R4,#0x168]
217644:  MOV.W           R0, R8,ASR#1
217648:  MOV.W           R1, R8,ASR#2
21764C:  ADD.W           R0, R6, R0,LSL#2
217650:  STR.W           R0, [R4,#0x170]
217654:  ADD.W           R0, R6, R1,LSL#2
217658:  ADDS            R1, R0, #4
21765A:  STR.W           R1, [R4,#0x16C]
21765E:  STR             R5, [R0]
217660:  B               loc_2175EA
217662:  BLX             j__ZSt9terminatev; std::terminate(void)
