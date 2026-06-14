; =========================================================
; Game Engine Function: sub_2111C0
; Address            : 0x2111C0 - 0x2111F6
; =========================================================

2111C0:  PUSH            {R4-R7,LR}
2111C2:  ADD             R7, SP, #0xC
2111C4:  PUSH.W          {R11}
2111C8:  CMP             R3, R1
2111CA:  BLS             loc_2111D2
2111CC:  MOV.W           R3, #0xFFFFFFFF
2111D0:  B               loc_2111EE
2111D2:  LDR             R6, [R7,#arg_0]
2111D4:  CBZ             R6, loc_2111EE
2111D6:  MOV             R4, R0
2111D8:  ADDS            R5, R4, R1
2111DA:  ADD             R0, R3; int
2111DC:  ADDS            R3, R2, R6
2111DE:  MOV             R1, R5
2111E0:  BLX             j__ZNSt6__ndk118__search_substringIcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_; std::__search_substring<char,std::char_traits<char>>(char const*,char const*,char const*,char const*)
2111E4:  SUBS            R3, R0, R4
2111E6:  CMP             R0, R5
2111E8:  IT EQ
2111EA:  MOVEQ.W         R3, #0xFFFFFFFF
2111EE:  MOV             R0, R3
2111F0:  POP.W           {R11}
2111F4:  POP             {R4-R7,PC}
