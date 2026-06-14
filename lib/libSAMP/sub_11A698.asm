; =========================================================
; Game Engine Function: sub_11A698
; Address            : 0x11A698 - 0x11A722
; =========================================================

11A698:  PUSH            {R4-R7,LR}
11A69A:  ADD             R7, SP, #0xC
11A69C:  PUSH.W          {R11}
11A6A0:  SUB             SP, SP, #0x18
11A6A2:  ADD.W           R4, R0, #0x34 ; '4'
11A6A6:  MOV             R6, R0
11A6A8:  MOV             R5, R1
11A6AA:  MOV             R0, R4; int
11A6AC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11A6B0:  LDRB.W          R0, [R6,#0x34]
11A6B4:  LDR             R1, [R6,#0x38]
11A6B6:  LSLS            R2, R0, #0x1F
11A6B8:  IT EQ
11A6BA:  LSREQ           R1, R0, #1
11A6BC:  ADDS            R0, R1, R5
11A6BE:  ADDS            R1, R0, #1; s
11A6C0:  ADD             R0, SP, #0x28+var_1C; int
11A6C2:  BL              sub_DC6DC
11A6C6:  LDRB.W          R2, [SP,#0x28+var_1C]
11A6CA:  LDR             R1, [SP,#0x28+var_18]
11A6CC:  ANDS.W          R0, R2, #1
11A6D0:  IT EQ
11A6D2:  LSREQ           R1, R2, #1
11A6D4:  CBZ             R1, loc_11A712
11A6D6:  LDR             R1, =(asc_836CD - 0x11A6DC); "." ...
11A6D8:  ADD             R1, PC; "."
11A6DA:  MOV             R5, SP
11A6DC:  ADD             R2, SP, #0x28+var_1C
11A6DE:  MOV             R0, R5
11A6E0:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
11A6E4:  LDRB.W          R0, [SP,#0x28+var_28]
11A6E8:  LDRD.W          R2, R1, [SP,#0x28+var_24]
11A6EC:  ANDS.W          R3, R0, #1
11A6F0:  ITT EQ
11A6F2:  ADDEQ           R1, R5, #1
11A6F4:  LSREQ           R2, R0, #1
11A6F6:  MOV             R0, R4
11A6F8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
11A6FC:  LDRB.W          R0, [SP,#0x28+var_28]
11A700:  LSLS            R0, R0, #0x1F
11A702:  ITT NE
11A704:  LDRNE           R0, [SP,#0x28+var_20]; void *
11A706:  BLXNE           j__ZdlPv; operator delete(void *)
11A70A:  LDRB.W          R0, [SP,#0x28+var_1C]
11A70E:  AND.W           R0, R0, #1
11A712:  CBZ             R0, loc_11A71A
11A714:  LDR             R0, [SP,#0x28+var_14]; void *
11A716:  BLX             j__ZdlPv; operator delete(void *)
11A71A:  ADD             SP, SP, #0x18
11A71C:  POP.W           {R11}
11A720:  POP             {R4-R7,PC}
