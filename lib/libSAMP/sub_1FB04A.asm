; =========================================================
; Game Engine Function: sub_1FB04A
; Address            : 0x1FB04A - 0x1FB06E
; =========================================================

1FB04A:  PUSH            {R4,R6,R7,LR}
1FB04C:  ADD             R7, SP, #8
1FB04E:  MOV             R4, R0
1FB050:  LDR             R0, [R0]
1FB052:  CBZ             R0, loc_1FB06A
1FB054:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv; std::streambuf::sgetc(void)
1FB058:  ADDS            R0, #1
1FB05A:  BEQ             loc_1FB066
1FB05C:  LDR             R0, [R4]
1FB05E:  CLZ.W           R0, R0
1FB062:  LSRS            R0, R0, #5
1FB064:  POP             {R4,R6,R7,PC}
1FB066:  MOVS            R0, #0
1FB068:  STR             R0, [R4]
1FB06A:  MOVS            R0, #1
1FB06C:  POP             {R4,R6,R7,PC}
