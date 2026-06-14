; =========================================================
; Game Engine Function: png_set_text_2
; Address            : 0x20258C - 0x2027CA
; =========================================================

20258C:  PUSH            {R4-R7,LR}
20258E:  ADD             R7, SP, #0xC
202590:  PUSH.W          {R8-R11}
202594:  SUB             SP, SP, #0x14
202596:  MOV             R9, R2
202598:  MOV             R4, R3
20259A:  MOV             R5, R1
20259C:  MOV             R6, R0
20259E:  MOV.W           R10, #0
2025A2:  CMP.W           R9, #0
2025A6:  BEQ.W           loc_2027C0
2025AA:  CMP             R6, #0
2025AC:  IT NE
2025AE:  CMPNE           R5, #0
2025B0:  BEQ.W           loc_2027C0
2025B4:  CMP             R4, #1
2025B6:  BLT.W           loc_2027C0
2025BA:  LDRD.W          R2, R0, [R5,#0x80]
2025BE:  SUBS            R0, R0, R2
2025C0:  CMP             R0, R4
2025C2:  BGE             loc_202624
2025C4:  MOV             R8, R6
2025C6:  MOV             R6, #0x7FFFFFFF
2025CA:  SUBS            R0, R6, R2
2025CC:  MOV             R10, R5
2025CE:  CMP             R0, R4
2025D0:  BLT.W           loc_2027A8
2025D4:  MOVS            R0, #0x1C
2025D6:  MOVW            R5, #0xFFF7
2025DA:  STR             R0, [SP,#0x30+var_30]
2025DC:  ADDS            R0, R2, R4
2025DE:  MOVT            R5, #0x7FFF
2025E2:  ADD.W           R3, R0, #8
2025E6:  CMP             R0, R5
2025E8:  LDR.W           R1, [R10,#0x88]
2025EC:  IT LT
2025EE:  BICLT.W         R6, R3, #7
2025F2:  MOV             R0, R8
2025F4:  SUBS            R3, R6, R2
2025F6:  BLX             j_png_realloc_array
2025FA:  MOV             R5, R0
2025FC:  CMP             R5, #0
2025FE:  BEQ.W           loc_2027A8
202602:  LDR.W           R1, [R10,#0x88]; p
202606:  MOV             R0, R8; int
202608:  BLX             j_png_free
20260C:  LDR.W           R0, [R10,#0xF4]
202610:  STR.W           R6, [R10,#0x84]
202614:  MOV             R6, R8
202616:  STR.W           R5, [R10,#0x88]
20261A:  MOV             R5, R10
20261C:  ORR.W           R0, R0, #0x4000
202620:  STR.W           R0, [R5,#0xF4]
202624:  MOV.W           R10, #0
202628:  CMP             R4, #1
20262A:  BLT.W           loc_2027C0
20262E:  ADD.W           R10, R9, #0x18
202632:  MOV.W           R11, #0
202636:  STRD.W          R5, R4, [SP,#0x30+var_2C]
20263A:  STR             R6, [SP,#0x30+var_24]
20263C:  LDR.W           R0, [R10,#-0x14]; char *
202640:  CMP             R0, #0
202642:  BEQ.W           loc_202794
202646:  LDR.W           R8, [R10,#-0x18]
20264A:  ADD.W           R1, R8, #1
20264E:  CMP             R1, #4
202650:  BCC             loc_20265E
202652:  ADR             R1, aTextCompressio; "text compression mode is out of range"
202654:  MOV             R0, R6
202656:  MOVS            R2, #1
202658:  BLX             j_png_chunk_report
20265C:  B               loc_202794
20265E:  LDR.W           R1, [R5,#0x80]
202662:  LDR.W           R2, [R5,#0x88]
202666:  RSB.W           R1, R1, R1,LSL#3
20266A:  ADD.W           R9, R2, R1,LSL#2
20266E:  BLX             strlen
202672:  MOV             R5, R0
202674:  CMP.W           R8, #1
202678:  BLT             loc_202686
20267A:  LDR.W           R0, [R10,#-4]; char *
20267E:  CBZ             R0, loc_20268E
202680:  BLX             strlen
202684:  B               loc_202690
202686:  MOVS            R0, #0
202688:  MOVS            R2, #0
20268A:  STR             R0, [SP,#0x30+var_20]
20268C:  B               loc_2026A2
20268E:  MOVS            R0, #0
202690:  STR             R0, [SP,#0x30+var_20]
202692:  LDR.W           R0, [R10]; char *
202696:  CBZ             R0, loc_2026A0
202698:  BLX             strlen
20269C:  MOV             R2, R0
20269E:  B               loc_2026A2
2026A0:  MOVS            R2, #0
2026A2:  LDR.W           R0, [R10,#-0x10]; char *
2026A6:  CMP             R0, #0
2026A8:  ITT NE
2026AA:  LDRBNE          R1, [R0]
2026AC:  CMPNE           R1, #0
2026AE:  BNE             loc_2026C4
2026B0:  CMP.W           R8, #0
2026B4:  MOV.W           R0, #0xFFFFFFFF
2026B8:  IT GT
2026BA:  MOVGT           R0, #1
2026BC:  MOVS            R4, #0
2026BE:  STR.W           R0, [R9]
2026C2:  B               loc_2026D2
2026C4:  MOV             R4, R2
2026C6:  BLX             strlen
2026CA:  MOV             R2, R4
2026CC:  MOV             R4, R0
2026CE:  STR.W           R8, [R9]
2026D2:  LDR             R0, [SP,#0x30+var_20]
2026D4:  MOV             R8, R2
2026D6:  ADD             R0, R5
2026D8:  ADD             R0, R2
2026DA:  ADD             R0, R4
2026DC:  ADDS            R1, R0, #4; byte_count
2026DE:  MOV             R0, R6; int
2026E0:  BLX             j_png_malloc_base
2026E4:  MOV             R6, R9
2026E6:  CMP             R0, #0
2026E8:  STR.W           R0, [R6,#4]!
2026EC:  BEQ             loc_2027B2
2026EE:  LDR.W           R1, [R10,#-0x14]; void *
2026F2:  MOV             R2, R5; size_t
2026F4:  BLX             memcpy_1
2026F8:  LDR             R0, [R6]
2026FA:  MOVS            R1, #0
2026FC:  STRB            R1, [R0,R5]
2026FE:  LDR.W           R0, [R10,#-0x18]
202702:  CMP             R0, #1
202704:  BLT             loc_202748
202706:  LDR             R0, [R6]
202708:  MOVS            R6, #0
20270A:  ADD             R0, R5
20270C:  ADDS            R0, #1; void *
20270E:  STR.W           R0, [R9,#0x14]
202712:  LDR             R5, [SP,#0x30+var_20]
202714:  LDR.W           R1, [R10,#-4]; void *
202718:  MOV             R2, R5; size_t
20271A:  BLX             memcpy_1
20271E:  LDR.W           R0, [R9,#0x14]
202722:  MOV             R2, R8; size_t
202724:  STRB            R6, [R0,R5]
202726:  LDR.W           R0, [R9,#0x14]
20272A:  ADD             R0, R5
20272C:  ADDS            R0, #1; void *
20272E:  STR.W           R0, [R9,#0x18]
202732:  LDR.W           R1, [R10]; void *
202736:  BLX             memcpy_1
20273A:  LDR.W           R0, [R9,#0x18]
20273E:  STRB.W          R6, [R0,R8]
202742:  ADD.W           R6, R9, #0x18
202746:  B               loc_20274E
202748:  MOV             R8, R5
20274A:  STRD.W          R1, R1, [R9,#0x14]
20274E:  LDR             R0, [R6]
202750:  MOV             R5, R9
202752:  CMP             R4, #0
202754:  ADD             R0, R8
202756:  ADD.W           R0, R0, #1; void *
20275A:  STR.W           R0, [R5,#8]!
20275E:  BEQ             loc_20276C
202760:  LDR.W           R1, [R10,#-0x10]; void *
202764:  MOV             R2, R4; size_t
202766:  BLX             memcpy_1
20276A:  LDR             R0, [R5]
20276C:  MOVS            R1, #0
20276E:  LDR             R6, [SP,#0x30+var_24]
202770:  STRB            R1, [R0,R4]
202772:  LDR.W           R0, [R9]
202776:  CMP             R0, #0
202778:  MOV.W           R0, #0
20277C:  ITT GT
20277E:  MOVGT           R0, R4
202780:  MOVGT           R4, #0
202782:  STRD.W          R4, R0, [R9,#0xC]
202786:  LDR             R5, [SP,#0x30+var_2C]
202788:  LDR             R4, [SP,#0x30+var_28]
20278A:  LDR.W           R0, [R5,#0x80]
20278E:  ADDS            R0, #1
202790:  STR.W           R0, [R5,#0x80]
202794:  ADD.W           R11, R11, #1
202798:  ADD.W           R10, R10, #0x1C
20279C:  CMP             R11, R4
20279E:  BLT.W           loc_20263C
2027A2:  MOV.W           R10, #0
2027A6:  B               loc_2027C0
2027A8:  ADR             R1, aTooManyTextChu; "too many text chunks"
2027AA:  MOV.W           R10, #1
2027AE:  MOV             R0, R8
2027B0:  B               loc_2027BA
2027B2:  ADR             R1, aTextChunkOutOf; "text chunk: out of memory"
2027B4:  MOV.W           R10, #1
2027B8:  LDR             R0, [SP,#0x30+var_24]
2027BA:  MOVS            R2, #1
2027BC:  BLX             j_png_chunk_report
2027C0:  MOV             R0, R10
2027C2:  ADD             SP, SP, #0x14
2027C4:  POP.W           {R8-R11}
2027C8:  POP             {R4-R7,PC}
