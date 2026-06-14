; =========================================================
; Game Engine Function: sub_E484A
; Address            : 0xE484A - 0xE485A
; =========================================================

E484A:  PUSH            {R4,R6,R7,LR}
E484C:  ADD             R7, SP, #8
E484E:  MOV             R4, R0
E4850:  LDR             R0, [R0]
E4852:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv; std::streambuf::sbumpc(void)
E4856:  MOV             R0, R4
E4858:  POP             {R4,R6,R7,PC}
