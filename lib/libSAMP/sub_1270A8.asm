; =========================================================
; Game Engine Function: sub_1270A8
; Address            : 0x1270A8 - 0x1270E4
; =========================================================

1270A8:  PUSH            {R4,R5,R7,LR}
1270AA:  ADD             R7, SP, #8
1270AC:  SUB             SP, SP, #8
1270AE:  LDR             R5, =(a13extendweapon - 0x1270B6); "13ExtendWeapons" ...
1270B0:  MOV             R4, R0
1270B2:  ADD             R5, PC; "13ExtendWeapons"
1270B4:  MOV             R1, R5; s
1270B6:  BL              sub_DC6DC
1270BA:  MOVS            R0, #0
1270BC:  STR             R0, [SP,#0x10+status]
1270BE:  ADD             R3, SP, #0x10+status; lpstatus
1270C0:  MOV             R0, R5; lpmangled
1270C2:  MOVS            R1, #0; lpout
1270C4:  MOVS            R2, #0; lpoutlen
1270C6:  BLX             j___cxa_demangle
1270CA:  MOV             R5, R0
1270CC:  CBZ             R0, loc_1270E0
1270CE:  LDR             R0, [SP,#0x10+status]
1270D0:  CBNZ            R0, loc_1270DA
1270D2:  MOV             R0, R4; int
1270D4:  MOV             R1, R5; s
1270D6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1270DA:  MOV             R0, R5; ptr
1270DC:  BLX             free
1270E0:  ADD             SP, SP, #8
1270E2:  POP             {R4,R5,R7,PC}
