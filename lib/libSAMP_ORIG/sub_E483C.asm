; =========================================================
; Game Engine Function: sub_E483C
; Address            : 0xE483C - 0xE484A
; =========================================================

E483C:  PUSH            {R7,LR}
E483E:  MOV             R7, SP
E4840:  LDR             R0, [R0]
E4842:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv; std::streambuf::sgetc(void)
E4846:  UXTB            R0, R0
E4848:  POP             {R7,PC}
