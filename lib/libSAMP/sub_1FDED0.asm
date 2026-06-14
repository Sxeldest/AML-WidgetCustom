; =========================================================
; Game Engine Function: sub_1FDED0
; Address            : 0x1FDED0 - 0x1FDEE0
; =========================================================

1FDED0:  PUSH            {R4,R6,R7,LR}
1FDED2:  ADD             R7, SP, #8
1FDED4:  MOV             R4, R0
1FDED6:  LDR             R0, [R0]
1FDED8:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE6sbumpcEv; std::wstreambuf::sbumpc(void)
1FDEDC:  MOV             R0, R4
1FDEDE:  POP             {R4,R6,R7,PC}
