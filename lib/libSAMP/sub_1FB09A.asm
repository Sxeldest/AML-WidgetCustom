; =========================================================
; Game Engine Function: sub_1FB09A
; Address            : 0x1FB09A - 0x1FB0BE
; =========================================================

1FB09A:  PUSH            {R4,R6,R7,LR}
1FB09C:  ADD             R7, SP, #8
1FB09E:  MOV             R4, R0
1FB0A0:  LDR             R0, [R0]
1FB0A2:  CBZ             R0, loc_1FB0BA
1FB0A4:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sgetcEv; std::wstreambuf::sgetc(void)
1FB0A8:  ADDS            R0, #1
1FB0AA:  BEQ             loc_1FB0B6
1FB0AC:  LDR             R0, [R4]
1FB0AE:  CLZ.W           R0, R0
1FB0B2:  LSRS            R0, R0, #5
1FB0B4:  POP             {R4,R6,R7,PC}
1FB0B6:  MOVS            R0, #0
1FB0B8:  STR             R0, [R4]
1FB0BA:  MOVS            R0, #1
1FB0BC:  POP             {R4,R6,R7,PC}
