; =========================================================
; Game Engine Function: sub_E2F7E
; Address            : 0xE2F7E - 0xE2FA2
; =========================================================

E2F7E:  PUSH            {R4,R6,R7,LR}
E2F80:  ADD             R7, SP, #8
E2F82:  MOV             R4, R0
E2F84:  LDR             R0, [R0]
E2F86:  CBZ             R0, loc_E2F9E
E2F88:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv; std::streambuf::sgetc(void)
E2F8C:  ADDS            R0, #1
E2F8E:  BEQ             loc_E2F9A
E2F90:  LDR             R0, [R4]
E2F92:  CLZ.W           R0, R0
E2F96:  LSRS            R0, R0, #5
E2F98:  POP             {R4,R6,R7,PC}
E2F9A:  MOVS            R0, #0
E2F9C:  STR             R0, [R4]
E2F9E:  MOVS            R0, #1
E2FA0:  POP             {R4,R6,R7,PC}
