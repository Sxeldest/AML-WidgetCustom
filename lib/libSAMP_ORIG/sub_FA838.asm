; =========================================================
; Game Engine Function: sub_FA838
; Address            : 0xFA838 - 0xFA876
; =========================================================

FA838:  PUSH            {R4-R7,LR}
FA83A:  ADD             R7, SP, #0xC
FA83C:  PUSH.W          {R11}
FA840:  CMP             R3, R1
FA842:  BLS             loc_FA84A
FA844:  MOV.W           R3, #0xFFFFFFFF
FA848:  B               loc_FA86E
FA84A:  LDR             R6, [R7,#arg_0]
FA84C:  CBZ             R6, loc_FA86E
FA84E:  MOV             R4, R0
FA850:  ADD.W           R5, R4, R1,LSL#2
FA854:  ADD.W           R0, R0, R3,LSL#2; int
FA858:  ADD.W           R3, R2, R6,LSL#2
FA85C:  MOV             R1, R5
FA85E:  BLX             j__ZNSt6__ndk118__search_substringIwNS_11char_traitsIwEEEEPKT_S5_S5_S5_S5_; std::__search_substring<wchar_t,std::char_traits<wchar_t>>(wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*)
FA862:  SUBS            R1, R0, R4
FA864:  ASRS            R3, R1, #2
FA866:  CMP             R0, R5
FA868:  IT EQ
FA86A:  MOVEQ.W         R3, #0xFFFFFFFF
FA86E:  MOV             R0, R3
FA870:  POP.W           {R11}
FA874:  POP             {R4-R7,PC}
