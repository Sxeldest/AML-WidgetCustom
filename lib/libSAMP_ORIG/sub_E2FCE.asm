; =========================================================
; Game Engine Function: sub_E2FCE
; Address            : 0xE2FCE - 0xE2FF2
; =========================================================

E2FCE:  PUSH            {R4,R6,R7,LR}
E2FD0:  ADD             R7, SP, #8
E2FD2:  MOV             R4, R0
E2FD4:  LDR             R0, [R0]
E2FD6:  CBZ             R0, loc_E2FEE
E2FD8:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE5sgetcEv; std::wstreambuf::sgetc(void)
E2FDC:  ADDS            R0, #1
E2FDE:  BEQ             loc_E2FEA
E2FE0:  LDR             R0, [R4]
E2FE2:  CLZ.W           R0, R0
E2FE6:  LSRS            R0, R0, #5
E2FE8:  POP             {R4,R6,R7,PC}
E2FEA:  MOVS            R0, #0
E2FEC:  STR             R0, [R4]
E2FEE:  MOVS            R0, #1
E2FF0:  POP             {R4,R6,R7,PC}
