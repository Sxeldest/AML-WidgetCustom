; =========================================================
; Game Engine Function: sub_1FC808
; Address            : 0x1FC808 - 0x1FC816
; =========================================================

1FC808:  PUSH            {R7,LR}
1FC80A:  MOV             R7, SP
1FC80C:  LDR             R0, [R0]
1FC80E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv; std::streambuf::sgetc(void)
1FC812:  UXTB            R0, R0
1FC814:  POP             {R7,PC}
