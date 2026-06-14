; =========================================================
; Game Engine Function: sub_E5EF8
; Address            : 0xE5EF8 - 0xE5F04
; =========================================================

E5EF8:  PUSH            {R7,LR}
E5EFA:  MOV             R7, SP
E5EFC:  LDR             R0, [R0]
E5EFE:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sgetcEv; std::wstreambuf::sgetc(void)
E5F02:  POP             {R7,PC}
