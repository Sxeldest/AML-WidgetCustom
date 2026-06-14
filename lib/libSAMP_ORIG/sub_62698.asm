; =========================================================
; Game Engine Function: sub_62698
; Address            : 0x62698 - 0x62746
; =========================================================

62698:  PUSH            {R4-R7,LR}
6269A:  ADD             R7, SP, #0xC
6269C:  PUSH.W          {R8-R11}
626A0:  SUB             SP, SP, #4
626A2:  MOV             R6, R0
626A4:  MOVS            R0, #0
626A6:  MOV             R10, R2
626A8:  LDR.W           R8, [R2,#4]
626AC:  LDRB            R2, [R1]
626AE:  STRD.W          R0, R0, [R6]
626B2:  STR             R0, [R6,#8]
626B4:  ANDS.W          R3, R2, #1
626B8:  LDRB.W          R0, [R10]
626BC:  LDRD.W          R5, R9, [R1,#4]
626C0:  IT EQ
626C2:  LSREQ           R5, R2, #1
626C4:  ANDS.W          R11, R0, #1
626C8:  IT EQ
626CA:  MOVEQ.W         R8, R0,LSR#1
626CE:  CMP             R3, #0
626D0:  ADD.W           R0, R8, R5
626D4:  IT EQ
626D6:  ADDEQ.W         R9, R1, #1
626DA:  CMN.W           R0, #0x10
626DE:  BCS             loc_62740
626E0:  CMP             R0, #0xA
626E2:  BHI             loc_6271A
626E4:  LSLS            R0, R5, #1
626E6:  MOV             R4, R6
626E8:  STRB.W          R0, [R4],#1
626EC:  CBZ             R5, loc_626F8
626EE:  MOV             R0, R4; dest
626F0:  MOV             R1, R9; src
626F2:  MOV             R2, R5; n
626F4:  BLX             j_memcpy
626F8:  MOVS            R0, #0
626FA:  LDR.W           R1, [R10,#8]
626FE:  STRB            R0, [R4,R5]
62700:  CMP.W           R11, #0
62704:  IT EQ
62706:  ADDEQ.W         R1, R10, #1
6270A:  MOV             R0, R6
6270C:  MOV             R2, R8
6270E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
62712:  ADD             SP, SP, #4
62714:  POP.W           {R8-R11}
62718:  POP             {R4-R7,PC}
6271A:  ADDS            R0, #0x10
6271C:  STR.W           R11, [SP,#0x20+var_20]
62720:  BIC.W           R11, R0, #0xF
62724:  MOV             R0, R11; unsigned int
62726:  BLX             j__Znwj; operator new(uint)
6272A:  MOV             R4, R0
6272C:  ORR.W           R0, R11, #1
62730:  LDR.W           R11, [SP,#0x20+var_20]
62734:  STRD.W          R0, R5, [R6]
62738:  STR             R4, [R6,#8]
6273A:  CMP             R5, #0
6273C:  BNE             loc_626EE
6273E:  B               loc_626F8
62740:  MOV             R0, R6
62742:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
