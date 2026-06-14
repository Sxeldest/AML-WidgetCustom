; =========================================================
; Game Engine Function: sub_11A850
; Address            : 0x11A850 - 0x11A88C
; =========================================================

11A850:  PUSH            {R4,R5,R7,LR}
11A852:  ADD             R7, SP, #8
11A854:  SUB             SP, SP, #8
11A856:  LDR             R5, =(aN9modloader6mo - 0x11A85E); "N9modloader6modelsE" ...
11A858:  MOV             R4, R0
11A85A:  ADD             R5, PC; "N9modloader6modelsE"
11A85C:  MOV             R1, R5; s
11A85E:  BL              sub_DC6DC
11A862:  MOVS            R0, #0
11A864:  STR             R0, [SP,#0x10+status]
11A866:  ADD             R3, SP, #0x10+status; lpstatus
11A868:  MOV             R0, R5; lpmangled
11A86A:  MOVS            R1, #0; lpout
11A86C:  MOVS            R2, #0; lpoutlen
11A86E:  BLX             j___cxa_demangle
11A872:  MOV             R5, R0
11A874:  CBZ             R0, loc_11A888
11A876:  LDR             R0, [SP,#0x10+status]
11A878:  CBNZ            R0, loc_11A882
11A87A:  MOV             R0, R4; int
11A87C:  MOV             R1, R5; s
11A87E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11A882:  MOV             R0, R5; ptr
11A884:  BLX             free
11A888:  ADD             SP, SP, #8
11A88A:  POP             {R4,R5,R7,PC}
