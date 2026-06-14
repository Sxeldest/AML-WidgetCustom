; =========================================================
; Game Engine Function: sub_1F95F0
; Address            : 0x1F95F0 - 0x1F960A
; =========================================================

1F95F0:  PUSH            {R4,R6,R7,LR}
1F95F2:  ADD             R7, SP, #8
1F95F4:  MOV             R4, R0
1F95F6:  LDR             R0, [R0]
1F95F8:  CBZ             R0, loc_1F9606
1F95FA:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sputcEc; std::streambuf::sputc(char)
1F95FE:  ADDS            R0, #1
1F9600:  ITT EQ
1F9602:  MOVEQ           R0, #0
1F9604:  STREQ           R0, [R4]
1F9606:  MOV             R0, R4
1F9608:  POP             {R4,R6,R7,PC}
