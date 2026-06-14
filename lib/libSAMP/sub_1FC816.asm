; =========================================================
; Game Engine Function: sub_1FC816
; Address            : 0x1FC816 - 0x1FC826
; =========================================================

1FC816:  PUSH            {R4,R6,R7,LR}
1FC818:  ADD             R7, SP, #8
1FC81A:  MOV             R4, R0
1FC81C:  LDR             R0, [R0]
1FC81E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv; std::streambuf::sbumpc(void)
1FC822:  MOV             R0, R4
1FC824:  POP             {R4,R6,R7,PC}
