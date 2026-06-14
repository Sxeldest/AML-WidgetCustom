; =========================================================
; Game Engine Function: sub_21172C
; Address            : 0x21172C - 0x21177C
; =========================================================

21172C:  PUSH            {R4-R7,LR}
21172E:  ADD             R7, SP, #0xC
211730:  PUSH.W          {R11}
211734:  SUB             SP, SP, #8
211736:  MOV             R4, R0
211738:  LDR             R0, =(_ZNSt6__ndk111char_traitsIwE2eqEww_ptr - 0x211742)
21173A:  CMP             R1, R3
21173C:  LDR             R6, [R7,#arg_0]
21173E:  ADD             R0, PC; _ZNSt6__ndk111char_traitsIwE2eqEww_ptr
211740:  LDR             R0, [R0]; std::char_traits<wchar_t>::eq(wchar_t,wchar_t)
211742:  STR             R0, [SP,#0x18+var_18]
211744:  IT CC
211746:  MOVCC           R3, R1
211748:  SUBS            R0, R1, R3
21174A:  CMP             R0, R6
21174C:  IT HI
21174E:  ADDHI           R1, R3, R6
211750:  ADD.W           R5, R4, R1,LSL#2
211754:  ADD.W           R3, R2, R6,LSL#2
211758:  MOV             R0, R4
21175A:  MOV             R1, R5
21175C:  BLX             j__ZNSt6__ndk110__find_endIPDoFbwwEPKwS4_EET0_S5_S5_T1_S6_T_NS_26random_access_iterator_tagES8_
211760:  SUBS            R1, R0, R4
211762:  ASRS            R1, R1, #2
211764:  CMP             R0, R5
211766:  MOV             R0, R1
211768:  IT EQ
21176A:  MOVEQ.W         R0, #0xFFFFFFFF
21176E:  CMP             R6, #0
211770:  IT EQ
211772:  MOVEQ           R0, R1
211774:  ADD             SP, SP, #8
211776:  POP.W           {R11}
21177A:  POP             {R4-R7,PC}
