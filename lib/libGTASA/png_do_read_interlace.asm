; =========================================================
; Game Engine Function: png_do_read_interlace
; Address            : 0x2005C0 - 0x2008D6
; =========================================================

2005C0:  PUSH            {R4-R7,LR}
2005C2:  ADD             R7, SP, #0xC
2005C4:  PUSH.W          {R8-R11}
2005C8:  SUB             SP, SP, #0x24
2005CA:  MOV             R5, R0
2005CC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2005D4)
2005CE:  CMP             R5, #0
2005D0:  ADD             R0, PC; __stack_chk_guard_ptr
2005D2:  LDR             R0, [R0]; __stack_chk_guard
2005D4:  LDR             R0, [R0]
2005D6:  STR             R0, [SP,#0x40+var_20]
2005D8:  IT NE
2005DA:  CMPNE           R1, #0
2005DC:  BEQ.W           loc_2008BC
2005E0:  ADR             R0, dword_2008DC
2005E2:  LDR.W           R12, [R5]
2005E6:  LDR.W           R6, [R0,R2,LSL#2]
2005EA:  LDRB            R0, [R5,#0xB]
2005EC:  STR             R5, [SP,#0x40+var_2C]
2005EE:  MUL.W           R2, R6, R12
2005F2:  CMP             R0, #4
2005F4:  STR             R2, [SP,#0x40+var_3C]
2005F6:  BEQ             loc_20062A
2005F8:  CMP             R0, #2
2005FA:  BEQ             loc_20064E
2005FC:  CMP             R0, #1
2005FE:  BNE             loc_200682
200600:  ADD.W           R0, R12, #7
200604:  AND.W           R4, R0, #7
200608:  LSLS            R0, R3, #0xF
20060A:  BMI             loc_2006DC
20060C:  ADDS            R0, R2, #7
20060E:  MOV.W           R10, #7
200612:  BIC.W           R0, R10, R0
200616:  EOR.W           R4, R4, #7
20061A:  MOV.W           R11, #0
20061E:  MOV.W           R9, #1
200622:  CMP.W           R12, #0
200626:  BNE             loc_2006F6
200628:  B               loc_2008A2
20062A:  AND.W           LR, R12, #1
20062E:  LSLS            R0, R3, #0xF
200630:  BMI.W           loc_200772
200634:  AND.W           R4, R2, #1
200638:  MOV.W           R10, #4
20063C:  MOV.W           R11, #0
200640:  MOV.W           R8, #4
200644:  CMP.W           R12, #0
200648:  BNE.W           loc_200790
20064C:  B               loc_2008A2
20064E:  MOV.W           R10, #6
200652:  ADD.W           R0, R10, R12,LSL#1
200656:  AND.W           R4, R0, #6
20065A:  LSLS            R0, R3, #0xF
20065C:  BMI.W           loc_200812
200660:  ADD.W           R0, R10, R2,LSL#1
200664:  EOR.W           R4, R4, #6
200668:  BIC.W           R0, R10, R0
20066C:  MOV.W           R11, #2
200670:  MOV.W           R9, #6
200674:  MOV.W           R10, #0
200678:  CMP.W           R12, #0
20067C:  BNE.W           loc_200828
200680:  B               loc_2008A2
200682:  CMP.W           R12, #0
200686:  BEQ.W           loc_2008A8
20068A:  LSRS            R5, R0, #3
20068C:  SUB.W           R0, R12, #1
200690:  RSB.W           R10, R5, #0
200694:  ADD.W           R11, SP, #0x40+var_28
200698:  MLA.W           R3, R5, R0, R1
20069C:  SUBS            R0, R2, #1
20069E:  MOV.W           R8, #0
2006A2:  MLA.W           R4, R5, R0, R1
2006A6:  MOV             R0, R11; void *
2006A8:  MOV             R1, R3; void *
2006AA:  MOV             R2, R5; size_t
2006AC:  STR             R3, [SP,#0x40+var_30]
2006AE:  BLX             memcpy_1
2006B2:  MOV.W           R9, #0
2006B6:  MOV             R0, R4; void *
2006B8:  MOV             R1, R11; void *
2006BA:  MOV             R2, R5; size_t
2006BC:  BLX             memcpy_1
2006C0:  ADD.W           R9, R9, #1
2006C4:  ADD             R4, R10
2006C6:  CMP             R9, R6
2006C8:  BLT             loc_2006B6
2006CA:  LDR             R0, [SP,#0x40+var_2C]
2006CC:  ADD.W           R8, R8, #1
2006D0:  LDR             R3, [SP,#0x40+var_30]
2006D2:  LDR             R0, [R0]
2006D4:  ADD             R3, R10
2006D6:  CMP             R8, R0
2006D8:  BCC             loc_2006A6
2006DA:  B               loc_2008A2
2006DC:  ADDS            R0, R2, #7
2006DE:  MOV.W           R11, #7
2006E2:  AND.W           R0, R0, #7
2006E6:  MOV.W           R10, #0
2006EA:  MOV.W           R9, #0xFFFFFFFF
2006EE:  CMP.W           R12, #0
2006F2:  BEQ.W           loc_2008A2
2006F6:  LDR             R2, [SP,#0x40+var_3C]
2006F8:  SUB.W           R3, R12, #1
2006FC:  SUBS            R2, #1
2006FE:  ADD.W           R3, R1, R3,LSR#3
200702:  ADD.W           R8, R1, R2,LSR#3
200706:  MOVS            R2, #0
200708:  STRD.W          R2, R3, [SP,#0x40+var_38]
20070C:  LDRB            R1, [R3]
20070E:  MOVS            R3, #0
200710:  STR             R4, [SP,#0x40+var_30]
200712:  LSRS            R1, R4
200714:  AND.W           R1, R1, #1
200718:  RSB.W           R12, R0, #7
20071C:  MOVW            R2, #0x7F7F
200720:  LDRB.W          LR, [R8]
200724:  LSL.W           R5, R1, R0
200728:  LSR.W           R4, R2, R12
20072C:  MOV             R2, R8
20072E:  AND.W           R4, R4, LR
200732:  CMP             R0, R10
200734:  ORR.W           R5, R5, R4
200738:  STRB.W          R5, [R2],#-1
20073C:  MOV             R5, R11
20073E:  ADD.W           R3, R3, #1
200742:  ITE EQ
200744:  MOVEQ           R8, R2
200746:  ADDNE.W         R5, R0, R9
20074A:  CMP             R3, R6
20074C:  MOV             R0, R5
20074E:  BLT             loc_200718
200750:  LDR             R2, [SP,#0x40+var_30]
200752:  MOV             R1, R11
200754:  LDR             R0, [SP,#0x40+var_2C]
200756:  LDR             R3, [SP,#0x40+var_34]
200758:  CMP             R2, R10
20075A:  LDR             R0, [R0]
20075C:  ITE EQ
20075E:  SUBEQ           R3, #1
200760:  ADDNE.W         R1, R2, R9
200764:  LDR             R2, [SP,#0x40+var_38]
200766:  ADDS            R2, #1
200768:  MOV             R4, R1
20076A:  CMP             R2, R0
20076C:  MOV             R0, R5
20076E:  BCC             loc_200708
200770:  B               loc_2008A2
200772:  MOVS            R0, #1
200774:  BIC.W           R4, R0, R2
200778:  EOR.W           LR, LR, #1
20077C:  MOV             R8, #0xFFFFFFFC
200780:  MOV.W           R10, #0
200784:  MOV.W           R11, #4
200788:  CMP.W           R12, #0
20078C:  BEQ.W           loc_2008A2
200790:  LDR             R0, [SP,#0x40+var_3C]
200792:  SUB.W           R2, R12, #1
200796:  LSLS            R4, R4, #2
200798:  MOVS            R5, #0
20079A:  SUBS            R0, #1
20079C:  ADD.W           R2, R1, R2,LSR#1
2007A0:  ADD.W           R9, R1, R0,LSR#1
2007A4:  MOV.W           R0, LR,LSL#2
2007A8:  STRD.W          R5, R2, [SP,#0x40+var_34]
2007AC:  LDRB            R1, [R2]
2007AE:  MOVS            R2, #0
2007B0:  STR             R0, [SP,#0x40+var_38]
2007B2:  LSRS            R1, R0
2007B4:  AND.W           R1, R1, #0xF
2007B8:  RSB.W           R12, R4, #4
2007BC:  MOVW            R0, #0xF0F
2007C0:  LDRB.W          LR, [R9]
2007C4:  LSL.W           R3, R1, R4
2007C8:  LSR.W           R5, R0, R12
2007CC:  MOV             R0, R9
2007CE:  AND.W           R5, R5, LR
2007D2:  CMP             R4, R10
2007D4:  ORR.W           R3, R3, R5
2007D8:  STRB.W          R3, [R0],#-1
2007DC:  MOV             R3, R11
2007DE:  ADD.W           R2, R2, #1
2007E2:  ITE EQ
2007E4:  MOVEQ           R9, R0
2007E6:  ADDNE.W         R3, R4, R8
2007EA:  CMP             R2, R6
2007EC:  MOV             R4, R3
2007EE:  BLT             loc_2007B8
2007F0:  LDR             R5, [SP,#0x40+var_38]
2007F2:  MOV             R1, R11
2007F4:  LDR             R0, [SP,#0x40+var_2C]
2007F6:  MOV             R4, R3
2007F8:  LDR             R2, [SP,#0x40+var_30]
2007FA:  CMP             R5, R10
2007FC:  LDR             R0, [R0]
2007FE:  ITE EQ
200800:  SUBEQ           R2, #1
200802:  ADDNE.W         R1, R5, R8
200806:  LDR             R5, [SP,#0x40+var_34]
200808:  ADDS            R5, #1
20080A:  CMP             R5, R0
20080C:  MOV             R0, R1
20080E:  BCC             loc_2007A8
200810:  B               loc_2008A2
200812:  ADD.W           R0, R10, R2,LSL#1
200816:  MOV             R11, #0xFFFFFFFE
20081A:  AND.W           R0, R0, #6
20081E:  MOV.W           R9, #0
200822:  CMP.W           R12, #0
200826:  BEQ             loc_2008A2
200828:  LDR             R2, [SP,#0x40+var_3C]
20082A:  SUB.W           R3, R12, #1
20082E:  SUBS            R2, #1
200830:  ADD.W           R5, R1, R3,LSR#2
200834:  ADD.W           R8, R1, R2,LSR#2
200838:  MOVS            R2, #0
20083A:  STRD.W          R2, R5, [SP,#0x40+var_38]
20083E:  MOVS            R2, #0
200840:  LDRB            R1, [R5]
200842:  STR             R4, [SP,#0x40+var_30]
200844:  LSRS            R1, R4
200846:  AND.W           R1, R1, #3
20084A:  RSB.W           R12, R0, #6
20084E:  MOVW            R4, #0x3F3F
200852:  LDRB.W          LR, [R8]
200856:  LSL.W           R3, R1, R0
20085A:  LSR.W           R4, R4, R12
20085E:  MOV             R5, R8
200860:  AND.W           R4, R4, LR
200864:  CMP             R0, R9
200866:  ORR.W           R3, R3, R4
20086A:  STRB.W          R3, [R5],#-1
20086E:  MOV             R3, R10
200870:  ADD.W           R2, R2, #1
200874:  ITE EQ
200876:  MOVEQ           R8, R5
200878:  ADDNE.W         R3, R0, R11
20087C:  CMP             R2, R6
20087E:  MOV             R0, R3
200880:  BLT             loc_20084A
200882:  LDR             R2, [SP,#0x40+var_30]
200884:  MOV             R1, R10
200886:  LDR             R0, [SP,#0x40+var_2C]
200888:  LDR             R5, [SP,#0x40+var_34]
20088A:  CMP             R2, R9
20088C:  LDR             R0, [R0]
20088E:  ITE EQ
200890:  SUBEQ           R5, #1
200892:  ADDNE.W         R1, R2, R11
200896:  LDR             R2, [SP,#0x40+var_38]
200898:  ADDS            R2, #1
20089A:  MOV             R4, R1
20089C:  CMP             R2, R0
20089E:  MOV             R0, R3
2008A0:  BCC             loc_20083A
2008A2:  LDR             R5, [SP,#0x40+var_2C]
2008A4:  LDR             R2, [SP,#0x40+var_3C]
2008A6:  LDRB            R0, [R5,#0xB]
2008A8:  CMP             R0, #8
2008AA:  STR             R2, [R5]
2008AC:  BCC             loc_2008B4
2008AE:  LSRS            R0, R0, #3
2008B0:  MULS            R0, R2
2008B2:  B               loc_2008BA
2008B4:  MULS            R0, R2
2008B6:  ADDS            R0, #7
2008B8:  LSRS            R0, R0, #3
2008BA:  STR             R0, [R5,#4]
2008BC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2008C4)
2008BE:  LDR             R1, [SP,#0x40+var_20]
2008C0:  ADD             R0, PC; __stack_chk_guard_ptr
2008C2:  LDR             R0, [R0]; __stack_chk_guard
2008C4:  LDR             R0, [R0]
2008C6:  SUBS            R0, R0, R1
2008C8:  ITTT EQ
2008CA:  ADDEQ           SP, SP, #0x24 ; '$'
2008CC:  POPEQ.W         {R8-R11}
2008D0:  POPEQ           {R4-R7,PC}
2008D2:  BLX             __stack_chk_fail
