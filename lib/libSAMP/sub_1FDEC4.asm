; =========================================================
; Game Engine Function: sub_1FDEC4
; Address            : 0x1FDEC4 - 0x1FDED0
; =========================================================

1FDEC4:  PUSH            {R7,LR}
1FDEC6:  MOV             R7, SP
1FDEC8:  LDR             R0, [R0]
1FDECA:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sgetcEv; std::wstreambuf::sgetc(void)
1FDECE:  POP             {R7,PC}
