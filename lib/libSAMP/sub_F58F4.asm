; =========================================================
; Game Engine Function: sub_F58F4
; Address            : 0xF58F4 - 0xF5930
; =========================================================

F58F4:  PUSH            {R4,R5,R7,LR}
F58F6:  ADD             R7, SP, #8
F58F8:  SUB             SP, SP, #8
F58FA:  LDR             R5, =(a10fpslimiter - 0xF5902); "10FPSLimiter" ...
F58FC:  MOV             R4, R0
F58FE:  ADD             R5, PC; "10FPSLimiter"
F5900:  MOV             R1, R5; s
F5902:  BL              sub_DC6DC
F5906:  MOVS            R0, #0
F5908:  STR             R0, [SP,#0x10+status]
F590A:  ADD             R3, SP, #0x10+status; lpstatus
F590C:  MOV             R0, R5; lpmangled
F590E:  MOVS            R1, #0; lpout
F5910:  MOVS            R2, #0; lpoutlen
F5912:  BLX             j___cxa_demangle
F5916:  MOV             R5, R0
F5918:  CBZ             R0, loc_F592C
F591A:  LDR             R0, [SP,#0x10+status]
F591C:  CBNZ            R0, loc_F5926
F591E:  MOV             R0, R4; int
F5920:  MOV             R1, R5; s
F5922:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F5926:  MOV             R0, R5; ptr
F5928:  BLX             free
F592C:  ADD             SP, SP, #8
F592E:  POP             {R4,R5,R7,PC}
