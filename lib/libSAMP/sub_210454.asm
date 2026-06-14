; =========================================================
; Game Engine Function: sub_210454
; Address            : 0x210454 - 0x21049E
; =========================================================

210454:  PUSH            {R4-R7,LR}
210456:  ADD             R7, SP, #0xC
210458:  PUSH.W          {R11}
21045C:  SUB             SP, SP, #8
21045E:  MOV             R4, R0
210460:  LDR             R0, =(_ZNSt6__ndk111char_traitsIcE2eqEcc_ptr - 0x21046A)
210462:  CMP             R1, R3
210464:  LDR             R6, [R7,#arg_0]
210466:  ADD             R0, PC; _ZNSt6__ndk111char_traitsIcE2eqEcc_ptr
210468:  LDR             R0, [R0]; std::char_traits<char>::eq(char,char)
21046A:  STR             R0, [SP,#0x18+var_18]
21046C:  IT CC
21046E:  MOVCC           R3, R1
210470:  SUBS            R0, R1, R3
210472:  CMP             R0, R6
210474:  IT HI
210476:  ADDHI           R1, R3, R6
210478:  ADDS            R5, R4, R1
21047A:  ADDS            R3, R2, R6
21047C:  MOV             R0, R4
21047E:  MOV             R1, R5
210480:  BLX             j__ZNSt6__ndk110__find_endIPDoFbccEPKcS4_EET0_S5_S5_T1_S6_T_NS_26random_access_iterator_tagES8_
210484:  SUBS            R1, R0, R4
210486:  CMP             R0, R5
210488:  MOV             R0, R1
21048A:  IT EQ
21048C:  MOVEQ.W         R0, #0xFFFFFFFF
210490:  CMP             R6, #0
210492:  IT EQ
210494:  MOVEQ           R0, R1
210496:  ADD             SP, SP, #8
210498:  POP.W           {R11}
21049C:  POP             {R4-R7,PC}
