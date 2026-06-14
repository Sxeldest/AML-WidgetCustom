; =========================================================
; Game Engine Function: sub_1FA73C
; Address            : 0x1FA73C - 0x1FA756
; =========================================================

1FA73C:  PUSH            {R4,R6,R7,LR}
1FA73E:  ADD             R7, SP, #8
1FA740:  MOV             R4, R0
1FA742:  LDR             R0, [R0]
1FA744:  CBZ             R0, loc_1FA752
1FA746:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sputcEw; std::wstreambuf::sputc(wchar_t)
1FA74A:  ADDS            R0, #1
1FA74C:  ITT EQ
1FA74E:  MOVEQ           R0, #0
1FA750:  STREQ           R0, [R4]
1FA752:  MOV             R0, R4
1FA754:  POP             {R4,R6,R7,PC}
