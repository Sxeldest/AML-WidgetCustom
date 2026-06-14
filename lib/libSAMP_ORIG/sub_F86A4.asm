; =========================================================
; Game Engine Function: sub_F86A4
; Address            : 0xF86A4 - 0xF86EE
; =========================================================

F86A4:  PUSH            {R4-R7,LR}
F86A6:  ADD             R7, SP, #0xC
F86A8:  PUSH.W          {R11}
F86AC:  SUB             SP, SP, #8
F86AE:  MOV             R4, R0
F86B0:  LDR             R0, =(_ZNSt6__ndk111char_traitsIcE2eqEcc_ptr - 0xF86BA)
F86B2:  CMP             R1, R3
F86B4:  LDR             R6, [R7,#arg_0]
F86B6:  ADD             R0, PC; _ZNSt6__ndk111char_traitsIcE2eqEcc_ptr
F86B8:  LDR             R0, [R0]; std::char_traits<char>::eq(char,char)
F86BA:  STR             R0, [SP,#0x18+var_18]
F86BC:  IT CC
F86BE:  MOVCC           R3, R1
F86C0:  SUBS            R0, R1, R3
F86C2:  CMP             R0, R6
F86C4:  IT HI
F86C6:  ADDHI           R1, R3, R6
F86C8:  ADDS            R5, R4, R1
F86CA:  ADDS            R3, R2, R6
F86CC:  MOV             R0, R4
F86CE:  MOV             R1, R5
F86D0:  BLX             j__ZNSt6__ndk110__find_endIPDoFbccEPKcS4_EET0_S5_S5_T1_S6_T_NS_26random_access_iterator_tagES8_
F86D4:  SUBS            R1, R0, R4
F86D6:  CMP             R0, R5
F86D8:  MOV             R0, R1
F86DA:  IT EQ
F86DC:  MOVEQ.W         R0, #0xFFFFFFFF
F86E0:  CMP             R6, #0
F86E2:  IT EQ
F86E4:  MOVEQ           R0, R1
F86E6:  ADD             SP, SP, #8
F86E8:  POP.W           {R11}
F86EC:  POP             {R4-R7,PC}
