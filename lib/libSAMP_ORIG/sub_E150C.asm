; =========================================================
; Game Engine Function: sub_E150C
; Address            : 0xE150C - 0xE1526
; =========================================================

E150C:  PUSH            {R4,R6,R7,LR}
E150E:  ADD             R7, SP, #8
E1510:  MOV             R4, R0
E1512:  LDR             R0, [R0]
E1514:  CBZ             R0, loc_E1522
E1516:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sputcEc; std::streambuf::sputc(char)
E151A:  ADDS            R0, #1
E151C:  ITT EQ
E151E:  MOVEQ           R0, #0
E1520:  STREQ           R0, [R4]
E1522:  MOV             R0, R4
E1524:  POP             {R4,R6,R7,PC}
