; =========================================================
; Game Engine Function: sub_212594
; Address            : 0x212594 - 0x2125D2
; =========================================================

212594:  PUSH            {R4-R7,LR}
212596:  ADD             R7, SP, #0xC
212598:  PUSH.W          {R11}
21259C:  CMP             R3, R1
21259E:  BLS             loc_2125A6
2125A0:  MOV.W           R3, #0xFFFFFFFF
2125A4:  B               loc_2125CA
2125A6:  LDR             R6, [R7,#arg_0]
2125A8:  CBZ             R6, loc_2125CA
2125AA:  MOV             R4, R0
2125AC:  ADD.W           R5, R4, R1,LSL#2
2125B0:  ADD.W           R0, R0, R3,LSL#2; int
2125B4:  ADD.W           R3, R2, R6,LSL#2
2125B8:  MOV             R1, R5
2125BA:  BLX             j__ZNSt6__ndk118__search_substringIwNS_11char_traitsIwEEEEPKT_S5_S5_S5_S5_; std::__search_substring<wchar_t,std::char_traits<wchar_t>>(wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*)
2125BE:  SUBS            R1, R0, R4
2125C0:  ASRS            R3, R1, #2
2125C2:  CMP             R0, R5
2125C4:  IT EQ
2125C6:  MOVEQ.W         R3, #0xFFFFFFFF
2125CA:  MOV             R0, R3
2125CC:  POP.W           {R11}
2125D0:  POP             {R4-R7,PC}
