; =========================================================
; Game Engine Function: sub_1233A4
; Address            : 0x1233A4 - 0x1233E0
; =========================================================

1233A4:  PUSH            {R4,R5,R7,LR}
1233A6:  ADD             R7, SP, #8
1233A8:  SUB             SP, SP, #8
1233AA:  LDR             R5, =(a12skinShaders - 0x1233B2); "12skin_shaders" ...
1233AC:  MOV             R4, R0
1233AE:  ADD             R5, PC; "12skin_shaders"
1233B0:  MOV             R1, R5; s
1233B2:  BL              sub_DC6DC
1233B6:  MOVS            R0, #0
1233B8:  STR             R0, [SP,#0x10+status]
1233BA:  ADD             R3, SP, #0x10+status; lpstatus
1233BC:  MOV             R0, R5; lpmangled
1233BE:  MOVS            R1, #0; lpout
1233C0:  MOVS            R2, #0; lpoutlen
1233C2:  BLX             j___cxa_demangle
1233C6:  MOV             R5, R0
1233C8:  CBZ             R0, loc_1233DC
1233CA:  LDR             R0, [SP,#0x10+status]
1233CC:  CBNZ            R0, loc_1233D6
1233CE:  MOV             R0, R4; int
1233D0:  MOV             R1, R5; s
1233D2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1233D6:  MOV             R0, R5; ptr
1233D8:  BLX             free
1233DC:  ADD             SP, SP, #8
1233DE:  POP             {R4,R5,R7,PC}
