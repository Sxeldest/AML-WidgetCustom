; =========================================================
; Game Engine Function: sub_E2658
; Address            : 0xE2658 - 0xE2672
; =========================================================

E2658:  PUSH            {R4,R6,R7,LR}
E265A:  ADD             R7, SP, #8
E265C:  MOV             R4, R0
E265E:  LDR             R0, [R0]
E2660:  CBZ             R0, loc_E266E
E2662:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sputcEw; std::wstreambuf::sputc(wchar_t)
E2666:  ADDS            R0, #1
E2668:  ITT EQ
E266A:  MOVEQ           R0, #0
E266C:  STREQ           R0, [R4]
E266E:  MOV             R0, R4
E2670:  POP             {R4,R6,R7,PC}
