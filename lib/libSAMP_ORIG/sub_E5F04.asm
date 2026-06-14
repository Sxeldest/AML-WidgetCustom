; =========================================================
; Game Engine Function: sub_E5F04
; Address            : 0xE5F04 - 0xE5F14
; =========================================================

E5F04:  PUSH            {R4,R6,R7,LR}
E5F06:  ADD             R7, SP, #8
E5F08:  MOV             R4, R0
E5F0A:  LDR             R0, [R0]
E5F0C:  BLX             j__ZNSt6__ndk115basic_streambufIwNS_11char_traitsIwEEE6sbumpcEv; std::wstreambuf::sbumpc(void)
E5F10:  MOV             R0, R4
E5F12:  POP             {R4,R6,R7,PC}
