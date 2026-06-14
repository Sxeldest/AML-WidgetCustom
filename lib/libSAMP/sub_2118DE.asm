; =========================================================
; Game Engine Function: sub_2118DE
; Address            : 0x2118DE - 0x211916
; =========================================================

2118DE:  PUSH            {R4-R7,LR}
2118E0:  ADD             R7, SP, #0xC
2118E2:  PUSH.W          {R8}
2118E6:  CMP             R3, R1
2118E8:  LDR.W           R8, [R7,#n]
2118EC:  IT CC
2118EE:  ADDCC           R1, R3, #1
2118F0:  SUBS            R5, R0, #4
2118F2:  MOV             R4, R2
2118F4:  LSLS            R6, R1, #2
2118F6:  CBZ             R6, loc_21190C
2118F8:  ADDS            R2, R5, R6
2118FA:  MOV             R0, R4; int
2118FC:  MOV             R1, R8; n
2118FE:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
211902:  SUBS            R6, #4
211904:  CMP             R0, #0
211906:  BNE             loc_2118F6
211908:  ASRS            R0, R6, #2
21190A:  B               loc_211910
21190C:  MOV.W           R0, #0xFFFFFFFF
211910:  POP.W           {R8}
211914:  POP             {R4-R7,PC}
