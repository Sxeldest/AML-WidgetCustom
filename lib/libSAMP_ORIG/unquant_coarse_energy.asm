; =========================================================
; Game Engine Function: unquant_coarse_energy
; Address            : 0xBC608 - 0xBC78C
; =========================================================

BC608:  PUSH            {R4-R7,LR}
BC60A:  ADD             R7, SP, #0xC
BC60C:  PUSH.W          {R8-R11}
BC610:  SUB             SP, SP, #0x2C
BC612:  STR             R0, [SP,#0x48+var_2C]
BC614:  MOV             R8, R3
BC616:  LDR             R0, =(__stack_chk_guard_ptr - 0xBC620)
BC618:  LDR.W           LR, [R7,#arg_0]
BC61C:  ADD             R0, PC; __stack_chk_guard_ptr
BC61E:  STR             R2, [SP,#0x48+var_44]
BC620:  LDR.W           R12, [R7,#arg_C]
BC624:  CMP.W           LR, #0
BC628:  LDR             R0, [R0]; __stack_chk_guard
BC62A:  LDR             R2, [R0]
BC62C:  STR             R2, [SP,#0x48+var_20]
BC62E:  MOV.W           R2, #0
BC632:  STRD.W          R2, R2, [SP,#0x48+var_28]
BC636:  BEQ             loc_BC63E
BC638:  MOVW            R3, #0x1333
BC63C:  B               loc_BC64E
BC63E:  LDR             R2, =(unk_5B29E - 0xBC646)
BC640:  LDR             R3, =(unk_5B296 - 0xBC648)
BC642:  ADD             R2, PC; unk_5B29E
BC644:  ADD             R3, PC; unk_5B296
BC646:  LDRH.W          R2, [R2,R12,LSL#1]
BC64A:  LDRH.W          R3, [R3,R12,LSL#1]
BC64E:  LDR             R0, [SP,#0x48+var_44]
BC650:  MOV             R4, R1
BC652:  CMP             R4, R0
BC654:  BGE.W           loc_BC772
BC658:  LDR.W           R11, [R7,#arg_4]
BC65C:  MOVS            R0, #0x20 ; ' '
BC65E:  LDR.W           R1, [R11,#4]
BC662:  ADD.W           R0, R0, R1,LSL#3
BC666:  STR             R0, [SP,#0x48+var_30]
BC668:  SXTH            R0, R3
BC66A:  MOVS            R1, #0x54 ; 'T'
BC66C:  STR             R0, [SP,#0x48+var_34]
BC66E:  SXTH            R0, R2
BC670:  STR             R0, [SP,#0x48+var_38]
BC672:  LDR             R0, =(unk_5B143 - 0xBC67A)
BC674:  LDR             R5, [SP,#0x48+var_34]
BC676:  ADD             R0, PC; unk_5B143
BC678:  MLA.W           R0, R12, R1, R0
BC67C:  MOVS            R1, #0x2A ; '*'
BC67E:  MLA.W           R0, LR, R1, R0
BC682:  STR             R0, [SP,#0x48+var_48]
BC684:  CMP             R4, #0x14
BC686:  MOV             R0, R4
BC688:  IT GE
BC68A:  MOVGE           R0, #0x14
BC68C:  MOVS            R1, #1
BC68E:  MOV             R12, R4
BC690:  LDR             R2, [SP,#0x48+var_48]
BC692:  ORR.W           R1, R1, R0,LSL#1
BC696:  MOV.W           R10, #0
BC69A:  MOV             R9, R12
BC69C:  ADD             R1, R2
BC69E:  ADD.W           R0, R2, R0,LSL#1
BC6A2:  STR             R1, [SP,#0x48+var_3C]
BC6A4:  STR             R0, [SP,#0x48+var_40]
BC6A6:  LDR.W           R1, [R11,#0x1C]
BC6AA:  LDR.W           R0, [R11,#0x14]
BC6AE:  LDR             R2, [SP,#0x48+var_30]
BC6B0:  CLZ.W           R1, R1
BC6B4:  SUBS            R0, R2, R0
BC6B6:  SUBS            R0, R0, R1
BC6B8:  CMP             R0, #0xF
BC6BA:  BLT             loc_BC6D2
BC6BC:  LDR             R0, [SP,#0x48+var_40]
BC6BE:  LDR             R1, [SP,#0x48+var_3C]
BC6C0:  LDRB            R0, [R0]
BC6C2:  LDRB            R2, [R1]
BC6C4:  LSLS            R1, R0, #7
BC6C6:  MOV             R0, R11
BC6C8:  LSLS            R2, R2, #6
BC6CA:  BLX             j_ec_laplace_decode
BC6CE:  MOV             R12, R9
BC6D0:  B               loc_BC706
BC6D2:  CMP             R0, #2
BC6D4:  BLT             loc_BC6F0
BC6D6:  LDR             R1, =(unk_5B293 - 0xBC6E0)
BC6D8:  MOV             R0, R11
BC6DA:  MOVS            R2, #2
BC6DC:  ADD             R1, PC; unk_5B293
BC6DE:  BLX             j_ec_dec_icdf
BC6E2:  AND.W           R1, R0, #1
BC6E6:  MOV             R12, R9
BC6E8:  NEGS            R1, R1
BC6EA:  EOR.W           R0, R1, R0,ASR#1
BC6EE:  B               loc_BC706
BC6F0:  CMP             R0, #1
BC6F2:  BNE             loc_BC702
BC6F4:  MOV             R0, R11
BC6F6:  MOVS            R1, #1
BC6F8:  BLX             j_ec_dec_bit_logp
BC6FC:  NEGS            R0, R0
BC6FE:  MOV             R12, R9
BC700:  B               loc_BC706
BC702:  MOV.W           R0, #0xFFFFFFFF
BC706:  LDR             R1, [SP,#0x48+var_2C]
BC708:  MOV             R3, #0xFFFFDC00
BC710:  LDR             R1, [R1,#8]
BC712:  MLA.W           R1, R1, R10, R12
BC716:  LDRSH.W         R2, [R8,R1,LSL#1]
BC71A:  CMN.W           R2, #0x2400
BC71E:  IT LE
BC720:  MOVLE           R2, R3
BC722:  LDR             R3, [SP,#0x48+var_38]
BC724:  MULS            R2, R3
BC726:  ADD             R3, SP, #0x48+var_28
BC728:  MOV             R4, R3
BC72A:  LDR.W           R3, [R4,R10,LSL#2]
BC72E:  ADDS            R2, #0x80
BC730:  ADD.W           R6, R3, R0,LSL#17
BC734:  ADD.W           R2, R6, R2,ASR#8
BC738:  MOVS            R6, #0xFFC80000
BC73E:  CMP             R2, R6
BC740:  IT LE
BC742:  MOVLE           R2, R6
BC744:  LSLS            R6, R0, #0x12
BC746:  SMULTB.W        R6, R6, R5
BC74A:  ADDS            R2, #0x40 ; '@'
BC74C:  LSRS            R2, R2, #7
BC74E:  STRH.W          R2, [R8,R1,LSL#1]
BC752:  RSB.W           R0, R6, R0,LSL#17
BC756:  ADD             R0, R3
BC758:  STR.W           R0, [R4,R10,LSL#2]
BC75C:  ADD.W           R10, R10, #1
BC760:  LDR             R0, [R7,#arg_8]
BC762:  CMP             R10, R0
BC764:  BLT             loc_BC6A6
BC766:  ADD.W           R12, R12, #1
BC76A:  LDR             R0, [SP,#0x48+var_44]
BC76C:  CMP             R12, R0
BC76E:  MOV             R4, R12
BC770:  BNE             loc_BC684
BC772:  LDR             R0, =(__stack_chk_guard_ptr - 0xBC77A)
BC774:  LDR             R1, [SP,#0x48+var_20]
BC776:  ADD             R0, PC; __stack_chk_guard_ptr
BC778:  LDR             R0, [R0]; __stack_chk_guard
BC77A:  LDR             R0, [R0]
BC77C:  SUBS            R0, R0, R1
BC77E:  ITTT EQ
BC780:  ADDEQ           SP, SP, #0x2C ; ','
BC782:  POPEQ.W         {R8-R11}
BC786:  POPEQ           {R4-R7,PC}
BC788:  BLX             __stack_chk_fail
